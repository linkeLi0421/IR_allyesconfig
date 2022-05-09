; ModuleID = '/llk/IR_all_yes/drivers/platform/mellanox/mlxreg-lc.c_pt.bc'
source_filename = "../drivers/platform/mellanox/mlxreg-lc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.mlxcpld_mux_plat_data = type { ptr, i32, i32, i8, ptr, ptr }
%struct.mlxreg_core_platform_data = type { ptr, ptr, i32, i32, i32, [32 x i8], i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.mlxreg_hotplug_device = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.mlxreg_core_data = type { [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i16, ptr, %struct.mlxreg_hotplug_device, ptr, i32, i8, i8, i8, i8 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
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
%struct.mlxreg_lc = type { ptr, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32 }
%struct.mlxreg_core_hotplug_notifier = type { [32 x i8], ptr, ptr }
%struct.mlxreg_core_hotplug_platform_data = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__initcall__kmod_mlxreg_lc__288_902_mlxreg_lc_driver_init6 = internal global ptr @mlxreg_lc_driver_init, section ".initcall6.init", align 4
@mlxreg_lc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mlxreg_lc_probe, ptr @mlxreg_lc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mlxreg_lc_driver_exit = internal global ptr @mlxreg_lc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [53 x i8] c"mlxreg_lc.author=Vadim Pasternak <vadimp@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"mlxreg_lc.description=Nvidia line card platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [51 x i8] c"mlxreg_lc.file=drivers/platform/mellanox/mlxreg-lc\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [31 x i8] c"mlxreg_lc.license=Dual BSD/GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias293 = internal constant [35 x i8] c"mlxreg_lc.alias=platform:mlxreg-lc\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxreg-lc\00", [22 x i8] zeroinitializer }, align 32
@mlxreg_lc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mlxreg_lc->lock\00", [47 x i8] zeroinitializer }, align 32
@mlxreg_lc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 811, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get adapter for bus %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mlxreg_lc_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/platform/mellanox/mlxreg-lc.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlxreg_lc_probe._entry_ptr = internal global ptr @mlxreg_lc_probe._entry, section ".printk_index", align 4
@mlxreg_lc_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to create client %s at bus %d at addr 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@mlxreg_lc_probe._entry_ptr.9 = internal global ptr @mlxreg_lc_probe._entry.7, section ".printk_index", align 4
@mlxreg_lc_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlxreg_lc_regmap_conf = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr @mlxreg_lc_writeable_reg, ptr @mlxreg_lc_readable_reg, ptr @mlxreg_lc_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 16383, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlxreg_lc_regmap_default, i32 1, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"mlxreg_lc:828:(&mlxreg_lc_regmap_conf)->lock\00", [51 x i8] zeroinitializer }, align 32
@mlxreg_lc_regmap_default = internal constant { [1 x %struct.reg_default], [24 x i8] } { [1 x %struct.reg_default] [%struct.reg_default { i32 9692, i32 0 }], [24 x i8] zeroinitializer }, align 32
@mlxreg_lc_event_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 561, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"linecard#%d state %d event kind %d action %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mlxreg_lc_event_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mlxreg_lc_event_handler._entry_ptr = internal global ptr @mlxreg_lc_event_handler._entry, section ".printk_index", align 4
@mlxreg_lc_create_static_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.14, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mlxreg_lc_create_static_devices\00", [32 x i8] zeroinitializer }, align 32
@mlxreg_lc_create_static_devices._entry_ptr = internal global ptr @mlxreg_lc_create_static_devices._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2c-mux-mlxcpld\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mlxreg-io\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-mlxreg\00", [20 x i8] zeroinitializer }, align 32
@mlxreg_lc_mux_data = internal global { [1 x %struct.mlxcpld_mux_plat_data], [40 x i8] } { [1 x %struct.mlxcpld_mux_plat_data] [%struct.mlxcpld_mux_plat_data { ptr @mlxreg_lc_chan, i32 26, i32 9692, i8 2, ptr null, ptr null }], [40 x i8] zeroinitializer }, align 32
@mlxreg_lc_regs_io = internal global { %struct.mlxreg_core_platform_data, [40 x i8] } { %struct.mlxreg_core_platform_data { ptr @mlxreg_lc_io_data, ptr null, i32 21, i32 0, i32 0, [32 x i8] zeroinitializer, i32 0 }, [40 x i8] zeroinitializer }, align 32
@mlxreg_lc_led = internal global { %struct.mlxreg_core_platform_data, [40 x i8] } { %struct.mlxreg_core_platform_data { ptr @mlxreg_lc_led_data, ptr null, i32 2, i32 0, i32 0, [32 x i8] c"pci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, [40 x i8] zeroinitializer }, align 32
@mlxreg_lc_mux_brdinfo = internal global { %struct.i2c_board_info, [40 x i8] } { %struct.i2c_board_info { [20 x i8] c"i2c-mux-mlxcpld\00\00\00\00\00", i16 0, i16 50, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@mlxreg_lc_aux_pwr_brdinfo = internal global { [2 x %struct.mlxreg_hotplug_device], [56 x i8] } { [2 x %struct.mlxreg_hotplug_device] [%struct.mlxreg_hotplug_device { ptr null, ptr null, ptr @mlxreg_lc_aux_pwr_devices, i32 3, ptr null, i32 0, ptr null, ptr null, ptr null }, %struct.mlxreg_hotplug_device { ptr null, ptr null, ptr getelementptr (i8, ptr @mlxreg_lc_aux_pwr_devices, i64 56), i32 4, ptr null, i32 0, ptr null, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@mlxreg_lc_main_pwr_brdinfo = internal global { [4 x %struct.mlxreg_hotplug_device], [48 x i8] } { [4 x %struct.mlxreg_hotplug_device] [%struct.mlxreg_hotplug_device { ptr null, ptr null, ptr @mlxreg_lc_main_pwr_devices, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null }, %struct.mlxreg_hotplug_device { ptr null, ptr null, ptr getelementptr (i8, ptr @mlxreg_lc_main_pwr_devices, i64 56), i32 0, ptr null, i32 0, ptr null, ptr null, ptr null }, %struct.mlxreg_hotplug_device { ptr null, ptr null, ptr getelementptr (i8, ptr @mlxreg_lc_main_pwr_devices, i64 112), i32 1, ptr null, i32 0, ptr null, ptr null, ptr null }, %struct.mlxreg_hotplug_device { ptr null, ptr null, ptr getelementptr (i8, ptr @mlxreg_lc_main_pwr_devices, i64 168), i32 2, ptr null, i32 0, ptr null, ptr null, ptr null }], [48 x i8] zeroinitializer }, align 32
@mlxreg_lc_chan = internal global { [26 x i32], [56 x i8] } { [26 x i32] [i32 4, i32 5, i32 6, i32 7, i32 8, i32 16, i32 32, i32 33, i32 34, i32 35, i32 64, i32 65, i32 66, i32 67, i32 68, i32 69, i32 70, i32 71, i32 72, i32 73, i32 74, i32 75, i32 76, i32 77, i32 78, i32 79], [56 x i8] zeroinitializer }, align 32
@mlxreg_lc_io_data = internal global { [21 x %struct.mlxreg_core_data], [616 x i8] } { [21 x %struct.mlxreg_core_data] [%struct.mlxreg_core_data { [32 x i8] c"cpld1_version\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9472, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"fpga1_version\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9473, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"cpld1_pn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9476, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 2, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"fpga1_pn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9478, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 2, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"cpld1_version_min\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9694, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"fpga1_version_min\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9695, i32 0, i32 255, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_fpga_not_done\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 253, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_aux_pwr_or_ref\00\00\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 251, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_dc_dc_pwr_fail\00\00\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 247, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_from_chassis\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 239, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_pwr_off_from_chassis\00\00\00\00\00\00", i32 9501, i32 223, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_line_card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"reset_line_card_pwr_en\00\00\00\00\00\00\00\00\00\00", i32 9501, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"cpld_upgrade_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9524, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.mlxreg_core_data { [32 x i8] c"fpga_upgrade_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9524, i32 253, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.mlxreg_core_data { [32 x i8] c"qsfp_pwr_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9518, i32 254, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"vpd_wp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9518, i32 247, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.mlxreg_core_data { [32 x i8] c"agb_spi_burn_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9518, i32 223, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.mlxreg_core_data { [32 x i8] c"fpga_spi_burn_en\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9518, i32 191, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 420, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 1 }, %struct.mlxreg_core_data { [32 x i8] c"max_power\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9713, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 2, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"config\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9723, i32 0, i32 65535, i32 0, i32 0, i32 0, i32 0, i32 0, i16 292, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 2, i8 0, i8 0 }], [616 x i8] zeroinitializer }, align 32
@mlxreg_lc_led_data = internal global { [2 x %struct.mlxreg_core_data], [48 x i8] } { [2 x %struct.mlxreg_core_data] [%struct.mlxreg_core_data { [32 x i8] c"status:green\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9504, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }, %struct.mlxreg_core_data { [32 x i8] c"status:orange\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9504, i32 240, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i16 0, ptr null, %struct.mlxreg_hotplug_device zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@mlxreg_lc_aux_pwr_devices = internal global { [2 x %struct.i2c_board_info], [48 x i8] } { [2 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 81, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"24c32\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 81, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [48 x i8] zeroinitializer }, align 32
@mlxreg_lc_main_pwr_devices = internal global { [4 x %struct.i2c_board_info], [32 x i8] } { [4 x %struct.i2c_board_info] [%struct.i2c_board_info { [20 x i8] c"mp2975\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 98, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"mp2975\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 100, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"max11603\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 109, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, %struct.i2c_board_info { [20 x i8] c"lm25066\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 21, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 9504, i64 9518, i64 9524, i64 9692]
@__sancov_gen_cov_switch_values.19 = internal global [15 x i64] [i64 13, i64 32, i64 9472, i64 9473, i64 9476, i64 9478, i64 9501, i64 9504, i64 9518, i64 9524, i64 9692, i64 9694, i64 9695, i64 9713, i64 9723]
@__sancov_gen_cov_switch_values.20 = internal global [15 x i64] [i64 13, i64 32, i64 9472, i64 9473, i64 9476, i64 9478, i64 9501, i64 9504, i64 9518, i64 9524, i64 9692, i64 9694, i64 9695, i64 9713, i64 9723]
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"mlxreg_lc_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 894, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 898, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 802, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 810, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 819, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"mlxreg_lc_regmap_conf\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 152, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 827, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [25 x i8] c"mlxreg_lc_regmap_default\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 147, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 560, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 422, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 730, i32 58 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 740, i32 42 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 752, i32 42 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"mlxreg_lc_mux_data\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 175, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"mlxreg_lc_regs_io\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 406, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"mlxreg_lc_led\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 261, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"mlxreg_lc_mux_brdinfo\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 185, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"mlxreg_lc_aux_pwr_brdinfo\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 200, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"mlxreg_lc_main_pwr_brdinfo\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 228, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [15 x i8] c"mlxreg_lc_chan\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 168, i32 12 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"mlxreg_lc_io_data\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 268, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant [19 x i8] c"mlxreg_lc_led_data\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 248, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"mlxreg_lc_aux_pwr_devices\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 190, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [27 x i8] c"mlxreg_lc_main_pwr_devices\00", align 1
@___asan_gen_.127 = private constant [41 x i8] c"../drivers/platform/mellanox/mlxreg-lc.c\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 212, i32 30 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias293, ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mlxreg_lc_driver_exit, ptr @__initcall__kmod_mlxreg_lc__288_902_mlxreg_lc_driver_init6, ptr @mlxreg_lc_create_static_devices._entry, ptr @mlxreg_lc_create_static_devices._entry_ptr, ptr @mlxreg_lc_driver_exit, ptr @mlxreg_lc_event_handler._entry, ptr @mlxreg_lc_event_handler._entry_ptr, ptr @mlxreg_lc_probe._entry, ptr @mlxreg_lc_probe._entry.7, ptr @mlxreg_lc_probe._entry_ptr, ptr @mlxreg_lc_probe._entry_ptr.9, ptr @mlxreg_lc_driver, ptr @.str, ptr @mlxreg_lc_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mlxreg_lc_probe._key, ptr @mlxreg_lc_regmap_conf, ptr @.str.10, ptr @mlxreg_lc_regmap_default, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @mlxreg_lc_mux_data, ptr @mlxreg_lc_regs_io, ptr @mlxreg_lc_led, ptr @mlxreg_lc_mux_brdinfo, ptr @mlxreg_lc_aux_pwr_brdinfo, ptr @mlxreg_lc_main_pwr_brdinfo, ptr @mlxreg_lc_chan, ptr @mlxreg_lc_io_data, ptr @mlxreg_lc_led_data, ptr @mlxreg_lc_aux_pwr_devices, ptr @mlxreg_lc_main_pwr_devices], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_regmap_conf to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_regmap_default to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_event_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_create_static_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_mux_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_regs_io to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_led to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_mux_brdinfo to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_aux_pwr_brdinfo to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_main_pwr_brdinfo to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_chan to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_io_data to i32), i32 2520, i32 3136, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_led_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_aux_pwr_devices to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlxreg_lc_main_pwr_devices to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_lc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mlxreg_lc_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlxreg_lc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mlxreg_lc_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_lc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %lsb.i = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 152, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mlxreg_lc_probe.__key) #7
  %notifier = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notifier, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %do.body.if.end10_crit_edge, label %if.then7

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %user_handler = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %user_handler to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mlxreg_lc_event_handler, ptr %user_handler, align 4
  %5 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %notifier, align 4
  %handle = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %handle, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %do.body.if.end10_crit_edge
  %hpdev = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11
  %nr = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11, i32 3
  %8 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr, align 4
  %call11 = tail call ptr @i2c_get_adapter(i32 noundef %9) #7
  %10 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call11, ptr %hpdev, align 4
  %tobool15.not = icmp eq ptr %call11, null
  br i1 %tobool15.not, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %12) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end10
  %brdinfo = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %brdinfo to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %brdinfo, align 4
  %call27 = tail call ptr @i2c_new_client_device(ptr noundef nonnull %call11, ptr noundef %14) #7
  %client = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call27, ptr %client, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end35, label %if.end50

do.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %brdinfo to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %brdinfo, align 4
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr, align 4
  %addr = getelementptr inbounds %struct.i2c_board_info, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  %conv = zext i16 %21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %17, i32 noundef %19, i32 noundef %conv) #10
  %22 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hpdev, align 4
  tail call void @i2c_put_adapter(ptr noundef %23) #7
  %24 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %hpdev, align 4
  %25 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end23
  %call53 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call27, ptr noundef nonnull @mlxreg_lc_regmap_conf, ptr noundef nonnull @mlxreg_lc_probe._key, ptr noundef nonnull @.str.10) #7
  %cmp.i131 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i131, label %if.then55, label %for.body

if.then55:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call53 to i32
  br label %mlxreg_lc_probe_fail

for.body:                                         ; preds = %if.end50
  %call60 = tail call i32 @regmap_write(ptr noundef %call53, i32 noundef 9692, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %for.end, label %for.body.mlxreg_lc_probe_fail_crit_edge

for.body.mlxreg_lc_probe_fail_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_probe_fail

for.end:                                          ; preds = %for.body
  tail call void @regcache_mark_dirty(ptr noundef %call53) #7
  %call64 = tail call i32 @regcache_sync(ptr noundef %call53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end67, label %for.end.mlxreg_lc_probe_fail_crit_edge

for.end.mlxreg_lc_probe_fail_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_probe_fail

if.end67:                                         ; preds = %for.end
  %29 = ptrtoint ptr %brdinfo to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %brdinfo, align 4
  %platform_data = getelementptr inbounds %struct.i2c_board_info, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %platform_data, align 4
  %regmap70 = getelementptr inbounds %struct.mlxreg_core_hotplug_platform_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %regmap70 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap70, align 4
  %par_regmap = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 2
  %35 = ptrtoint ptr %par_regmap to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %par_regmap, align 4
  %data71 = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %data71 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %1, ptr %data71, align 4
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %39 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lsb.i) #7
  %41 = ptrtoint ptr %lsb.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %lsb.i, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %42 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %regval.i, align 4, !annotation !85
  %call.i132 = call i32 @regmap_read(ptr noundef %call53, i32 noundef 9723, ptr noundef nonnull %lsb.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i, label %cond.end.i, label %if.end67.mlxreg_lc_config_init.exit.thread_crit_edge

if.end67.mlxreg_lc_config_init.exit.thread_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread

cond.end.i:                                       ; preds = %if.end67
  %call2.i = call i32 @regmap_read(ptr noundef %call53, i32 noundef 9723, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i, label %cond.end.i.mlxreg_lc_config_init.exit.thread_crit_edge

cond.end.i.mlxreg_lc_config_init.exit.thread_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread

if.end.i:                                         ; preds = %cond.end.i
  %43 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regval.i, align 4
  %and.i = shl i32 %44, 8
  %shl.i = and i32 %and.i, 65280
  %45 = ptrtoint ptr %lsb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %lsb.i, align 4
  %and4.i = and i32 %46, 255
  %or.i = or i32 %shl.i, %and4.i
  store i32 %or.i, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cond63.i = icmp eq i32 %or.i, 0
  br i1 %cond63.i, label %sw.bb.i, label %if.end.i.mlxreg_lc_config_init.exit.thread_crit_edge

if.end.i.mlxreg_lc_config_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread

sw.bb.i:                                          ; preds = %if.end.i
  %47 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  %mux_data.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %mux_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @mlxreg_lc_mux_data, ptr %mux_data.i.i, align 4
  %io_data.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 4
  %50 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @mlxreg_lc_regs_io, ptr %io_data.i.i, align 4
  %led_data.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %led_data.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @mlxreg_lc_led, ptr %led_data.i.i, align 4
  %mux_brdinfo.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %mux_brdinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @mlxreg_lc_mux_brdinfo, ptr %mux_brdinfo.i.i, align 4
  %call.i.i = call ptr @devm_kmemdup(ptr noundef %dev1.i.i, ptr noundef nonnull @mlxreg_lc_aux_pwr_brdinfo, i32 noundef 72, i32 noundef 3264) #7
  %aux_devs.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 11
  %53 = ptrtoint ptr %aux_devs.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.i.i, ptr %aux_devs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.i.mlxreg_lc_config_init.exit.thread_crit_edge, label %if.end.i.i

sw.bb.i.mlxreg_lc_config_init.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread

if.end.i.i:                                       ; preds = %sw.bb.i
  %aux_devs_num.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 12
  %54 = ptrtoint ptr %aux_devs_num.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 2, ptr %aux_devs_num.i.i, align 4
  %call3.i.i = call ptr @devm_kmemdup(ptr noundef %dev1.i.i, ptr noundef nonnull @mlxreg_lc_main_pwr_brdinfo, i32 noundef 144, i32 noundef 3264) #7
  %main_devs.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 13
  %55 = ptrtoint ptr %main_devs.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call3.i.i, ptr %main_devs.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool5.not.i.i, label %if.end.i.i.mlxreg_lc_config_init.exit.thread_crit_edge, label %sw.epilog.i

if.end.i.i.mlxreg_lc_config_init.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread

sw.epilog.i:                                      ; preds = %if.end.i.i
  %main_devs_num.i.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 14
  %56 = ptrtoint ptr %main_devs_num.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 4, ptr %main_devs_num.i.i, align 4
  %57 = ptrtoint ptr %mux_data.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mux_data.i.i, align 4
  %handle.i = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %handle.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i, ptr %handle.i, align 4
  %60 = load ptr, ptr %mux_data.i.i, align 4
  %completion_notify.i = getelementptr inbounds %struct.mlxcpld_mux_plat_data, ptr %60, i32 0, i32 5
  %61 = ptrtoint ptr %completion_notify.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @mlxreg_lc_completion_notify, ptr %completion_notify.i, align 4
  %62 = load ptr, ptr %mux_data.i.i, align 4
  %63 = ptrtoint ptr %mux_brdinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mux_brdinfo.i.i, align 4
  %platform_data.i133 = getelementptr inbounds %struct.i2c_board_info, ptr %64, i32 0, i32 4
  %65 = ptrtoint ptr %platform_data.i133 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %platform_data.i133, align 4
  %66 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr, align 4
  %68 = load ptr, ptr %mux_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %69 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %70 = call ptr @memset(ptr %69, i32 255, i32 48)
  %71 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %dev1.i, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %fwnode.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %69, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @.str.15, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %75 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %67, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %76 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %77 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %78 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %68, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %79 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 24, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %80 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %81 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %properties.i.i, align 8
  %call.i108.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #7
  %mux.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 10
  %82 = ptrtoint ptr %mux.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i108.i, ptr %mux.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i108.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sw.epilog.i.mlxreg_lc_config_init.exit_crit_edge, label %if.end19.i

sw.epilog.i.mlxreg_lc_config_init.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit

if.end19.i:                                       ; preds = %sw.epilog.i
  %83 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %io_data.i.i, align 4
  %tobool20.not.i = icmp eq ptr %84, null
  br i1 %tobool20.not.i, label %if.end19.i.if.end34.i_crit_edge, label %if.then21.i

if.end19.i.if.end34.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then21.i:                                      ; preds = %if.end19.i
  %regmap23.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %regmap23.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call53, ptr %regmap23.i, align 4
  %86 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %nr, align 4
  %88 = ptrtoint ptr %io_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %io_data.i.i, align 4
  %call27.i = call fastcc ptr @platform_device_register_resndata(ptr noundef %dev1.i, ptr noundef nonnull @.str.16, i32 noundef %87, ptr noundef %89, i32 noundef 56) #7
  %io_regs.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 8
  %90 = ptrtoint ptr %io_regs.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call27.i, ptr %io_regs.i, align 4
  %cmp.i109.i = icmp ugt ptr %call27.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i109.i, label %if.then21.i.fail_register_io.i_crit_edge, label %if.then21.i.if.end34.i_crit_edge

if.then21.i.if.end34.i_crit_edge:                 ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.then21.i.fail_register_io.i_crit_edge:         ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_register_io.i

if.end34.i:                                       ; preds = %if.then21.i.if.end34.i_crit_edge, %if.end19.i.if.end34.i_crit_edge
  %91 = ptrtoint ptr %led_data.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %led_data.i.i, align 4
  %tobool35.not.i = icmp eq ptr %92, null
  br i1 %tobool35.not.i, label %if.end34.i.mlxreg_lc_config_init.exit.thread137_crit_edge, label %if.then36.i

if.end34.i.mlxreg_lc_config_init.exit.thread137_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread137

if.then36.i:                                      ; preds = %if.end34.i
  %regmap38.i = getelementptr inbounds %struct.mlxreg_core_platform_data, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %regmap38.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call53, ptr %regmap38.i, align 4
  %94 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %nr, align 4
  %96 = ptrtoint ptr %led_data.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %led_data.i.i, align 4
  %call42.i = call fastcc ptr @platform_device_register_resndata(ptr noundef %dev1.i, ptr noundef nonnull @.str.17, i32 noundef %95, ptr noundef %97, i32 noundef 56) #7
  %led.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 7
  %98 = ptrtoint ptr %led.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call42.i, ptr %led.i, align 4
  %cmp.i110.i = icmp ugt ptr %call42.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110.i, label %if.then45.i, label %if.then36.i.mlxreg_lc_config_init.exit.thread137_crit_edge

if.then36.i.mlxreg_lc_config_init.exit.thread137_crit_edge: ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit.thread137

if.then45.i:                                      ; preds = %if.then36.i
  %io_regs50.i = getelementptr inbounds %struct.mlxreg_lc, ptr %call.i, i32 0, i32 8
  %99 = ptrtoint ptr %io_regs50.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_regs50.i, align 4
  %tobool51.not.i = icmp eq ptr %100, null
  br i1 %tobool51.not.i, label %if.then45.i.fail_register_io.i_crit_edge, label %if.then52.i

if.then45.i.fail_register_io.i_crit_edge:         ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail_register_io.i

if.then52.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @platform_device_unregister(ptr noundef nonnull %100) #7
  br label %fail_register_io.i

fail_register_io.i:                               ; preds = %if.then52.i, %if.then45.i.fail_register_io.i_crit_edge, %if.then21.i.fail_register_io.i_crit_edge
  %err.0.in.i = phi ptr [ %call42.i, %if.then52.i ], [ %call42.i, %if.then45.i.fail_register_io.i_crit_edge ], [ %call27.i, %if.then21.i.fail_register_io.i_crit_edge ]
  %101 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mux.i, align 4
  %tobool56.not.i = icmp eq ptr %102, null
  br i1 %tobool56.not.i, label %fail_register_io.i.mlxreg_lc_config_init.exit_crit_edge, label %if.then57.i

fail_register_io.i.mlxreg_lc_config_init.exit_crit_edge: ; preds = %fail_register_io.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_init.exit

if.then57.i:                                      ; preds = %fail_register_io.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @platform_device_unregister(ptr noundef nonnull %102) #7
  br label %mlxreg_lc_config_init.exit

mlxreg_lc_config_init.exit.thread:                ; preds = %if.end.i.i.mlxreg_lc_config_init.exit.thread_crit_edge, %sw.bb.i.mlxreg_lc_config_init.exit.thread_crit_edge, %if.end.i.mlxreg_lc_config_init.exit.thread_crit_edge, %cond.end.i.mlxreg_lc_config_init.exit.thread_crit_edge, %if.end67.mlxreg_lc_config_init.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.i.i.mlxreg_lc_config_init.exit.thread_crit_edge ], [ -12, %sw.bb.i.mlxreg_lc_config_init.exit.thread_crit_edge ], [ %call.i132, %if.end67.mlxreg_lc_config_init.exit.thread_crit_edge ], [ -19, %if.end.i.mlxreg_lc_config_init.exit.thread_crit_edge ], [ %call2.i, %cond.end.i.mlxreg_lc_config_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i) #7
  br label %mlxreg_lc_probe_fail

mlxreg_lc_config_init.exit.thread137:             ; preds = %if.then36.i.mlxreg_lc_config_init.exit.thread137_crit_edge, %if.end34.i.mlxreg_lc_config_init.exit.thread137_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i) #7
  br label %cleanup

mlxreg_lc_config_init.exit:                       ; preds = %if.then57.i, %fail_register_io.i.mlxreg_lc_config_init.exit_crit_edge, %sw.epilog.i.mlxreg_lc_config_init.exit_crit_edge
  %retval.0.i.in = phi ptr [ %err.0.in.i, %if.then57.i ], [ %err.0.in.i, %fail_register_io.i.mlxreg_lc_config_init.exit_crit_edge ], [ %call.i108.i, %sw.epilog.i.mlxreg_lc_config_init.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lsb.i) #7
  %tobool75.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool75.not, label %mlxreg_lc_config_init.exit.cleanup_crit_edge, label %mlxreg_lc_config_init.exit.mlxreg_lc_probe_fail_crit_edge

mlxreg_lc_config_init.exit.mlxreg_lc_probe_fail_crit_edge: ; preds = %mlxreg_lc_config_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_probe_fail

mlxreg_lc_config_init.exit.cleanup_crit_edge:     ; preds = %mlxreg_lc_config_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxreg_lc_probe_fail:                             ; preds = %mlxreg_lc_config_init.exit.mlxreg_lc_probe_fail_crit_edge, %mlxreg_lc_config_init.exit.thread, %for.end.mlxreg_lc_probe_fail_crit_edge, %for.body.mlxreg_lc_probe_fail_crit_edge, %if.then55
  %err.0 = phi i32 [ %28, %if.then55 ], [ %call60, %for.body.mlxreg_lc_probe_fail_crit_edge ], [ %call64, %for.end.mlxreg_lc_probe_fail_crit_edge ], [ %retval.0.i, %mlxreg_lc_config_init.exit.mlxreg_lc_probe_fail_crit_edge ], [ %retval.0.i.ph, %mlxreg_lc_config_init.exit.thread ]
  %103 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hpdev, align 4
  call void @i2c_put_adapter(ptr noundef %104) #7
  br label %cleanup

cleanup:                                          ; preds = %mlxreg_lc_probe_fail, %mlxreg_lc_config_init.exit.cleanup_crit_edge, %mlxreg_lc_config_init.exit.thread137, %do.end35, %do.end19, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %do.end35 ], [ %err.0, %mlxreg_lc_probe_fail ], [ -14, %do.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %mlxreg_lc_config_init.exit.cleanup_crit_edge ], [ 0, %mlxreg_lc_config_init.exit.thread137 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_lc_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %notifier = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notifier, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %user_handler = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %user_handler to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %user_handler, align 4
  %7 = ptrtoint ptr %notifier to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %notifier, align 4
  %handle = getelementptr inbounds %struct.mlxreg_core_hotplug_notifier, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %handle, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %main_devs_num = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %main_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1.i = icmp sgt i32 %11, 0
  br i1 %cmp1.i, label %for.body.i.preheader, label %if.end.mlxreg_lc_destroy_static_devices.exit_crit_edge

if.end.mlxreg_lc_destroy_static_devices.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_destroy_static_devices.exit

for.body.i.preheader:                             ; preds = %if.end
  %main_devs = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 13
  %12 = ptrtoint ptr %main_devs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %main_devs, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.03.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %dev.02.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %for.body.i.preheader ]
  %client.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 0, i32 1
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %15) #7
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %client.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.mlxreg_lc_destroy_static_devices.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.mlxreg_lc_destroy_static_devices.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_destroy_static_devices.exit

mlxreg_lc_destroy_static_devices.exit:            ; preds = %for.inc.i.mlxreg_lc_destroy_static_devices.exit_crit_edge, %if.end.mlxreg_lc_destroy_static_devices.exit_crit_edge
  %aux_devs_num = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 12
  %17 = ptrtoint ptr %aux_devs_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %aux_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1.i29 = icmp sgt i32 %18, 0
  br i1 %cmp1.i29, label %for.body.i34.preheader, label %mlxreg_lc_destroy_static_devices.exit.mlxreg_lc_destroy_static_devices.exit40_crit_edge

mlxreg_lc_destroy_static_devices.exit.mlxreg_lc_destroy_static_devices.exit40_crit_edge: ; preds = %mlxreg_lc_destroy_static_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_destroy_static_devices.exit40

for.body.i34.preheader:                           ; preds = %mlxreg_lc_destroy_static_devices.exit
  %aux_devs = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 11
  %19 = ptrtoint ptr %aux_devs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %aux_devs, align 4
  br label %for.body.i34

for.body.i34:                                     ; preds = %for.inc.i39.for.body.i34_crit_edge, %for.body.i34.preheader
  %i.03.i30 = phi i32 [ %inc.i36, %for.inc.i39.for.body.i34_crit_edge ], [ 0, %for.body.i34.preheader ]
  %dev.02.i31 = phi ptr [ %incdec.ptr.i37, %for.inc.i39.for.body.i34_crit_edge ], [ %20, %for.body.i34.preheader ]
  %client.i32 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.02.i31, i32 0, i32 1
  %21 = ptrtoint ptr %client.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i32, align 4
  %tobool.not.i33 = icmp eq ptr %22, null
  br i1 %tobool.not.i33, label %for.body.i34.for.inc.i39_crit_edge, label %if.then.i35

for.body.i34.for.inc.i39_crit_edge:               ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i39

if.then.i35:                                      ; preds = %for.body.i34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %22) #7
  %23 = ptrtoint ptr %client.i32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %client.i32, align 4
  br label %for.inc.i39

for.inc.i39:                                      ; preds = %if.then.i35, %for.body.i34.for.inc.i39_crit_edge
  %inc.i36 = add nuw nsw i32 %i.03.i30, 1
  %incdec.ptr.i37 = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.02.i31, i32 1
  %exitcond.not.i38 = icmp eq i32 %inc.i36, %18
  br i1 %exitcond.not.i38, label %for.inc.i39.mlxreg_lc_destroy_static_devices.exit40_crit_edge, label %for.inc.i39.for.body.i34_crit_edge

for.inc.i39.for.body.i34_crit_edge:               ; preds = %for.inc.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i34

for.inc.i39.mlxreg_lc_destroy_static_devices.exit40_crit_edge: ; preds = %for.inc.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_destroy_static_devices.exit40

mlxreg_lc_destroy_static_devices.exit40:          ; preds = %for.inc.i39.mlxreg_lc_destroy_static_devices.exit40_crit_edge, %mlxreg_lc_destroy_static_devices.exit.mlxreg_lc_destroy_static_devices.exit40_crit_edge
  %led.i = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %led.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %led.i, align 4
  %tobool.not.i41 = icmp eq ptr %25, null
  br i1 %tobool.not.i41, label %mlxreg_lc_destroy_static_devices.exit40.if.end.i_crit_edge, label %if.then.i42

mlxreg_lc_destroy_static_devices.exit40.if.end.i_crit_edge: ; preds = %mlxreg_lc_destroy_static_devices.exit40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i42:                                      ; preds = %mlxreg_lc_destroy_static_devices.exit40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %25) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i42, %mlxreg_lc_destroy_static_devices.exit40.if.end.i_crit_edge
  %io_regs.i = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 8
  %26 = ptrtoint ptr %io_regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %io_regs.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %27) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %mux.i = getelementptr inbounds %struct.mlxreg_lc, ptr %3, i32 0, i32 10
  %28 = ptrtoint ptr %mux.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mux.i, align 4
  %tobool6.not.i = icmp eq ptr %29, null
  br i1 %tobool6.not.i, label %if.end5.i.mlxreg_lc_config_exit.exit_crit_edge, label %if.then7.i

if.end5.i.mlxreg_lc_config_exit.exit_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_config_exit.exit

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_device_unregister(ptr noundef nonnull %29) #7
  br label %mlxreg_lc_config_exit.exit

mlxreg_lc_config_exit.exit:                       ; preds = %if.then7.i, %if.end5.i.mlxreg_lc_config_exit.exit_crit_edge
  %client = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client, align 4
  %tobool4.not = icmp eq ptr %31, null
  br i1 %tobool4.not, label %mlxreg_lc_config_exit.exit.if.end13_crit_edge, label %if.then5

mlxreg_lc_config_exit.exit.if.end13_crit_edge:    ; preds = %mlxreg_lc_config_exit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then5:                                         ; preds = %mlxreg_lc_config_exit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %hpdev = getelementptr inbounds %struct.mlxreg_core_data, ptr %1, i32 0, i32 11
  tail call void @i2c_unregister_device(ptr noundef nonnull %31) #7
  %32 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %client, align 4
  %33 = ptrtoint ptr %hpdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hpdev, align 4
  tail call void @i2c_put_adapter(ptr noundef %34) #7
  %35 = ptrtoint ptr %hpdev to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %hpdev, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then5, %mlxreg_lc_config_exit.exit.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_lc_event_handler(ptr noundef %handle, i32 noundef %kind, i8 noundef zeroext %action) #2 align 64 {
entry:
  %regval.i145 = alloca i32, align 4
  %regval.i108 = alloca i32, align 4
  %regval.i98 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handle, align 4
  %data = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %slot = getelementptr inbounds %struct.mlxreg_core_data, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %slot, align 2
  %conv = zext i8 %5 to i32
  %state = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 15
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  %conv1 = zext i8 %action to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %conv, i32 noundef %7, i32 noundef %kind, i32 noundef %conv1) #10
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = zext i32 %kind to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %kind, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 3, label %sw.bb22
    i32 5, label %sw.bb49
    i32 7, label %sw.bb53
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool.not.i = icmp eq i8 %action, 0
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %and.i = and i32 %12, -5
  %masksel = select i1 %tobool.not.i, i32 0, i32 4
  %storemerge173 = or i32 %and.i, %masksel
  store i32 %storemerge173, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #7
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 4
  %and4 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp ne i32 %and4, 0
  %or.cond = or i1 %tobool.not.i, %tobool5.not
  br i1 %or.cond, label %sw.bb.if.end12_crit_edge, label %if.then8

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then8:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %regval.i, align 4, !annotation !85
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %par_regmap.i = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 2
  %16 = ptrtoint ptr %par_regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par_regmap.i, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %reg_pwr.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %reg_pwr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_pwr.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %17, i32 noundef %21, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i96 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i96, label %mlxreg_lc_power_on_off.exit, label %mlxreg_lc_power_on_off.exit.thread

mlxreg_lc_power_on_off.exit.thread:               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

mlxreg_lc_power_on_off.exit:                      ; preds = %if.then8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %slot5.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %slot5.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %slot5.i, align 2
  %conv6.i = zext i8 %25 to i32
  %sub7.i = add nsw i32 %conv6.i, -1
  %shl8.i = shl nuw i32 1, %sub7.i
  %26 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regval.i, align 4
  %or.i97 = or i32 %shl8.i, %27
  store i32 %or.i97, ptr %regval.i, align 4
  %28 = ptrtoint ptr %par_regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %par_regmap.i, align 4
  %reg_pwr12.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %23, i32 0, i32 7
  %30 = ptrtoint ptr %reg_pwr12.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %reg_pwr12.i, align 4
  %call13.i = call i32 @regmap_write(ptr noundef %29, i32 noundef %31, i32 noundef %or.i97) #7
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool9.not = icmp eq i32 %call13.i, 0
  br i1 %tobool9.not, label %mlxreg_lc_power_on_off.exit.if.end12_crit_edge, label %mlxreg_lc_power_on_off.exit.cleanup_crit_edge

mlxreg_lc_power_on_off.exit.cleanup_crit_edge:    ; preds = %mlxreg_lc_power_on_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxreg_lc_power_on_off.exit.if.end12_crit_edge:   ; preds = %mlxreg_lc_power_on_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %mlxreg_lc_power_on_off.exit.if.end12_crit_edge, %sw.bb.if.end12_crit_edge
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state, align 4
  %and14 = and i32 %33, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond94 = or i1 %tobool.not.i, %tobool15.not
  br i1 %or.cond94, label %if.end12.cleanup_crit_edge, label %if.then19

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then19:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i98) #7
  %34 = ptrtoint ptr %regval.i98 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %regval.i98, align 4, !annotation !85
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %par_regmap.i100 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 2
  %35 = ptrtoint ptr %par_regmap.i100 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %par_regmap.i100, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %reg_ena.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %reg_ena.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reg_ena.i, align 4
  %call.i102 = call i32 @regmap_read(ptr noundef %36, i32 noundef %40, ptr noundef nonnull %regval.i98) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i103 = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i103, label %if.end.i104, label %if.then19.mlxreg_lc_enable_disable.exit_crit_edge

if.then19.mlxreg_lc_enable_disable.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_enable_disable.exit

if.end.i104:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %slot.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %slot.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %slot.i, align 2
  %conv.i = zext i8 %44 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %shl.i = shl nuw i32 1, %sub.i
  %45 = ptrtoint ptr %regval.i98 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regval.i98, align 4
  %or.i105 = or i32 %shl.i, %46
  store i32 %or.i105, ptr %regval.i98, align 4
  %47 = ptrtoint ptr %par_regmap.i100 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %par_regmap.i100, align 4
  %reg_ena12.i = getelementptr inbounds %struct.mlxreg_core_data, ptr %42, i32 0, i32 8
  %49 = ptrtoint ptr %reg_ena12.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %reg_ena12.i, align 4
  %call13.i106 = call i32 @regmap_write(ptr noundef %48, i32 noundef %50, i32 noundef %or.i105) #7
  br label %mlxreg_lc_enable_disable.exit

mlxreg_lc_enable_disable.exit:                    ; preds = %if.end.i104, %if.then19.mlxreg_lc_enable_disable.exit_crit_edge
  %err.0.i107 = phi i32 [ %call.i102, %if.then19.mlxreg_lc_enable_disable.exit_crit_edge ], [ %call13.i106, %if.end.i104 ]
  call void @mutex_unlock(ptr noundef %lock.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i98) #7
  br label %cleanup

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool23.not = icmp eq i8 %action, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %sw.bb22
  %and26 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end35, label %if.then28

if.then28:                                        ; preds = %if.then24
  %and30 = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.then28.cleanup_crit_edge, label %if.then32

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then32:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i108) #7
  %51 = ptrtoint ptr %regval.i108 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %regval.i108, align 4, !annotation !85
  %lock.i109 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i109, i32 noundef 0) #7
  %par_regmap.i110 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 2
  %52 = ptrtoint ptr %par_regmap.i110 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %par_regmap.i110, align 4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %reg_ena.i112 = getelementptr inbounds %struct.mlxreg_core_data, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %reg_ena.i112 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %reg_ena.i112, align 4
  %call.i113 = call i32 @regmap_read(ptr noundef %53, i32 noundef %57, ptr noundef nonnull %regval.i108) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %if.end.i119, label %if.then32.mlxreg_lc_enable_disable.exit124_crit_edge

if.then32.mlxreg_lc_enable_disable.exit124_crit_edge: ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_enable_disable.exit124

if.end.i119:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data, align 4
  %slot.i115 = getelementptr inbounds %struct.mlxreg_core_data, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %slot.i115 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %slot.i115, align 2
  %conv.i116 = zext i8 %61 to i32
  %sub.i117 = add nsw i32 %conv.i116, -1
  %shl.i118 = shl nuw i32 1, %sub.i117
  %62 = ptrtoint ptr %regval.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %regval.i108, align 4
  %or.i120 = or i32 %shl.i118, %63
  store i32 %or.i120, ptr %regval.i108, align 4
  %64 = ptrtoint ptr %par_regmap.i110 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %par_regmap.i110, align 4
  %reg_ena12.i121 = getelementptr inbounds %struct.mlxreg_core_data, ptr %59, i32 0, i32 8
  %66 = ptrtoint ptr %reg_ena12.i121 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reg_ena12.i121, align 4
  %call13.i122 = call i32 @regmap_write(ptr noundef %65, i32 noundef %67, i32 noundef %or.i120) #7
  br label %mlxreg_lc_enable_disable.exit124

mlxreg_lc_enable_disable.exit124:                 ; preds = %if.end.i119, %if.then32.mlxreg_lc_enable_disable.exit124_crit_edge
  %err.0.i123 = phi i32 [ %call.i113, %if.then32.mlxreg_lc_enable_disable.exit124_crit_edge ], [ %call13.i122, %if.end.i119 ]
  call void @mutex_unlock(ptr noundef %lock.i109) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i108) #7
  br label %cleanup

if.end35:                                         ; preds = %if.then24
  %main_devs = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 13
  %68 = ptrtoint ptr %main_devs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %main_devs, align 4
  %main_devs_num = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 14
  %70 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %main_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp34.i = icmp sgt i32 %71, 0
  br i1 %cmp34.i, label %if.end35.for.body.i_crit_edge, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end35.for.body.i_crit_edge:                    ; preds = %if.end35
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end35.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %dev.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %69, %if.end35.for.body.i_crit_edge ]
  %72 = ptrtoint ptr %dev.035.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.035.i, align 4
  %brdinfo.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 2
  %74 = ptrtoint ptr %brdinfo.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %brdinfo.i, align 4
  %call.i125 = tail call ptr @i2c_new_client_device(ptr noundef %73, ptr noundef %75) #7
  %client.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 1
  %76 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i125, ptr %client.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i125, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %brdinfo.i.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 2
  %client.i.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 1
  %77 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %handle, align 4
  %79 = ptrtoint ptr %brdinfo.i.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %brdinfo.i.le, align 4
  %nr.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 3
  %81 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %80, i32 0, i32 2
  %83 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %addr.i, align 2
  %conv.i126 = zext i16 %84 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.8, ptr noundef %80, i32 noundef %82, i32 noundef %conv.i126) #10
  %85 = ptrtoint ptr %dev.035.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %dev.035.i, align 4
  %86 = ptrtoint ptr %client.i.le to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %client.i.le, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036.i)
  %cmp938.not.i = icmp eq i32 %i.036.i, 0
  br i1 %cmp938.not.i, label %do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %71
  br i1 %exitcond.not.i, label %for.inc.i.if.end39_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end39_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %dec39.in.i = phi i32 [ %dec39.i, %while.body.i.while.body.i_crit_edge ], [ %i.036.i, %do.end.i.while.body.i_crit_edge ]
  %dec39.i = add nsw i32 %dec39.in.i, -1
  %client11.i = getelementptr %struct.mlxreg_hotplug_device, ptr %69, i32 %dec39.i, i32 1
  %89 = ptrtoint ptr %client11.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %client11.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %90) #7
  %91 = ptrtoint ptr %client11.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %client11.i, align 4
  %cmp9.i = icmp sgt i32 %dec39.in.i, 1
  br i1 %cmp9.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge

while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mlxreg_lc_create_static_devices.exit:             ; preds = %while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge, %do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge
  %tobool37.not = icmp eq ptr %87, null
  br i1 %tobool37.not, label %mlxreg_lc_create_static_devices.exit.if.end39_crit_edge, label %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge

mlxreg_lc_create_static_devices.exit.cleanup_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxreg_lc_create_static_devices.exit.if.end39_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.end39:                                         ; preds = %mlxreg_lc_create_static_devices.exit.if.end39_crit_edge, %for.inc.i.if.end39_crit_edge, %if.end35.if.end39_crit_edge
  %92 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state, align 4
  %and41 = and i32 %93, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end48_crit_edge, label %if.then43

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %call44 = tail call fastcc i32 @mlxreg_lc_enable_disable(ptr noundef %handle, i1 noundef zeroext true)
  br label %if.end48

if.else:                                          ; preds = %sw.bb22
  %main_devs_num47 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 14
  %94 = ptrtoint ptr %main_devs_num47 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %main_devs_num47, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp1.i = icmp sgt i32 %95, 0
  br i1 %cmp1.i, label %for.body.i129.preheader, label %if.end48.thread

for.body.i129.preheader:                          ; preds = %if.else
  %main_devs46 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 13
  %96 = ptrtoint ptr %main_devs46 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %main_devs46, align 4
  br label %for.body.i129

if.end48.thread:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i135168 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i135168, i32 noundef 0) #7
  br label %if.else.i142

for.body.i129:                                    ; preds = %for.inc.i134.for.body.i129_crit_edge, %for.body.i129.preheader
  %i.03.i = phi i32 [ %inc.i131, %for.inc.i134.for.body.i129_crit_edge ], [ 0, %for.body.i129.preheader ]
  %dev.02.i = phi ptr [ %incdec.ptr.i132, %for.inc.i134.for.body.i129_crit_edge ], [ %97, %for.body.i129.preheader ]
  %client.i127 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 0, i32 1
  %98 = ptrtoint ptr %client.i127 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %client.i127, align 4
  %tobool.not.i128 = icmp eq ptr %99, null
  br i1 %tobool.not.i128, label %for.body.i129.for.inc.i134_crit_edge, label %if.then.i130

for.body.i129.for.inc.i134_crit_edge:             ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i134

if.then.i130:                                     ; preds = %for.body.i129
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_unregister_device(ptr noundef nonnull %99) #7
  %100 = ptrtoint ptr %client.i127 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr null, ptr %client.i127, align 4
  br label %for.inc.i134

for.inc.i134:                                     ; preds = %if.then.i130, %for.body.i129.for.inc.i134_crit_edge
  %inc.i131 = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i132 = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 1
  %exitcond.not.i133 = icmp eq i32 %inc.i131, %95
  br i1 %exitcond.not.i133, label %for.inc.i134.if.end48_crit_edge, label %for.inc.i134.for.body.i129_crit_edge

for.inc.i134.for.body.i129_crit_edge:             ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i129

for.inc.i134.if.end48_crit_edge:                  ; preds = %for.inc.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end48:                                         ; preds = %for.inc.i134.if.end48_crit_edge, %if.then43, %if.end39.if.end48_crit_edge
  %err.2 = phi i32 [ %call44, %if.then43 ], [ 0, %if.end39.if.end48_crit_edge ], [ 0, %for.inc.i134.if.end48_crit_edge ]
  %lock.i135 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i135, i32 noundef 0) #7
  br i1 %tobool23.not, label %if.end48.if.else.i142_crit_edge, label %if.then.i139

if.end48.if.else.i142_crit_edge:                  ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i142

if.then.i139:                                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state, align 4
  %or.i138 = or i32 %102, 2
  br label %mlxreg_lc_state_update.exit144

if.else.i142:                                     ; preds = %if.end48.if.else.i142_crit_edge, %if.end48.thread
  %lock.i135172 = phi ptr [ %lock.i135168, %if.end48.thread ], [ %lock.i135, %if.end48.if.else.i142_crit_edge ]
  %err.2170 = phi i32 [ 0, %if.end48.thread ], [ %err.2, %if.end48.if.else.i142_crit_edge ]
  %103 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state, align 4
  %and.i141 = and i32 %104, -3
  br label %mlxreg_lc_state_update.exit144

mlxreg_lc_state_update.exit144:                   ; preds = %if.else.i142, %if.then.i139
  %storemerge = phi i32 [ %or.i138, %if.then.i139 ], [ %and.i141, %if.else.i142 ]
  %lock.i135171 = phi ptr [ %lock.i135, %if.then.i139 ], [ %lock.i135172, %if.else.i142 ]
  %err.2169 = phi i32 [ %err.2, %if.then.i139 ], [ %err.2170, %if.else.i142 ]
  %105 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %storemerge, ptr %state, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i135171) #7
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool50 = icmp ne i8 %action, 0
  %call52 = tail call fastcc i32 @mlxreg_lc_enable_disable(ptr noundef %handle, i1 noundef zeroext %tobool50)
  br label %cleanup

sw.bb53:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool54.not = icmp eq i8 %action, 0
  br i1 %tobool54.not, label %sw.bb53.cleanup_crit_edge, label %if.then55

sw.bb53.cleanup_crit_edge:                        ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then55:                                        ; preds = %sw.bb53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i145) #7
  %106 = ptrtoint ptr %regval.i145 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %regval.i145, align 4, !annotation !85
  %lock.i146 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i146, i32 noundef 0) #7
  %par_regmap.i147 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 2
  %107 = ptrtoint ptr %par_regmap.i147 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %par_regmap.i147, align 4
  %109 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %data, align 4
  %reg_pwr.i149 = getelementptr inbounds %struct.mlxreg_core_data, ptr %110, i32 0, i32 7
  %111 = ptrtoint ptr %reg_pwr.i149 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %reg_pwr.i149, align 4
  %call.i150 = call i32 @regmap_read(ptr noundef %108, i32 noundef %112, ptr noundef nonnull %regval.i145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i150)
  %tobool.not.i151 = icmp eq i32 %call.i150, 0
  br i1 %tobool.not.i151, label %if.end.i156, label %if.then55.mlxreg_lc_power_on_off.exit162_crit_edge

