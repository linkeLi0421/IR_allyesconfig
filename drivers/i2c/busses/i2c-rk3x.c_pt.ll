; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-rk3x.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-rk3x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_spec_values = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rk3x_i2c_soc_data = type { i32, ptr }
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
%struct.rk3x_i2c = type { %struct.i2c_adapter, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.i2c_timings, %struct.spinlock, %struct.wait_queue_head, i8, ptr, i8, i32, i8, i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_timings = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.rk3x_i2c_calced_timings = type { i32, i32, i32 }
%struct.clk_notifier_data = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__initcall__kmod_i2c_rk3x__296_1391_rk3x_i2c_driver_init6 = internal global ptr @rk3x_i2c_driver_init, section ".initcall6.init", align 4
@rk3x_i2c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rk3x_i2c_probe, ptr @rk3x_i2c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rk3x_i2c_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rk3x_i2c_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rk3x_i2c_driver_exit = internal global ptr @rk3x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [52 x i8] c"i2c_rk3x.description=Rockchip RK3xxx I2C Bus driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [52 x i8] c"i2c_rk3x.author=Max Schwarz <max.schwarz@online.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [42 x i8] c"i2c_rk3x.file=drivers/i2c/busses/i2c-rk3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [24 x i8] c"i2c_rk3x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rk3x-i2c\00", [23 x i8] zeroinitializer }, align 32
@rk3x_i2c_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rv1108_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3066_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3188_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3228_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3288_soc_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rk3399_soc_data }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@rk3x_i2c_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr @rk3x_i2c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk3x_i2c_algorithm = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @rk3x_i2c_xfer, ptr @rk3x_i2c_xfer_polling, ptr null, ptr null, ptr @rk3x_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->lock\00", [21 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&i2c->wait\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rockchip,grf\00", [19 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1273, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"rk3x-i2c needs 'rockchip,grf' property\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk3x_i2c_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/i2c/busses/i2c-rk3x.c\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr = internal global ptr @rk3x_i2c_probe._entry, section ".printk_index", align 4
@rk3x_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1278, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rk3x-i2c needs i2cX alias\00", [38 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.13 = internal global ptr @rk3x_i2c_probe._entry.11, section ".printk_index", align 4
@rk3x_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1287, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not write to GRF: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.16 = internal global ptr @rk3x_i2c_probe._entry.14, section ".printk_index", align 4
@rk3x_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.7, ptr @.str.8, i32 1300, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.19 = internal global ptr @rk3x_i2c_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get bus clk\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't get periph clk\0A\00", [42 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.7, ptr @.str.8, i32 1325, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't prepare bus clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.25 = internal global ptr @rk3x_i2c_probe._entry.23, section ".printk_index", align 4
@rk3x_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.7, ptr @.str.8, i32 1330, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't prepare periph clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.28 = internal global ptr @rk3x_i2c_probe._entry.26, section ".printk_index", align 4
@rk3x_i2c_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.7, ptr @.str.8, i32 1337, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to register clock notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.31 = internal global ptr @rk3x_i2c_probe._entry.29, section ".printk_index", align 4
@rk3x_i2c_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.7, ptr @.str.8, i32 1343, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't enable bus clk: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@rk3x_i2c_probe._entry_ptr.34 = internal global ptr @rk3x_i2c_probe._entry.32, section ".printk_index", align 4
@rk3x_i2c_xfer_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 1081, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rk3x_i2c_setup() failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3x_i2c_xfer_common\00", [43 x i8] zeroinitializer }, align 32
@rk3x_i2c_xfer_common._entry_ptr = internal global ptr @rk3x_i2c_xfer_common._entry, section ".printk_index", align 4
@rk3x_i2c_xfer_common._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.8, i32 1103, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"timeout, ipd: 0x%02x, state: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rk3x_i2c_xfer_common._entry_ptr.39 = internal global ptr @rk3x_i2c_xfer_common._entry.37, section ".printk_index", align 4
@rk3x_i2c_setup.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.41, ptr @.str.8, ptr @.str.42, i8 0, i8 -9, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c_rk3x\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rk3x_i2c_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Combined write/read from addr 0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rk3x_i2c_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.8, i32 484, ptr @.str.45, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irq in STATE_IDLE, ipd = 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rk3x_i2c_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rk3x_i2c_irq._entry_ptr = internal global ptr @rk3x_i2c_irq._entry, section ".printk_index", align 4
@rk3x_i2c_irq.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.44, ptr @.str.8, ptr @.str.46, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ: state %d, ipd: %x\0A\00", [40 x i8] zeroinitializer }, align 32
@rk3x_i2c_handle_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.8, i32 372, ptr @.str.45, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpected irq in START: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3x_i2c_handle_start\00", [42 x i8] zeroinitializer }, align 32
@rk3x_i2c_handle_start._entry_ptr = internal global ptr @rk3x_i2c_handle_start._entry, section ".printk_index", align 4
@rk3x_i2c_handle_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.8, i32 400, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unexpected irq in WRITE: 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rk3x_i2c_handle_write\00", [42 x i8] zeroinitializer }, align 32
@rk3x_i2c_handle_write._entry_ptr = internal global ptr @rk3x_i2c_handle_write._entry, section ".printk_index", align 4
@rk3x_i2c_handle_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.8, i32 455, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unexpected irq in STOP: 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rk3x_i2c_handle_stop\00", [43 x i8] zeroinitializer }, align 32
@rk3x_i2c_handle_stop._entry_ptr = internal global ptr @rk3x_i2c_handle_stop._entry, section ".printk_index", align 4
@rk3x_i2c_v0_calc_timings.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.53 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Conflicting, min_low_div %lu, max_low_div %lu\0A\00", [49 x i8] zeroinitializer }, align 32
@standard_mode_spec = internal constant { %struct.i2c_spec_values, [32 x i8] } { %struct.i2c_spec_values { i32 4000, i32 4700, i32 4000, i32 4700, i32 3450, i32 250, i32 4000, i32 4700 }, [32 x i8] zeroinitializer }, align 32
@fast_mode_spec = internal constant { %struct.i2c_spec_values, [32 x i8] } { %struct.i2c_spec_values { i32 600, i32 1300, i32 600, i32 600, i32 900, i32 100, i32 600, i32 1300 }, [32 x i8] zeroinitializer }, align 32
@fast_mode_plus_spec = internal constant { %struct.i2c_spec_values, [32 x i8] } { %struct.i2c_spec_values { i32 260, i32 500, i32 260, i32 260, i32 400, i32 50, i32 260, i32 500 }, [32 x i8] zeroinitializer }, align 32
@rk3x_i2c_adapt_div.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Could not reach SCL freq %u\00", [36 x i8] zeroinitializer }, align 32
@rk3x_i2c_adapt_div.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.55, ptr @.str.8, ptr @.str.56, i8 0, i8 -30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rk3x_i2c_adapt_div\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CLK %lukhz, Req %uns, Act low %lluns high %lluns\0A\00", [46 x i8] zeroinitializer }, align 32
@rv1108_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v1_calc_timings }, [24 x i8] zeroinitializer }, align 32
@rk3066_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 340, ptr @rk3x_i2c_v0_calc_timings }, [24 x i8] zeroinitializer }, align 32
@rk3188_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 164, ptr @rk3x_i2c_v0_calc_timings }, [24 x i8] zeroinitializer }, align 32
@rk3228_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v0_calc_timings }, [24 x i8] zeroinitializer }, align 32
@rk3288_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v0_calc_timings }, [24 x i8] zeroinitializer }, align 32
@rk3399_soc_data = internal constant { %struct.rk3x_i2c_soc_data, [24 x i8] } { %struct.rk3x_i2c_soc_data { i32 -1, ptr @rk3x_i2c_v1_calc_timings }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"rk3x_i2c_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1381, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1385, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"rk3x_i2c_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1193, i32 34 }
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"rk3x_i2c_pm_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1379, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"rk3x_i2c_algorithm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1157, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1253, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1254, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1261, i32 31 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1270, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1272, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1278, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1287, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1300, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1312, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1317, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1321, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1325, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1330, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1337, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1343, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1081, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1102, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 989, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 484, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 489, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 372, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 400, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 455, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 644, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant [19 x i8] c"standard_mode_spec\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 105, i32 37 }
@___asan_gen_.232 = private unnamed_addr constant [15 x i8] c"fast_mode_spec\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 116, i32 37 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"fast_mode_plus_spec\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 127, i32 37 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 882, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 900, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"rv1108_soc_data\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1163, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"rk3066_soc_data\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1168, i32 39 }
@___asan_gen_.253 = private unnamed_addr constant [16 x i8] c"rk3188_soc_data\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1173, i32 39 }
@___asan_gen_.256 = private unnamed_addr constant [16 x i8] c"rk3228_soc_data\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1178, i32 39 }
@___asan_gen_.259 = private unnamed_addr constant [16 x i8] c"rk3288_soc_data\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1183, i32 39 }
@___asan_gen_.262 = private unnamed_addr constant [16 x i8] c"rk3399_soc_data\00", align 1
@___asan_gen_.263 = private constant [33 x i8] c"../drivers/i2c/busses/i2c-rk3x.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 1188, i32 39 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_rk3x_i2c_driver_exit, ptr @__initcall__kmod_i2c_rk3x__296_1391_rk3x_i2c_driver_init6, ptr @rk3x_i2c_driver_exit, ptr @rk3x_i2c_handle_start._entry, ptr @rk3x_i2c_handle_start._entry_ptr, ptr @rk3x_i2c_handle_stop._entry, ptr @rk3x_i2c_handle_stop._entry_ptr, ptr @rk3x_i2c_handle_write._entry, ptr @rk3x_i2c_handle_write._entry_ptr, ptr @rk3x_i2c_irq._entry, ptr @rk3x_i2c_irq._entry_ptr, ptr @rk3x_i2c_probe._entry, ptr @rk3x_i2c_probe._entry.11, ptr @rk3x_i2c_probe._entry.14, ptr @rk3x_i2c_probe._entry.17, ptr @rk3x_i2c_probe._entry.23, ptr @rk3x_i2c_probe._entry.26, ptr @rk3x_i2c_probe._entry.29, ptr @rk3x_i2c_probe._entry.32, ptr @rk3x_i2c_probe._entry_ptr, ptr @rk3x_i2c_probe._entry_ptr.13, ptr @rk3x_i2c_probe._entry_ptr.16, ptr @rk3x_i2c_probe._entry_ptr.19, ptr @rk3x_i2c_probe._entry_ptr.25, ptr @rk3x_i2c_probe._entry_ptr.28, ptr @rk3x_i2c_probe._entry_ptr.31, ptr @rk3x_i2c_probe._entry_ptr.34, ptr @rk3x_i2c_xfer_common._entry, ptr @rk3x_i2c_xfer_common._entry.37, ptr @rk3x_i2c_xfer_common._entry_ptr, ptr @rk3x_i2c_xfer_common._entry_ptr.39, ptr @rk3x_i2c_driver, ptr @.str, ptr @rk3x_i2c_match, ptr @rk3x_i2c_pm_ops, ptr @rk3x_i2c_algorithm, ptr @rk3x_i2c_probe.__key, ptr @.str.1, ptr @rk3x_i2c_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @standard_mode_spec, ptr @fast_mode_spec, ptr @fast_mode_plus_spec, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @rv1108_soc_data, ptr @rk3066_soc_data, ptr @rk3188_soc_data, ptr @rk3228_soc_data, ptr @rk3288_soc_data, ptr @rk3399_soc_data], section "llvm.metadata"
@0 = internal global [69 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_algorithm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_xfer_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_xfer_common._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_handle_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_handle_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3x_i2c_handle_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @standard_mode_spec to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_mode_spec to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_mode_plus_spec to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rv1108_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3066_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3188_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3228_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3288_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rk3399_soc_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rk3x_i2c_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rk3x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @rk3x_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1552, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup154_crit_edge, label %if.end

entry.cleanup154_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @rk3x_i2c_match, ptr noundef %1) #8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %soc_data = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %soc_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %soc_data, align 4
  %t = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 7
  tail call void @i2c_parse_fw_timings(ptr noundef %dev, ptr noundef %t, i1 noundef zeroext true) #8
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 12
  %call4 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %call.i, align 8
  %algo = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rk3x_i2c_algorithm, ptr %algo, align 8
  %retries = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 8
  %7 = ptrtoint ptr %retries to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %retries, align 8
  %of_node10 = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 27
  %8 = ptrtoint ptr %of_node10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %of_node10, align 8
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %algo_data, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %call.i, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %dev16 = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev16 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev16, align 8
  %lock = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rk3x_i2c_probe.__key, i16 noundef signext 3) #8
  %wait = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 9
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.3, ptr noundef nonnull @rk3x_i2c_probe.__key.2) #8
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %regs = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call21, ptr %regs, align 8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %call21 to i32
  br label %cleanup154

