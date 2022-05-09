; ModuleID = '/llk/IR_all_yes/drivers/i2c/muxes/i2c-mux-pinctrl.c_pt.bc'
source_filename = "../drivers/i2c/muxes/i2c-mux-pinctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }
%struct.i2c_mux_pinctrl = type { ptr, [0 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.pinctrl_state = type { %struct.list_head, ptr, %struct.list_head }
%struct.pinctrl_setting = type { %struct.list_head, i32, ptr, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.pinctrl_setting_configs }
%struct.pinctrl_setting_configs = type { i32, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_i2c_mux_pinctrl__288_193_i2c_mux_pinctrl_driver_init6 = internal global ptr @i2c_mux_pinctrl_driver_init, section ".initcall6.init", align 4
@i2c_mux_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @i2c_mux_pinctrl_probe, ptr @i2c_mux_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @i2c_mux_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_i2c_mux_pinctrl_driver_exit = internal global ptr @i2c_mux_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [65 x i8] c"i2c_mux_pinctrl.description=pinctrl-based I2C multiplexer driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [59 x i8] c"i2c_mux_pinctrl.author=Stephen Warren <swarren@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [55 x i8] c"i2c_mux_pinctrl.file=drivers/i2c/muxes/i2c-mux-pinctrl\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"i2c_mux_pinctrl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [47 x i8] c"i2c_mux_pinctrl.alias=platform:i2c-mux-pinctrl\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c-mux-pinctrl\00", [16 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"i2c-mux-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl-names\00", [18 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 87, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot parse pinctrl-names: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"i2c_mux_pinctrl_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/i2c/muxes/i2c-mux-pinctrl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr = internal global ptr @i2c_mux_pinctrl_probe._entry, section ".printk_index", align 4
@i2c_mux_pinctrl_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Cannot get pinctrl: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr.9 = internal global ptr @i2c_mux_pinctrl_probe._entry.7, section ".printk_index", align 4
@i2c_mux_pinctrl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 117, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr.11 = internal global ptr @i2c_mux_pinctrl_probe._entry.10, section ".printk_index", align 4
@i2c_mux_pinctrl_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 125, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot look up pinctrl state %s: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr.14 = internal global ptr @i2c_mux_pinctrl_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"idle state must be last\0A\00", [39 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr.18 = internal global ptr @i2c_mux_pinctrl_probe._entry.16, section ".printk_index", align 4
@i2c_mux_pinctrl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 150, ptr @.str.21, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mux-locked i2c mux\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_probe._entry_ptr.22 = internal global ptr @i2c_mux_pinctrl_probe._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"i2c-parent\00", [21 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_parent_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.4, i32 62, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot parse i2c-parent\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c_mux_pinctrl_parent_adapter\00", [33 x i8] zeroinitializer }, align 32
@i2c_mux_pinctrl_parent_adapter._entry_ptr = internal global ptr @i2c_mux_pinctrl_parent_adapter._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [23 x i8] c"i2c_mux_pinctrl_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 185, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 187, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"i2c_mux_pinctrl_of_match\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 179, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 84, i32 44 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 86, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 109, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 117, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 124, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 129, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 133, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 150, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 60, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [39 x i8] c"../drivers/i2c/muxes/i2c-mux-pinctrl.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 62, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_i2c_mux_pinctrl_driver_exit, ptr @__initcall__kmod_i2c_mux_pinctrl__288_193_i2c_mux_pinctrl_driver_init6, ptr @i2c_mux_pinctrl_driver_exit, ptr @i2c_mux_pinctrl_parent_adapter._entry, ptr @i2c_mux_pinctrl_parent_adapter._entry_ptr, ptr @i2c_mux_pinctrl_probe._entry, ptr @i2c_mux_pinctrl_probe._entry.10, ptr @i2c_mux_pinctrl_probe._entry.12, ptr @i2c_mux_pinctrl_probe._entry.16, ptr @i2c_mux_pinctrl_probe._entry.19, ptr @i2c_mux_pinctrl_probe._entry.7, ptr @i2c_mux_pinctrl_probe._entry_ptr, ptr @i2c_mux_pinctrl_probe._entry_ptr.11, ptr @i2c_mux_pinctrl_probe._entry_ptr.14, ptr @i2c_mux_pinctrl_probe._entry_ptr.18, ptr @i2c_mux_pinctrl_probe._entry_ptr.22, ptr @i2c_mux_pinctrl_probe._entry_ptr.9, ptr @i2c_mux_pinctrl_driver, ptr @.str, ptr @i2c_mux_pinctrl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_mux_pinctrl_parent_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @i2c_mux_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @i2c_mux_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @i2c_mux_pinctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !66
  %call.i = tail call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %5 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %4, ptr noundef nonnull @.str.23, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end
  %6 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #10
  br label %if.then4

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %7) #7
  call void @of_node_put(ptr noundef nonnull %7) #7
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then4_crit_edge, label %i2c_mux_pinctrl_parent_adapter.exit

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

i2c_mux_pinctrl_parent_adapter.exit:              ; preds = %if.end.i
  %cmp.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %i2c_mux_pinctrl_parent_adapter.exit.if.then4_crit_edge, label %if.end6

i2c_mux_pinctrl_parent_adapter.exit.if.then4_crit_edge: ; preds = %i2c_mux_pinctrl_parent_adapter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.then4:                                         ; preds = %i2c_mux_pinctrl_parent_adapter.exit.if.then4_crit_edge, %if.end.i.if.then4_crit_edge, %do.end.i
  %retval.0.i170 = phi ptr [ %call2.i, %i2c_mux_pinctrl_parent_adapter.exit.if.then4_crit_edge ], [ inttoptr (i32 -19 to ptr), %do.end.i ], [ inttoptr (i32 -517 to ptr), %if.end.i.if.then4_crit_edge ]
  %8 = ptrtoint ptr %retval.0.i170 to i32
  br label %cleanup

if.end6:                                          ; preds = %i2c_mux_pinctrl_parent_adapter.exit
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i, i32 4) #7
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i159 = call i32 @llvm.uadd.sat.i32(i32 %11, i32 4) #7
  %retval.0.i160 = select i1 %10, i32 -1, i32 %spec.select.i159
  %call8 = call ptr @i2c_mux_alloc(ptr noundef nonnull %call2.i, ptr noundef %dev1, i32 noundef %call.i, i32 noundef %retval.0.i160, i32 noundef 0, ptr noundef nonnull @i2c_mux_pinctrl_select, ptr noundef null) #7
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %if.end6.err_put_parent_crit_edge, label %if.end10

if.end6.err_put_parent_crit_edge:                 ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_parent

if.end10:                                         ; preds = %if.end6
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %call8, i32 0, i32 3
  %12 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8, ptr %driver_data.i.i, align 4
  %call12 = call ptr @devm_pinctrl_get(ptr noundef %dev1) #7
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %13, align 4
  %cmp.i161 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22176.not = icmp eq i32 %call.i, 0
  br i1 %cmp22176.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = add nsw i32 %call.i, -1
  %deselect = getelementptr inbounds %struct.i2c_mux_core, ptr %call8, i32 0, i32 5
  br label %for.body

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %16) #10
  br label %err_put_parent

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call.i162 = call i32 @of_property_read_string_helper(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %name, i32 noundef 1, i32 noundef %i.0177) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %cmp24 = icmp slt i32 %call.i162, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call.i162) #10
  br label %err_put_parent

if.end29:                                         ; preds = %for.body
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 4
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %call31 = call ptr @pinctrl_lookup_state(ptr noundef %18, ptr noundef %20) #7
  %arrayidx = getelementptr %struct.i2c_mux_pinctrl, ptr %13, i32 0, i32 1, i32 %i.0177
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call31, ptr %arrayidx, align 4
  %cmp.i163 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call31 to i32
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %24, i32 noundef %22) #10
  br label %err_put_parent

if.end42:                                         ; preds = %if.end29
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %call43 = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(5) @.str.15) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end46, label %if.end42.for.inc_crit_edge

if.end42.for.inc_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end46:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0177, i32 %sub)
  %cmp47.not = icmp eq i32 %i.0177, %sub
  br i1 %cmp47.not, label %if.end52, label %do.end51