if.then55.mlxreg_lc_power_on_off.exit162_crit_edge: ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_power_on_off.exit162

if.end.i156:                                      ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %slot5.i152 = getelementptr inbounds %struct.mlxreg_core_data, ptr %114, i32 0, i32 16
  %115 = ptrtoint ptr %slot5.i152 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %slot5.i152, align 2
  %conv6.i153 = zext i8 %116 to i32
  %sub7.i154 = add nsw i32 %conv6.i153, -1
  %shl8.i155 = shl nuw i32 1, %sub7.i154
  %neg.i = xor i32 %shl8.i155, -1
  %117 = ptrtoint ptr %regval.i145 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %regval.i145, align 4
  %and.i157 = and i32 %118, %neg.i
  store i32 %and.i157, ptr %regval.i145, align 4
  %119 = ptrtoint ptr %par_regmap.i147 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %par_regmap.i147, align 4
  %reg_pwr12.i159 = getelementptr inbounds %struct.mlxreg_core_data, ptr %114, i32 0, i32 7
  %121 = ptrtoint ptr %reg_pwr12.i159 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %reg_pwr12.i159, align 4
  %call13.i160 = call i32 @regmap_write(ptr noundef %120, i32 noundef %122, i32 noundef %and.i157) #7
  br label %mlxreg_lc_power_on_off.exit162

