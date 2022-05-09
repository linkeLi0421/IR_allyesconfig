; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-gpio.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_mux_gpio_platform_data = type { i32, i32, ptr, i32, ptr, i32 }
%struct.gpiomux = type { %struct.i2c_mux_gpio_platform_data, i32, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.gpio_device = type { i32, %struct.device, %struct.cdev, ptr, ptr, ptr, ptr, i32, i16, ptr, ptr, %struct.list_head, %struct.blocking_notifier_head, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_i2c_mux_gpio__288_253_i2c_mux_gpio_driver_init6 = internal global ptr @i2c_mux_gpio_driver_init, section ".initcall6.init", align 4
@i2c_mux_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_mux_gpio_probe, ptr @i2c_mux_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mux_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_mux_gpio_driver_exit = internal global ptr @i2c_mux_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [59 x i8] c"i2c_mux_gpio.description=GPIO-based I2C multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"i2c_mux_gpio.author=Peter Korsgaard <peter.korsgaard@barco.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [49 x i8] c"i2c_mux_gpio.file=drivers/i2c/muxes/i2c-mux-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [25 x i8] c"i2c_mux_gpio.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [41 x i8] c"i2c_mux_gpio.alias=platform:i2c-mux-gpio\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2c-mux-gpio\00", [19 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-mux-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mux\00", [28 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no valid gpios provided\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"i2c_mux_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/i2c/muxes/i2c-mux-gpio.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe._entry_ptr = internal global ptr @i2c_mux_gpio_probe._entry, section ".printk_index", align 4
@i2c_mux_gpio_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux-locked i2c mux\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe._entry_ptr.10 = internal global ptr @i2c_mux_gpio_probe._entry.7, section ".printk_index", align 4
@i2c_mux_gpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 216, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%d port mux on %s adapter\0A\00", [37 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe._entry_ptr.13 = internal global ptr @i2c_mux_gpio_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-parent\00", [21 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot parse i2c-parent\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_mux_gpio_probe_fw\00", [42 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe_fw._entry_ptr = internal global ptr @i2c_mux_gpio_probe_fw._entry, section ".printk_index", align 4
@i2c_mux_gpio_probe_fw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.4, i32 98, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot allocate values array\00", [35 x i8] zeroinitializer }, align 32
@i2c_mux_gpio_probe_fw._entry_ptr.19 = internal global ptr @i2c_mux_gpio_probe_fw._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"idle-state\00", [21 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"i2c_mux_gpio_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 244, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 248, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"i2c_mux_gpio_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 238, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 144, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 146, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 204, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 215, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 69, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 71, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 98, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 104, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [36 x i8] c"../drivers/i2c/muxes/i2c-mux-gpio.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 116, i32 36 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_i2c_mux_gpio_driver_exit, ptr @__initcall__kmod_i2c_mux_gpio__288_253_i2c_mux_gpio_driver_init6, ptr @i2c_mux_gpio_driver_exit, ptr @i2c_mux_gpio_probe._entry, ptr @i2c_mux_gpio_probe._entry.11, ptr @i2c_mux_gpio_probe._entry.7, ptr @i2c_mux_gpio_probe._entry_ptr, ptr @i2c_mux_gpio_probe._entry_ptr.10, ptr @i2c_mux_gpio_probe._entry_ptr.13, ptr @i2c_mux_gpio_probe_fw._entry, ptr @i2c_mux_gpio_probe_fw._entry.17, ptr @i2c_mux_gpio_probe_fw._entry_ptr, ptr @i2c_mux_gpio_probe_fw._entry_ptr.19, ptr @i2c_mux_gpio_driver, ptr @.str, ptr @i2c_mux_gpio_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_probe_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_gpio_probe_fw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_mux_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_mux_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_mux_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup124_crit_edge, label %if.end

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.end:                                           ; preds = %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %call.i199 = tail call ptr @dev_fwnode(ptr noundef %dev) #6
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %call.i199, null
  %cmp.i.i.i = icmp ugt ptr %call.i199, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.then4.cleanup124_crit_edge, label %is_of_node.exit.i

if.then4.cleanup124_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

is_of_node.exit.i:                                ; preds = %if.then4
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %call.i199, i32 0, i32 1
  %4 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.cleanup124_crit_edge

is_of_node.exit.i.cleanup124_crit_edge:           ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.then.i:                                        ; preds = %is_of_node.exit.i
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.then.i.cleanup124_crit_edge, label %if.end.i

if.then.i.cleanup124_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.end.i:                                         ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #6
  %6 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %3, ptr noundef nonnull @.str.14, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i
  %7 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #6
  %tobool5.not.i = icmp eq ptr %8, null
  br i1 %tobool5.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end14.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup124

if.end14.i:                                       ; preds = %of_parse_phandle.exit.i
  %call9.i = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %8) #6
  call void @of_node_put(ptr noundef nonnull %8) #6
  %tobool15.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool15.not.i, label %if.end14.i.cleanup124_crit_edge, label %if.end17.i

if.end14.i.cleanup124_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.end17.i:                                       ; preds = %if.end14.i
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %call9.i, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i.i, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i, align 4
  %dev19.i = getelementptr inbounds %struct.i2c_adapter, ptr %call9.i, i32 0, i32 9
  call void @put_device(ptr noundef %dev19.i) #6
  %call20.i = call i32 @device_get_child_node_count(ptr noundef %dev) #6
  %n_values.i = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %n_values.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call20.i, ptr %n_values.i, align 4
  %13 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call20.i, i32 4) #6
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %if.end17.i.do.end29.i_crit_edge, label %devm_kcalloc.exit.i, !prof !63

if.end17.i.do.end29.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

devm_kcalloc.exit.i:                              ; preds = %if.end17.i
  %15 = extractvalue { i32, i1 } %13, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %15, i32 noundef 3520) #6
  %tobool25.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool25.not.i, label %devm_kcalloc.exit.i.do.end29.i_crit_edge, label %if.end30.i

devm_kcalloc.exit.i.do.end29.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i

do.end29.i:                                       ; preds = %devm_kcalloc.exit.i.do.end29.i_crit_edge, %if.end17.i.do.end29.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup124

if.end30.i:                                       ; preds = %devm_kcalloc.exit.i
  %call31.i = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef null) #6
  %tobool32.not110.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not110.i, label %if.end30.i.for.end.i_crit_edge, label %if.end30.i.for.body.i_crit_edge

if.end30.i.for.body.i_crit_edge:                  ; preds = %if.end30.i
  br label %for.body.i

if.end30.i.for.end.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.i:                                       ; preds = %if.end46.i.for.body.i_crit_edge, %if.end30.i.for.body.i_crit_edge
  %i.0113.i = phi i32 [ %inc.i, %if.end46.i.for.body.i_crit_edge ], [ 0, %if.end30.i.for.body.i_crit_edge ]
  %child.0111.i = phi ptr [ %call47.i, %if.end46.i.for.body.i_crit_edge ], [ %call31.i, %if.end30.i.for.body.i_crit_edge ]
  %cmp.i.i96.i = icmp ugt ptr %child.0111.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i96.i, label %for.body.i.if.end46.i_crit_edge, label %is_of_node.exit101.i

for.body.i.if.end46.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

is_of_node.exit101.i:                             ; preds = %for.body.i
  %ops.i98.i = getelementptr inbounds %struct.fwnode_handle, ptr %child.0111.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i98.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i98.i, align 4
  %cmp.i99.i = icmp eq ptr %17, @of_fwnode_ops
  br i1 %cmp.i99.i, label %if.then34.i, label %is_of_node.exit101.i.if.end46.i_crit_edge

is_of_node.exit101.i.if.end46.i_crit_edge:        ; preds = %is_of_node.exit101.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46.i

if.then34.i:                                      ; preds = %is_of_node.exit101.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i = getelementptr i32, ptr %call5.i.i.i, i32 %i.0113.i
  %call.i102.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0111.i, ptr noundef nonnull @.str.20, ptr noundef %add.ptr.i, i32 noundef 1) #6
  br label %if.end46.i