if.end27:                                         ; preds = %if.end
  %call28 = tail call i32 @of_alias_get_id(ptr noundef %1, ptr noundef nonnull @.str.4) #8
  %14 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc_data, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %cmp = icmp sgt i32 %17, -1
  br i1 %cmp, label %if.then30, label %if.end27.if.end59_crit_edge

if.end27.if.end59_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then30:                                        ; preds = %if.end27
  %call31 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.5) #8
  %cmp.i251 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %do.end36, label %if.end39

do.end36:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %18 = ptrtoint ptr %call31 to i32
  br label %cleanup154

if.end39:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp40 = icmp slt i32 %call28, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %cleanup154

if.end46:                                         ; preds = %if.end39
  %or = shl i32 134219776, %call28
  %19 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc_data, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %call51 = tail call i32 @regmap_write(ptr noundef %call31, i32 noundef %22, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52.not = icmp eq i32 %call51, 0
  br i1 %cmp52.not, label %if.end46.if.end59_crit_edge, label %do.end56

if.end46.if.end59_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %dev16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev16, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef %call51) #11
  br label %cleanup154

if.end59:                                         ; preds = %if.end46.if.end59_crit_edge, %if.end27.if.end59_crit_edge
  %call60 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %cmp61 = icmp slt i32 %call60, 0
  br i1 %cmp61, label %if.end59.cleanup154_crit_edge, label %if.end63

if.end59.cleanup154_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end63:                                         ; preds = %if.end59
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end63.dev_name.exit_crit_edge

if.end63.dev_name.exit_crit_edge:                 ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end63.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %28, %if.end.i ], [ %26, %if.end63.dev_name.exit_crit_edge ]
  %call.i252 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call60, ptr noundef nonnull @rk3x_i2c_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i252)
  %cmp68 = icmp slt i32 %call.i252, 0
  br i1 %cmp68, label %do.end72, label %if.end74

do.end72:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup154

if.end74:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %30 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc_data, align 4
  %calc_timings = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %calc_timings to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %calc_timings, align 4
  %cmp76 = icmp eq ptr %33, @rk3x_i2c_v0_calc_timings
  br i1 %cmp76, label %if.then77, label %if.else

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %call79 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 4
  %34 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call79, ptr %clk, align 4
  br label %if.end87

if.else:                                          ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %call82 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  %clk83 = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %clk83 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call82, ptr %clk83, align 4
  %call85 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.20) #8
  br label %if.end87

if.end87:                                         ; preds = %if.else, %if.then77
  %call85.sink = phi ptr [ %call79, %if.then77 ], [ %call85, %if.else ]
  %36 = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call85.sink, ptr %36, align 8
  %clk88 = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %clk88, align 4
  %cmp.i253 = icmp ugt ptr %39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %if.then90, label %if.end95

if.then90:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %39 to i32
  %call94 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %40, ptr noundef nonnull @.str.21) #8
  br label %cleanup154

if.end95:                                         ; preds = %if.end87
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 8
  %cmp.i254 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i254, label %if.then98, label %if.end103

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %42 to i32
  %call102 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %43, ptr noundef nonnull @.str.22) #8
  br label %cleanup154

if.end103:                                        ; preds = %if.end95
  %call105 = tail call i32 @clk_prepare(ptr noundef %39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call105) #11
  br label %cleanup154

if.end112:                                        ; preds = %if.end103
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %36, align 8
  %call114 = tail call i32 @clk_prepare(ptr noundef %45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.end119, label %if.end121

do.end119:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call114) #11
  br label %err_clk

if.end121:                                        ; preds = %if.end112
  %clk_rate_nb = getelementptr inbounds %struct.rk3x_i2c, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %clk_rate_nb to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @rk3x_i2c_clk_notifier_cb, ptr %clk_rate_nb, align 4
  %47 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clk88, align 4
  %call124 = tail call i32 @clk_notifier_register(ptr noundef %48, ptr noundef %clk_rate_nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %cmp125.not = icmp eq i32 %call124, 0
  br i1 %cmp125.not, label %if.end131, label %do.end129

do.end129:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #11
  br label %err_pclk

if.end131:                                        ; preds = %if.end121
  %49 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clk88, align 4
  %call133 = tail call i32 @clk_enable(ptr noundef %50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %do.end138, label %if.end140

do.end138:                                        ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call133) #11
  br label %err_clk_notifier

if.end140:                                        ; preds = %if.end131
  %51 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk88, align 4
  %call142 = tail call i32 @clk_get_rate(ptr noundef %52) #8
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef nonnull %call.i, i32 noundef %call142)
  %53 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk88, align 4
  tail call void @clk_disable(ptr noundef %54) #8
  %call145 = tail call i32 @i2c_add_adapter(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %cmp146 = icmp slt i32 %call145, 0
  br i1 %cmp146, label %if.end140.err_clk_notifier_crit_edge, label %if.end140.cleanup154_crit_edge

if.end140.cleanup154_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup154

if.end140.err_clk_notifier_crit_edge:             ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_clk_notifier

err_clk_notifier:                                 ; preds = %if.end140.err_clk_notifier_crit_edge, %do.end138
  %ret.0 = phi i32 [ %call133, %do.end138 ], [ %call145, %if.end140.err_clk_notifier_crit_edge ]
  %55 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk88, align 4
  %call151 = tail call i32 @clk_notifier_unregister(ptr noundef %56, ptr noundef %clk_rate_nb) #8
  br label %err_pclk

err_pclk:                                         ; preds = %err_clk_notifier, %do.end129
  %ret.1 = phi i32 [ %call124, %do.end129 ], [ %ret.0, %err_clk_notifier ]
  %57 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %36, align 8
  tail call void @clk_unprepare(ptr noundef %58) #8
  br label %err_clk

err_clk:                                          ; preds = %err_pclk, %do.end119
  %ret.2 = phi i32 [ %call114, %do.end119 ], [ %ret.1, %err_pclk ]
  %59 = ptrtoint ptr %clk88 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %clk88, align 4
  tail call void @clk_unprepare(ptr noundef %60) #8
  br label %cleanup154

cleanup154:                                       ; preds = %err_clk, %if.end140.cleanup154_crit_edge, %do.end110, %if.then98, %if.then90, %do.end72, %if.end59.cleanup154_crit_edge, %do.end56, %do.end44, %do.end36, %if.then24, %entry.cleanup154_crit_edge
  %retval.1 = phi i32 [ %13, %if.then24 ], [ %call.i252, %do.end72 ], [ %call94, %if.then90 ], [ %call102, %if.then98 ], [ %call105, %do.end110 ], [ %ret.2, %err_clk ], [ -12, %entry.cleanup154_crit_edge ], [ %call60, %if.end59.cleanup154_crit_edge ], [ 0, %if.end140.cleanup154_crit_edge ], [ %call51, %do.end56 ], [ -22, %do.end44 ], [ %18, %do.end36 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_del_adapter(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %clk_rate_nb = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @clk_notifier_unregister(ptr noundef %3, ptr noundef %clk_rate_nb) #8
  %pclk = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 8
  tail call void @clk_unprepare(ptr noundef %5) #8
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_parse_fw_timings(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_irq(i32 noundef %irqno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %regs.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %state = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 15
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.43, i32 noundef %3) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2130706432) #8, !srcloc !150
  br label %out

do.body1:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk3x_i2c_irq.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk3x_i2c_irq, %do.end11)) #8
          to label %if.then6 [label %do.end11], !srcloc !151

if.then6:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 1
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 8
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk3x_i2c_irq.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.46, i32 noundef %13, i32 noundef %3) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %do.body1
  %and = and i32 %3, -4
  %and12 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.end11.if.end20_crit_edge, label %if.then14