do.end51:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  br label %err_put_parent

if.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %deselect to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @i2c_mux_pinctrl_deselect, ptr %deselect, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end52, %if.end42.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, %call.i
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %28 = ptrtoint ptr %call8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call8, align 4
  %dev54 = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 9
  %call55 = call ptr @i2c_root_adapter(ptr noundef %dev54) #7
  %mux_locked = getelementptr inbounds %struct.i2c_mux_core, ptr %call8, i32 0, i32 2
  %30 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load = load i8, ptr %mux_locked, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %mux_locked, align 4
  br i1 %cmp22176.not, label %for.end.do.end78_crit_edge, label %for.end.for.body58_crit_edge

for.end.for.body58_crit_edge:                     ; preds = %for.end
  br label %for.body58

for.end.do.end78_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

for.cond56:                                       ; preds = %i2c_mux_pinctrl_root_adapter.exit
  %inc70 = add nuw nsw i32 %i.1179, 1
  %exitcond191.not = icmp eq i32 %inc70, %call.i
  br i1 %exitcond191.not, label %for.end71, label %for.cond56.for.body58_crit_edge

for.cond56.for.body58_crit_edge:                  ; preds = %for.cond56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body58

for.body58:                                       ; preds = %for.cond56.for.body58_crit_edge, %for.end.for.body58_crit_edge
  %i.1179 = phi i32 [ %inc70, %for.cond56.for.body58_crit_edge ], [ 0, %for.end.for.body58_crit_edge ]
  %arrayidx60 = getelementptr %struct.i2c_mux_pinctrl, ptr %13, i32 0, i32 1, i32 %i.1179
  %31 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx60, align 4
  %settings.i = getelementptr inbounds %struct.pinctrl_state, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %settings.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %setting.022.i = load ptr, ptr %settings.i, align 4
  %cmp.not23.i = icmp eq ptr %setting.022.i, %settings.i
  br i1 %cmp.not23.i, label %for.body58.i2c_mux_pinctrl_root_adapter.exit_crit_edge, label %for.body58.for.body.i_crit_edge

