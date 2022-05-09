; ModuleID = '/llk/IR_all_yes/drivers/iio/dac/mcp4725.c_pt.bc'
source_filename = "../drivers/iio/dac/mcp4725.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_chan_spec_ext_info = type { ptr, i32, ptr, ptr, i32 }
%struct.iio_enum = type { ptr, i32, ptr, ptr }
%struct.mcp4725_platform_data = type { i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mcp4725_data = type { ptr, i32, i32, i8, i16, i8, i32, ptr, ptr }

@__initcall__kmod_mcp4725__288_532_mcp4725_driver_init6 = internal global ptr @mcp4725_driver_init, section ".initcall6.init", align 4
@mcp4725_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mcp4725_probe, ptr @mcp4725_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp4725_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcp4725_pm_ops, ptr null, ptr null }, ptr @mcp4725_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mcp4725_driver_exit = internal global ptr @mcp4725_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"mcp4725.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [41 x i8] c"mcp4725.description=MCP4725/6 12-bit DAC\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"mcp4725.file=drivers/iio/dac/mcp4725\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"mcp4725.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp4725\00", [24 x i8] zeroinitializer }, align 32
@mcp4725_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp4725\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,mcp4726\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mcp4725_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mcp4725_suspend, ptr @mcp4725_resume, ptr @mcp4725_suspend, ptr @mcp4725_resume, ptr @mcp4725_suspend, ptr @mcp4725_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@mcp4725_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mcp4725\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"mcp4726\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 398, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid platform or devicetree data\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mcp4725_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/iio/dac/mcp4725.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry_ptr = internal global ptr @mcp4725_probe._entry, section ".printk_index", align 4
@mcp4725_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"external reference is unavailable on MCP4725\00", [51 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry_ptr.8 = internal global ptr @mcp4725_probe._entry.6, section ".printk_index", align 4
@mcp4725_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"buffering is unavailable on the internal reference\00", [45 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry_ptr.11 = internal global ptr @mcp4725_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vdd\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@mcp4725_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mcp4725_attribute_group, ptr @mcp4725_read_raw, ptr null, ptr null, ptr @mcp4725_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mcp472x_channel = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @mcp4725_ext_info, ptr null, ptr null, i8 96 }, %struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 1, i32 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr @mcp4726_ext_info, ptr null, ptr null, i8 96 }], [48 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 453, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read DAC value\00", [39 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry_ptr.16 = internal global ptr @mcp4725_probe._entry.14, section ".printk_index", align 4
@mcp4725_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 466, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"voltage reference mode differs (conf: %u, eeprom: %u), setting %u\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcp4725_probe._entry_ptr.20 = internal global ptr @mcp4725_probe._entry.17, section ".printk_index", align 4
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vref-supply\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"microchip,vref-buffered\00", [40 x i8] zeroinitializer }, align 32
@mcp4725_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mcp4725_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mcp4725_attributes = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @iio_dev_attr_store_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@iio_dev_attr_store_eeprom = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @mcp4725_store_eeprom }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"store_eeprom\00", [19 x i8] zeroinitializer }, align 32
@mcp4725_store_eeprom._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mcp4725_store_eeprom() failed, incomplete\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mcp4725_store_eeprom\00", [43 x i8] zeroinitializer }, align 32
@mcp4725_store_eeprom._entry_ptr = internal global ptr @mcp4725_store_eeprom._entry, section ".printk_index", align 4
@mcp4725_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.26, i32 0, ptr @mcp4725_read_powerdown, ptr @mcp4725_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.27, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr @mcp472x_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.28, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr @mcp472x_powerdown_mode_enum to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mcp4726_ext_info = internal constant { [4 x %struct.iio_chan_spec_ext_info], [48 x i8] } { [4 x %struct.iio_chan_spec_ext_info] [%struct.iio_chan_spec_ext_info { ptr @.str.26, i32 0, ptr @mcp4725_read_powerdown, ptr @mcp4725_write_powerdown, i32 0 }, %struct.iio_chan_spec_ext_info { ptr @.str.27, i32 0, ptr @iio_enum_read, ptr @iio_enum_write, i32 ptrtoint (ptr getelementptr (i8, ptr @mcp472x_powerdown_mode_enum, i64 16) to i32) }, %struct.iio_chan_spec_ext_info { ptr @.str.28, i32 1, ptr @iio_enum_available_read, ptr null, i32 ptrtoint (ptr getelementptr (i8, ptr @mcp472x_powerdown_mode_enum, i64 16) to i32) }, %struct.iio_chan_spec_ext_info zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"powerdown_mode\00", [17 x i8] zeroinitializer }, align 32
@mcp472x_powerdown_mode_enum = internal constant { [2 x %struct.iio_enum], [32 x i8] } { [2 x %struct.iio_enum] [%struct.iio_enum { ptr @mcp4725_powerdown_modes, i32 3, ptr @mcp4725_set_powerdown_mode, ptr @mcp4725_get_powerdown_mode }, %struct.iio_enum { ptr @mcp4726_powerdown_modes, i32 3, ptr @mcp4725_set_powerdown_mode, ptr @mcp4725_get_powerdown_mode }], [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"powerdown_mode_available\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@mcp4725_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@mcp4726_powerdown_modes = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.30, ptr @.str.33, ptr @.str.34], [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"1kohm_to_gnd\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"100kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"500kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"125kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"640kohm_to_gnd\00", [17 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.35 = private unnamed_addr constant [15 x i8] c"mcp4725_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 522, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 524, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"mcp4725_of_match\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 509, i32 34 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"mcp4725_pm_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 71, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [11 x i8] c"mcp4725_id\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 502, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 397, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 405, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 411, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 423, i32 51 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 432, i32 53 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"mcp4725_info\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 354, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"mcp472x_channel\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 243, i32 35 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 453, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 464, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 364, i32 51 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 366, i32 34 }
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"mcp4725_attribute_group\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 131, i32 37 }
@___asan_gen_.116 = private unnamed_addr constant [19 x i8] c"mcp4725_attributes\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 126, i32 26 }
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"iio_dev_attr_store_eeprom\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 124, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 116, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"mcp4725_ext_info\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 215, i32 44 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"mcp4726_ext_info\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 229, i32 44 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 217, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 222, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"mcp472x_powerdown_mode_enum\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 200, i32 30 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 224, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 170, i32 25 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"mcp4725_powerdown_modes\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 135, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"mcp4726_powerdown_modes\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 141, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 136, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 137, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 138, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 143, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [29 x i8] c"../drivers/iio/dac/mcp4725.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 144, i32 2 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mcp4725_driver_exit, ptr @__initcall__kmod_mcp4725__288_532_mcp4725_driver_init6, ptr @mcp4725_driver_exit, ptr @mcp4725_probe._entry, ptr @mcp4725_probe._entry.14, ptr @mcp4725_probe._entry.17, ptr @mcp4725_probe._entry.6, ptr @mcp4725_probe._entry.9, ptr @mcp4725_probe._entry_ptr, ptr @mcp4725_probe._entry_ptr.11, ptr @mcp4725_probe._entry_ptr.16, ptr @mcp4725_probe._entry_ptr.20, ptr @mcp4725_probe._entry_ptr.8, ptr @mcp4725_store_eeprom._entry, ptr @mcp4725_store_eeprom._entry_ptr, ptr @mcp4725_driver, ptr @.str, ptr @mcp4725_of_match, ptr @mcp4725_pm_ops, ptr @mcp4725_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @mcp4725_info, ptr @mcp472x_channel, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @mcp4725_attribute_group, ptr @mcp4725_attributes, ptr @iio_dev_attr_store_eeprom, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mcp4725_ext_info, ptr @mcp4726_ext_info, ptr @.str.26, ptr @.str.27, ptr @mcp472x_powerdown_mode_enum, ptr @.str.28, ptr @.str.29, ptr @mcp4725_powerdown_modes, ptr @mcp4726_powerdown_modes, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp472x_channel to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_attributes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_store_eeprom to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_store_eeprom._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4726_ext_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp472x_powerdown_mode_enum to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4725_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp4726_powerdown_modes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mcp4725_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp4725_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @mcp4725_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %pdata_dt = alloca %struct.mcp4725_platform_data, align 1
  %inbuf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %pdata_dt) #7
  %0 = ptrtoint ptr %pdata_dt to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pdata_dt, align 1, !annotation !106
  %1 = getelementptr inbounds %struct.mcp4725_platform_data, ptr %pdata_dt, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %inbuf) #7
  %3 = getelementptr inbounds [4 x i8], ptr %inbuf, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i8], ptr %inbuf, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %inbuf, i32 0, i32 3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %inbuf to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %inbuf, align 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 32) #7
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %8, align 4
  %call4 = tail call ptr @dev_fwnode(ptr noundef %dev) #7
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call ptr @device_get_match_data(ptr noundef %dev) #7
  %11 = ptrtoint ptr %call7 to i32
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %.sink = phi i32 [ %13, %if.else ], [ %11, %if.then5 ]
  %14 = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %platform_data.i, align 8
  %tobool13.not = icmp eq ptr %17, null
  br i1 %tobool13.not, label %if.then14, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.21) #7
  %frombool.i = zext i1 %call.i.i to i8
  %18 = ptrtoint ptr %pdata_dt to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool.i, ptr %pdata_dt, align 1
  %call.i1.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.22) #7
  %frombool2.i = zext i1 %call.i1.i to i8
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool2.i, ptr %1, align 1
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr234 = load i32, ptr %14, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then14, %if.end10.if.end21_crit_edge
  %21 = phi i32 [ %.pr234, %if.then14 ], [ %.sink, %if.end10.if.end21_crit_edge ]
  %pdata.0 = phi ptr [ %pdata_dt, %if.then14 ], [ %17, %if.end10.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp23 = icmp eq i32 %21, 0
  %22 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pdata.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool24.not = icmp eq i8 %23, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end30

land.lhs.true:                                    ; preds = %if.end21
  br i1 %tobool24.not, label %land.lhs.true.land.lhs.true33_crit_edge, label %do.end28

land.lhs.true.land.lhs.true33_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

do.end28:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  br i1 %tobool24.not, label %if.end30.land.lhs.true33_crit_edge, label %if.else44

if.end30.land.lhs.true33_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true33

land.lhs.true33:                                  ; preds = %if.end30.land.lhs.true33_crit_edge, %land.lhs.true.land.lhs.true33_crit_edge
  %vref_buffered = getelementptr inbounds %struct.mcp4725_platform_data, ptr %pdata.0, i32 0, i32 1
  %24 = ptrtoint ptr %vref_buffered to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vref_buffered, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool34.not = icmp eq i8 %25, 0
  br i1 %tobool34.not, label %land.lhs.true33.if.end48_crit_edge, label %do.end38

land.lhs.true33.if.end48_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end38:                                         ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

if.else44:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %vref_buffered45 = getelementptr inbounds %struct.mcp4725_platform_data, ptr %pdata.0, i32 0, i32 1
  %26 = ptrtoint ptr %vref_buffered45 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %vref_buffered45, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool46.not = icmp eq i8 %27, 0
  %cond = select i1 %tobool46.not, i32 2, i32 3
  br label %if.end48

if.end48:                                         ; preds = %if.else44, %land.lhs.true33.if.end48_crit_edge
  %cond.sink = phi i32 [ %cond, %if.else44 ], [ 0, %land.lhs.true33.if.end48_crit_edge ]
  %ref_mode47 = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 2
  %28 = ptrtoint ptr %ref_mode47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond.sink, ptr %ref_mode47, align 4
  %call50 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #7
  %vdd_reg = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 7
  %29 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call50, ptr %vdd_reg, align 4
  %cmp.i = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call50 to i32
  br label %cleanup

if.end56:                                         ; preds = %if.end48
  %call58 = tail call i32 @regulator_enable(ptr noundef %call50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %if.end56
  %31 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %pdata.0, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool63.not = icmp eq i8 %32, 0
  br i1 %tobool63.not, label %if.end61.if.end78_crit_edge, label %if.then64

if.end61.if.end78_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.then64:                                        ; preds = %if.end61
  %call66 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.13) #7
  %vref_reg = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 8
  %33 = ptrtoint ptr %vref_reg to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call66, ptr %vref_reg, align 4
  %cmp.i227 = icmp ugt ptr %call66, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i227, label %if.then69, label %if.end72

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call66 to i32
  br label %err_disable_vdd_reg

if.end72:                                         ; preds = %if.then64
  %call74 = tail call i32 @regulator_enable(ptr noundef %call66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end72.if.end78_crit_edge, label %if.end72.err_disable_vdd_reg_crit_edge

if.end72.err_disable_vdd_reg_crit_edge:           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_vdd_reg

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

if.end78:                                         ; preds = %if.end72.if.end78_crit_edge, %if.end61.if.end78_crit_edge
  %name79 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %35 = ptrtoint ptr %name79 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %id, ptr %name79, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %36 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @mcp4725_info, ptr %info, align 8
  %driver_data80 = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %37 = ptrtoint ptr %driver_data80 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %driver_data80, align 4
  %arrayidx = getelementptr [2 x %struct.iio_chan_spec], ptr @mcp472x_channel, i32 0, i32 %38
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %40 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %num_channels, align 4
  %41 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %call, align 8
  %42 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp83 = icmp eq i32 %43, 0
  %cond84 = select i1 %cmp83, i32 3, i32 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %inbuf, i32 noundef %cond84, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp86 = icmp slt i32 %call.i, 0
  br i1 %cmp86, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %err_disable_vref_reg

if.end92:                                         ; preds = %if.end78
  %44 = ptrtoint ptr %inbuf to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %inbuf, align 4
  %46 = lshr i8 %45, 1
  %47 = and i8 %46, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %cmp96 = icmp ne i8 %47, 0
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 5
  %frombool = zext i1 %cmp96 to i8
  %48 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %frombool, ptr %powerdown, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool99.not = icmp eq i8 %47, 0
  %conv95 = zext i8 %47 to i32
  %sub = add nsw i32 %conv95, -1
  %cond101 = select i1 %tobool99.not, i32 2, i32 %sub
  %powerdown_mode = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 6
  %49 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %cond101, ptr %powerdown_mode, align 4
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %3, align 1
  %conv103 = zext i8 %51 to i16
  %shl = shl nuw nsw i16 %conv103, 4
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %4, align 2
  %54 = lshr i8 %53, 4
  %55 = zext i8 %54 to i16
  %or = or i16 %shl, %55
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 4
  %56 = ptrtoint ptr %dac_value to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %or, ptr %dac_value, align 2
  %57 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp109 = icmp eq i32 %58, 1
  br i1 %cmp109, label %land.lhs.true121, label %if.end92.if.end139_crit_edge

if.end92.if.end139_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

land.lhs.true121:                                 ; preds = %if.end92
  %59 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %5, align 1
  %61 = lshr i8 %60, 3
  %62 = and i8 %61, 3
  %and115 = zext i8 %62 to i32
  %ref_mode123 = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 2
  %63 = ptrtoint ptr %ref_mode123 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ref_mode123, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %and115)
  %cmp124.not = icmp eq i32 %64, %and115
  br i1 %cmp124.not, label %land.lhs.true121.if.end139_crit_edge, label %do.end129

land.lhs.true121.if.end139_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

do.end129:                                        ; preds = %land.lhs.true121
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %64, i32 noundef %and115, i32 noundef %64) #10
  %call134 = call fastcc i32 @mcp4726_set_cfg(ptr noundef nonnull %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %cmp135 = icmp slt i32 %call134, 0
  br i1 %cmp135, label %do.end129.err_disable_vref_reg_crit_edge, label %do.end129.if.end139_crit_edge

do.end129.if.end139_crit_edge:                    ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

do.end129.err_disable_vref_reg_crit_edge:         ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_vref_reg

if.end139:                                        ; preds = %do.end129.if.end139_crit_edge, %land.lhs.true121.if.end139_crit_edge, %if.end92.if.end139_crit_edge
  %call140 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end139.cleanup_crit_edge, label %if.end139.err_disable_vref_reg_crit_edge

if.end139.err_disable_vref_reg_crit_edge:         ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_vref_reg

if.end139.cleanup_crit_edge:                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err_disable_vref_reg:                             ; preds = %if.end139.err_disable_vref_reg_crit_edge, %do.end129.err_disable_vref_reg_crit_edge, %do.end90
  %err.0 = phi i32 [ %call.i, %do.end90 ], [ %call134, %do.end129.err_disable_vref_reg_crit_edge ], [ %call140, %if.end139.err_disable_vref_reg_crit_edge ]
  %vref_reg144 = getelementptr inbounds %struct.mcp4725_data, ptr %8, i32 0, i32 8
  %65 = ptrtoint ptr %vref_reg144 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vref_reg144, align 4
  %tobool145.not = icmp eq ptr %66, null
  br i1 %tobool145.not, label %err_disable_vref_reg.err_disable_vdd_reg_crit_edge, label %if.then146

err_disable_vref_reg.err_disable_vdd_reg_crit_edge: ; preds = %err_disable_vref_reg
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_disable_vdd_reg

if.then146:                                       ; preds = %err_disable_vref_reg
  call void @__sanitizer_cov_trace_pc() #9
  %call148 = call i32 @regulator_disable(ptr noundef nonnull %66) #7
  br label %err_disable_vdd_reg

err_disable_vdd_reg:                              ; preds = %if.then146, %err_disable_vref_reg.err_disable_vdd_reg_crit_edge, %if.end72.err_disable_vdd_reg_crit_edge, %if.then69
  %err.1 = phi i32 [ %34, %if.then69 ], [ %call74, %if.end72.err_disable_vdd_reg_crit_edge ], [ %err.0, %if.then146 ], [ %err.0, %err_disable_vref_reg.err_disable_vdd_reg_crit_edge ]
  %67 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %vdd_reg, align 4
  %call151 = call i32 @regulator_disable(ptr noundef %68) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_vdd_reg, %if.end139.cleanup_crit_edge, %if.end56.cleanup_crit_edge, %if.then53, %do.end38, %do.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end28 ], [ %30, %if.then53 ], [ %err.1, %err_disable_vdd_reg ], [ -22, %do.end38 ], [ -12, %entry.cleanup_crit_edge ], [ %call58, %if.end56.cleanup_crit_edge ], [ 0, %if.end139.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %inbuf) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %pdata_dt) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #7
  %vref_reg = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %vref_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref_reg, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vdd_reg = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %vdd_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vdd_reg, align 4
  %call4 = tail call i32 @regulator_disable(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mcp4726_set_cfg(ptr nocapture noundef readonly %indio_dev) unnamed_addr #2 align 64 {
entry:
  %outbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %outbuf) #7
  %ref_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %ref_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ref_mode, align 4
  %.tr = trunc i32 %3 to i8
  %4 = shl i8 %.tr, 3
  %conv2 = or i8 %4, 64
  %5 = ptrtoint ptr %outbuf to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %outbuf, align 1
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %powerdown, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i8 %4, 66
  %9 = ptrtoint ptr %outbuf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %outbuf, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %10 = getelementptr inbounds [3 x i8], ptr %outbuf, i32 0, i32 2
  %11 = getelementptr inbounds [3 x i8], ptr %outbuf, i32 0, i32 1
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %dac_value to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dac_value, align 2
  %14 = lshr i16 %13, 4
  %conv12 = trunc i16 %14 to i8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12, ptr %11, align 1
  %.tr35 = trunc i16 %13 to i8
  %conv17 = shl i8 %.tr35, 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %10, align 1
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %outbuf, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %cmp22.not = icmp eq i32 %call.i, 3
  %. = select i1 %cmp22.not, i32 0, i32 -5
  %retval.0 = select i1 %cmp, i32 %call.i, i32 %.
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %outbuf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dac_value to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %dac_value, align 2
  %conv = zext i16 %4 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %ref_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %ref_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ref_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %vref_reg = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 8
  %vdd_reg = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 7
  %vref_reg.sink = select i1 %cmp, ptr %vdd_reg, ptr %vref_reg
  %8 = ptrtoint ptr %vref_reg.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vref_reg.sink, align 4
  %call4 = tail call i32 @regulator_get_voltage(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb1.cleanup_crit_edge, label %if.end8

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %div16 = udiv i32 %call4, 1000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div16, ptr %val, align 4
  %11 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 12, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %sw.bb1.cleanup_crit_edge, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %if.end8 ], [ 1, %sw.bb ], [ %call4, %sw.bb1.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %outbuf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mask)
  %cond = icmp eq i32 %mask, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %val)
  %2 = icmp ugt i32 %val, 4095
  br i1 %2, label %sw.bb.mcp4725_set_value.exit_crit_edge, label %if.end.i