do.end11.if.end20_crit_edge:                      ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %do.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 8
  %add.ptr.i56 = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i56, i32 1073741824) #8, !srcloc !150
  %and15 = and i32 %3, -68
  %msg = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 11
  %16 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %flags, align 2
  %20 = and i16 %19, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool17.not = icmp eq i16 %20, 0
  br i1 %tobool17.not, label %if.then18, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then18:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef -6)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14.if.end20_crit_edge, %do.end11.if.end20_crit_edge
  %ipd.0 = phi i32 [ %and15, %if.then14.if.end20_crit_edge ], [ %and15, %if.then18 ], [ %and, %do.end11.if.end20_crit_edge ]
  %and21 = and i32 %ipd.0, 124
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.end20.out_crit_edge, label %if.end25

if.end20.out_crit_edge:                           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end25:                                         ; preds = %if.end20
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %if.end25.out_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb27
    i32 2, label %sw.bb28
    i32 4, label %sw.bb29
  ]

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

sw.bb:                                            ; preds = %if.end25
  %and.i = and i32 %ipd.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef -5) #8
  %dev.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 1
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.47, i32 noundef %ipd.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 2130706432) #8, !srcloc !150
  br label %out

if.end.i:                                         ; preds = %sw.bb
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i58 = getelementptr i8, ptr %29, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i58, i32 268435456) #8, !srcloc !150
  %30 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i, align 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %33 = and i32 %32, -134217729
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %34 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %33) #8, !srcloc !150
  %mode.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 13
  %36 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp.i = icmp eq i32 %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %38 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i, align 8
  %add.ptr.i21.i = getelementptr i8, ptr %39, i32 24
  br i1 %cmp.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 1140850688) #8, !srcloc !150
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 3, ptr %state, align 4
  tail call fastcc void @rk3x_i2c_fill_transmit_buf(ptr noundef %dev_id) #8
  br label %out

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 1207959552) #8, !srcloc !150
  %41 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 2, ptr %state, align 4
  %msg.i.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 11
  %42 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %msg.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %len1.i.i, align 4
  %conv.i.i = zext i16 %45 to i32
  %processed.i.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 16
  %46 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %processed.i.i, align 8
  %sub.i.i = sub i32 %conv.i.i, %47
  %48 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs.i, align 8
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i)
  %cmp.i.i = icmp ugt i32 %sub.i.i, 32
  %51 = and i32 %50, -536870913
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #8
  %53 = tail call i32 @llvm.umin.i32(i32 %sub.i.i, i32 32) #8
  %masksel.i.i = select i1 %cmp.i.i, i32 0, i32 32
  %con.0.i.i = or i32 %52, %masksel.i.i
  %54 = ptrtoint ptr %processed.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %processed.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp4.not.i.i = icmp eq i32 %55, 0
  %and7.i.i = and i32 %con.0.i.i, -7
  %or8.i.i = or i32 %and7.i.i, 4
  %con.1.i.i = select i1 %cmp4.not.i.i, i32 %con.0.i.i, i32 %or8.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %56 = tail call i32 @llvm.bswap.i32(i32 %con.1.i.i) #8
  %57 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #8, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %59 = shl nuw nsw i32 %53, 24
  %60 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i25.i = getelementptr i8, ptr %61, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i25.i, i32 %59) #8, !srcloc !150
  br label %out

sw.bb27:                                          ; preds = %if.end25
  %and.i59 = and i32 %ipd.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i59)
  %tobool.not.i60 = icmp eq i32 %and.i59, 0
  br i1 %tobool.not.i60, label %if.then.i64, label %if.end.i68

if.then.i64:                                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef -5) #8
  %dev.i61 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i61, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.49, i32 noundef %ipd.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %64 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i63 = getelementptr i8, ptr %65, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i63, i32 2130706432) #8, !srcloc !150
  br label %out

if.end.i68:                                       ; preds = %sw.bb27
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i66 = getelementptr i8, ptr %67, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i66, i32 67108864) #8, !srcloc !150
  %processed.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 16
  %68 = ptrtoint ptr %processed.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %processed.i, align 8
  %msg.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 11
  %70 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msg.i, align 4
  %len.i = getelementptr inbounds %struct.i2c_msg, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %len.i, align 4
  %conv.i = zext i16 %73 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %conv.i)
  %cmp.i67 = icmp eq i32 %69, %conv.i
  br i1 %cmp.i67, label %if.then2.i69, label %if.else.i70

if.then2.i69:                                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  %error.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 17
  %74 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %error.i, align 4
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef %75) #8
  br label %out

if.else.i70:                                      ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_fill_transmit_buf(ptr noundef %dev_id) #8
  br label %out

sw.bb28:                                          ; preds = %if.end25
  %msg.i71 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 11
  %processed.i72 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 16
  %and.i73 = and i32 %ipd.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %sw.bb28.out_crit_edge, label %if.end.i78

sw.bb28.out_crit_edge:                            ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end.i78:                                       ; preds = %sw.bb28
  %76 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %msg.i71, align 4
  %len1.i = getelementptr inbounds %struct.i2c_msg, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %len1.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %len1.i, align 4
  %conv.i75 = zext i16 %79 to i32
  %80 = ptrtoint ptr %processed.i72 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %processed.i72, align 8
  %sub.i = sub i32 %conv.i75, %81
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i77 = getelementptr i8, ptr %83, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i77, i32 402653184) #8, !srcloc !150
  %84 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp547.not.i = icmp eq i32 %84, 0
  br i1 %cmp547.not.i, label %if.end.i78.for.end.i_crit_edge, label %if.end.i78.for.body.i_crit_edge

if.end.i78.for.body.i_crit_edge:                  ; preds = %if.end.i78
  br label %for.body.i

if.end.i78.for.end.i_crit_edge:                   ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end10.i.for.body.i_crit_edge, %if.end.i78.for.body.i_crit_edge
  %val.050.i = phi i32 [ %val.1.i, %if.end10.i.for.body.i_crit_edge ], [ -1, %if.end.i78.for.body.i_crit_edge ]
  %i.048.i = phi i32 [ %inc17.i, %if.end10.i.for.body.i_crit_edge ], [ 0, %if.end.i78.for.body.i_crit_edge ]
  %rem.i = and i32 %i.048.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp7.i = icmp eq i32 %rem.i, 0
  br i1 %cmp7.i, label %if.then9.i, label %for.body.i.if.end10.i_crit_edge

for.body.i.if.end10.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %85 = add nuw nsw i32 %i.048.i, 512
  %add.i = and i32 %85, 2147483644
  %86 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs.i, align 8
  %add.ptr.i46.i = getelementptr i8, ptr %87, i32 %add.i
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46.i) #8, !srcloc !147
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %for.body.i.if.end10.i_crit_edge
  %val.1.i = phi i32 [ %89, %if.then9.i ], [ %val.050.i, %for.body.i.if.end10.i_crit_edge ]
  %mul12.i = shl nuw nsw i32 %rem.i, 3
  %shr.i = lshr i32 %val.1.i, %mul12.i
  %conv14.i = trunc i32 %shr.i to i8
  %90 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %msg.i71, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %91, i32 0, i32 3
  %92 = ptrtoint ptr %buf.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %buf.i, align 4
  %94 = ptrtoint ptr %processed.i72 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %processed.i72, align 8
  %inc.i = add i32 %95, 1
  store i32 %inc.i, ptr %processed.i72, align 8
  %arrayidx.i = getelementptr i8, ptr %93, i32 %95
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv14.i, ptr %arrayidx.i, align 1
  %inc17.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc17.i, %84
  br i1 %exitcond.not.i, label %if.end10.i.for.end.i_crit_edge, label %if.end10.i.for.body.i_crit_edge

if.end10.i.for.body.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end10.i.for.end.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end10.i.for.end.i_crit_edge, %if.end.i78.for.end.i_crit_edge
  %97 = ptrtoint ptr %processed.i72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %processed.i72, align 8
  %99 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %msg.i71, align 4
  %len20.i = getelementptr inbounds %struct.i2c_msg, ptr %100, i32 0, i32 2
  %101 = ptrtoint ptr %len20.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %len20.i, align 4
  %conv21.i = zext i16 %102 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %conv21.i)
  %cmp22.i = icmp eq i32 %98, %conv21.i
  br i1 %cmp22.i, label %if.then24.i, label %if.else.i89

if.then24.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %error.i79 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 17
  %103 = ptrtoint ptr %error.i79 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %error.i79, align 4
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef %104) #8
  br label %out

if.else.i89:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i80 = sub i32 %conv21.i, %98
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 8
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub.i.i80)
  %cmp.i.i81 = icmp ugt i32 %sub.i.i80, 32
  %108 = and i32 %107, -536870913
  %109 = tail call i32 @llvm.bswap.i32(i32 %108) #8
  %110 = tail call i32 @llvm.umin.i32(i32 %sub.i.i80, i32 32) #8
  %masksel.i.i82 = select i1 %cmp.i.i81, i32 0, i32 32
  %con.0.i.i83 = or i32 %109, %masksel.i.i82
  %111 = ptrtoint ptr %processed.i72 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %processed.i72, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp4.not.i.i84 = icmp eq i32 %112, 0
  %and7.i.i85 = and i32 %con.0.i.i83, -7
  %or8.i.i86 = or i32 %and7.i.i85, 4
  %con.1.i.i87 = select i1 %cmp4.not.i.i84, i32 %con.0.i.i83, i32 %or8.i.i86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %113 = tail call i32 @llvm.bswap.i32(i32 %con.1.i.i87) #8
  %114 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #8, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %116 = shl nuw nsw i32 %110, 24
  %117 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i88 = getelementptr i8, ptr %118, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i88, i32 %116) #8, !srcloc !150
  br label %out

sw.bb29:                                          ; preds = %if.end25
  %and.i90 = and i32 %ipd.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %if.then.i95, label %if.end.i99

if.then.i95:                                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_stop(ptr noundef %dev_id, i32 noundef -5) #8
  %dev.i92 = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 1
  %119 = ptrtoint ptr %dev.i92 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev.i92, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %120, ptr noundef nonnull @.str.51, i32 noundef %ipd.0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %121 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i.i94 = getelementptr i8, ptr %122, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i94, i32 2130706432) #8, !srcloc !150
  br label %out

if.end.i99:                                       ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %123 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regs.i, align 8
  %add.ptr.i.i97 = getelementptr i8, ptr %124, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 536870912) #8, !srcloc !150
  %125 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regs.i, align 8
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %128 = and i32 %127, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %129 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #8, !srcloc !150
  %busy.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 10
  %131 = ptrtoint ptr %busy.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 0, ptr %busy.i, align 8
  %132 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %state, align 4
  %wait.i = getelementptr inbounds %struct.rk3x_i2c, ptr %dev_id, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %out