if.end46.i:                                       ; preds = %if.then34.i, %is_of_node.exit101.i.if.end46.i_crit_edge, %for.body.i.if.end46.i_crit_edge
  %inc.i = add i32 %i.0113.i, 1
  %call47.i = call ptr @device_get_next_child_node(ptr noundef %dev, ptr noundef nonnull %child.0111.i) #6
  %tobool32.not.i = icmp eq ptr %call47.i, null
  br i1 %tobool32.not.i, label %if.end46.i.for.end.i_crit_edge, label %if.end46.i.for.body.i_crit_edge

if.end46.i.for.body.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end46.i.for.end.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %if.end46.i.for.end.i_crit_edge, %if.end30.i.for.end.i_crit_edge
  %values49.i = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %values49.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call5.i.i.i, ptr %values49.i, align 4
  %idle.i = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 5
  %call.i103.i = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %idle.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103.i)
  %tobool52.not.i = icmp eq i32 %call.i103.i, 0
  br i1 %tobool52.not.i, label %for.end.i.if.end10_crit_edge, label %if.then53.i

for.end.i.if.end10_crit_edge:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then53.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %idle.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %idle.i, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = call ptr @memcpy(ptr %call.i, ptr %1, i32 24)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then53.i, %for.end.i.if.end10_crit_edge
  %call12 = call i32 @gpiod_count(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool16.not = icmp eq i32 %call12, 0
  %. = select i1 %tobool16.not, i32 -22, i32 %call12
  br label %cleanup124

if.end17:                                         ; preds = %if.end10
  %ngpios18 = getelementptr inbounds %struct.gpiomux, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %ngpios18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call12, ptr %ngpios18, align 4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call.i, align 4
  %call21 = call ptr @i2c_get_adapter(i32 noundef %23) #6
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end17.cleanup124_crit_edge, label %if.end24

if.end17.cleanup124_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup124

if.end24:                                         ; preds = %if.end17
  %n_values = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %n_values, align 4
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call12, i32 4) #6
  %27 = extractvalue { i32, i1 } %26, 1
  %28 = extractvalue { i32, i1 } %26, 0
  %retval.0.i201 = select i1 %27, i32 -1, i32 %28
  %call28 = call ptr @i2c_mux_alloc(ptr noundef nonnull %call21, ptr noundef %dev, i32 noundef %25, i32 noundef %retval.0.i201, i32 noundef 0, ptr noundef nonnull @i2c_mux_gpio_select, ptr noundef null) #6
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end24.alloc_failed_crit_edge, label %if.end31