mlxreg_lc_power_on_off.exit162:                   ; preds = %if.end.i156, %if.then55.mlxreg_lc_power_on_off.exit162_crit_edge
  %err.0.i161 = phi i32 [ %call.i150, %if.then55.mlxreg_lc_power_on_off.exit162_crit_edge ], [ %call13.i160, %if.end.i156 ]
  call void @mutex_unlock(ptr noundef %lock.i146) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i145) #7
  br label %cleanup

cleanup:                                          ; preds = %mlxreg_lc_power_on_off.exit162, %sw.bb53.cleanup_crit_edge, %sw.bb49, %mlxreg_lc_state_update.exit144, %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge, %mlxreg_lc_enable_disable.exit124, %if.then28.cleanup_crit_edge, %mlxreg_lc_enable_disable.exit, %if.end12.cleanup_crit_edge, %mlxreg_lc_power_on_off.exit.cleanup_crit_edge, %mlxreg_lc_power_on_off.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call13.i, %mlxreg_lc_power_on_off.exit.cleanup_crit_edge ], [ %err.0.i123, %mlxreg_lc_enable_disable.exit124 ], [ 0, %if.then28.cleanup_crit_edge ], [ %88, %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %err.0.i161, %mlxreg_lc_power_on_off.exit162 ], [ 0, %sw.bb53.cleanup_crit_edge ], [ %call52, %sw.bb49 ], [ %err.2169, %mlxreg_lc_state_update.exit144 ], [ %err.0.i107, %mlxreg_lc_enable_disable.exit ], [ 0, %if.end12.cleanup_crit_edge ], [ %call.i, %mlxreg_lc_power_on_off.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_get_adapter(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_client_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxreg_lc_power_on_off(ptr noundef %mlxreg_lc, i8 noundef zeroext %action) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !85
  %lock = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %par_regmap = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 2
  %1 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par_regmap, align 4
  %data = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %reg_pwr = getelementptr inbounds %struct.mlxreg_core_data, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %reg_pwr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_pwr, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.regmap_read_fail_crit_edge

entry.regmap_read_fail_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %regmap_read_fail

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %action)
  %tobool1.not = icmp eq i8 %action, 0
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %slot5 = getelementptr inbounds %struct.mlxreg_core_data, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %slot5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %slot5, align 2
  %conv6 = zext i8 %10 to i32
  %sub7 = add nsw i32 %conv6, -1
  %shl8 = shl nuw i32 1, %sub7
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval, align 4
  %or = or i32 %shl8, %12
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl8, -1
  %13 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval, align 4
  %and = and i32 %14, %neg
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then2 ]
  %15 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %regval, align 4
  %16 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par_regmap, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %reg_pwr12 = getelementptr inbounds %struct.mlxreg_core_data, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %reg_pwr12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_pwr12, align 4
  %call13 = call i32 @regmap_write(ptr noundef %17, i32 noundef %21, i32 noundef %storemerge) #7
  br label %regmap_read_fail