out:                                              ; preds = %if.end.i99, %if.then.i95, %if.else.i89, %if.then24.i, %sw.bb28.out_crit_edge, %if.else.i70, %if.then2.i69, %if.then.i64, %if.else.i, %if.then2.i, %if.then.i, %if.end25.out_crit_edge, %if.end20.out_crit_edge, %do.end
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_v0_calc_timings(i32 noundef %clk_rate, ptr nocapture noundef %t, ptr nocapture noundef %t_calc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %1)
  %cmp = icmp ugt i32 %1, 400000
  br i1 %cmp, label %entry.if.end58.sink.split_crit_edge, label %if.end22, !prof !152

entry.if.end58.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp25 = icmp ult i32 %1, 1000
  br i1 %cmp25, label %if.end22.if.end58.sink.split_crit_edge, label %if.end22.if.end58_crit_edge, !prof !152

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end22.if.end58.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.end22.if.end58.sink.split_crit_edge, %entry.if.end58.sink.split_crit_edge
  %.sink261 = phi i32 [ 582, %entry.if.end58.sink.split_crit_edge ], [ 586, %if.end22.if.end58.sink.split_crit_edge ]
  %.sink = phi i32 [ 400000, %entry.if.end58.sink.split_crit_edge ], [ 1000, %if.end22.if.end58.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef %.sink261, i32 noundef 9, ptr noundef null) #8
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %t, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.end22.if.end58_crit_edge
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %4)
  %cmp.i = icmp ult i32 %4, 100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %4)
  %cmp1.i = icmp ult i32 %4, 400001
  %fast_mode_spec.fast_mode_plus_spec.i = select i1 %cmp1.i, ptr @fast_mode_spec, ptr @fast_mode_plus_spec
  %retval.0.i = select i1 %cmp.i, ptr @standard_mode_spec, ptr %fast_mode_spec.fast_mode_plus_spec.i
  %scl_rise_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scl_rise_ns, align 4
  %min_high_ns60 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %min_high_ns60 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_high_ns60, align 4
  %add = add i32 %8, %6
  %min_setup_start_ns = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 3
  %9 = ptrtoint ptr %min_setup_start_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_setup_start_ns, align 4
  %add62 = add i32 %10, %6
  %mul = mul i32 %add62, 1000
  %sub = add i32 %mul, 874
  %div = udiv i32 %sub, 875
  %11 = tail call i32 @llvm.umax.i32(i32 %add, i32 %div)
  %sda_fall_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 4
  %12 = ptrtoint ptr %sda_fall_ns to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sda_fall_ns, align 4
  %add69 = add i32 %8, 1
  %add71 = add i32 %add69, %13
  %sub73 = add i32 %add71, %add62
  %div74258 = lshr i32 %sub73, 1
  %14 = tail call i32 @llvm.umax.i32(i32 %11, i32 %div74258)
  %scl_fall_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 2
  %15 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scl_fall_ns, align 4
  %min_low_ns81 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 1
  %17 = ptrtoint ptr %min_low_ns81 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %min_low_ns81, align 4
  %add82 = add i32 %18, %16
  %max_data_hold_ns = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 4
  %19 = ptrtoint ptr %max_data_hold_ns to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_data_hold_ns, align 4
  %mul83 = shl i32 %20, 1
  %sub84 = add i32 %mul83, -50
  %add85 = add i32 %14, %add82
  %sub87 = add i32 %clk_rate, 999
  %div88 = udiv i32 %sub87, 1000
  %div90 = udiv i32 %4, 1000
  %mul91 = shl nuw nsw i32 %div90, 3
  %add92 = add nsw i32 %div88, -1
  %sub93 = add nsw i32 %add92, %mul91
  %div95 = udiv i32 %sub93, %mul91
  %mul96 = mul i32 %add82, %div88
  %sub98 = add i32 %mul96, 7999999
  %div99 = udiv i32 %sub98, 8000000
  %mul100 = mul i32 %14, %div88
  %sub102 = add i32 %mul100, 7999999
  %div103 = udiv i32 %sub102, 8000000
  %add104 = add nuw nsw i32 %div103, %div99
  %mul105 = mul i32 %sub84, %div88
  %div106 = udiv i32 %mul105, 8000000
  call void @__sanitizer_cov_trace_cmp4(i32 %div99, i32 %div106)
  %cmp107 = icmp ugt i32 %div99, %div106
  br i1 %cmp107, label %land.end, label %if.end58.if.end154_crit_edge

if.end58.if.end154_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

land.end:                                         ; preds = %if.end58
  %.b259 = load i1, ptr @rk3x_i2c_v0_calc_timings.__already_done, align 1
  br i1 %.b259, label %land.end.if.end154_crit_edge, label %if.then119, !prof !153

land.end.if.end154_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end154

if.then119:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rk3x_i2c_v0_calc_timings.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 646, i32 noundef 9, ptr noundef nonnull @.str.53, i32 noundef %div99, i32 noundef %div106) #8
  br label %if.end154

if.end154:                                        ; preds = %if.then119, %land.end.if.end154_crit_edge, %if.end58.if.end154_crit_edge
  %max_low_div.0 = phi i32 [ %div106, %if.end58.if.end154_crit_edge ], [ %div99, %if.then119 ], [ %div99, %land.end.if.end154_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div95, i32 %add104)
  %cmp155 = icmp ult i32 %div95, %add104
  br i1 %cmp155, label %if.then156, label %if.else

if.then156:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div99, ptr %t_calc, align 4
  br label %if.end179

if.else:                                          ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  %sub157 = sub i32 %div95, %add104
  %mul160 = mul i32 %add85, %mul91
  %add161 = add i32 %mul96, -1
  %sub162 = add i32 %add161, %mul160
  %div165 = udiv i32 %sub162, %mul160
  %22 = tail call i32 @llvm.umin.i32(i32 %div165, i32 %max_low_div.0)
  %add169 = add i32 %sub157, %div99
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 %add169)
  %24 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %t_calc, align 4
  %add177 = sub i32 %div95, %23
  br label %if.end179

if.end179:                                        ; preds = %if.else, %if.then156
  %add177.sink = phi i32 [ %div103, %if.then156 ], [ %add177, %if.else ]
  %25 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %t_calc, i32 0, i32 1
  %26 = ptrtoint ptr %t_calc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %t_calc, align 4
  %dec = add i32 %27, -1
  store i32 %dec, ptr %t_calc, align 4
  %dec182 = add i32 %add177.sink, -1
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dec182, ptr %25, align 4
  %tuning = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %t_calc, i32 0, i32 2
  %29 = ptrtoint ptr %tuning to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %tuning, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %dec)
  %cmp184 = icmp ugt i32 %dec, 65535
  br i1 %cmp184, label %if.then185, label %if.end179.if.end187_crit_edge

if.end179.if.end187_crit_edge:                    ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end187

if.then185:                                       ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 65535, ptr %t_calc, align 4
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %if.end179.if.end187_crit_edge
  %ret.0 = phi i32 [ -22, %if.then185 ], [ 0, %if.end179.if.end187_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %dec182)
  %cmp189 = icmp ugt i32 %dec182, 65535
  br i1 %cmp189, label %if.then190, label %if.end187.if.end192_crit_edge

if.end187.if.end192_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end192

if.then190:                                       ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 65535, ptr %25, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %if.end187.if.end192_crit_edge
  %ret.1 = phi i32 [ -22, %if.then190 ], [ %ret.0, %if.end187.if.end192_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_clk_notifier_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %calc = alloca %struct.rk3x_i2c_calced_timings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1380
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %calc) #8
  %0 = ptrtoint ptr %calc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %calc, align 4, !annotation !154
  %1 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %calc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !154
  %3 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %calc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !154
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 4, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %soc_data = getelementptr i8, ptr %nb, i32 -16
  %6 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc_data, align 4
  %calc_timings = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %calc_timings to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %calc_timings, align 4
  %new_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %new_rate, align 4
  %t = getelementptr i8, ptr %nb, i32 12
  %call = call i32 %9(i32 noundef %11, ptr noundef %t, ptr noundef nonnull %calc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %12 = ptrtoint ptr %new_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %new_rate, align 4
  %old_rate = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %14 = ptrtoint ptr %old_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %old_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp2 = icmp ugt i32 %13, %15
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @rk3x_i2c_adapt_div(ptr noundef %add.ptr, i32 noundef %13)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %new_rate7 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %new_rate7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %new_rate7, align 4
  %old_rate8 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %old_rate8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %old_rate8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp9 = icmp ult i32 %17, %19
  br i1 %cmp9, label %if.then10, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %add.ptr, i32 noundef %17)
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %new_rate14 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 2
  %20 = ptrtoint ptr %new_rate14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %new_rate14, align 4
  %old_rate15 = getelementptr inbounds %struct.clk_notifier_data, ptr %data, i32 0, i32 1
  %22 = ptrtoint ptr %old_rate15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %old_rate15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp16 = icmp ugt i32 %21, %23
  br i1 %cmp16, label %if.then17, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %add.ptr, i32 noundef %23)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %sw.bb13.cleanup_crit_edge, %if.then10, %sw.bb6.cleanup_crit_edge, %if.then3, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32769, %sw.bb.cleanup_crit_edge ], [ 1, %if.then3 ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then10 ], [ 1, %sw.bb6.cleanup_crit_edge ], [ 1, %if.then17 ], [ 1, %sw.bb13.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %calc) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_adapt_div(ptr noundef %i2c, i32 noundef %clk_rate) unnamed_addr #2 align 64 {