for.body58.for.body.i_crit_edge:                  ; preds = %for.body58
  br label %for.body.i

for.body58.i2c_mux_pinctrl_root_adapter.exit_crit_edge: ; preds = %for.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_mux_pinctrl_root_adapter.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body58.for.body.i_crit_edge
  %setting.025.i = phi ptr [ %setting.0.i, %for.inc.i.for.body.i_crit_edge ], [ %setting.022.i, %for.body58.for.body.i_crit_edge ]
  %root.024.i = phi ptr [ %root.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %for.body58.for.body.i_crit_edge ]
  %pctldev.i = getelementptr inbounds %struct.pinctrl_setting, ptr %setting.025.i, i32 0, i32 2
  %34 = ptrtoint ptr %pctldev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pctldev.i, align 4
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  %call.i164 = call ptr @i2c_root_adapter(ptr noundef %37) #7
  %tobool.not.i165 = icmp eq ptr %call.i164, null
  br i1 %tobool.not.i165, label %for.body.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge, label %if.end.i166

for.body.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_mux_pinctrl_root_adapter.exit

if.end.i166:                                      ; preds = %for.body.i
  %tobool2.not.i = icmp eq ptr %root.024.i, null
  br i1 %tobool2.not.i, label %if.end.i166.for.inc.i_crit_edge, label %if.else.i