regmap_read_fail:                                 ; preds = %if.end9, %entry.regmap_read_fail_crit_edge
  %err.0 = phi i32 [ %call, %entry.regmap_read_fail_crit_edge ], [ %call13, %if.end9 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlxreg_lc_enable_disable(ptr noundef %mlxreg_lc, i1 noundef zeroext %action) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !85
  %lock = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %par_regmap = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 2
  %1 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %par_regmap, align 4
  %data = getelementptr inbounds %struct.mlxreg_lc, ptr %mlxreg_lc, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %reg_ena = getelementptr inbounds %struct.mlxreg_core_data, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %reg_ena to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_ena, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.regmap_read_fail_crit_edge

entry.regmap_read_fail_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %regmap_read_fail

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %slot = getelementptr inbounds %struct.mlxreg_core_data, ptr %8, i32 0, i32 16
  %9 = ptrtoint ptr %slot to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %slot, align 2
  %conv = zext i8 %10 to i32
  %sub = add nsw i32 %conv, -1
  %shl = shl nuw i32 1, %sub
  br i1 %action, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %regval, align 4
  %or = or i32 %shl, %12
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %shl, -1
  %13 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval, align 4
  %and = and i32 %14, %neg
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i32 [ %and, %if.else ], [ %or, %if.then2 ]
  %15 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %regval, align 4
  %16 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par_regmap, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %reg_ena12 = getelementptr inbounds %struct.mlxreg_core_data, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %reg_ena12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg_ena12, align 4
  %call13 = call i32 @regmap_write(ptr noundef %17, i32 noundef %21, i32 noundef %storemerge) #7
  br label %regmap_read_fail

regmap_read_fail:                                 ; preds = %if.end9, %entry.regmap_read_fail_crit_edge
  %err.0 = phi i32 [ %call, %entry.regmap_read_fail_crit_edge ], [ %call13, %if.end9 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxreg_lc_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %reg, label %sw.epilog [
    i32 9504, label %entry.return_crit_edge
    i32 9518, label %entry.return_crit_edge1
    i32 9524, label %entry.return_crit_edge2
    i32 9692, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxreg_lc_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %reg, label %sw.epilog [
    i32 9472, label %entry.return_crit_edge
    i32 9473, label %entry.return_crit_edge1
    i32 9476, label %entry.return_crit_edge2
    i32 9478, label %entry.return_crit_edge3
    i32 9501, label %entry.return_crit_edge4
    i32 9504, label %entry.return_crit_edge5
    i32 9518, label %entry.return_crit_edge6
    i32 9524, label %entry.return_crit_edge7
    i32 9692, label %entry.return_crit_edge8
    i32 9694, label %entry.return_crit_edge9
    i32 9695, label %entry.return_crit_edge10
    i32 9713, label %entry.return_crit_edge11
    i32 9723, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mlxreg_lc_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %reg, label %sw.epilog [
    i32 9472, label %entry.return_crit_edge
    i32 9473, label %entry.return_crit_edge1
    i32 9476, label %entry.return_crit_edge2
    i32 9478, label %entry.return_crit_edge3
    i32 9501, label %entry.return_crit_edge4
    i32 9504, label %entry.return_crit_edge5
    i32 9518, label %entry.return_crit_edge6
    i32 9524, label %entry.return_crit_edge7
    i32 9692, label %entry.return_crit_edge8
    i32 9694, label %entry.return_crit_edge9
    i32 9695, label %entry.return_crit_edge10
    i32 9713, label %entry.return_crit_edge11
    i32 9723, label %entry.return_crit_edge12
  ]

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlxreg_lc_completion_notify(ptr noundef %handle, ptr nocapture noundef readnone %parent, ptr nocapture noundef readonly %adapters) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !85
  %aux_devs = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 11
  %aux_devs_num = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 12
  %1 = ptrtoint ptr %aux_devs_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %aux_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp180 = icmp sgt i32 %2, 0
  br i1 %cmp180, label %for.body.preheader, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %aux_devs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %aux_devs, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0182 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %aux_dev.0181 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %4, %for.body.preheader ]
  %nr = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %aux_dev.0181, i32 0, i32 3
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr, align 4
  %arrayidx = getelementptr ptr, ptr %adapters, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %aux_dev.0181 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %aux_dev.0181, align 4
  %10 = load ptr, ptr %arrayidx, align 4
  %nr3 = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr3, align 4
  store i32 %12, ptr %nr, align 4
  %inc = add nuw nsw i32 %i.0182, 1
  %incdec.ptr = getelementptr %struct.mlxreg_hotplug_device, ptr %aux_dev.0181, i32 1
  %13 = ptrtoint ptr %aux_devs_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %aux_devs_num, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %15 = ptrtoint ptr %aux_devs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %aux_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp34.i = icmp sgt i32 %14, 0
  br i1 %cmp34.i, label %for.end.for.body.i_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %i.036.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.end.for.body.i_crit_edge ]
  %dev.035.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %16, %for.end.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %dev.035.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.035.i, align 4
  %brdinfo.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 2
  %19 = ptrtoint ptr %brdinfo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %brdinfo.i, align 4
  %call.i = tail call ptr @i2c_new_client_device(ptr noundef %18, ptr noundef %20) #7
  %client.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 1
  %21 = ptrtoint ptr %client.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %client.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %for.inc.i

do.end.i:                                         ; preds = %for.body.i
  %brdinfo.i.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 2
  %client.i.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 1
  %22 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %handle, align 4
  %24 = ptrtoint ptr %brdinfo.i.le to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %brdinfo.i.le, align 4
  %nr.i = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 0, i32 3
  %26 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_board_info, ptr %25, i32 0, i32 2
  %28 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %29 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.8, ptr noundef %25, i32 noundef %27, i32 noundef %conv.i) #10
  %30 = ptrtoint ptr %dev.035.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %dev.035.i, align 4
  %31 = ptrtoint ptr %client.i.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i.le, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036.i)
  %cmp938.not.i = icmp eq i32 %i.036.i, 0
  br i1 %cmp938.not.i, label %do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge, label %do.end.i.while.body.i_crit_edge