if.end24.alloc_failed_crit_edge:                  ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %alloc_failed

if.end31:                                         ; preds = %if.end24
  %priv = getelementptr inbounds %struct.i2c_mux_core, ptr %call28, i32 0, i32 3
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv, align 4
  %gpios = getelementptr inbounds %struct.gpiomux, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %gpios, align 4
  store ptr %call.i, ptr %priv, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call28, ptr %driver_data.i.i, align 4
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %call21, i32 0, i32 9
  %call34 = call ptr @i2c_root_adapter(ptr noundef %dev33) #6
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, ptr %call28, i32 0, i32 2
  %33 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %mux_locked, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mux_locked, align 4
  %idle = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %idle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %cmp36.not = icmp eq i32 %35, -1
  br i1 %cmp36.not, label %if.else40, label %if.then37

if.then37:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %call28, i32 0, i32 5
  %36 = ptrtoint ptr %deselect to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @i2c_mux_gpio_deselect, ptr %deselect, align 4
  br label %for.body.preheader

if.else40:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %values = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %values to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %values, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.else40, %if.then37
  %initial_state.0 = phi i32 [ %35, %if.then37 ], [ %40, %if.else40 ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0209 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %shl = shl nuw i32 1, %i.0209
  %and = and i32 %shl, %initial_state.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  %.197 = select i1 %tobool44.not, i32 3, i32 7
  %call49 = call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %i.0209, i32 noundef %.197) #6
  %cmp.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end53