entry:
  %calc = alloca %struct.rk3x_i2c_calced_timings, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %t1 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %calc) #8
  %0 = ptrtoint ptr %calc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %calc, align 4, !annotation !154
  %1 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %calc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !154
  %3 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %calc, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !154
  %soc_data = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 2
  %5 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc_data, align 4
  %calc_timings = getelementptr inbounds %struct.rk3x_i2c_soc_data, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %calc_timings to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %calc_timings, align 4
  %call = call i32 %8(i32 noundef %clk_rate, ptr noundef %t1, ptr noundef nonnull %calc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %entry.if.end28_crit_edge, label %land.rhs

entry.if.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.rhs:                                         ; preds = %entry
  %.b101 = load i1, ptr @rk3x_i2c_adapt_div.__already_done, align 1
  br i1 %.b101, label %land.rhs.if.end28_crit_edge, label %if.then, !prof !153

land.rhs.if.end28_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rk3x_i2c_adapt_div.__already_done, align 1
  %9 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t1, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 882, i32 noundef 9, ptr noundef nonnull @.str.54, i32 noundef %10) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then, %land.rhs.if.end28_crit_edge, %entry.if.end28_crit_edge
  %pclk = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 5
  %11 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pclk, align 8
  %call36 = call i32 @clk_enable(ptr noundef %12) #8
  %lock = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 8
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %regs.i = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 8
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !147
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %16 = and i32 %15, -16711681
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %3, align 4
  %or = or i32 %17, %19
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %20 = call i32 @llvm.bswap.i32(i32 %or) #8
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #8, !srcloc !150
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %shl = shl i32 %24, 16
  %25 = ptrtoint ptr %calc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %calc, align 4
  %and50 = and i32 %26, 65535
  %or51 = or i32 %and50, %shl
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %27 = call i32 @llvm.bswap.i32(i32 %or51) #8
  %28 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %29, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %27) #8, !srcloc !150
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #8
  %30 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pclk, align 8
  call void @clk_disable(ptr noundef %31) #8
  %32 = ptrtoint ptr %calc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %calc, align 4
  %conv55 = zext i32 %33 to i64
  %34 = mul i64 %conv55, 8000000000
  %mul56 = add i64 %34, 8000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul56)
  %cmp164.i.i = icmp ult i64 %mul56, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !153

if.then168.i.i:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul56 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %clk_rate
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.else162.i.i209

if.else174.i.i:                                   ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %35 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %clk_rate, i64 %mul56) #12, !srcloc !155
  %asmresult1.i.i.i = extractvalue { i64, i64 } %35, 1
  br label %if.else162.i.i209

if.else162.i.i209:                                ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %1, align 4
  %conv59 = zext i32 %37 to i64
  %38 = mul i64 %conv59, 8000000000
  %mul62 = add i64 %38, 8000000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul62)
  %cmp164.i.i208 = icmp ult i64 %mul62, 4294967296
  br i1 %cmp164.i.i208, label %if.then168.i.i213, label %if.else174.i.i215, !prof !153

if.then168.i.i213:                                ; preds = %if.else162.i.i209
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i210 = trunc i64 %mul62 to i32
  %div172.i.i211 = udiv i32 %conv169.i.i210, %clk_rate
  %conv173.i.i212 = zext i32 %div172.i.i211 to i64
  br label %div_u64.exit217

if.else174.i.i215:                                ; preds = %if.else162.i.i209
  call void @__sanitizer_cov_trace_pc() #10
  %39 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %clk_rate, i64 %mul62) #12, !srcloc !155
  %asmresult1.i.i.i214 = extractvalue { i64, i64 } %39, 1
  br label %div_u64.exit217

div_u64.exit217:                                  ; preds = %if.else174.i.i215, %if.then168.i.i213
  %dividend.addr.0.i.i216 = phi i64 [ %conv173.i.i212, %if.then168.i.i213 ], [ %asmresult1.i.i.i214, %if.else174.i.i215 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk3x_i2c_adapt_div.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk3x_i2c_adapt_div, %do.end82)) #8
          to label %if.then77 [label %do.end82], !srcloc !151

if.then77:                                        ; preds = %div_u64.exit217
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 1
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 8
  %div = udiv i32 %clk_rate, 1000
  %42 = ptrtoint ptr %t1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %t1, align 4
  %div79 = udiv i32 1000000000, %43
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk3x_i2c_adapt_div.__UNIQUE_ID_ddebug293, ptr noundef %41, ptr noundef nonnull @.str.56, i32 noundef %div, i32 noundef %div79, i64 noundef %dividend.addr.0.i.i, i64 noundef %dividend.addr.0.i.i216) #8
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %div_u64.exit217
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %calc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_xfer(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rk3x_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_xfer_polling(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @rk3x_i2c_xfer_common(ptr noundef %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rk3x_i2c_func(ptr nocapture noundef readnone %adap) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 251592717
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk3x_i2c_xfer_common(ptr nocapture noundef readonly %adap, ptr noundef %msgs, i32 noundef %num, i1 noundef zeroext %polling) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %algo_data = getelementptr inbounds %struct.i2c_adapter, ptr %adap, i32 0, i32 3
  %0 = ptrtoint ptr %algo_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %algo_data, align 4
  %lock = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %clk = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call5 = tail call i32 @clk_enable(ptr noundef %3) #8
  %pclk = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pclk, align 8
  %call6 = tail call i32 @clk_enable(ptr noundef %5) #8
  %is_last_msg = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 14
  %6 = ptrtoint ptr %is_last_msg to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %is_last_msg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp7184 = icmp sgt i32 %num, 0
  br i1 %cmp7184, label %for.body.lr.ph, label %entry.for.end108_crit_edge

entry.for.end108_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end108

for.body.lr.ph:                                   ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 3
  %mode.i = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 13
  %msg.i = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 11
  %busy = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 10
  %wait = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 9
  %error = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %if.end102.for.body_crit_edge, %for.body.lr.ph
  %flags.0186 = phi i32 [ %call2, %for.body.lr.ph ], [ %call85179, %if.end102.for.body_crit_edge ]
  %i.0185 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %if.end102.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.i2c_msg, ptr %msgs, i32 %i.0185
  %sub = sub i32 %num, %i.0185
  %call9 = call fastcc i32 @rk3x_i2c_setup(ptr noundef %1, ptr noundef %add.ptr, i32 noundef %sub)
  %add = add i32 %call9, %i.0185
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %num)
  %cmp15.not = icmp slt i32 %add, %num
  br i1 %cmp15.not, label %for.body.if.end19_crit_edge, label %if.then17

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %is_last_msg to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_last_msg, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %for.body.if.end19_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.0186) #8
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 8
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !147
  %11 = lshr i32 %10, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %12 = and i32 %11, 65280
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 268435456) #8, !srcloc !150
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  %shl.i = shl i32 %16, 1
  %or2.i = or i32 %shl.i, %12
  %17 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags.i, align 2
  %21 = and i16 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i = icmp eq i16 %21, 0
  %spec.select.v.i = select i1 %tobool.not.i, i32 73, i32 9
  %spec.select.i = or i32 %or2.i, %spec.select.v.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %22 = call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %23 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #8, !srcloc !150
  br i1 %polling, label %if.else, label %if.then21

if.then21:                                        ; preds = %if.end19
  call void @__might_sleep(ptr noundef nonnull @.str.8, i32 noundef 1094) #8
  %25 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %busy, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool29.not = icmp eq i8 %26, 0
  br i1 %tobool29.not, label %do.body77.thread, label %if.then42

do.body77.thread:                                 ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %call85177 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  br label %if.end102

if.then42:                                        ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %27 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call46180 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %28 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %busy, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool49.not181 = icmp eq i8 %29, 0
  br i1 %tobool49.not181, label %if.then42.for.end_crit_edge, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  br label %cleanup

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then42.cleanup_crit_edge
  %__ret43.1182 = phi i32 [ %__ret43.1, %cleanup.cleanup_crit_edge ], [ 100, %if.then42.cleanup_crit_edge ]
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret43.1182) #8
  %call46 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #8
  %30 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %busy, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool49.not = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool55.not = icmp eq i32 %call69, 0
  %32 = select i1 %tobool49.not, i1 %tobool55.not, i1 false
  %__ret43.1 = select i1 %32, i32 1, i32 %call69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret43.1)
  %tobool62.not = icmp eq i32 %__ret43.1, 0
  %33 = select i1 %tobool49.not, i1 true, i1 %tobool62.not
  br i1 %33, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then42.for.end_crit_edge
  %__ret43.1.lcssa = phi i32 [ 100, %if.then42.for.end_crit_edge ], [ %__ret43.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #8
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %do.body77

if.else:                                          ; preds = %if.end19
  %call.i = call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 1000000000
  %34 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load volatile i8, ptr %busy, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not10.i = icmp eq i8 %35, 0
  br i1 %tobool.not10.i, label %if.else.rk3x_i2c_wait_xfer_poll.exit_crit_edge, label %if.else.land.rhs.i_crit_edge

if.else.land.rhs.i_crit_edge:                     ; preds = %if.else
  br label %land.rhs.i

if.else.rk3x_i2c_wait_xfer_poll.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %rk3x_i2c_wait_xfer_poll.exit

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %if.else.land.rhs.i_crit_edge
  %call3.i = call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call3.i, i64 %add.i.i)
  %cmp.i.i = icmp slt i64 %call3.i, %add.i.i
  br i1 %cmp.i.i, label %while.body.i, label %land.rhs.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge

land.rhs.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rk3x_i2c_wait_xfer_poll.exit

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 1073740) #8
  %call5.i = call i32 @rk3x_i2c_irq(i32 noundef 0, ptr noundef %1) #8
  %37 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load volatile i8, ptr %busy, align 8, !range !156
  %tobool.not.i167 = icmp eq i8 %38, 0
  br i1 %tobool.not.i167, label %while.body.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i

while.body.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rk3x_i2c_wait_xfer_poll.exit

rk3x_i2c_wait_xfer_poll.exit:                     ; preds = %while.body.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge, %land.rhs.i.rk3x_i2c_wait_xfer_poll.exit_crit_edge, %if.else.rk3x_i2c_wait_xfer_poll.exit_crit_edge
  %39 = ptrtoint ptr %busy to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %busy, align 8, !range !156
  %41 = xor i8 %40, 1
  %42 = zext i8 %41 to i32
  br label %do.body77

do.body77:                                        ; preds = %rk3x_i2c_wait_xfer_poll.exit, %for.end
  %timeout.0 = phi i32 [ %42, %rk3x_i2c_wait_xfer_poll.exit ], [ %__ret43.1.lcssa, %for.end ]
  %call85 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.0)
  %cmp90 = icmp eq i32 %timeout.0, 0
  br i1 %cmp90, label %do.end95, label %do.body77.if.end102_crit_edge

do.body77.if.end102_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