do.end.i.while.body.i_crit_edge:                  ; preds = %do.end.i
  br label %while.body.i

do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.036.i, 1
  %incdec.ptr.i = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.035.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %14
  br i1 %exitcond.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %do.end.i.while.body.i_crit_edge
  %dec39.in.i = phi i32 [ %dec39.i, %while.body.i.while.body.i_crit_edge ], [ %i.036.i, %do.end.i.while.body.i_crit_edge ]
  %dec39.i = add nsw i32 %dec39.in.i, -1
  %client11.i = getelementptr %struct.mlxreg_hotplug_device, ptr %16, i32 %dec39.i, i32 1
  %34 = ptrtoint ptr %client11.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %client11.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %35) #7
  %36 = ptrtoint ptr %client11.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %client11.i, align 4
  %cmp9.i = icmp sgt i32 %dec39.in.i, 1
  br i1 %cmp9.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge

while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

mlxreg_lc_create_static_devices.exit:             ; preds = %while.body.i.mlxreg_lc_create_static_devices.exit_crit_edge, %do.end.i.mlxreg_lc_create_static_devices.exit_crit_edge
  %tobool.not = icmp eq ptr %32, null
  br i1 %tobool.not, label %mlxreg_lc_create_static_devices.exit.if.end_crit_edge, label %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge

mlxreg_lc_create_static_devices.exit.cleanup_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mlxreg_lc_create_static_devices.exit.if.end_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %mlxreg_lc_create_static_devices.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %for.end.if.end_crit_edge, %entry.if.end_crit_edge
  %main_devs = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 13
  %main_devs_num = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 14
  %37 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %main_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp8185 = icmp sgt i32 %38, 0
  br i1 %cmp8185, label %for.body9.preheader, label %if.end.for.end20_crit_edge

if.end.for.end20_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.body9.preheader:                              ; preds = %if.end
  %39 = ptrtoint ptr %main_devs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %main_devs, align 4
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.preheader
  %i.1187 = phi i32 [ %inc18, %for.body9.for.body9_crit_edge ], [ 0, %for.body9.preheader ]
  %main_dev.0186 = phi ptr [ %incdec.ptr19, %for.body9.for.body9_crit_edge ], [ %40, %for.body9.preheader ]
  %nr10 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %main_dev.0186, i32 0, i32 3
  %41 = ptrtoint ptr %nr10 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %nr10, align 4
  %arrayidx11 = getelementptr ptr, ptr %adapters, i32 %42
  %43 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx11, align 4
  %45 = ptrtoint ptr %main_dev.0186 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %44, ptr %main_dev.0186, align 4
  %46 = load ptr, ptr %arrayidx11, align 4
  %nr15 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %nr15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr15, align 4
  store i32 %48, ptr %nr10, align 4
  %inc18 = add nuw nsw i32 %i.1187, 1
  %incdec.ptr19 = getelementptr %struct.mlxreg_hotplug_device, ptr %main_dev.0186, i32 1
  %49 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %main_devs_num, align 4
  %cmp8 = icmp slt i32 %inc18, %50
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.end20_crit_edge