if.end.i166.for.inc.i_crit_edge:                  ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end.i166
  %cmp4.not.i = icmp eq ptr %root.024.i, %call.i164
  br i1 %cmp4.not.i, label %if.else.i.for.inc.i_crit_edge, label %if.else.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge

if.else.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_mux_pinctrl_root_adapter.exit

if.else.i.for.inc.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i.for.inc.i_crit_edge, %if.end.i166.for.inc.i_crit_edge
  %root.1.i = phi ptr [ %root.024.i, %if.else.i.for.inc.i_crit_edge ], [ %call.i164, %if.end.i166.for.inc.i_crit_edge ]
  %38 = ptrtoint ptr %setting.025.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %setting.0.i = load ptr, ptr %setting.025.i, align 4
  %cmp.not.i = icmp eq ptr %setting.0.i, %settings.i
  br i1 %cmp.not.i, label %for.inc.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %i2c_mux_pinctrl_root_adapter.exit

i2c_mux_pinctrl_root_adapter.exit:                ; preds = %for.inc.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge, %if.else.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge, %for.body.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge, %for.body58.i2c_mux_pinctrl_root_adapter.exit_crit_edge
  %retval.0.i167 = phi ptr [ null, %for.body58.i2c_mux_pinctrl_root_adapter.exit_crit_edge ], [ null, %for.body.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge ], [ null, %if.else.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge ], [ %root.1.i, %for.inc.i.i2c_mux_pinctrl_root_adapter.exit_crit_edge ]
  %cmp62.not = icmp eq ptr %call55, %retval.0.i167
  br i1 %cmp62.not, label %for.cond56, label %for.end71.thread

for.end71.thread:                                 ; preds = %i2c_mux_pinctrl_root_adapter.exit
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %39)
  %bf.load65 = load i8, ptr %mux_locked, align 4
  %bf.clear66 = and i8 %bf.load65, 127
  store i8 %bf.clear66, ptr %mux_locked, align 4
  br label %if.end79

for.end71:                                        ; preds = %for.cond56
  %40 = ptrtoint ptr %mux_locked to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load73.pr.pr = load i8, ptr %mux_locked, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load73.pr.pr)
  %tobool74.not = icmp sgt i8 %bf.load73.pr.pr, -1
  br i1 %tobool74.not, label %for.end71.if.end79_crit_edge, label %for.end71.do.end78_crit_edge

for.end71.do.end78_crit_edge:                     ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end78

for.end71.if.end79_crit_edge:                     ; preds = %for.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end79

do.end78:                                         ; preds = %for.end71.do.end78_crit_edge, %for.end.do.end78_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %if.end79

if.end79:                                         ; preds = %do.end78, %for.end71.if.end79_crit_edge, %for.end71.thread
  %deselect81 = getelementptr inbounds %struct.i2c_mux_core, ptr %call8, i32 0, i32 5
  %41 = ptrtoint ptr %deselect81 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %deselect81, align 4
  %tobool82180 = icmp ne ptr %42, null
  %lnot.ext.neg181 = sext i1 %tobool82180 to i32
  %sub84182 = add i32 %call.i, %lnot.ext.neg181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub84182)
  %cmp85183 = icmp sgt i32 %sub84182, 0
  br i1 %cmp85183, label %if.end79.for.body86_crit_edge, label %if.end79.cleanup_crit_edge

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end79.for.body86_crit_edge:                    ; preds = %if.end79
  br label %for.body86

for.cond80:                                       ; preds = %for.body86
  %inc92 = add nuw nsw i32 %i.2184, 1
  %43 = ptrtoint ptr %deselect81 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %deselect81, align 4
  %tobool82 = icmp ne ptr %44, null
  %lnot.ext.neg = sext i1 %tobool82 to i32
  %sub84 = add i32 %call.i, %lnot.ext.neg
  %cmp85 = icmp slt i32 %inc92, %sub84
  br i1 %cmp85, label %for.cond80.for.body86_crit_edge, label %for.cond80.cleanup_crit_edge