if.end53:                                         ; preds = %for.body
  %41 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpios, align 4
  %arrayidx55 = getelementptr ptr, ptr %42, i32 %i.0209
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call49, ptr %arrayidx55, align 4
  %44 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load57 = load i8, ptr %mux_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load57)
  %tobool58.not = icmp sgt i8 %bf.load57, -1
  br i1 %tobool58.not, label %if.end53.for.inc_crit_edge, label %if.end60

if.end53.for.inc_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end60:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %call49 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call49, align 4
  %dev61 = getelementptr inbounds %struct.gpio_device, ptr %46, i32 0, i32 1
  %call62 = call ptr @i2c_root_adapter(ptr noundef %dev61) #6
  %cmp63 = icmp eq ptr %call62, %call34
  %47 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %47)
  %bf.load65 = load i8, ptr %mux_locked, align 4
  %bf.shl = select i1 %cmp63, i8 -128, i8 0
  %bf.clear66 = and i8 %bf.load65, 127
  %bf.set67 = or i8 %bf.clear66, %bf.shl
  store i8 %bf.set67, ptr %mux_locked, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %call49 to i32
  br label %alloc_failed

for.inc:                                          ; preds = %if.end60, %if.end53.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0209, 1
  %exitcond.not = icmp eq i32 %inc, %call12
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %49 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load71 = load i8, ptr %mux_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load71)
  %tobool74.not = icmp sgt i8 %bf.load71, -1
  br i1 %tobool74.not, label %for.end.if.end80_crit_edge, label %do.end78

for.end.if.end80_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

do.end78:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %if.end80

if.end80:                                         ; preds = %do.end78, %for.end.if.end80_crit_edge
  %50 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %n_values, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp84210 = icmp sgt i32 %51, 0
  br i1 %cmp84210, label %for.body86.lr.ph, label %if.end80.do.end120_crit_edge

if.end80.do.end120_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

for.body86.lr.ph:                                 ; preds = %if.end80
  %base_nr = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 1
  %classes = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 4
  %values105 = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %call.i, i32 0, i32 2
  br label %for.body86

for.cond81:                                       ; preds = %cond.end102
  %inc116 = add nuw nsw i32 %i.1211, 1
  %52 = ptrtoint ptr %n_values to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_values, align 4
  %cmp84 = icmp slt i32 %inc116, %53
  br i1 %cmp84, label %for.cond81.for.body86_crit_edge, label %for.cond81.do.end120_crit_edge

for.cond81.do.end120_crit_edge:                   ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end120

for.cond81.for.body86_crit_edge:                  ; preds = %for.cond81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body86

for.body86:                                       ; preds = %for.cond81.for.body86_crit_edge, %for.body86.lr.ph
  %i.1211 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc116, %for.cond81.for.body86_crit_edge ]
  %54 = ptrtoint ptr %base_nr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool88.not = icmp eq i32 %55, 0
  %add = add i32 %55, %i.1211
  %spec.select = select i1 %tobool88.not, i32 0, i32 %add
  %56 = ptrtoint ptr %classes to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %classes, align 4
  %tobool96.not = icmp eq ptr %57, null
  br i1 %tobool96.not, label %for.body86.cond.end102_crit_edge, label %cond.true97

for.body86.cond.end102_crit_edge:                 ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end102

cond.true97:                                      ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx100 = getelementptr i32, ptr %57, i32 %i.1211
  %58 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx100, align 4
  br label %cond.end102

cond.end102:                                      ; preds = %cond.true97, %for.body86.cond.end102_crit_edge
  %cond103 = phi i32 [ %59, %cond.true97 ], [ 0, %for.body86.cond.end102_crit_edge ]
  %60 = ptrtoint ptr %values105 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %values105, align 4
  %arrayidx106 = getelementptr i32, ptr %61, i32 %i.1211
  %62 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx106, align 4
  %call107 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call28, i32 noundef %spec.select, i32 noundef %63, i32 noundef %cond103) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %for.cond81, label %add_adapter_failed

do.end120:                                        ; preds = %for.cond81.do.end120_crit_edge, %if.end80.do.end120_crit_edge
  %.lcssa = phi i32 [ %51, %if.end80.do.end120_crit_edge ], [ %53, %for.cond81.do.end120_crit_edge ]
  %name = getelementptr inbounds %struct.i2c_adapter, ptr %call21, i32 0, i32 12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %.lcssa, ptr noundef %name) #9
  br label %cleanup124