sw.bb.mcp4725_set_value.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcp4725_set_value.exit

if.end.i:                                         ; preds = %sw.bb
  %3 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %4 = lshr i32 %val, 8
  %5 = trunc i32 %4 to i8
  %6 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %outbuf.i, align 1
  %conv3.i = trunc i32 %val to i8
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.i, ptr %3, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %9, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i, label %if.end.i.mcp4725_set_value.exit_crit_edge, label %if.else.i

if.end.i.mcp4725_set_value.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mcp4725_set_value.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp9.not.i = icmp eq i32 %call.i.i, 2
  %..i = select i1 %cmp9.not.i, i32 0, i32 -5
  br label %mcp4725_set_value.exit

mcp4725_set_value.exit:                           ; preds = %if.else.i, %if.end.i.mcp4725_set_value.exit_crit_edge, %sw.bb.mcp4725_set_value.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %sw.bb.mcp4725_set_value.exit_crit_edge ], [ %call.i.i, %if.end.i.mcp4725_set_value.exit_crit_edge ], [ %..i, %if.else.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #7
  %conv = trunc i32 %val to i16
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %dac_value to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %dac_value, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %mcp4725_set_value.exit, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i, %mcp4725_set_value.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_store_eeprom(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %inoutbuf = alloca [3 x i8], align 1
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %inoutbuf) #7
  %2 = getelementptr inbounds [3 x i8], ptr %inoutbuf, i32 0, i32 1
  %3 = getelementptr inbounds [3 x i8], ptr %inoutbuf, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #7
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %state, align 1, !annotation !106
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %state, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ref_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ref_mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ref_mode, align 4
  %.tr = trunc i32 %8 to i8
  %9 = shl i8 %.tr, 3
  %conv6 = or i8 %9, 96
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %powerdown, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.end4.cond.end_crit_edge, label %cond.true

if.end4.cond.end_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %powerdown_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %powerdown_mode, align 4
  %14 = trunc i32 %13 to i8
  %add.tr = shl i8 %14, 1
  %phi.cast = add i8 %add.tr, 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end4.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.true ], [ 0, %if.end4.cond.end_crit_edge ]
  %conv13 = or i8 %cond, %conv6
  %15 = ptrtoint ptr %inoutbuf to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv13, ptr %inoutbuf, align 1
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %dac_value to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dac_value, align 2
  %18 = lshr i16 %17, 4
  %conv15 = trunc i16 %18 to i8
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv15, ptr %2, align 1
  %.tr76 = trunc i16 %17 to i8
  %conv20 = shl i8 %.tr76, 4
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv20, ptr %3, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %inoutbuf, i32 noundef 3, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp23 = icmp slt i32 %call.i77, 0
  br i1 %cmp23, label %cond.end.cleanup_crit_edge, label %if.else

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i77)
  %cmp26.not = icmp eq i32 %call.i77, 3
  br i1 %cmp26.not, label %if.else.while.cond_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.while.cond_crit_edge:                     ; preds = %if.else
  br label %while.cond