do.end95:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %dev96 = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %dev96 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev96, align 8
  %45 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i = getelementptr i8, ptr %46, i32 28
  %47 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !147
  %48 = call i32 @llvm.bswap.i32(i32 %47) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %state = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 15
  %49 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %state, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.38, i32 noundef %48, i32 noundef %50) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i169 = getelementptr i8, ptr %52, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 0) #8, !srcloc !150
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 8
  %55 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #8, !srcloc !147
  %56 = lshr i32 %55, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %57 = and i32 %56, 65280
  %or = or i32 %57, 17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @arm_heavy_mb() #8
  %58 = call i32 @llvm.bswap.i32(i32 %or) #8
  %59 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i.i, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #8, !srcloc !150
  %61 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %state, align 4
  br label %for.end108

if.end102:                                        ; preds = %do.body77.if.end102_crit_edge, %do.body77.thread
  %call85179 = phi i32 [ %call85177, %do.body77.thread ], [ %call85, %do.body77.if.end102_crit_edge ]
  %62 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool103.not = icmp ne i32 %63, 0
  %cmp15.not.not = xor i1 %cmp15.not, true
  %brmerge = select i1 %tobool103.not, i1 true, i1 %cmp15.not.not
  br i1 %brmerge, label %for.end108.loopexit, label %if.end102.for.body_crit_edge

if.end102.for.body_crit_edge:                     ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end108.loopexit:                              ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #10
  %.mux = select i1 %tobool103.not, i32 %63, i32 %call9
  br label %for.end108

for.end108:                                       ; preds = %for.end108.loopexit, %do.end95, %entry.for.end108_crit_edge
  %ret.1 = phi i32 [ -110, %do.end95 ], [ 0, %entry.for.end108_crit_edge ], [ %.mux, %for.end108.loopexit ]
  %flags.1 = phi i32 [ %call85, %do.end95 ], [ %call2, %entry.for.end108_crit_edge ], [ %call85179, %for.end108.loopexit ]
  %64 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pclk, align 8
  call void @clk_disable(ptr noundef %65) #8
  %66 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %67) #8
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %flags.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp112 = icmp slt i32 %ret.1, 0
  %spec.select = select i1 %cmp112, i32 %ret.1, i32 %num
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rk3x_i2c_setup(ptr nocapture noundef %i2c, ptr noundef %msgs, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %msgs, align 4
  %2 = shl i16 %1, 1
  %3 = and i16 %2, 254
  %shl = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %num)
  %cmp = icmp sgt i32 %num, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %5)
  %cmp5 = icmp ult i16 %5, 4
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags, align 2
  %8 = and i16 %7, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %land.lhs.true11, label %land.lhs.true7.if.else_crit_edge

land.lhs.true7.if.else_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true11:                                  ; preds = %land.lhs.true7
  %arrayidx12 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1
  %flags13 = getelementptr %struct.i2c_msg, ptr %msgs, i32 1, i32 1
  %9 = ptrtoint ptr %flags13 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %flags13, align 2
  %11 = and i16 %10, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool16.not = icmp eq i16 %11, 0
  br i1 %tobool16.not, label %land.lhs.true11.if.else_crit_edge, label %if.then

land.lhs.true11.if.else_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then:                                          ; preds = %land.lhs.true11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rk3x_i2c_setup.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rk3x_i2c_setup, %do.end)) #8
          to label %if.then21 [label %do.end], !srcloc !151

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 8
  %shr = lshr exact i32 %shl, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rk3x_i2c_setup.__UNIQUE_ID_ddebug294, ptr noundef %13, ptr noundef nonnull @.str.42, i32 noundef %shr) #8
  br label %do.end

do.end:                                           ; preds = %if.then21, %if.then
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len, align 4
  %conv24 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp2594.not = icmp eq i16 %15, 0
  br i1 %cmp2594.not, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %16 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %buf, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.096 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %reg_addr.095 = phi i32 [ 0, %for.body.lr.ph ], [ %or32, %for.body.for.body_crit_edge ]
  %arrayidx28 = getelementptr i8, ptr %17, i32 %i.096
  %18 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %19 to i32
  %mul = shl i32 %i.096, 3
  %shl30 = shl i32 %conv29, %mul
  %shl31 = shl i32 16777216, %i.096
  %or = or i32 %shl31, %reg_addr.095
  %or32 = or i32 %or, %shl30
  %inc = add nuw nsw i32 %i.096, 1
  %exitcond.not = icmp eq i32 %inc, %conv24
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %reg_addr.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %or32, %for.body.for.end_crit_edge ]
  %msg = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 11
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx12, ptr %msg, align 4
  %mode = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 13
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %mode, align 4
  %or34 = or i32 %shl, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %or34) #8
  %regs.i = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #8, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %reg_addr.0.lcssa) #8
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 8
  %add.ptr.i88 = getelementptr i8, ptr %27, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %25) #8, !srcloc !150
  br label %if.end49

if.else:                                          ; preds = %land.lhs.true11.if.else_crit_edge, %land.lhs.true7.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %flags36 = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %28 = ptrtoint ptr %flags36 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %flags36, align 2
  %30 = and i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %30)
  %tobool39.not = icmp eq i16 %30, 0
  %mode45 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 13
  br i1 %tobool39.not, label %if.else44, label %if.then40

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %mode45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %mode45, align 4
  %or43 = or i32 %shl, 16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %32 = tail call i32 @llvm.bswap.i32(i32 %or43) #8
  %regs.i89 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %33 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i89, align 8
  %add.ptr.i90 = getelementptr i8, ptr %34, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %32) #8, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %35 = ptrtoint ptr %regs.i89 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i89, align 8
  %add.ptr.i92 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 0) #8, !srcloc !150
  br label %if.end46

if.else44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %mode45 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %mode45, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then40
  %msg48 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 11
  %38 = ptrtoint ptr %msg48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msgs, ptr %msg48, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end46, %for.end
  %ret.0 = phi i32 [ 1, %if.end46 ], [ 2, %for.end ]
  %39 = ptrtoint ptr %msgs to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %msgs, align 4
  %conv52 = trunc i16 %40 to i8
  %addr53 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 12
  %41 = ptrtoint ptr %addr53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv52, ptr %addr53, align 8
  %busy = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 10
  %42 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %busy, align 8
  %state = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 15
  %43 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %state, align 4
  %processed = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 16
  %44 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %processed, align 8
  %error = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 17
  %45 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %error, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %regs.i.i = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 2130706432) #8, !srcloc !150
  ret i32 %ret.0
}

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
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_stop(ptr noundef %i2c, i32 noundef %error) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %processed = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 16
  %0 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %processed, align 8
  %msg = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 11
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %msg, align 4
  %error1 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 17
  %2 = ptrtoint ptr %error1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %error, ptr %error1, align 4
  %is_last_msg = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 14
  %3 = ptrtoint ptr %is_last_msg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_last_msg, align 8, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 536870912) #8, !srcloc !150
  %state = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 15
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 4, ptr %state, align 4
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %11 = or i32 %10, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #8, !srcloc !150
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %busy = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 10
  %14 = ptrtoint ptr %busy to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %busy, align 8
  %state2 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 15
  %15 = ptrtoint ptr %state2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %state2, align 4
  %regs.i21 = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  %16 = ptrtoint ptr %regs.i21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i21, align 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !147
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !148
  %19 = and i32 %18, 16711680
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %regs.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i21, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #8, !srcloc !150
  %wait = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 9
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rk3x_i2c_fill_transmit_buf(ptr nocapture noundef %i2c) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %processed = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 16
  %msg = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 11
  %addr = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 12
  %regs.i = getelementptr inbounds %struct.rk3x_i2c, ptr %i2c, i32 0, i32 3
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.end.for.cond1.preheader_crit_edge, %entry
  %cnt.060 = phi i32 [ 0, %entry ], [ %cnt.1.lcssa, %for.end.for.cond1.preheader_crit_edge ]
  %i.059 = phi i32 [ 0, %entry ], [ %inc34, %for.end.for.cond1.preheader_crit_edge ]
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 2
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %1, i32 0, i32 3
  %2 = add i32 %cnt.060, 4
  %3 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %processed, align 8
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %len, align 4
  %conv = zext i16 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp4 = icmp ne i32 %4, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.060)
  %cmp6.not = icmp eq i32 %cnt.060, 0
  %or.cond = select i1 %cmp4, i1 true, i1 %cmp6.not
  br i1 %or.cond, label %if.end, label %for.cond1.preheader.for.end_crit_edge

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end:                                           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp9 = icmp eq i32 %4, 0
  %or.cond53 = select i1 %cmp9, i1 %cmp6.not, i1 false
  br i1 %or.cond53, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %addr, align 8
  %9 = shl i8 %8, 1
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %buf, align 4
  %inc = add i32 %4, 1
  %12 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %processed, align 8
  %arrayidx = getelementptr i8, ptr %11, i32 %4
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %byte.0 = phi i8 [ %9, %if.then14 ], [ %14, %if.else ]
  %conv20 = zext i8 %byte.0 to i32
  %inc22 = add i32 %cnt.060, 1
  %15 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %processed, align 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %len, align 4
  %conv.1 = zext i16 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv.1)
  %cmp4.1 = icmp ne i32 %16, %conv.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc22)
  %cmp6.not.1 = icmp eq i32 %inc22, 0
  %or.cond.1 = select i1 %cmp4.1, i1 true, i1 %cmp6.not.1
  br i1 %or.cond.1, label %if.end.1, label %if.end19.for.end_crit_edge

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.1:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp9.1 = icmp eq i32 %16, 0
  %or.cond53.1 = select i1 %cmp9.1, i1 %cmp6.not.1, i1 false
  br i1 %or.cond53.1, label %if.then14.1, label %if.else.1

if.else.1:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buf, align 4
  %inc.1 = add i32 %16, 1
  %21 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %inc.1, ptr %processed, align 8
  %arrayidx.1 = getelementptr i8, ptr %20, i32 %16
  %22 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.1, align 1
  br label %if.end19.1

if.then14.1:                                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %addr, align 8
  %26 = shl i8 %25, 1
  br label %if.end19.1

if.end19.1:                                       ; preds = %if.then14.1, %if.else.1
  %byte.0.1 = phi i8 [ %26, %if.then14.1 ], [ %23, %if.else.1 ]
  %conv20.1 = zext i8 %byte.0.1 to i32
  %shl21.1 = shl nuw nsw i32 %conv20.1, 8
  %or.1 = or i32 %shl21.1, %conv20
  %inc22.1 = add i32 %cnt.060, 2
  %27 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %processed, align 8
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len, align 4
  %conv.2 = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %conv.2)
  %cmp4.2 = icmp ne i32 %28, %conv.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc22.1)
  %cmp6.not.2 = icmp eq i32 %inc22.1, 0
  %or.cond.2 = select i1 %cmp4.2, i1 true, i1 %cmp6.not.2
  br i1 %or.cond.2, label %if.end.2, label %if.end19.1.for.end_crit_edge