add_adapter_failed:                               ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #8
  call void @i2c_mux_del_adapters(ptr noundef nonnull %call28) #6
  br label %alloc_failed

alloc_failed:                                     ; preds = %add_adapter_failed, %cleanup, %if.end24.alloc_failed_crit_edge
  %ret.3 = phi i32 [ %48, %cleanup ], [ %call107, %add_adapter_failed ], [ -12, %if.end24.alloc_failed_crit_edge ]
  call void @i2c_put_adapter(ptr noundef nonnull %call21) #6
  br label %cleanup124

cleanup124:                                       ; preds = %alloc_failed, %do.end120, %if.end17.cleanup124_crit_edge, %do.end, %do.end29.i, %if.end14.i.cleanup124_crit_edge, %do.end.i, %if.then.i.cleanup124_crit_edge, %is_of_node.exit.i.cleanup124_crit_edge, %if.then4.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.0 = phi i32 [ %., %do.end ], [ %ret.3, %alloc_failed ], [ 0, %do.end120 ], [ -12, %entry.cleanup124_crit_edge ], [ -517, %if.end17.cleanup124_crit_edge ], [ -517, %if.then4.cleanup124_crit_edge ], [ -517, %is_of_node.exit.i.cleanup124_crit_edge ], [ -517, %if.end14.i.cleanup124_crit_edge ], [ -19, %if.then.i.cleanup124_crit_edge ], [ -19, %do.end.i ], [ -12, %do.end29.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @i2c_put_adapter(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %values.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #6
  %2 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %chan, ptr %values.i, align 4
  %ngpios.i = getelementptr inbounds %struct.gpiomux, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngpios.i, align 4
  %gpios.i = getelementptr inbounds %struct.gpiomux, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpios.i, align 4
  %call.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef %4, ptr noundef %6, ptr noundef null, ptr noundef nonnull %values.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_root_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_gpio_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  %values.i = alloca [1 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %idle = getelementptr inbounds %struct.i2c_mux_gpio_platform_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %idle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %idle, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %values.i) #6
  %4 = ptrtoint ptr %values.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %values.i, align 4
  %ngpios.i = getelementptr inbounds %struct.gpiomux, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ngpios.i, align 4
  %gpios.i = getelementptr inbounds %struct.gpiomux, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %gpios.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %gpios.i, align 4
  %call.i = call i32 @gpiod_set_array_value_cansleep(i32 noundef %6, ptr noundef %8, ptr noundef null, ptr noundef nonnull %values.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %values.i) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_array_value_cansleep(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_i2c_mux_gpio__288_253_i2c_mux_gpio_driver_init6, !1, !"__initcall__kmod_i2c_mux_gpio__288_253_i2c_mux_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 253, i32 1}
!2 = !{ptr @__exitcall_i2c_mux_gpio_driver_exit, !1, !"__exitcall_i2c_mux_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 255, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 256, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 257, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 258, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 248, i32 11}
!14 = !{ptr @i2c_mux_gpio_driver, !15, !"i2c_mux_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 244, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 144, i32 35}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 146, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i2c_mux_gpio_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @i2c_mux_gpio_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 204, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @i2c_mux_gpio_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @i2c_mux_gpio_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 215, i32 2}
!33 = !{ptr @i2c_mux_gpio_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @i2c_mux_gpio_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 69, i32 37}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 71, i32 4}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @i2c_mux_gpio_probe_fw._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @i2c_mux_gpio_probe_fw._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 98, i32 3}
!44 = !{ptr @i2c_mux_gpio_probe_fw._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @i2c_mux_gpio_probe_fw._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 104, i32 36}
!48 = distinct !{null, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 109, i32 35}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 116, i32 36}
!52 = !{ptr @i2c_mux_gpio_of_match, !53, !"i2c_mux_gpio_of_match", i1 false, i1 false}
!53 = !{!"../drivers/i2c/muxes/i2c-mux-gpio.c", i32 238, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