while.cond:                                       ; preds = %if.end43.while.cond_crit_edge, %if.else.while.cond_crit_edge
  %tries.0 = phi i32 [ %dec, %if.end43.while.cond_crit_edge ], [ 20, %if.else.while.cond_crit_edge ]
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0)
  %tobool31.not = icmp eq i32 %tries.0, 0
  br i1 %tobool31.not, label %while.cond.do.end_crit_edge, label %while.body

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 20) #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call.i78 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %inoutbuf, i32 noundef 3, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp35 = icmp slt i32 %call.i78, 0
  br i1 %cmp35, label %while.body.cleanup_crit_edge, label %if.else38

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else38:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i78)
  %cmp39.not = icmp eq i32 %call.i78, 3
  br i1 %cmp39.not, label %if.end43, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.else38
  %25 = ptrtoint ptr %inoutbuf to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %inoutbuf, align 1
  %tobool47.not = icmp sgt i8 %26, -1
  br i1 %tobool47.not, label %if.end43.while.cond_crit_edge, label %while.end

if.end43.while.cond_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

while.end:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tries.0)
  %cmp50 = icmp slt i32 %tries.0, 1
  br i1 %cmp50, label %while.end.do.end_crit_edge, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.end.do.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %while.end.do.end_crit_edge, %while.cond.do.end_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev54, ptr noundef nonnull @.str.24) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.end.cleanup_crit_edge, %if.else38.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.else.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call.i77, %cond.end.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ %len, %while.end.cleanup_crit_edge ], [ -5, %if.else38.cleanup_crit_edge ], [ %call.i78, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %inoutbuf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_read_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %powerdown to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %powerdown, align 4, !range !107
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %4) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_write_powerdown(ptr nocapture noundef readonly %indio_dev, i32 noundef %private, ptr nocapture noundef readnone %chan, ptr noundef %buf, i32 noundef %len) #2 align 64 {
entry:
  %outbuf.i17 = alloca [2 x i8], align 1
  %outbuf.i = alloca [2 x i8], align 1
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #7
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %state, align 1, !annotation !106
  %call.i = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %driver_data.i.i.i18 = getelementptr %struct.i2c_client, ptr %6, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i18, align 4
  %priv.i.i19 = getelementptr inbounds %struct.iio_dev, ptr %8, i32 0, i32 19
  %9 = ptrtoint ptr %priv.i.i19 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv.i.i19, align 8
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i) #7
  %11 = getelementptr inbounds [2 x i8], ptr %outbuf.i, i32 0, i32 1
  %powerdown_mode.i = getelementptr inbounds %struct.mcp4725_data, ptr %10, i32 0, i32 6
  %12 = ptrtoint ptr %powerdown_mode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %powerdown_mode.i, align 4
  %.tr.i = trunc i32 %13 to i8
  %14 = shl i8 %.tr.i, 4
  %conv.i = add i8 %14, 16
  %15 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %outbuf.i, align 1
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %11, align 1
  %powerdown.i = getelementptr inbounds %struct.mcp4725_data, ptr %10, i32 0, i32 5
  %17 = ptrtoint ptr %powerdown.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %powerdown.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %10, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %outbuf.i, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf.i17) #7
  %20 = getelementptr inbounds [2 x i8], ptr %outbuf.i17, i32 0, i32 1
  %dac_value.i = getelementptr inbounds %struct.mcp4725_data, ptr %10, i32 0, i32 4
  %21 = ptrtoint ptr %dac_value.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %dac_value.i, align 2
  %23 = lshr i16 %22, 8
  %24 = trunc i16 %23 to i8
  %conv2.i = and i8 %24, 15
  %25 = ptrtoint ptr %outbuf.i17 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv2.i, ptr %outbuf.i17, align 1
  %conv6.i = trunc i16 %22 to i8
  %26 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv6.i, ptr %20, align 1
  %powerdown.i20 = getelementptr inbounds %struct.mcp4725_data, ptr %10, i32 0, i32 5
  %27 = ptrtoint ptr %powerdown.i20 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %powerdown.i20, align 4
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %10, align 4
  %call.i.i21 = call i32 @i2c_transfer_buffer_flags(ptr noundef %29, ptr noundef nonnull %outbuf.i17, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf.i17) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3
  %ret.0 = phi i32 [ %call.i.i, %if.then3 ], [ %call.i.i21, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp = icmp slt i32 %ret.0, 0
  %ret.0.len = select i1 %cmp, i32 %ret.0, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %ret.0.len, %if.end8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_write(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_enum_available_read(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %outbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf) #7
  %4 = getelementptr inbounds [2 x i8], ptr %outbuf, i32 0, i32 1
  %powerdown_mode = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %powerdown_mode, align 4
  %.tr = trunc i32 %6 to i8
  %7 = shl i8 %.tr, 4
  %conv = add i8 %7, 16
  %8 = ptrtoint ptr %outbuf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %outbuf, align 1
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %4, align 1
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %powerdown, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %12, ptr noundef nonnull %outbuf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp4725_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %outbuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %outbuf) #7
  %4 = getelementptr inbounds [2 x i8], ptr %outbuf, i32 0, i32 1
  %dac_value = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %dac_value to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %dac_value, align 2
  %7 = lshr i16 %6, 8
  %8 = trunc i16 %7 to i8
  %conv2 = and i8 %8, 15
  %9 = ptrtoint ptr %outbuf to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %outbuf, align 1
  %conv6 = trunc i16 %6 to i8
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv6, ptr %4, align 1
  %powerdown = getelementptr inbounds %struct.mcp4725_data, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %powerdown to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %powerdown, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %outbuf, i32 noundef 2, i16 noundef zeroext 0) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %outbuf) #7
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp4725_set_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mode, ptr %powerdown_mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp4725_get_powerdown_mode(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %powerdown_mode = getelementptr inbounds %struct.mcp4725_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %powerdown_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %powerdown_mode, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !53, !55, !56, !58, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__initcall__kmod_mcp4725__288_532_mcp4725_driver_init6, !1, !"__initcall__kmod_mcp4725__288_532_mcp4725_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/dac/mcp4725.c", i32 532, i32 1}
!2 = !{ptr @__exitcall_mcp4725_driver_exit, !1, !"__exitcall_mcp4725_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/dac/mcp4725.c", i32 534, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/dac/mcp4725.c", i32 535, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/dac/mcp4725.c", i32 536, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/dac/mcp4725.c", i32 524, i32 11}
!12 = !{ptr @mcp4725_driver, !13, !"mcp4725_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/dac/mcp4725.c", i32 522, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/iio/dac/mcp4725.c", i32 397, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mcp4725_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mcp4725_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/iio/dac/mcp4725.c", i32 405, i32 3}
!24 = !{ptr @mcp4725_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @mcp4725_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/dac/mcp4725.c", i32 411, i32 3}
!28 = !{ptr @mcp4725_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @mcp4725_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/dac/mcp4725.c", i32 423, i32 51}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/dac/mcp4725.c", i32 432, i32 53}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/dac/mcp4725.c", i32 453, i32 3}
!36 = !{ptr @mcp4725_probe._entry.14, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @mcp4725_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/iio/dac/mcp4725.c", i32 464, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mcp4725_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @mcp4725_probe._entry_ptr.20, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/iio/dac/mcp4725.c", i32 364, i32 51}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/iio/dac/mcp4725.c", i32 366, i32 34}
!47 = !{ptr @mcp4725_info, !48, !"mcp4725_info", i1 false, i1 false}
!48 = !{!"../drivers/iio/dac/mcp4725.c", i32 354, i32 30}
!49 = !{ptr @mcp4725_attribute_group, !50, !"mcp4725_attribute_group", i1 false, i1 false}
!50 = !{!"../drivers/iio/dac/mcp4725.c", i32 131, i32 37}
!51 = !{ptr @mcp4725_attributes, !52, !"mcp4725_attributes", i1 false, i1 false}
!52 = !{!"../drivers/iio/dac/mcp4725.c", i32 126, i32 26}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/dac/mcp4725.c", i32 124, i32 8}
!55 = !{ptr @iio_dev_attr_store_eeprom, !54, !"iio_dev_attr_store_eeprom", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/iio/dac/mcp4725.c", i32 116, i32 3}
!58 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @mcp4725_store_eeprom._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @mcp4725_store_eeprom._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @mcp472x_channel, !62, !"mcp472x_channel", i1 false, i1 false}
!62 = !{!"../drivers/iio/dac/mcp4725.c", i32 243, i32 35}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/iio/dac/mcp4725.c", i32 217, i32 11}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/iio/dac/mcp4725.c", i32 222, i32 2}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/dac/mcp4725.c", i32 224, i32 2}
!69 = !{ptr @mcp4725_ext_info, !70, !"mcp4725_ext_info", i1 false, i1 false}
!70 = !{!"../drivers/iio/dac/mcp4725.c", i32 215, i32 44}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/iio/dac/mcp4725.c", i32 170, i32 25}
!73 = !{ptr @mcp472x_powerdown_mode_enum, !74, !"mcp472x_powerdown_mode_enum", i1 false, i1 false}
!74 = !{!"../drivers/iio/dac/mcp4725.c", i32 200, i32 30}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/iio/dac/mcp4725.c", i32 136, i32 2}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/iio/dac/mcp4725.c", i32 137, i32 2}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/iio/dac/mcp4725.c", i32 138, i32 2}
!81 = !{ptr @mcp4725_powerdown_modes, !82, !"mcp4725_powerdown_modes", i1 false, i1 false}
!82 = !{!"../drivers/iio/dac/mcp4725.c", i32 135, i32 27}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/iio/dac/mcp4725.c", i32 143, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/iio/dac/mcp4725.c", i32 144, i32 2}
!87 = !{ptr @mcp4726_powerdown_modes, !88, !"mcp4726_powerdown_modes", i1 false, i1 false}
!88 = !{!"../drivers/iio/dac/mcp4725.c", i32 141, i32 27}
!89 = !{ptr @mcp4726_ext_info, !90, !"mcp4726_ext_info", i1 false, i1 false}
!90 = !{!"../drivers/iio/dac/mcp4725.c", i32 229, i32 44}
!91 = !{ptr @mcp4725_of_match, !92, !"mcp4725_of_match", i1 false, i1 false}
!92 = !{!"../drivers/iio/dac/mcp4725.c", i32 509, i32 34}
!93 = !{ptr @mcp4725_pm_ops, !94, !"mcp4725_pm_ops", i1 false, i1 false}
!94 = !{!"../drivers/iio/dac/mcp4725.c", i32 71, i32 8}
!95 = !{ptr @mcp4725_id, !96, !"mcp4725_id", i1 false, i1 false}
!96 = !{!"../drivers/iio/dac/mcp4725.c", i32 502, i32 35}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i8 0, i8 2}