for.body9.for.end20_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end20

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body9

for.end20:                                        ; preds = %for.body9.for.end20_crit_edge, %if.end.for.end20_crit_edge
  %par_regmap = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 2
  %51 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %par_regmap, align 4
  %data = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 3
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data, align 4
  %reg_pwr = getelementptr inbounds %struct.mlxreg_core_data, ptr %54, i32 0, i32 7
  %55 = ptrtoint ptr %reg_pwr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %reg_pwr, align 4
  %call21 = call i32 @regmap_read(ptr noundef %52, i32 noundef %56, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end20.cleanup_crit_edge

for.end20.cleanup_crit_edge:                      ; preds = %for.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %for.end20
  %57 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %regval, align 4
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.mlxreg_core_data, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask, align 4
  %and = and i32 %62, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %if.end24.if.end34_crit_edge, label %if.then27

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then27:                                        ; preds = %if.end24
  %63 = ptrtoint ptr %main_devs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %main_devs, align 4
  %65 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %main_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp34.i118 = icmp sgt i32 %66, 0
  br i1 %cmp34.i118, label %if.then27.for.body.i125_crit_edge, label %if.then27.if.end33_crit_edge

if.then27.if.end33_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then27.for.body.i125_crit_edge:                ; preds = %if.then27
  br label %for.body.i125

for.body.i125:                                    ; preds = %for.inc.i136.for.body.i125_crit_edge, %if.then27.for.body.i125_crit_edge
  %i.036.i119 = phi i32 [ %inc.i133, %for.inc.i136.for.body.i125_crit_edge ], [ 0, %if.then27.for.body.i125_crit_edge ]
  %dev.035.i120 = phi ptr [ %incdec.ptr.i134, %for.inc.i136.for.body.i125_crit_edge ], [ %64, %if.then27.for.body.i125_crit_edge ]
  %67 = ptrtoint ptr %dev.035.i120 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.035.i120, align 4
  %brdinfo.i121 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 0, i32 2
  %69 = ptrtoint ptr %brdinfo.i121 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %brdinfo.i121, align 4
  %call.i122 = call ptr @i2c_new_client_device(ptr noundef %68, ptr noundef %70) #7
  %client.i123 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 0, i32 1
  %71 = ptrtoint ptr %client.i123 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i122, ptr %client.i123, align 4
  %cmp.i.i124 = icmp ugt ptr %call.i122, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i124, label %do.end.i132, label %for.inc.i136

do.end.i132:                                      ; preds = %for.body.i125
  %brdinfo.i121.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 0, i32 2
  %client.i123.le = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 0, i32 1
  %72 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %handle, align 4
  %74 = ptrtoint ptr %brdinfo.i121.le to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %brdinfo.i121.le, align 4
  %nr.i128 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 0, i32 3
  %76 = ptrtoint ptr %nr.i128 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr.i128, align 4
  %addr.i129 = getelementptr inbounds %struct.i2c_board_info, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %addr.i129 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %addr.i129, align 2
  %conv.i130 = zext i16 %79 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.8, ptr noundef %75, i32 noundef %77, i32 noundef %conv.i130) #10
  %80 = ptrtoint ptr %dev.035.i120 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %dev.035.i120, align 4
  %81 = ptrtoint ptr %client.i123.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client.i123.le, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.036.i119)
  %cmp938.not.i131 = icmp eq i32 %i.036.i119, 0
  br i1 %cmp938.not.i131, label %do.end.i132.mlxreg_lc_create_static_devices.exit143_crit_edge, label %do.end.i132.while.body.i141_crit_edge

do.end.i132.while.body.i141_crit_edge:            ; preds = %do.end.i132
  br label %while.body.i141

do.end.i132.mlxreg_lc_create_static_devices.exit143_crit_edge: ; preds = %do.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit143

for.inc.i136:                                     ; preds = %for.body.i125
  %inc.i133 = add nuw nsw i32 %i.036.i119, 1
  %incdec.ptr.i134 = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.035.i120, i32 1
  %exitcond.not.i135 = icmp eq i32 %inc.i133, %66
  br i1 %exitcond.not.i135, label %for.inc.i136.if.end33_crit_edge, label %for.inc.i136.for.body.i125_crit_edge

for.inc.i136.for.body.i125_crit_edge:             ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i125

for.inc.i136.if.end33_crit_edge:                  ; preds = %for.inc.i136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

while.body.i141:                                  ; preds = %while.body.i141.while.body.i141_crit_edge, %do.end.i132.while.body.i141_crit_edge
  %dec39.in.i137 = phi i32 [ %dec39.i138, %while.body.i141.while.body.i141_crit_edge ], [ %i.036.i119, %do.end.i132.while.body.i141_crit_edge ]
  %dec39.i138 = add nsw i32 %dec39.in.i137, -1
  %client11.i139 = getelementptr %struct.mlxreg_hotplug_device, ptr %64, i32 %dec39.i138, i32 1
  %84 = ptrtoint ptr %client11.i139 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %client11.i139, align 4
  call void @i2c_unregister_device(ptr noundef %85) #7
  %86 = ptrtoint ptr %client11.i139 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr null, ptr %client11.i139, align 4
  %cmp9.i140 = icmp sgt i32 %dec39.in.i137, 1
  br i1 %cmp9.i140, label %while.body.i141.while.body.i141_crit_edge, label %while.body.i141.mlxreg_lc_create_static_devices.exit143_crit_edge

while.body.i141.mlxreg_lc_create_static_devices.exit143_crit_edge: ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices.exit143

while.body.i141.while.body.i141_crit_edge:        ; preds = %while.body.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i141

mlxreg_lc_create_static_devices.exit143:          ; preds = %while.body.i141.mlxreg_lc_create_static_devices.exit143_crit_edge, %do.end.i132.mlxreg_lc_create_static_devices.exit143_crit_edge
  %tobool31.not = icmp eq ptr %82, null
  br i1 %tobool31.not, label %mlxreg_lc_create_static_devices.exit143.if.end33_crit_edge, label %mlxreg_lc_create_static_devices.exit143.mlxreg_lc_create_static_devices_failed_crit_edge

mlxreg_lc_create_static_devices.exit143.mlxreg_lc_create_static_devices_failed_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices_failed

mlxreg_lc_create_static_devices.exit143.if.end33_crit_edge: ; preds = %mlxreg_lc_create_static_devices.exit143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end33:                                         ; preds = %mlxreg_lc_create_static_devices.exit143.if.end33_crit_edge, %for.inc.i136.if.end33_crit_edge, %if.then27.if.end33_crit_edge
  %lock.i = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %state1.i = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 15
  %87 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state1.i, align 4
  %or.i = or i32 %88, 2
  store i32 %or.i, ptr %state1.i, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.end24.if.end34_crit_edge
  %89 = ptrtoint ptr %par_regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %par_regmap, align 4
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 4
  %reg_sync = getelementptr inbounds %struct.mlxreg_core_data, ptr %92, i32 0, i32 6
  %93 = ptrtoint ptr %reg_sync to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg_sync, align 4
  %call37 = call i32 @regmap_read(ptr noundef %90, i32 noundef %94, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end34.mlxreg_lc_regmap_read_sync_fail_crit_edge

if.end34.mlxreg_lc_regmap_read_sync_fail_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_regmap_read_sync_fail

if.end40:                                         ; preds = %if.end34
  %95 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %regval, align 4
  %97 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data, align 4
  %mask42 = getelementptr inbounds %struct.mlxreg_core_data, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %mask42 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %mask42, align 4
  %and43 = and i32 %100, %96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end40.if.end55_crit_edge, label %if.then45

if.end40.if.end55_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then45:                                        ; preds = %if.end40
  %state = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 15
  %101 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %state, align 4
  %or = or i32 %102, 4
  store i32 %or, ptr %state, align 4
  %lock.i144 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i144, i32 noundef 0) #7
  %103 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %state, align 4
  %or.i146 = or i32 %104, 4
  store i32 %or.i146, ptr %state, align 4
  call void @mutex_unlock(ptr noundef %lock.i144) #7
  %105 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %state, align 4
  %and47 = and i32 %106, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %if.then45.if.end55_crit_edge, label %if.then49

if.then45.if.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %if.then45
  %call50 = call fastcc i32 @mlxreg_lc_power_on_off(ptr noundef %handle, i8 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end55_crit_edge, label %if.then49.mlxreg_lc_regmap_read_sync_fail_crit_edge

if.then49.mlxreg_lc_regmap_read_sync_fail_crit_edge: ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_regmap_read_sync_fail

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %if.then45.if.end55_crit_edge, %if.end40.if.end55_crit_edge
  %lock.i147 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i147, i32 noundef 0) #7
  %state1.i148 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 15
  %107 = ptrtoint ptr %state1.i148 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %state1.i148, align 4
  %or.i149 = or i32 %108, 1
  store i32 %or.i149, ptr %state1.i148, align 4
  call void @mutex_unlock(ptr noundef %lock.i147) #7
  br label %cleanup

mlxreg_lc_regmap_read_sync_fail:                  ; preds = %if.then49.mlxreg_lc_regmap_read_sync_fail_crit_edge, %if.end34.mlxreg_lc_regmap_read_sync_fail_crit_edge
  %err.0 = phi i32 [ %call37, %if.end34.mlxreg_lc_regmap_read_sync_fail_crit_edge ], [ %call50, %if.then49.mlxreg_lc_regmap_read_sync_fail_crit_edge ]
  %state56 = getelementptr inbounds %struct.mlxreg_lc, ptr %handle, i32 0, i32 15
  %109 = ptrtoint ptr %state56 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %state56, align 4
  %and57 = and i32 %110, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %mlxreg_lc_regmap_read_sync_fail.mlxreg_lc_create_static_devices_failed_crit_edge, label %if.then59

mlxreg_lc_regmap_read_sync_fail.mlxreg_lc_create_static_devices_failed_crit_edge: ; preds = %mlxreg_lc_regmap_read_sync_fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices_failed

if.then59:                                        ; preds = %mlxreg_lc_regmap_read_sync_fail
  %111 = ptrtoint ptr %main_devs_num to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %main_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp1.i = icmp sgt i32 %112, 0
  br i1 %cmp1.i, label %for.body.i151.preheader, label %if.then59.mlxreg_lc_create_static_devices_failed_crit_edge

if.then59.mlxreg_lc_create_static_devices_failed_crit_edge: ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices_failed