for.cond80.cleanup_crit_edge:                     ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond80.for.body86_crit_edge:                  ; preds = %for.cond80
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.body86:                                       ; preds = %for.cond80.for.body86_crit_edge, %if.end79.for.body86_crit_edge
  %i.2184 = phi i32 [ %inc92, %for.cond80.for.body86_crit_edge ], [ 0, %if.end79.for.body86_crit_edge ]
  %call87 = call i32 @i2c_mux_add_adapter(ptr noundef nonnull %call8, i32 noundef 0, i32 noundef %i.2184, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %for.cond80, label %err_del_adapter

err_del_adapter:                                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_mux_del_adapters(ptr noundef nonnull %call8) #7
  br label %err_put_parent

err_put_parent:                                   ; preds = %err_del_adapter, %do.end51, %if.then35, %do.end28, %if.then15, %if.end6.err_put_parent_crit_edge
  %ret.0 = phi i32 [ %16, %if.then15 ], [ %call.i162, %do.end28 ], [ %22, %if.then35 ], [ -22, %do.end51 ], [ %call87, %err_del_adapter ], [ -12, %if.end6.err_put_parent_crit_edge ]
  call void @i2c_put_adapter(ptr noundef nonnull %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_put_parent, %for.cond80.cleanup_crit_edge, %if.end79.cleanup_crit_edge, %if.then4, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %8, %if.then4 ], [ %ret.0, %err_put_parent ], [ 0, %if.end79.cleanup_crit_edge ], [ 0, %for.cond80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %1) #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @i2c_put_adapter(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_select(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.i2c_mux_pinctrl, ptr %1, i32 0, i32 1, i32 %chan
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @pinctrl_select_state(ptr noundef %3, ptr noundef %5) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @i2c_mux_pinctrl_deselect(ptr nocapture noundef readonly %muxc, i32 noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %num_adapters = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 6
  %0 = ptrtoint ptr %num_adapters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_adapters, align 4
  %priv.i.i = getelementptr inbounds %struct.i2c_mux_core, ptr %muxc, i32 0, i32 3
  %2 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i = getelementptr %struct.i2c_mux_pinctrl, ptr %3, i32 0, i32 1, i32 %1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %call1.i = tail call i32 @pinctrl_select_state(ptr noundef %5, ptr noundef %7) #7
  ret i32 %call1.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_root_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !42, !43, !45, !46, !47, !48, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_i2c_mux_pinctrl__288_193_i2c_mux_pinctrl_driver_init6, !1, !"__initcall__kmod_i2c_mux_pinctrl__288_193_i2c_mux_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 193, i32 1}
!2 = !{ptr @__exitcall_i2c_mux_pinctrl_driver_exit, !1, !"__exitcall_i2c_mux_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 195, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 196, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 197, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 198, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 187, i32 11}
!14 = !{ptr @i2c_mux_pinctrl_driver, !15, !"i2c_mux_pinctrl_driver", i1 false, i1 false}
!15 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 185, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 84, i32 44}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 86, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @i2c_mux_pinctrl_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 109, i32 3}
!28 = !{ptr @i2c_mux_pinctrl_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @i2c_mux_pinctrl_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!31 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 117, i32 4}
!32 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 124, i32 4}
!35 = !{ptr @i2c_mux_pinctrl_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 129, i32 20}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 133, i32 4}
!41 = !{ptr @i2c_mux_pinctrl_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 150, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @i2c_mux_pinctrl_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @i2c_mux_pinctrl_probe._entry_ptr.22, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 60, i32 35}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 62, i32 3}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @i2c_mux_pinctrl_parent_adapter._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @i2c_mux_pinctrl_parent_adapter._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @i2c_mux_pinctrl_of_match, !56, !"i2c_mux_pinctrl_of_match", i1 false, i1 false}
!56 = !{!"../drivers/i2c/muxes/i2c-mux-pinctrl.c", i32 179, i32 34}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"auto-init"}