if.end19.1.for.end_crit_edge:                     ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.2:                                         ; preds = %if.end19.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp9.2 = icmp eq i32 %28, 0
  %or.cond53.2 = select i1 %cmp9.2, i1 %cmp6.not.2, i1 false
  br i1 %or.cond53.2, label %if.then14.2, label %if.else.2

if.else.2:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buf, align 4
  %inc.2 = add i32 %28, 1
  %33 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %inc.2, ptr %processed, align 8
  %arrayidx.2 = getelementptr i8, ptr %32, i32 %28
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.2, align 1
  br label %if.end19.2

if.then14.2:                                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %addr, align 8
  %38 = shl i8 %37, 1
  br label %if.end19.2

if.end19.2:                                       ; preds = %if.then14.2, %if.else.2
  %byte.0.2 = phi i8 [ %38, %if.then14.2 ], [ %35, %if.else.2 ]
  %conv20.2 = zext i8 %byte.0.2 to i32
  %shl21.2 = shl nuw nsw i32 %conv20.2, 16
  %or.2 = or i32 %shl21.2, %or.1
  %inc22.2 = add i32 %cnt.060, 3
  %39 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %processed, align 8
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %len, align 4
  %conv.3 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %conv.3)
  %cmp4.3 = icmp ne i32 %40, %conv.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc22.2)
  %cmp6.not.3 = icmp eq i32 %inc22.2, 0
  %or.cond.3 = select i1 %cmp4.3, i1 true, i1 %cmp6.not.3
  br i1 %or.cond.3, label %if.end.3, label %if.end19.2.for.end_crit_edge

if.end19.2.for.end_crit_edge:                     ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.3:                                         ; preds = %if.end19.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp9.3 = icmp eq i32 %40, 0
  %or.cond53.3 = select i1 %cmp9.3, i1 %cmp6.not.3, i1 false
  br i1 %or.cond53.3, label %if.then14.3, label %if.else.3

if.else.3:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buf, align 4
  %inc.3 = add i32 %40, 1
  %45 = ptrtoint ptr %processed to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %inc.3, ptr %processed, align 8
  %arrayidx.3 = getelementptr i8, ptr %44, i32 %40
  %46 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.3, align 1
  br label %if.end19.3

if.then14.3:                                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %addr, align 8
  %50 = shl i8 %49, 1
  br label %if.end19.3

if.end19.3:                                       ; preds = %if.then14.3, %if.else.3
  %byte.0.3 = phi i8 [ %50, %if.then14.3 ], [ %47, %if.else.3 ]
  %conv20.3 = zext i8 %byte.0.3 to i32
  %shl21.3 = shl nuw i32 %conv20.3, 24
  %or.3 = or i32 %shl21.3, %or.2
  br label %for.end

for.end:                                          ; preds = %if.end19.3, %if.end19.2.for.end_crit_edge, %if.end19.1.for.end_crit_edge, %if.end19.for.end_crit_edge, %for.cond1.preheader.for.end_crit_edge
  %cnt.1.lcssa = phi i32 [ %cnt.060, %for.cond1.preheader.for.end_crit_edge ], [ %inc22, %if.end19.for.end_crit_edge ], [ %inc22.1, %if.end19.1.for.end_crit_edge ], [ %inc22.2, %if.end19.2.for.end_crit_edge ], [ %2, %if.end19.3 ]
  %val.0.lcssa = phi i32 [ 0, %for.cond1.preheader.for.end_crit_edge ], [ %conv20, %if.end19.for.end_crit_edge ], [ %or.1, %if.end19.1.for.end_crit_edge ], [ %or.2, %if.end19.2.for.end_crit_edge ], [ %or.3, %if.end19.3 ]
  %mul24 = shl i32 %i.059, 2
  %add = add nuw nsw i32 %mul24, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %51 = tail call i32 @llvm.bswap.i32(i32 %val.0.lcssa) #8
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %53, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %51) #8, !srcloc !150
  %54 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %processed, align 8
  %56 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msg, align 4
  %len27 = getelementptr inbounds %struct.i2c_msg, ptr %57, i32 0, i32 2
  %58 = ptrtoint ptr %len27 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %len27, align 4
  %conv28 = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %conv28)
  %cmp29 = icmp eq i32 %55, %conv28
  %inc34 = add nuw nsw i32 %i.059, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc34)
  %exitcond.not = icmp eq i32 %inc34, 8
  %or.cond61 = select i1 %cmp29, i1 true, i1 %exitcond.not
  br i1 %or.cond61, label %for.end35, label %for.end.for.cond1.preheader_crit_edge

for.end.for.cond1.preheader_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.end35:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  tail call void @arm_heavy_mb() #8
  %60 = tail call i32 @llvm.bswap.i32(i32 %cnt.1.lcssa) #8
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 8
  %add.ptr.i55 = getelementptr i8, ptr %62, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i55, i32 %60) #8, !srcloc !150
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_v1_calc_timings(i32 noundef %clk_rate, ptr nocapture noundef %t, ptr nocapture noundef %t_calc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %1)
  %cmp = icmp ugt i32 %1, 1000000
  br i1 %cmp, label %entry.if.end58.sink.split_crit_edge, label %if.end22, !prof !152

entry.if.end58.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

if.end22:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp25 = icmp ult i32 %1, 1000
  br i1 %cmp25, label %if.end22.if.end58.sink.split_crit_edge, label %if.end22.if.end58_crit_edge, !prof !152

if.end22.if.end58_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.end22.if.end58.sink.split_crit_edge:           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.sink.split

if.end58.sink.split:                              ; preds = %if.end22.if.end58.sink.split_crit_edge, %entry.if.end58.sink.split_crit_edge
  %.sink225 = phi i32 [ 762, %entry.if.end58.sink.split_crit_edge ], [ 766, %if.end22.if.end58.sink.split_crit_edge ]
  %.sink = phi i32 [ 1000000, %entry.if.end58.sink.split_crit_edge ], [ 1000, %if.end22.if.end58.sink.split_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef %.sink225, i32 noundef 9, ptr noundef null) #8
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink, ptr %t, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.end58.sink.split, %if.end22.if.end58_crit_edge
  %3 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %4)
  %cmp.i = icmp ult i32 %4, 100001
  call void @__sanitizer_cov_trace_const_cmp4(i32 400001, i32 %4)
  %cmp1.i = icmp ult i32 %4, 400001
  %fast_mode_spec.fast_mode_plus_spec.i = select i1 %cmp1.i, ptr @fast_mode_spec, ptr @fast_mode_plus_spec
  %retval.0.i = select i1 %cmp.i, ptr @standard_mode_spec, ptr %fast_mode_spec.fast_mode_plus_spec.i
  %sub = add i32 %clk_rate, 999
  %div = udiv i32 %sub, 1000
  %div61 = udiv i32 %4, 1000
  %mul = shl nuw nsw i32 %div61, 3
  %add62 = add nsw i32 %div, -1
  %sub63 = add nsw i32 %add62, %mul
  %div65 = udiv i32 %sub63, %mul
  %scl_rise_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scl_rise_ns, align 4
  %min_high_ns66 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 2
  %7 = ptrtoint ptr %min_high_ns66 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %min_high_ns66, align 4
  %add67 = add i32 %8, %6
  %mul68 = mul i32 %add67, %div
  %sub70 = add i32 %mul68, 7999999
  %scl_fall_ns = getelementptr inbounds %struct.i2c_timings, ptr %t, i32 0, i32 2
  %9 = ptrtoint ptr %scl_fall_ns to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scl_fall_ns, align 4
  %min_low_ns72 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %min_low_ns72 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_low_ns72, align 4
  %add73 = add i32 %12, %10
  %mul74 = mul i32 %add73, %div
  %sub76 = add i32 %mul74, 7999999
  %div77 = udiv i32 %sub76, 8000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %sub70)
  %13 = icmp ult i32 %sub70, 8000000
  %div71 = udiv i32 %sub70, 8000000
  %spec.select = select i1 %13, i32 2, i32 %div71
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %sub76)
  %14 = icmp ult i32 %sub76, 8000000
  %cond83 = select i1 %14, i32 2, i32 %div77
  %add84 = add nuw nsw i32 %cond83, %spec.select
  call void @__sanitizer_cov_trace_cmp4(i32 %div65, i32 %add84)
  %cmp85.not = icmp ugt i32 %div65, %add84
  br i1 %cmp85.not, label %if.else, label %if.then86

if.then86:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond83, ptr %t_calc, align 4
  br label %if.end97

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %sub87 = sub i32 %div65, %add84
  %mul88 = mul i32 %sub87, %cond83
  %add89 = add nsw i32 %add84, -1
  %sub90 = add i32 %add89, %mul88
  %div91 = udiv i32 %sub90, %add84
  %add92 = add i32 %div91, %cond83
  %16 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add92, ptr %t_calc, align 4
  %sub94 = add i32 %sub87, %spec.select
  %add95 = sub i32 %sub94, %div91
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then86
  %spec.select.sink = phi i32 [ %add95, %if.else ], [ %spec.select, %if.then86 ]
  %17 = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %t_calc, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.sink, ptr %17, align 4
  %19 = ptrtoint ptr %t_calc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %t_calc, align 4
  %mul100 = mul i32 %20, 1000000
  %add103 = add nuw nsw i32 %div, 999999
  %max_data_hold_ns = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 4
  %21 = ptrtoint ptr %max_data_hold_ns to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %max_data_hold_ns, align 4
  %min_data_setup_ns = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 5
  %23 = mul i32 %20, 3000000
  %sub104 = add i32 %add103, %23
  %div105 = udiv i32 %sub104, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div105, i32 %22)
  %cmp114 = icmp ult i32 %div105, %22
  br i1 %cmp114, label %land.lhs.true, label %if.end97.for.inc_crit_edge