for.body.i151.preheader:                          ; preds = %if.then59
  %113 = ptrtoint ptr %main_devs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %main_devs, align 4
  br label %for.body.i151

for.body.i151:                                    ; preds = %for.inc.i155.for.body.i151_crit_edge, %for.body.i151.preheader
  %i.03.i = phi i32 [ %inc.i152, %for.inc.i155.for.body.i151_crit_edge ], [ 0, %for.body.i151.preheader ]
  %dev.02.i = phi ptr [ %incdec.ptr.i153, %for.inc.i155.for.body.i151_crit_edge ], [ %114, %for.body.i151.preheader ]
  %client.i150 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 0, i32 1
  %115 = ptrtoint ptr %client.i150 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %client.i150, align 4
  %tobool.not.i = icmp eq ptr %116, null
  br i1 %tobool.not.i, label %for.body.i151.for.inc.i155_crit_edge, label %if.then.i

for.body.i151.for.inc.i155_crit_edge:             ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i155

if.then.i:                                        ; preds = %for.body.i151
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %116) #7
  %117 = ptrtoint ptr %client.i150 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %client.i150, align 4
  br label %for.inc.i155

for.inc.i155:                                     ; preds = %if.then.i, %for.body.i151.for.inc.i155_crit_edge
  %inc.i152 = add nuw nsw i32 %i.03.i, 1
  %incdec.ptr.i153 = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.02.i, i32 1
  %exitcond.not.i154 = icmp eq i32 %inc.i152, %112
  br i1 %exitcond.not.i154, label %for.inc.i155.mlxreg_lc_create_static_devices_failed_crit_edge, label %for.inc.i155.for.body.i151_crit_edge

for.inc.i155.for.body.i151_crit_edge:             ; preds = %for.inc.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i151

for.inc.i155.mlxreg_lc_create_static_devices_failed_crit_edge: ; preds = %for.inc.i155
  call void @__sanitizer_cov_trace_pc() #9
  br label %mlxreg_lc_create_static_devices_failed

mlxreg_lc_create_static_devices_failed:           ; preds = %for.inc.i155.mlxreg_lc_create_static_devices_failed_crit_edge, %if.then59.mlxreg_lc_create_static_devices_failed_crit_edge, %mlxreg_lc_regmap_read_sync_fail.mlxreg_lc_create_static_devices_failed_crit_edge, %mlxreg_lc_create_static_devices.exit143.mlxreg_lc_create_static_devices_failed_crit_edge
  %err.1 = phi i32 [ %83, %mlxreg_lc_create_static_devices.exit143.mlxreg_lc_create_static_devices_failed_crit_edge ], [ %err.0, %mlxreg_lc_regmap_read_sync_fail.mlxreg_lc_create_static_devices_failed_crit_edge ], [ %err.0, %if.then59.mlxreg_lc_create_static_devices_failed_crit_edge ], [ %err.0, %for.inc.i155.mlxreg_lc_create_static_devices_failed_crit_edge ]
  %118 = ptrtoint ptr %aux_devs_num to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %aux_devs_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp1.i156 = icmp sgt i32 %119, 0
  br i1 %cmp1.i156, label %for.body.i161.preheader, label %mlxreg_lc_create_static_devices_failed.cleanup_crit_edge

mlxreg_lc_create_static_devices_failed.cleanup_crit_edge: ; preds = %mlxreg_lc_create_static_devices_failed
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i161.preheader:                          ; preds = %mlxreg_lc_create_static_devices_failed
  %120 = ptrtoint ptr %aux_devs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %aux_devs, align 4
  br label %for.body.i161

for.body.i161:                                    ; preds = %for.inc.i166.for.body.i161_crit_edge, %for.body.i161.preheader
  %i.03.i157 = phi i32 [ %inc.i163, %for.inc.i166.for.body.i161_crit_edge ], [ 0, %for.body.i161.preheader ]
  %dev.02.i158 = phi ptr [ %incdec.ptr.i164, %for.inc.i166.for.body.i161_crit_edge ], [ %121, %for.body.i161.preheader ]
  %client.i159 = getelementptr inbounds %struct.mlxreg_hotplug_device, ptr %dev.02.i158, i32 0, i32 1
  %122 = ptrtoint ptr %client.i159 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %client.i159, align 4
  %tobool.not.i160 = icmp eq ptr %123, null
  br i1 %tobool.not.i160, label %for.body.i161.for.inc.i166_crit_edge, label %if.then.i162

for.body.i161.for.inc.i166_crit_edge:             ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i166

if.then.i162:                                     ; preds = %for.body.i161
  call void @__sanitizer_cov_trace_pc() #9
  call void @i2c_unregister_device(ptr noundef nonnull %123) #7
  %124 = ptrtoint ptr %client.i159 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr null, ptr %client.i159, align 4
  br label %for.inc.i166

for.inc.i166:                                     ; preds = %if.then.i162, %for.body.i161.for.inc.i166_crit_edge
  %inc.i163 = add nuw nsw i32 %i.03.i157, 1
  %incdec.ptr.i164 = getelementptr %struct.mlxreg_hotplug_device, ptr %dev.02.i158, i32 1
  %exitcond.not.i165 = icmp eq i32 %inc.i163, %119
  br i1 %exitcond.not.i165, label %for.inc.i166.cleanup_crit_edge, label %for.inc.i166.for.body.i161_crit_edge

for.inc.i166.for.body.i161_crit_edge:             ; preds = %for.inc.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i161

for.inc.i166.cleanup_crit_edge:                   ; preds = %for.inc.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i166.cleanup_crit_edge, %mlxreg_lc_create_static_devices_failed.cleanup_crit_edge, %if.end55, %for.end20.cleanup_crit_edge, %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ %33, %mlxreg_lc_create_static_devices.exit.cleanup_crit_edge ], [ %call21, %for.end20.cleanup_crit_edge ], [ %err.1, %mlxreg_lc_create_static_devices_failed.cleanup_crit_edge ], [ %err.1, %for.inc.i166.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @platform_device_register_resndata(ptr noundef %parent, ptr noundef %name, i32 noundef %id, ptr noundef %data, i32 noundef %size) unnamed_addr #6 align 64 {
entry:
  %pdevinfo = alloca %struct.platform_device_info, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo) #7
  %0 = getelementptr inbounds i8, ptr %pdevinfo, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 48)
  %2 = ptrtoint ptr %pdevinfo to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %pdevinfo, align 8
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %fwnode, align 4
  %of_node_reused = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 2
  %4 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %of_node_reused, align 8
  %name2 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3
  %5 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %name, ptr %name2, align 4
  %id3 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4
  %6 = ptrtoint ptr %id3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %id, ptr %id3, align 8
  %res4 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 5
  %7 = ptrtoint ptr %res4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %res4, align 4
  %num_res = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 6
  %8 = ptrtoint ptr %num_res to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_res, align 8
  %data5 = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7
  %9 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %data, ptr %data5, align 4
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8
  %10 = ptrtoint ptr %size_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %size, ptr %size_data, align 8
  %dma_mask = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 9
  %11 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dma_mask, align 8
  %properties = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 10
  %12 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %properties, align 8
  %call = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo) #7
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !30, !31, !33, !34, !36, !37, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_mlxreg_lc__288_902_mlxreg_lc_driver_init6, !1, !"__initcall__kmod_mlxreg_lc__288_902_mlxreg_lc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 902, i32 1}
!2 = !{ptr @__exitcall_mlxreg_lc_driver_exit, !1, !"__exitcall_mlxreg_lc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 904, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 905, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 906, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias293, !11, !"__UNIQUE_ID_alias293", i1 false, i1 false}
!11 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 907, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 898, i32 11}
!14 = !{ptr @mlxreg_lc_driver, !15, !"mlxreg_lc_driver", i1 false, i1 false}
!15 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 894, i32 31}
!16 = !{ptr @mlxreg_lc_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 802, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 810, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mlxreg_lc_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @mlxreg_lc_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 819, i32 3}
!29 = !{ptr @mlxreg_lc_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @mlxreg_lc_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @mlxreg_lc_probe._key, !32, !"_key", i1 false, i1 false}
!32 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 827, i32 11}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 560, i32 2}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @mlxreg_lc_event_handler._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @mlxreg_lc_event_handler._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 422, i32 4}
!42 = !{ptr @mlxreg_lc_create_static_devices._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mlxreg_lc_create_static_devices._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mlxreg_lc_regmap_conf, !45, !"mlxreg_lc_regmap_conf", i1 false, i1 false}
!45 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 152, i32 35}
!46 = !{ptr @mlxreg_lc_regmap_default, !47, !"mlxreg_lc_regmap_default", i1 false, i1 false}
!47 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 147, i32 33}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 730, i32 58}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 740, i32 42}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 752, i32 42}
!54 = !{ptr @mlxreg_lc_mux_data, !55, !"mlxreg_lc_mux_data", i1 false, i1 false}
!55 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 175, i32 37}
!56 = !{ptr @mlxreg_lc_chan, !57, !"mlxreg_lc_chan", i1 false, i1 false}
!57 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 168, i32 12}
!58 = !{ptr @mlxreg_lc_regs_io, !59, !"mlxreg_lc_regs_io", i1 false, i1 false}
!59 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 406, i32 41}
!60 = !{ptr @mlxreg_lc_io_data, !61, !"mlxreg_lc_io_data", i1 false, i1 false}
!61 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 268, i32 32}
!62 = !{ptr @mlxreg_lc_led, !63, !"mlxreg_lc_led", i1 false, i1 false}
!63 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 261, i32 41}
!64 = !{ptr @mlxreg_lc_led_data, !65, !"mlxreg_lc_led_data", i1 false, i1 false}
!65 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 248, i32 32}
!66 = !{ptr @mlxreg_lc_mux_brdinfo, !67, !"mlxreg_lc_mux_brdinfo", i1 false, i1 false}
!67 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 185, i32 30}
!68 = !{ptr @mlxreg_lc_aux_pwr_brdinfo, !69, !"mlxreg_lc_aux_pwr_brdinfo", i1 false, i1 false}
!69 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 200, i32 37}
!70 = !{ptr @mlxreg_lc_aux_pwr_devices, !71, !"mlxreg_lc_aux_pwr_devices", i1 false, i1 false}
!71 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 190, i32 30}
!72 = !{ptr @mlxreg_lc_main_pwr_brdinfo, !73, !"mlxreg_lc_main_pwr_brdinfo", i1 false, i1 false}
!73 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 228, i32 37}
!74 = !{ptr @mlxreg_lc_main_pwr_devices, !75, !"mlxreg_lc_main_pwr_devices", i1 false, i1 false}
!75 = !{!"../drivers/platform/mellanox/mlxreg-lc.c", i32 212, i32 30}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