if.end97.for.inc_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end97
  %24 = mul i32 %20, 5000000
  %sub112 = add i32 %add103, %24
  %div113 = udiv i32 %sub112, %div
  %25 = ptrtoint ptr %min_data_setup_ns to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_data_setup_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div113, i32 %26)
  %cmp115 = icmp ugt i32 %div113, %26
  br i1 %cmp115, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end97.for.inc_crit_edge
  %27 = mul i32 %20, 2000000
  %sub104.1 = add i32 %add103, %27
  %div105.1 = udiv i32 %sub104.1, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div105.1, i32 %22)
  %cmp114.1 = icmp ult i32 %div105.1, %22
  br i1 %cmp114.1, label %land.lhs.true.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %28 = mul i32 %20, 6000000
  %sub112.1 = add i32 %add103, %28
  %div113.1 = udiv i32 %sub112.1, %div
  %29 = ptrtoint ptr %min_data_setup_ns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_data_setup_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div113.1, i32 %30)
  %cmp115.1 = icmp ugt i32 %div113.1, %30
  br i1 %cmp115.1, label %land.lhs.true.1.for.end_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.for.end_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %sub104.2 = add i32 %add103, %mul100
  %div105.2 = udiv i32 %sub104.2, %div
  call void @__sanitizer_cov_trace_cmp4(i32 %div105.2, i32 %22)
  %cmp114.2 = icmp ult i32 %div105.2, %22
  br i1 %cmp114.2, label %land.lhs.true.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %31 = mul i32 %20, 7000000
  %sub112.2 = add i32 %add103, %31
  %div113.2 = udiv i32 %sub112.2, %div
  %32 = ptrtoint ptr %min_data_setup_ns to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %min_data_setup_ns, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div113.2, i32 %33)
  %cmp115.2 = icmp ugt i32 %div113.2, %33
  br i1 %cmp115.2, label %land.lhs.true.2.for.end_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2.for.end_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %land.lhs.true.2.for.end_crit_edge, %land.lhs.true.1.for.end_crit_edge, %land.lhs.true.for.end_crit_edge
  %sda_update_cfg.0.lcssa = phi i32 [ 512, %land.lhs.true.for.end_crit_edge ], [ 256, %land.lhs.true.1.for.end_crit_edge ], [ 0, %land.lhs.true.2.for.end_crit_edge ], [ -256, %for.inc.2 ]
  %34 = ptrtoint ptr %scl_rise_ns to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scl_rise_ns, align 4
  %min_setup_start_ns119 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 3
  %36 = ptrtoint ptr %min_setup_start_ns119 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %min_setup_start_ns119, align 4
  %add120 = add i32 %37, %35
  %mul121 = mul i32 %add120, %div
  %38 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %17, align 4
  %mul124 = mul i32 %39, 8000000
  %add125 = add i32 %mul121, -1000001
  %sub126 = add i32 %add125, %mul124
  %div129 = udiv i32 %sub126, %mul124
  %min_setup_stop_ns131 = getelementptr inbounds %struct.i2c_spec_values, ptr %retval.0.i, i32 0, i32 6
  %40 = ptrtoint ptr %min_setup_stop_ns131 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %min_setup_stop_ns131, align 4
  %add132 = add i32 %41, %35
  %mul133 = mul i32 %add132, %div
  %add137 = add i32 %mul124, -1000001
  %sub138 = add i32 %add137, %mul133
  %div141 = udiv i32 %sub138, %mul124
  %dec143 = shl i32 %div129, 12
  %shl144 = add i32 %dec143, -4096
  %or = or i32 %shl144, %sda_update_cfg.0.lcssa
  %dec145 = shl i32 %div141, 14
  %shl146 = add i32 %dec145, -16384
  %or147 = or i32 %or, %shl146
  %tuning = getelementptr inbounds %struct.rk3x_i2c_calced_timings, ptr %t_calc, i32 0, i32 2
  %42 = ptrtoint ptr %tuning to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or147, ptr %tuning, align 4
  %43 = ptrtoint ptr %t_calc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %t_calc, align 4
  %dec149 = add i32 %44, -1
  store i32 %dec149, ptr %t_calc, align 4
  %dec151 = add i32 %39, -1
  store i32 %dec151, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %dec149)
  %cmp153 = icmp ugt i32 %dec149, 65535
  br i1 %cmp153, label %if.then154, label %for.end.if.end156_crit_edge

for.end.if.end156_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end156

if.then154:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %t_calc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 65535, ptr %t_calc, align 4
  br label %if.end156

if.end156:                                        ; preds = %if.then154, %for.end.if.end156_crit_edge
  %ret.0 = phi i32 [ -22, %if.then154 ], [ 0, %for.end.if.end156_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %dec151)
  %cmp158 = icmp ugt i32 %dec151, 65535
  br i1 %cmp158, label %if.then159, label %if.end156.if.end161_crit_edge

if.end156.if.end161_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

if.then159:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 65535, ptr %17, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.then159, %if.end156.if.end161_crit_edge
  %ret.1 = phi i32 [ -22, %if.then159 ], [ %ret.0, %if.end156.if.end161_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rk3x_i2c_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.rk3x_i2c, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %3) #8
  tail call fastcc void @rk3x_i2c_adapt_div(ptr noundef %1, i32 noundef %call1)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 69)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !87, !88, !90, !91, !93, !94, !95, !96, !98, !99, !100, !101, !103, !104, !105, !106, !108, !109, !111, !113, !115, !117, !118, !120, !121, !122, !124, !126, !128, !130, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_i2c_rk3x__296_1391_rk3x_i2c_driver_init6, !1, !"__initcall__kmod_i2c_rk3x__296_1391_rk3x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1391, i32 1}
!2 = !{ptr @__exitcall_rk3x_i2c_driver_exit, !1, !"__exitcall_rk3x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1393, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1394, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1395, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1385, i32 12}
!12 = !{ptr @rk3x_i2c_driver, !13, !"rk3x_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1381, i32 31}
!14 = !{ptr @rk3x_i2c_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1253, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rk3x_i2c_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1254, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1261, i32 31}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1270, i32 45}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1272, i32 4}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rk3x_i2c_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @rk3x_i2c_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1278, i32 4}
!34 = !{ptr @rk3x_i2c_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rk3x_i2c_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1287, i32 4}
!38 = !{ptr @rk3x_i2c_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @rk3x_i2c_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1300, i32 3}
!42 = !{ptr @rk3x_i2c_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rk3x_i2c_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1312, i32 40}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1317, i32 10}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1321, i32 10}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1325, i32 3}
!52 = !{ptr @rk3x_i2c_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @rk3x_i2c_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1330, i32 3}
!56 = !{ptr @rk3x_i2c_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @rk3x_i2c_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1337, i32 3}
!60 = !{ptr @rk3x_i2c_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @rk3x_i2c_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1343, i32 3}
!64 = !{ptr @rk3x_i2c_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @rk3x_i2c_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @rk3x_i2c_algorithm, !67, !"rk3x_i2c_algorithm", i1 false, i1 false}
!67 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1157, i32 35}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1081, i32 4}
!70 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @rk3x_i2c_xfer_common._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @rk3x_i2c_xfer_common._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.38, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1102, i32 4}
!75 = !{ptr @rk3x_i2c_xfer_common._entry.37, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @rk3x_i2c_xfer_common._entry_ptr.39, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 989, i32 3}
!79 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @rk3x_i2c_setup.__UNIQUE_ID_ddebug294, !78, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 484, i32 3}
!84 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.45, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rk3x_i2c_irq._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @rk3x_i2c_irq._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 489, i32 2}
!90 = !{ptr @rk3x_i2c_irq.__UNIQUE_ID_ddebug288, !89, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 372, i32 3}
!93 = !{ptr @.str.48, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @rk3x_i2c_handle_start._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @rk3x_i2c_handle_start._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 400, i32 3}
!98 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @rk3x_i2c_handle_write._entry, !97, !"_entry", i1 false, i1 false}
!100 = !{ptr @rk3x_i2c_handle_write._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 455, i32 3}
!103 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @rk3x_i2c_handle_stop._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @rk3x_i2c_handle_stop._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 644, i32 3}
!108 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @standard_mode_spec, !110, !"standard_mode_spec", i1 false, i1 false}
!110 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 105, i32 37}
!111 = !{ptr @fast_mode_spec, !112, !"fast_mode_spec", i1 false, i1 false}
!112 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 116, i32 37}
!113 = !{ptr @fast_mode_plus_spec, !114, !"fast_mode_plus_spec", i1 false, i1 false}
!114 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 127, i32 37}
!115 = distinct !{null, !116, !"__already_done", i1 false, i1 false}
!116 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 882, i32 2}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 900, i32 2}
!120 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @rk3x_i2c_adapt_div.__UNIQUE_ID_ddebug293, !119, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!122 = !{ptr @rk3x_i2c_match, !123, !"rk3x_i2c_match", i1 false, i1 false}
!123 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1193, i32 34}
!124 = !{ptr @rv1108_soc_data, !125, !"rv1108_soc_data", i1 false, i1 false}
!125 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1163, i32 39}
!126 = !{ptr @rk3066_soc_data, !127, !"rk3066_soc_data", i1 false, i1 false}
!127 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1168, i32 39}
!128 = !{ptr @rk3188_soc_data, !129, !"rk3188_soc_data", i1 false, i1 false}
!129 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1173, i32 39}
!130 = !{ptr @rk3228_soc_data, !131, !"rk3228_soc_data", i1 false, i1 false}
!131 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1178, i32 39}
!132 = !{ptr @rk3288_soc_data, !133, !"rk3288_soc_data", i1 false, i1 false}
!133 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1183, i32 39}
!134 = !{ptr @rk3399_soc_data, !135, !"rk3399_soc_data", i1 false, i1 false}
!135 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1188, i32 39}
!136 = !{ptr @rk3x_i2c_pm_ops, !137, !"rk3x_i2c_pm_ops", i1 false, i1 false}
!137 = !{!"../drivers/i2c/busses/i2c-rk3x.c", i32 1379, i32 8}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{i64 6858384}
!148 = !{i64 2155682842}
!149 = !{i64 2155682001}
!150 = !{i64 6857966}
!151 = !{i64 2148726401, i64 2148726406, i64 2148726419, i64 2148726463, i64 2148726497, i64 2148726518}
!152 = !{!"branch_weights", i32 1, i32 2000}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{!"auto-init"}
!155 = !{i64 2148635120, i64 2148635400, i64 2148635734, i64 2148636068}
!156 = !{i8 0, i8 2}
