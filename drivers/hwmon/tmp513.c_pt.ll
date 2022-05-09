; ModuleID = '/llk/IR_all_yes/drivers/hwmon/tmp513.c_pt.bc'
source_filename = "../drivers/hwmon/tmp513.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.tmp51x_data = type { i16, i16, i32, i16, [3 x i32], i32, i32, i32, i32, ptr }

@__initcall__kmod_tmp513__309_767_tmp51x_driver_init6 = internal global ptr @tmp51x_driver_init, section ".initcall6.init", align 4
@tmp51x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @tmp51x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tmp51x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tmp51x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp51x_driver_exit = internal global ptr @tmp51x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [60 x i8] c"tmp513.author=Eric Tremblay <etremblay@distechcontrols.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [33 x i8] c"tmp513.description=tmp51x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [33 x i8] c"tmp513.file=drivers/hwmon/tmp513\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [19 x i8] c"tmp513.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp51x\00", [25 x i8] zeroinitializer }, align 32
@tmp51x_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp512\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp513\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tmp51x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp512\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tmp513\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tmp51x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 730, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error configuring the device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmp51x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/tmp513.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp51x_probe._entry_ptr = internal global ptr @tmp51x_probe._entry, section ".printk_index", align 4
@tmp51x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tmp51x_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tmp513:734:(&tmp51x_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@tmp51x_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 736, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@tmp51x_probe._entry_ptr.9 = internal global ptr @tmp51x_probe._entry.7, section ".printk_index", align 4
@tmp51x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 742, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tmp51x_probe._entry_ptr.11 = internal global ptr @tmp51x_probe._entry.10, section ".printk_index", align 4
@tmp51x_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @tmp51x_hwmon_ops, ptr @tmp51x_info }, [24 x i8] zeroinitializer }, align 32
@tmp51x_probe.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 -68, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp513\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power monitor %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,bus-range-microvolt\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,pga-gain\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,nfactor\00", [21 x i8] zeroinitializer }, align 32
@tmp51x_read_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 684, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"shunt-resistor: %u too big for pga_gain: %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tmp51x_read_properties\00", [41 x i8] zeroinitializer }, align 32
@tmp51x_read_properties._entry_ptr = internal global ptr @tmp51x_read_properties._entry, section ".printk_index", align 4
@tmp51x_vbus_range_to_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 632, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ti,bus-range-microvolt is invalid: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tmp51x_vbus_range_to_reg\00", [39 x i8] zeroinitializer }, align 32
@tmp51x_vbus_range_to_reg._entry_ptr = internal global ptr @tmp51x_vbus_range_to_reg._entry, section ".printk_index", align 4
@tmp51x_pga_gain_to_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti,pga-gain is invalid: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tmp51x_pga_gain_to_reg\00", [41 x i8] zeroinitializer }, align 32
@tmp51x_pga_gain_to_reg._entry_ptr = internal global ptr @tmp51x_pga_gain_to_reg._entry, section ".printk_index", align 4
@tmp51x_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @tmp51x_is_visible, ptr @tmp51x_read, ptr null, ptr @tmp51x_write }, [16 x i8] zeroinitializer }, align 32
@tmp51x_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.24, ptr @.compoundliteral.26, ptr @.compoundliteral.28, ptr @.compoundliteral.30, ptr null], [44 x i8] zeroinitializer }, align 32
@TMP51X_TEMP_INPUT = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\08\09\0A\0B", [28 x i8] zeroinitializer }, align 32
@TMP51X_TEMP_CRIT = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\11\12\13\14", [28 x i8] zeroinitializer }, align 32
@TMP51X_TEMP_CRIT_HYST = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\16\16\16\16", [28 x i8] zeroinitializer }, align 32
@TMP51X_CURR_INPUT = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\04\07", [30 x i8] zeroinitializer }, align 32
@TMP51X_TEMP_CRIT_ALARM = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\0A\09\08\07", [28 x i8] zeroinitializer }, align 32
@tmp51x_get_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tmp51x_set_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.compoundliteral = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 132610, i32 132610, i32 132610, i32 132610, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 49202, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.25 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 49202, i32 2, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.27 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 269484544, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.29 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16000000, i64 32000000]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 9, i64 10, i64 17]
@__sancov_gen_cov_switch_values.34 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 14, i64 15]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 14, i64 15]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 20, i64 28]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.39 = internal global [21 x i64] [i64 19, i64 8, i64 2, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 8, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 22]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 9, i64 10, i64 17]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 14, i64 15]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 4, i64 5, i64 14, i64 15]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 20, i64 28]
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"tmp51x_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 758, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 760, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"tmp51x_of_match\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 610, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"tmp51x_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 603, i32 35 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 730, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [21 x i8] c"tmp51x_regmap_config\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 149, i32 29 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 734, i32 17 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 736, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 742, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"tmp51x_chip_info\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 522, i32 37 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 753, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 661, i32 38 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 664, i32 38 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 670, i32 38 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 676, i32 44 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 683, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 631, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 649, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"tmp51x_hwmon_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 516, i32 31 }
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"tmp51x_info\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 494, i32 41 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"TMP51X_TEMP_INPUT\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 116, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"TMP51X_TEMP_CRIT\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 123, i32 17 }
@___asan_gen_.154 = private unnamed_addr constant [22 x i8] c"TMP51X_TEMP_CRIT_HYST\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 137, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant [18 x i8] c"TMP51X_CURR_INPUT\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 144, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant [23 x i8] c"TMP51X_TEMP_CRIT_ALARM\00", align 1
@___asan_gen_.161 = private constant [26 x i8] c"../drivers/hwmon/tmp513.c\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 130, i32 17 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@llvm.compiler.used = appending global [60 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_tmp51x_driver_exit, ptr @__initcall__kmod_tmp513__309_767_tmp51x_driver_init6, ptr @tmp51x_driver_exit, ptr @tmp51x_pga_gain_to_reg._entry, ptr @tmp51x_pga_gain_to_reg._entry_ptr, ptr @tmp51x_probe._entry, ptr @tmp51x_probe._entry.10, ptr @tmp51x_probe._entry.7, ptr @tmp51x_probe._entry_ptr, ptr @tmp51x_probe._entry_ptr.11, ptr @tmp51x_probe._entry_ptr.9, ptr @tmp51x_read_properties._entry, ptr @tmp51x_read_properties._entry_ptr, ptr @tmp51x_vbus_range_to_reg._entry, ptr @tmp51x_vbus_range_to_reg._entry_ptr, ptr @tmp51x_driver, ptr @.str, ptr @tmp51x_of_match, ptr @tmp51x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmp51x_probe._key, ptr @tmp51x_regmap_config, ptr @.str.6, ptr @.str.8, ptr @tmp51x_chip_info, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @tmp51x_hwmon_ops, ptr @tmp51x_info, ptr @TMP51X_TEMP_INPUT, ptr @TMP51X_TEMP_CRIT, ptr @TMP51X_TEMP_CRIT_HYST, ptr @TMP51X_CURR_INPUT, ptr @TMP51X_TEMP_CRIT_ALARM, ptr @.compoundliteral, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_read_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_vbus_range_to_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_pga_gain_to_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp51x_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP51X_TEMP_INPUT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP51X_TEMP_CRIT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP51X_TEMP_CRIT_HYST to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP51X_CURR_INPUT to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP51X_TEMP_CRIT_ALARM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp51x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp51x_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp51x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp51x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp51x_probe(ptr noundef %client) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  %nfactor.i.i = alloca [3 x i32], align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %1, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call ptr @device_get_match_data(ptr noundef %dev1) #8
  %2 = ptrtoint ptr %call6 to i32
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call ptr @i2c_match_id(ptr noundef nonnull @tmp51x_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call7, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %4, %if.else ], [ %2, %if.then4 ]
  %5 = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 14751, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp.i = icmp eq i32 %.sink, 1
  %conv.i = select i1 %cmp.i, i16 -128, i16 -16512
  %temp_config.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %temp_config.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %temp_config.i, align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %tmp51x_configure.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %nfactor.i.i) #8
  %11 = ptrtoint ptr %nfactor.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %nfactor.i.i, align 4, !annotation !94
  %12 = getelementptr inbounds [3 x i32], ptr %nfactor.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4, !annotation !94
  %14 = getelementptr inbounds [3 x i32], ptr %nfactor.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %14, align 4, !annotation !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #8
  %16 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i.i, align 4, !annotation !94
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.14, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.then.i.cond.end.i.i_crit_edge

if.then.i.cond.end.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.then.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %18, %cond.true.i.i ], [ 1000, %if.then.i.cond.end.i.i_crit_edge ]
  %shunt_uohms.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %shunt_uohms.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i.i, ptr %shunt_uohms.i.i, align 4
  %call.i73.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.15, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i73.i.i)
  %cmp2.i.i = icmp sgt i32 %call.i73.i.i, -1
  br i1 %cmp2.i.i, label %cond.end5.i.i, label %cond.end5.thread.i.i

cond.end5.thread.i.i:                             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_range_uvolt79.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %vbus_range_uvolt79.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 32000000, ptr %vbus_range_uvolt79.i.i, align 4
  br label %if.then.i.i.i

cond.end5.i.i:                                    ; preds = %cond.end.i.i
  %21 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i.i, align 4
  %vbus_range_uvolt.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 2
  %23 = ptrtoint ptr %vbus_range_uvolt.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %vbus_range_uvolt.i.i, align 4
  %24 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %tmp51x_vbus_range_to_reg.exit.thread.i.i [
    i32 32000000, label %cond.end5.i.i.if.then.i.i.i_crit_edge
    i32 16000000, label %if.then5.i.i.i
  ]

cond.end5.i.i.if.then.i.i.i_crit_edge:            ; preds = %cond.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.end5.i.i.if.then.i.i.i_crit_edge, %cond.end5.thread.i.i
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call.i, align 4
  %27 = or i16 %26, 8192
  br label %if.end.i.i

if.then5.i.i.i:                                   ; preds = %cond.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %call.i, align 4
  %30 = and i16 %29, -8193
  br label %if.end.i.i

tmp51x_vbus_range_to_reg.exit.thread.i.i:         ; preds = %cond.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %22) #11
  br label %do.end

if.end.i.i:                                       ; preds = %if.then5.i.i.i, %if.then.i.i.i
  %storemerge.i.i.i = phi i16 [ %30, %if.then5.i.i.i ], [ %27, %if.then.i.i.i ]
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %storemerge.i.i.i, ptr %call.i, align 4
  %call.i74.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.16, ptr noundef nonnull %val.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i74.i.i)
  %cmp10.i.i = icmp sgt i32 %call.i74.i.i, -1
  br i1 %cmp10.i.i, label %cond.end13.i.i, label %cond.end13.thread.i.i

cond.end13.thread.i.i:                            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %pga_gain83.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %pga_gain83.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 8, ptr %pga_gain83.i.i, align 2
  br label %if.end19.sink.split.i.i

cond.end13.i.i:                                   ; preds = %if.end.i.i
  %33 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i.i, align 4
  %phi.cast.i.i = trunc i32 %34 to i16
  %pga_gain.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 1
  %35 = ptrtoint ptr %pga_gain.i.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %phi.cast.i.i, ptr %pga_gain.i.i, align 2
  %36 = zext i16 %phi.cast.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %phi.cast.i.i, label %tmp51x_pga_gain_to_reg.exit.i.i [
    i16 8, label %cond.end13.i.i.if.end19.sink.split.i.i_crit_edge
    i16 4, label %if.then8.i.i.i
    i16 2, label %if.then18.i.i.i
    i16 1, label %cond.end13.i.i.if.end19.i.i_crit_edge
  ]

cond.end13.i.i.if.end19.i.i_crit_edge:            ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

cond.end13.i.i.if.end19.sink.split.i.i_crit_edge: ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i.i

if.then8.i.i.i:                                   ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i.i

if.then18.i.i.i:                                  ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.sink.split.i.i

tmp51x_pga_gain_to_reg.exit.i.i:                  ; preds = %cond.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i = and i32 %34, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv.i.i.i) #11
  br label %do.end

if.end19.sink.split.i.i:                          ; preds = %if.then18.i.i.i, %if.then8.i.i.i, %cond.end13.i.i.if.end19.sink.split.i.i_crit_edge, %cond.end13.thread.i.i
  %.sink91.i.i = phi i16 [ 4096, %if.then8.i.i.i ], [ 2048, %if.then18.i.i.i ], [ 6144, %cond.end13.thread.i.i ], [ 6144, %cond.end13.i.i.if.end19.sink.split.i.i_crit_edge ]
  %pga_gain84.ph.ph.i.i = phi ptr [ %pga_gain.i.i, %if.then8.i.i.i ], [ %pga_gain.i.i, %if.then18.i.i.i ], [ %pga_gain83.i.i, %cond.end13.thread.i.i ], [ %pga_gain.i.i, %cond.end13.i.i.if.end19.sink.split.i.i_crit_edge ]
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %call.i, align 4
  %39 = or i16 %38, %.sink91.i.i
  store i16 %39, ptr %call.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end19.sink.split.i.i, %cond.end13.i.i.if.end19.i.i_crit_edge
  %pga_gain84.ph.i.i = phi ptr [ %pga_gain.i.i, %cond.end13.i.i.if.end19.i.i_crit_edge ], [ %pga_gain84.ph.ph.i.i, %if.end19.sink.split.i.i ]
  %40 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp20.i.i = icmp eq i32 %41, 1
  %cond22.i.i = select i1 %cmp20.i.i, i32 3, i32 2
  %call23.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef nonnull %nfactor.i.i, i32 noundef %cond22.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23.i.i)
  %cmp24.i.i = icmp sgt i32 %call23.i.i, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end19.i.i.if.end34.i.i_crit_edge

if.end19.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i.i

if.then26.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %nfactor27.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp31.i.i = icmp eq i32 %43, 1
  %cond33.i.i = select i1 %cmp31.i.i, i32 3, i32 2
  %44 = call ptr @memcpy(ptr %nfactor27.i.i, ptr %nfactor.i.i, i32 %cond33.i.i)
  br label %if.end34.i.i

if.end34.i.i:                                     ; preds = %if.then26.i.i, %if.end19.i.i.if.end34.i.i_crit_edge
  %45 = ptrtoint ptr %shunt_uohms.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %shunt_uohms.i.i, align 4
  %47 = ptrtoint ptr %pga_gain84.ph.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pga_gain84.ph.i.i, align 2
  %conv37.i.i = zext i16 %48 to i32
  %mul39.i.i = mul i32 %conv37.i.i, 40000000
  call void @__sanitizer_cov_trace_cmp4(i32 %46, i32 %mul39.i.i)
  %cmp40.i.i = icmp ugt i32 %46, %mul39.i.i
  br i1 %cmp40.i.i, label %do.end.i.i, label %tmp51x_configure.exit

do.end.i.i:                                       ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %46, i32 noundef %conv37.i.i) #11
  br label %do.end

tmp51x_configure.exit.thread:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %vbus_range_uvolt.i6.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %vbus_range_uvolt.i6.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 32000000, ptr %vbus_range_uvolt.i6.i, align 4
  %pga_gain.i7.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 1
  %50 = ptrtoint ptr %pga_gain.i7.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 8, ptr %pga_gain.i7.i, align 2
  %shunt_uohms.i8.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 5
  %51 = ptrtoint ptr %shunt_uohms.i8.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1000, ptr %shunt_uohms.i8.i, align 4
  br label %if.end12

tmp51x_configure.exit:                            ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nfactor.i.i) #8
  br label %if.end12

do.end:                                           ; preds = %do.end.i.i, %tmp51x_pga_gain_to_reg.exit.i.i, %tmp51x_vbus_range_to_reg.exit.thread.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %nfactor.i.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef -22) #11
  br label %cleanup

if.end12:                                         ; preds = %tmp51x_configure.exit, %tmp51x_configure.exit.thread
  %call13 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tmp51x_regmap_config, ptr noundef nonnull @tmp51x_probe._key, ptr noundef nonnull @.str.6) #8
  %regmap = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call13, ptr %regmap, align 4
  %cmp.i77 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.end19, label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %54 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %56 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %regval.i, align 4, !annotation !94
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %call.i, align 4
  %conv.i78 = zext i16 %58 to i32
  %call.i79 = call i32 @regmap_write(ptr noundef %call13, i32 noundef 0, i32 noundef %conv.i78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %cmp.i80 = icmp slt i32 %call.i79, 0
  br i1 %cmp.i80, label %if.end22.tmp51x_init.exit.thread_crit_edge, label %if.end.i82

if.end22.tmp51x_init.exit.thread_crit_edge:       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

if.end.i82:                                       ; preds = %if.end22
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 4
  %61 = ptrtoint ptr %temp_config.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %temp_config.i, align 4
  %conv3.i = zext i16 %62 to i32
  %call4.i = call i32 @regmap_write(ptr noundef %60, i32 noundef 1, i32 noundef %conv3.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i82.tmp51x_init.exit.thread_crit_edge, label %if.end8.i

if.end.i82.tmp51x_init.exit.thread_crit_edge:     ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

if.end8.i:                                        ; preds = %if.end.i82
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %nfactor.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 4
  %65 = ptrtoint ptr %nfactor.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nfactor.i, align 4
  %shl.i = shl i32 %66, 8
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 22, i32 noundef 65280, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp11.i, label %if.end8.i.tmp51x_init.exit.thread_crit_edge, label %if.end14.i

if.end8.i.tmp51x_init.exit.thread_crit_edge:      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

if.end14.i:                                       ; preds = %if.end8.i
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %arrayidx17.i = getelementptr %struct.tmp51x_data, ptr %call.i, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx17.i, align 4
  %shl18.i = shl i32 %70, 8
  %call19.i = call i32 @regmap_write(ptr noundef %68, i32 noundef 23, i32 noundef %shl18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end14.i.tmp51x_init.exit.thread_crit_edge, label %if.end23.i

if.end14.i.tmp51x_init.exit.thread_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

if.end23.i:                                       ; preds = %if.end14.i
  %71 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %72)
  %cmp24.i = icmp eq i32 %72, 1
  br i1 %cmp24.i, label %if.then26.i, label %if.end23.i.if.end36.i_crit_edge

if.end23.i.if.end36.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then26.i:                                      ; preds = %if.end23.i
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 4
  %arrayidx29.i = getelementptr %struct.tmp51x_data, ptr %call.i, i32 0, i32 4, i32 2
  %75 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx29.i, align 4
  %shl30.i = shl i32 %76, 8
  %call31.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 24, i32 noundef %shl30.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %if.then26.i.tmp51x_init.exit.thread_crit_edge, label %if.then26.i.if.end36.i_crit_edge

if.then26.i.if.end36.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then26.i.tmp51x_init.exit.thread_crit_edge:    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

if.end36.i:                                       ; preds = %if.then26.i.if.end36.i_crit_edge, %if.end23.i.if.end36.i_crit_edge
  %shunt_uohms.i.i84 = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 5
  %77 = ptrtoint ptr %shunt_uohms.i.i84 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %shunt_uohms.i.i84, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i.i85 = icmp eq i32 %78, 0
  br i1 %cmp.i.i85, label %if.then.i.i, label %if.end654.i.i

if.then.i.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i68.i = call i32 @regmap_write(ptr noundef %80, i32 noundef 21, i32 noundef 0) #8
  br label %tmp51x_calibrate.exit.i

if.end654.i.i:                                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %pga_gain.i.i86 = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 1
  %81 = ptrtoint ptr %pga_gain.i.i86 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %pga_gain.i.i86, align 2
  %conv.i.i = zext i16 %82 to i32
  %mul4.i.i = mul i32 %conv.i.i, 40000000
  %div5917.i.i = lshr i32 %78, 1
  %add.i.i = add i32 %mul4.i.i, %div5917.i.i
  %div187.i.i = udiv i32 %add.i.i, %78
  %conv188.i.i = zext i32 %div187.i.i to i64
  %mul198.i.i = mul nuw nsw i64 %conv188.i.i, 1000
  %add201.i.i = add nuw nsw i64 %mul198.i.i, 16383
  %83 = call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9223090553287868408, i64 %add201.i.i, i32 0) #12, !srcloc !95
  %asmresult.i928.i.i = extractvalue { i64, i32 } %83, 0
  %asmresult4.i929.i.i = extractvalue { i64, i32 } %83, 1
  %84 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9223090553287868408, i64 %add201.i.i, i64 %asmresult.i928.i.i, i32 %asmresult4.i929.i.i) #12, !srcloc !96
  %asmresult10.i933.i.i = extractvalue { i64, i32 } %84, 0
  %extract919.i.i = lshr i64 %asmresult10.i933.i.i, 14
  %extract.t920.i.i = trunc i64 %extract919.i.i to i32
  %curr_lsb_ua.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 6
  %85 = ptrtoint ptr %curr_lsb_ua.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %extract.t920.i.i, ptr %curr_lsb_ua.i.i, align 4
  %mul426.i.i = mul i32 %extract.t920.i.i, 20
  %pwr_lsb_uw.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %call.i, i32 0, i32 7
  %86 = ptrtoint ptr %pwr_lsb_uw.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul426.i.i, ptr %pwr_lsb_uw.i.i, align 4
  %mul431.i.i = mul i32 %78, %extract.t920.i.i
  %add433.i.i = add i32 %mul431.i.i, 500000
  %conv434.i.i = zext i32 %add433.i.i to i64
  %87 = call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %conv434.i.i) #12, !srcloc !97
  %88 = call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %conv434.i.i, i64 %87, i32 0) #12, !srcloc !96
  %asmresult10.i939.i.i = extractvalue { i64, i32 } %88, 0
  %div630921.i.i = lshr i64 %asmresult10.i939.i.i, 18
  %extract.t923.i.i = trunc i64 %div630921.i.i to i32
  %89 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap, align 4
  %div661924.i.i = lshr i32 %extract.t923.i.i, 1
  %add662.i.i = add nuw i32 %div661924.i.i, 40960
  %div663.i.i = udiv i32 %add662.i.i, %extract.t923.i.i
  %call664.i.i = call i32 @regmap_write(ptr noundef %90, i32 noundef 21, i32 noundef %div663.i.i) #8
  br label %tmp51x_calibrate.exit.i

tmp51x_calibrate.exit.i:                          ; preds = %if.end654.i.i, %if.then.i.i
  %retval.0.i.i90 = phi i32 [ %call.i68.i, %if.then.i.i ], [ %call664.i.i, %if.end654.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i90)
  %cmp38.i = icmp slt i32 %retval.0.i.i90, 0
  br i1 %cmp38.i, label %tmp51x_calibrate.exit.i.tmp51x_init.exit.thread_crit_edge, label %tmp51x_init.exit

tmp51x_calibrate.exit.i.tmp51x_init.exit.thread_crit_edge: ; preds = %tmp51x_calibrate.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_init.exit.thread

tmp51x_init.exit.thread:                          ; preds = %tmp51x_calibrate.exit.i.tmp51x_init.exit.thread_crit_edge, %if.then26.i.tmp51x_init.exit.thread_crit_edge, %if.end14.i.tmp51x_init.exit.thread_crit_edge, %if.end8.i.tmp51x_init.exit.thread_crit_edge, %if.end.i82.tmp51x_init.exit.thread_crit_edge, %if.end22.tmp51x_init.exit.thread_crit_edge
  %retval.0.i91.ph = phi i32 [ %retval.0.i.i90, %tmp51x_calibrate.exit.i.tmp51x_init.exit.thread_crit_edge ], [ %call31.i, %if.then26.i.tmp51x_init.exit.thread_crit_edge ], [ %call19.i, %if.end14.i.tmp51x_init.exit.thread_crit_edge ], [ %call.i.i, %if.end8.i.tmp51x_init.exit.thread_crit_edge ], [ %call4.i, %if.end.i82.tmp51x_init.exit.thread_crit_edge ], [ %call.i79, %if.end22.tmp51x_init.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %do.end28

tmp51x_init.exit:                                 ; preds = %tmp51x_calibrate.exit.i
  %91 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap, align 4
  %call43.i = call i32 @regmap_read(ptr noundef %92, i32 noundef 2, ptr noundef nonnull %regval.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp24 = icmp slt i32 %call43.i, 0
  br i1 %cmp24, label %tmp51x_init.exit.do.end28_crit_edge, label %if.end29

tmp51x_init.exit.do.end28_crit_edge:              ; preds = %tmp51x_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

do.end28:                                         ; preds = %tmp51x_init.exit.do.end28_crit_edge, %tmp51x_init.exit.thread
  %retval.0.i91101 = phi i32 [ %retval.0.i91.ph, %tmp51x_init.exit.thread ], [ %call43.i, %tmp51x_init.exit.do.end28_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i91101) #11
  br label %cleanup

if.end29:                                         ; preds = %tmp51x_init.exit
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call30 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @tmp51x_chip_info, ptr noundef null) #8
  %cmp.i92 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then32, label %do.body35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %call30 to i32
  br label %cleanup

do.body35:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmp51x_probe.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tmp51x_probe, %cleanup)) #8
          to label %if.then42 [label %cleanup], !srcloc !98

if.then42:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmp51x_probe.__UNIQUE_ID_ddebug308, ptr noundef %dev1, ptr noundef nonnull @.str.13, ptr noundef %name) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then42, %do.body35, %if.then32, %do.end28, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %55, %do.end19 ], [ -19, %do.end28 ], [ %93, %if.then32 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then42 ], [ 0, %do.body35 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tmp51x_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %type, label %entry.sw.epilog26_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb12
    i32 4, label %sw.bb18
  ]

entry.sw.epilog26_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb:                                            ; preds = %entry
  %id = getelementptr inbounds %struct.tmp51x_data, ptr %_data, i32 0, i32 8
  %1 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp1 = icmp eq i32 %channel, 4
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %attr, label %if.end.sw.epilog26_crit_edge [
    i32 1, label %if.end.cleanup_crit_edge
    i32 17, label %if.end.cleanup_crit_edge33
    i32 9, label %sw.bb3
    i32 10, label %sw.bb4
  ]

if.end.cleanup_crit_edge33:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.sw.epilog26_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp5 = icmp eq i32 %channel, 0
  %. = select i1 %cmp5, i16 420, i16 292
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %attr, label %sw.bb8.sw.epilog26_crit_edge [
    i32 1, label %sw.bb8.cleanup_crit_edge
    i32 14, label %sw.bb8.cleanup_crit_edge34
    i32 15, label %sw.bb8.cleanup_crit_edge35
    i32 4, label %sw.bb8.sw.bb10_crit_edge
    i32 5, label %sw.bb8.sw.bb10_crit_edge36
  ]

sw.bb8.sw.bb10_crit_edge36:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

sw.bb8.sw.bb10_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb10

sw.bb8.cleanup_crit_edge35:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8.cleanup_crit_edge34:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8.sw.epilog26_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb10:                                          ; preds = %sw.bb8.sw.bb10_crit_edge, %sw.bb8.sw.bb10_crit_edge36
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %shunt_uohms = getelementptr inbounds %struct.tmp51x_data, ptr %_data, i32 0, i32 5
  %5 = ptrtoint ptr %shunt_uohms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shunt_uohms, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %sw.bb12.cleanup_crit_edge, label %if.end14

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sw.bb12
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %attr, label %if.end14.sw.epilog26_crit_edge [
    i32 1, label %if.end14.cleanup_crit_edge
    i32 14, label %if.end14.cleanup_crit_edge37
    i32 15, label %if.end14.cleanup_crit_edge38
    i32 4, label %if.end14.sw.bb16_crit_edge
    i32 5, label %if.end14.sw.bb16_crit_edge39
  ]

if.end14.sw.bb16_crit_edge39:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end14.sw.bb16_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb16

if.end14.cleanup_crit_edge38:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.cleanup_crit_edge37:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.sw.epilog26_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb16:                                          ; preds = %if.end14.sw.bb16_crit_edge, %if.end14.sw.bb16_crit_edge39
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  %shunt_uohms19 = getelementptr inbounds %struct.tmp51x_data, ptr %_data, i32 0, i32 5
  %8 = ptrtoint ptr %shunt_uohms19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shunt_uohms19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %sw.bb18.cleanup_crit_edge, label %if.end22

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  %10 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %attr, label %if.end22.sw.epilog26_crit_edge [
    i32 9, label %if.end22.cleanup_crit_edge
    i32 28, label %if.end22.cleanup_crit_edge40
    i32 20, label %sw.bb24
  ]

if.end22.cleanup_crit_edge40:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22.sw.epilog26_crit_edge:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog26

sw.bb24:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog26:                                      ; preds = %if.end22.sw.epilog26_crit_edge, %if.end14.sw.epilog26_crit_edge, %sw.bb8.sw.epilog26_crit_edge, %if.end.sw.epilog26_crit_edge, %entry.sw.epilog26_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog26, %sw.bb24, %if.end22.cleanup_crit_edge, %if.end22.cleanup_crit_edge40, %sw.bb18.cleanup_crit_edge, %sw.bb16, %if.end14.cleanup_crit_edge, %if.end14.cleanup_crit_edge37, %if.end14.cleanup_crit_edge38, %sw.bb12.cleanup_crit_edge, %sw.bb10, %sw.bb8.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge34, %sw.bb8.cleanup_crit_edge35, %sw.bb4, %sw.bb3, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge33, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog26 ], [ 420, %sw.bb24 ], [ 420, %sw.bb16 ], [ 420, %sw.bb10 ], [ 420, %sw.bb3 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 292, %if.end.cleanup_crit_edge ], [ 292, %if.end.cleanup_crit_edge33 ], [ %., %sw.bb4 ], [ 292, %sw.bb8.cleanup_crit_edge ], [ 292, %sw.bb8.cleanup_crit_edge34 ], [ 292, %sw.bb8.cleanup_crit_edge35 ], [ 0, %sw.bb12.cleanup_crit_edge ], [ 292, %if.end14.cleanup_crit_edge ], [ 292, %if.end14.cleanup_crit_edge37 ], [ 292, %if.end14.cleanup_crit_edge38 ], [ 0, %sw.bb18.cleanup_crit_edge ], [ 292, %if.end22.cleanup_crit_edge ], [ 292, %if.end22.cleanup_crit_edge40 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp51x_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !94
  %call1 = tail call fastcc zeroext i8 @tmp51x_get_reg(i32 noundef %type, i32 noundef %attr, i32 noundef %channel)
  %conv = zext i8 %call1 to i32
  %3 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %call1, label %entry.if.end8_crit_edge [
    i8 0, label %entry.cleanup_crit_edge
    i8 2, label %if.then6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %entry
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %type, label %if.then6.sw.epilog13.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb6.i
    i32 4, label %sw.bb10.i
  ]

if.then6.sw.epilog13.i_crit_edge:                 ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog13.i

sw.bb.i:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %attr)
  %cond14.i = icmp eq i32 %attr, 17
  br i1 %cond14.i, label %sw.bb1.i, label %sw.bb.i.sw.epilog13.i_crit_edge

sw.bb.i.sw.epilog13.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog13.i

sw.bb1.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr [4 x i8], ptr @TMP51X_TEMP_CRIT_ALARM, i32 0, i32 %channel
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i, align 1
  br label %if.end8

sw.bb2.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %attr)
  %switch.selectcmp.i = icmp eq i32 %attr, 15
  %switch.select.i = select i1 %switch.selectcmp.i, i8 13, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %attr)
  %switch.selectcmp18.i = icmp eq i32 %attr, 14
  %switch.select19.i = select i1 %switch.selectcmp18.i, i8 12, i8 %switch.select.i
  br label %if.end8

sw.bb6.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %attr)
  %switch.selectcmp20.i = icmp eq i32 %attr, 15
  %switch.select21.i = select i1 %switch.selectcmp20.i, i8 15, i8 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %attr)
  %switch.selectcmp22.i = icmp eq i32 %attr, 14
  %switch.select23.i = select i1 %switch.selectcmp22.i, i8 14, i8 %switch.select21.i
  br label %if.end8

sw.bb10.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %attr)
  %cond.i = icmp eq i32 %attr, 28
  br i1 %cond.i, label %sw.bb10.i.if.end8_crit_edge, label %sw.bb10.i.sw.epilog13.i_crit_edge

sw.bb10.i.sw.epilog13.i_crit_edge:                ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog13.i

sw.bb10.i.if.end8_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

sw.epilog13.i:                                    ; preds = %sw.bb10.i.sw.epilog13.i_crit_edge, %sw.bb.i.sw.epilog13.i_crit_edge, %if.then6.sw.epilog13.i_crit_edge
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog13.i, %sw.bb10.i.if.end8_crit_edge, %sw.bb6.i, %sw.bb2.i, %sw.bb1.i, %entry.if.end8_crit_edge
  %pos.0 = phi i8 [ 0, %entry.if.end8_crit_edge ], [ 0, %sw.epilog13.i ], [ %6, %sw.bb1.i ], [ %switch.select19.i, %sw.bb2.i ], [ %switch.select23.i, %sw.bb6.i ], [ 11, %sw.bb10.i.if.end8_crit_edge ]
  %regmap = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %8, i32 noundef %conv, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval, align 4
  %11 = zext i8 %call1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %call1, label %land.end.i [
    i8 2, label %sw.bb.i28
    i8 4, label %if.end14.sw.bb2.i29_crit_edge
    i8 12, label %if.end14.sw.bb2.i29_crit_edge33
    i8 13, label %if.end14.sw.bb2.i29_crit_edge34
    i8 5, label %if.end14.sw.bb6.i30_crit_edge
    i8 14, label %if.end14.sw.bb6.i30_crit_edge35
    i8 15, label %if.end14.sw.bb6.i30_crit_edge36
    i8 6, label %if.end14.sw.bb9.i_crit_edge
    i8 16, label %if.end14.sw.bb9.i_crit_edge37
    i8 7, label %sw.bb11.i
    i8 8, label %if.end14.sw.bb28.i_crit_edge
    i8 9, label %if.end14.sw.bb28.i_crit_edge38
    i8 10, label %if.end14.sw.bb28.i_crit_edge39
    i8 11, label %if.end14.sw.bb28.i_crit_edge40
    i8 17, label %if.end14.sw.bb28.i_crit_edge41
    i8 18, label %if.end14.sw.bb28.i_crit_edge42
    i8 19, label %if.end14.sw.bb28.i_crit_edge43
    i8 20, label %if.end14.sw.bb28.i_crit_edge44
    i8 22, label %sw.bb51.i
  ]

if.end14.sw.bb28.i_crit_edge44:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge43:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge42:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge41:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge40:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge39:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge38:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb28.i_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb28.i

if.end14.sw.bb9.i_crit_edge37:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.end14.sw.bb9.i_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.end14.sw.bb6.i30_crit_edge36:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i30

if.end14.sw.bb6.i30_crit_edge35:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i30

if.end14.sw.bb6.i30_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i30

if.end14.sw.bb2.i29_crit_edge34:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i29

if.end14.sw.bb2.i29_crit_edge33:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i29

if.end14.sw.bb2.i29_crit_edge:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i29

sw.bb.i28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = zext i8 %pos.0 to i32
  %shr.i = lshr i32 %10, %conv1.i
  %and.i = and i32 %shr.i, 1
  br label %tmp51x_get_value.exit

sw.bb2.i29:                                       ; preds = %if.end14.sw.bb2.i29_crit_edge, %if.end14.sw.bb2.i29_crit_edge33, %if.end14.sw.bb2.i29_crit_edge34
  %pga_gain.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pga_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pga_gain.i.i, align 2
  %14 = call i16 @llvm.cttz.i16(i16 %13, i1 true) #8, !range !99
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %iszero.i.i = icmp eq i16 %13, 0
  %.op.i = sub nuw nsw i16 18, %14
  %narrow132.i = select i1 %iszero.i.i, i16 19, i16 %.op.i
  %conv.i.i = zext i16 %narrow132.i to i32
  %shl.i.i = shl i32 %10, %conv.i.i
  %shr.i.i = ashr i32 %shl.i.i, %conv.i.i
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %shr.i.i, ptr %val, align 4
  %mul.i = mul i32 %shr.i.i, 10000
  %shunt_uohms.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %shunt_uohms.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %shunt_uohms.i, align 4
  %div125.i = lshr i32 %17, 1
  %add.i = add i32 %mul.i, %div125.i
  %div5.i = udiv i32 %add.i, %17
  br label %tmp51x_get_value.exit

sw.bb6.i30:                                       ; preds = %if.end14.sw.bb6.i30_crit_edge, %if.end14.sw.bb6.i30_crit_edge35, %if.end14.sw.bb6.i30_crit_edge36
  %18 = lshr i32 %10, 1
  %mul8.i = and i32 %18, 2147483644
  br label %tmp51x_get_value.exit

sw.bb9.i:                                         ; preds = %if.end14.sw.bb9.i_crit_edge, %if.end14.sw.bb9.i_crit_edge37
  %pwr_lsb_uw.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %pwr_lsb_uw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pwr_lsb_uw.i, align 4
  %mul10.i = mul i32 %20, %10
  br label %tmp51x_get_value.exit

sw.bb11.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i127.i = shl i32 %10, 15
  %shr.i128.i = ashr exact i32 %shl.i127.i, 15
  %curr_lsb_ua.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %curr_lsb_ua.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %curr_lsb_ua.i, align 4
  %mul13.i = mul i32 %22, %shr.i128.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul13.i)
  %cmp.i = icmp sgt i32 %mul13.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 500, i32 -500
  %cond.in.i = add i32 %cond.in.v.i, %mul13.i
  %cond.i31 = sdiv i32 %cond.in.i, 1000
  br label %tmp51x_get_value.exit

sw.bb28.i:                                        ; preds = %if.end14.sw.bb28.i_crit_edge, %if.end14.sw.bb28.i_crit_edge38, %if.end14.sw.bb28.i_crit_edge39, %if.end14.sw.bb28.i_crit_edge40, %if.end14.sw.bb28.i_crit_edge41, %if.end14.sw.bb28.i_crit_edge42, %if.end14.sw.bb28.i_crit_edge43, %if.end14.sw.bb28.i_crit_edge44
  %shl.i129.i = shl i32 %10, 15
  %shr30.i = ashr i32 %shl.i129.i, 18
  %mul32.i = mul nsw i32 %shr30.i, 625
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %shl.i129.i)
  %cmp35.i = icmp sgt i32 %shl.i129.i, 262143
  %cond50.in.v.i = select i1 %cmp35.i, i32 5, i32 -5
  %cond50.in.i = add nsw i32 %mul32.i, %cond50.in.v.i
  %cond50.i = sdiv i32 %cond50.in.i, 10
  br label %tmp51x_get_value.exit

sw.bb51.i:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %and52.i = and i32 %10, 255
  %mul53.i = mul nuw nsw i32 %and52.i, 500
  br label %tmp51x_get_value.exit

land.end.i:                                       ; preds = %if.end14
  %.b126.i = load i1, ptr @tmp51x_get_value.__already_done, align 1
  br i1 %.b126.i, label %land.end.i.tmp51x_get_value.exit_crit_edge, label %if.then.i, !prof !100

land.end.i.tmp51x_get_value.exit_crit_edge:       ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp51x_get_value.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tmp51x_get_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 235, i32 noundef 9, ptr noundef null) #8
  br label %tmp51x_get_value.exit

tmp51x_get_value.exit:                            ; preds = %if.then.i, %land.end.i.tmp51x_get_value.exit_crit_edge, %sw.bb51.i, %sw.bb28.i, %sw.bb11.i, %sw.bb9.i, %sw.bb6.i30, %sw.bb2.i29, %sw.bb.i28
  %and.sink.i = phi i32 [ %and.i, %sw.bb.i28 ], [ %div5.i, %sw.bb2.i29 ], [ %mul8.i, %sw.bb6.i30 ], [ %mul10.i, %sw.bb9.i ], [ %cond.i31, %sw.bb11.i ], [ %cond50.i, %sw.bb28.i ], [ %mul53.i, %sw.bb51.i ], [ 0, %if.then.i ], [ 0, %land.end.i.tmp51x_get_value.exit_crit_edge ]
  %retval.0.i32 = phi i32 [ 0, %sw.bb.i28 ], [ 0, %sw.bb2.i29 ], [ 0, %sw.bb6.i30 ], [ 0, %sw.bb9.i ], [ 0, %sw.bb11.i ], [ 0, %sw.bb28.i ], [ 0, %sw.bb51.i ], [ -95, %if.then.i ], [ -95, %land.end.i.tmp51x_get_value.exit_crit_edge ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.sink.i, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %tmp51x_get_value.exit, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i32, %tmp51x_get_value.exit ], [ -95, %entry.cleanup_crit_edge ], [ %call10, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp51x_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i8 @tmp51x_get_reg(i32 noundef %type, i32 noundef %attr, i32 noundef %channel)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %cmp = icmp eq i8 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %conv.i = zext i8 %call to i32
  %2 = zext i8 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %call, label %land.end.i [
    i8 12, label %if.end.sw.bb.i_crit_edge
    i8 13, label %if.end.sw.bb.i_crit_edge5
    i8 14, label %if.end.sw.bb12.i_crit_edge
    i8 15, label %if.end.sw.bb12.i_crit_edge6
    i8 16, label %sw.bb49.i
    i8 17, label %if.end.sw.bb70.i_crit_edge
    i8 18, label %if.end.sw.bb70.i_crit_edge7
    i8 19, label %if.end.sw.bb70.i_crit_edge8
    i8 20, label %if.end.sw.bb70.i_crit_edge9
    i8 22, label %if.else.i
  ]

if.end.sw.bb70.i_crit_edge9:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70.i

if.end.sw.bb70.i_crit_edge8:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70.i

if.end.sw.bb70.i_crit_edge7:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70.i

if.end.sw.bb70.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb70.i

if.end.sw.bb12.i_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb12.i

if.end.sw.bb.i_crit_edge5:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge5
  %shunt_uohms.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %shunt_uohms.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %shunt_uohms.i, align 4
  %mul.i = mul i32 %4, %val
  %add.i = add i32 %mul.i, 5000
  %div1.i = udiv i32 %add.i, 10000
  %pga_gain.i.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %pga_gain.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %pga_gain.i.i, align 2
  %7 = tail call i16 @llvm.cttz.i16(i16 %6, i1 true) #8, !range !99
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %iszero.i.i = icmp eq i16 %6, 0
  %8 = sub nsw i16 4, %7
  %9 = and i16 %8, 255
  %narrow.i = select i1 %iszero.i.i, i16 5, i16 %9
  %conv2.i = zext i16 %narrow.i to i32
  %shr.i = lshr i32 65535, %conv2.i
  %sub.i = sub nsw i32 0, %shr.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %sub.i)
  %cmp.i = icmp sgt i32 %div1.i, %sub.i
  %div1..i = select i1 %cmp.i, i32 %div1.i, i32 0
  %10 = tail call i32 @llvm.umin.i32(i32 %div1..i, i32 %shr.i) #8
  br label %if.then176.i

sw.bb12.i:                                        ; preds = %if.end.sw.bb12.i_crit_edge, %if.end.sw.bb12.i_crit_edge6
  %vbus_range_uvolt.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %vbus_range_uvolt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vbus_range_uvolt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000000, i32 %12)
  %cmp13.i = icmp eq i32 %12, 32000000
  %cond15.i = select i1 %cmp13.i, i32 32764, i32 16382
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp19.i = icmp sgt i32 %val, 0
  %cond34.in.v.i = select i1 %cmp19.i, i32 2, i32 -2
  %cond34.in.i = add i32 %cond34.in.v.i, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cond34.in.i)
  %cmp36.i = icmp sgt i32 %cond34.in.i, 3
  %cond34.i = sdiv i32 %cond34.in.i, 4
  %cond41.i = select i1 %cmp36.i, i32 %cond34.i, i32 0
  %13 = tail call i32 @llvm.smin.i32(i32 %cond41.i, i32 %cond15.i) #8
  %shl.i = shl i32 %13, 3
  br label %if.then176.i

sw.bb49.i:                                        ; preds = %if.end
  %pwr_lsb_uw.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %pwr_lsb_uw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pwr_lsb_uw.i, align 4
  %div53245.i = lshr i32 %15, 1
  %add54.i = add i32 %div53245.i, %val
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add54.i)
  %cmp57.not.i = icmp ugt i32 %15, %add54.i
  br i1 %cmp57.not.i, label %sw.bb49.i.cond.end61.thread.i_crit_edge, label %cond.end61.i

sw.bb49.i.cond.end61.thread.i_crit_edge:          ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end61.thread.i

cond.end61.i:                                     ; preds = %sw.bb49.i
  %div55.i = udiv i32 %add54.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div55.i)
  %cmp64.i = icmp ult i32 %div55.i, 65535
  br i1 %cmp64.i, label %cond.end61.i.cond.end61.thread.i_crit_edge, label %cond.end61.i.if.then176.i_crit_edge

cond.end61.i.if.then176.i_crit_edge:              ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then176.i

cond.end61.i.cond.end61.thread.i_crit_edge:       ; preds = %cond.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end61.thread.i

cond.end61.thread.i:                              ; preds = %cond.end61.i.cond.end61.thread.i_crit_edge, %sw.bb49.i.cond.end61.thread.i_crit_edge
  %cond62250.i = phi i32 [ %div55.i, %cond.end61.i.cond.end61.thread.i_crit_edge ], [ 0, %sw.bb49.i.cond.end61.thread.i_crit_edge ]
  br label %if.then176.i

sw.bb70.i:                                        ; preds = %if.end.sw.bb70.i_crit_edge, %if.end.sw.bb70.i_crit_edge7, %if.end.sw.bb70.i_crit_edge8, %if.end.sw.bb70.i_crit_edge9
  %16 = tail call i32 @llvm.smax.i32(i32 %val, i32 -40000) #8
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 125000) #8
  %mul86.i = mul nsw i32 %17, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp89.i = icmp sgt i32 %16, 0
  %cond104.in.v.i = select i1 %cmp89.i, i32 312, i32 -312
  %cond104.in.i = add nsw i32 %mul86.i, %cond104.in.v.i
  %cond104.i = sdiv i32 %cond104.in.i, 625
  %shl105.i = shl nsw i32 %cond104.i, 3
  br label %if.then176.i

land.end.i:                                       ; preds = %if.end
  %.b246.i = load i1, ptr @tmp51x_set_value.__already_done, align 1
  br i1 %.b246.i, label %land.end.i.cleanup_crit_edge, label %if.then.i, !prof !100

land.end.i.cleanup_crit_edge:                     ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tmp51x_set_value.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 288, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.then176.i:                                     ; preds = %sw.bb70.i, %cond.end61.thread.i, %cond.end61.i.if.then176.i_crit_edge, %sw.bb12.i, %sw.bb.i
  %regval.0.ph.i = phi i32 [ 65535, %cond.end61.i.if.then176.i_crit_edge ], [ %cond62250.i, %cond.end61.thread.i ], [ %10, %sw.bb.i ], [ %shl.i, %sw.bb12.i ], [ %shl105.i, %sw.bb70.i ]
  %regmap.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call178.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %conv.i, i32 noundef %regval.0.ph.i) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #8
  %21 = tail call i32 @llvm.umin.i32(i32 %20, i32 127500) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp124.not.i = icmp eq i32 %21, 0
  %add132.i = add nuw nsw i32 %21, 250
  %div133255.i = udiv i32 %add132.i, 500
  %cond139.i = select i1 %cmp124.not.i, i32 0, i32 %div133255.i
  %regmap179.i = getelementptr inbounds %struct.tmp51x_data, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %regmap179.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap179.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %conv.i, i32 noundef 255, i32 noundef %cond139.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then176.i, %if.then.i, %land.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call178.i, %if.then176.i ], [ %call.i.i, %if.else.i ], [ -95, %if.then.i ], [ -95, %land.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i8 @tmp51x_get_reg(i32 noundef %type, i32 noundef %attr, i32 noundef %channel) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %type, label %entry.sw.epilog25_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
    i32 3, label %sw.bb13
    i32 4, label %sw.bb20
  ]

entry.sw.epilog25_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %attr, label %sw.bb.sw.epilog25_crit_edge [
    i32 1, label %sw.bb1
    i32 17, label %sw.bb.return_crit_edge
    i32 9, label %sw.bb3
    i32 10, label %sw.bb5
  ]

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.sw.epilog25_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb1:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [4 x i8], ptr @TMP51X_TEMP_INPUT, i32 0, i32 %channel
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  br label %return

sw.bb3:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr [4 x i8], ptr @TMP51X_TEMP_CRIT, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  br label %return

sw.bb5:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6 = getelementptr [4 x i8], ptr @TMP51X_TEMP_CRIT_HYST, i32 0, i32 %channel
  %6 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx6, align 1
  br label %return

sw.bb7:                                           ; preds = %entry
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %attr, label %sw.bb7.sw.epilog25_crit_edge [
    i32 1, label %sw.bb7.return_crit_edge
    i32 14, label %sw.bb7.sw.bb9_crit_edge
    i32 15, label %sw.bb7.sw.bb9_crit_edge32
    i32 4, label %sw.bb10
    i32 5, label %sw.bb11
  ]

sw.bb7.sw.bb9_crit_edge32:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

sw.bb7.sw.bb9_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9

sw.bb7.return_crit_edge:                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb7.sw.epilog25_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb9:                                           ; preds = %sw.bb7.sw.bb9_crit_edge, %sw.bb7.sw.bb9_crit_edge32
  br label %return

sw.bb10:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb11:                                          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13:                                          ; preds = %entry
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %attr, label %sw.bb13.sw.epilog25_crit_edge [
    i32 1, label %sw.bb14
    i32 14, label %sw.bb13.return_crit_edge
    i32 15, label %sw.bb13.return_crit_edge33
    i32 4, label %sw.bb17
    i32 5, label %sw.bb18
  ]

sw.bb13.return_crit_edge33:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13.return_crit_edge:                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb13.sw.epilog25_crit_edge:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb14:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr [2 x i8], ptr @TMP51X_CURR_INPUT, i32 0, i32 %channel
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx15, align 1
  br label %return

sw.bb17:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb18:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb20:                                          ; preds = %entry
  %12 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %attr, label %sw.bb20.sw.epilog25_crit_edge [
    i32 9, label %sw.bb20.return_crit_edge
    i32 28, label %sw.bb22
    i32 20, label %sw.bb23
  ]

sw.bb20.return_crit_edge:                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb20.sw.epilog25_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog25

sw.bb22:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb23:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.epilog25:                                      ; preds = %sw.bb20.sw.epilog25_crit_edge, %sw.bb13.sw.epilog25_crit_edge, %sw.bb7.sw.epilog25_crit_edge, %sw.bb.sw.epilog25_crit_edge, %entry.sw.epilog25_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog25, %sw.bb23, %sw.bb22, %sw.bb20.return_crit_edge, %sw.bb18, %sw.bb17, %sw.bb14, %sw.bb13.return_crit_edge, %sw.bb13.return_crit_edge33, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb7.return_crit_edge, %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb.return_crit_edge
  %retval.0 = phi i8 [ 0, %sw.epilog25 ], [ 16, %sw.bb23 ], [ 2, %sw.bb22 ], [ 12, %sw.bb18 ], [ 13, %sw.bb17 ], [ %11, %sw.bb14 ], [ 14, %sw.bb11 ], [ 15, %sw.bb10 ], [ 2, %sw.bb9 ], [ %7, %sw.bb5 ], [ %5, %sw.bb3 ], [ %3, %sw.bb1 ], [ 2, %sw.bb.return_crit_edge ], [ 5, %sw.bb7.return_crit_edge ], [ 2, %sw.bb13.return_crit_edge ], [ 2, %sw.bb13.return_crit_edge33 ], [ 6, %sw.bb20.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.cttz.i16(i16, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !34, !35, !36, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_tmp513__309_767_tmp51x_driver_init6, !1, !"__initcall__kmod_tmp513__309_767_tmp51x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/tmp513.c", i32 767, i32 1}
!2 = !{ptr @__exitcall_tmp51x_driver_exit, !1, !"__exitcall_tmp51x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/tmp513.c", i32 769, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/tmp513.c", i32 770, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/tmp513.c", i32 771, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/tmp513.c", i32 760, i32 11}
!12 = !{ptr @tmp51x_driver, !13, !"tmp51x_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/tmp513.c", i32 758, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/tmp513.c", i32 730, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tmp51x_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tmp51x_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tmp51x_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/tmp513.c", i32 734, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/tmp513.c", i32 736, i32 3}
!27 = !{ptr @tmp51x_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tmp51x_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tmp51x_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/tmp513.c", i32 742, i32 3}
!31 = !{ptr @tmp51x_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/tmp513.c", i32 753, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tmp51x_probe.__UNIQUE_ID_ddebug308, !33, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/tmp513.c", i32 661, i32 38}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/tmp513.c", i32 664, i32 38}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/tmp513.c", i32 670, i32 38}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/tmp513.c", i32 676, i32 44}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/tmp513.c", i32 683, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tmp51x_read_properties._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tmp51x_read_properties._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/tmp513.c", i32 631, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tmp51x_vbus_range_to_reg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tmp51x_vbus_range_to_reg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/tmp513.c", i32 649, i32 3}
!56 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @tmp51x_pga_gain_to_reg._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @tmp51x_pga_gain_to_reg._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @tmp51x_regmap_config, !60, !"tmp51x_regmap_config", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/tmp513.c", i32 149, i32 29}
!61 = !{ptr @tmp51x_chip_info, !62, !"tmp51x_chip_info", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/tmp513.c", i32 522, i32 37}
!63 = !{ptr @tmp51x_hwmon_ops, !64, !"tmp51x_hwmon_ops", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/tmp513.c", i32 516, i32 31}
!65 = !{ptr @TMP51X_TEMP_INPUT, !66, !"TMP51X_TEMP_INPUT", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/tmp513.c", i32 116, i32 17}
!67 = !{ptr @TMP51X_TEMP_CRIT, !68, !"TMP51X_TEMP_CRIT", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/tmp513.c", i32 123, i32 17}
!69 = !{ptr @TMP51X_TEMP_CRIT_HYST, !70, !"TMP51X_TEMP_CRIT_HYST", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/tmp513.c", i32 137, i32 17}
!71 = !{ptr @TMP51X_CURR_INPUT, !72, !"TMP51X_CURR_INPUT", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/tmp513.c", i32 144, i32 17}
!73 = !{ptr @TMP51X_TEMP_CRIT_ALARM, !74, !"TMP51X_TEMP_CRIT_ALARM", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/tmp513.c", i32 130, i32 17}
!75 = distinct !{null, !76, !"__already_done", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/tmp513.c", i32 235, i32 3}
!77 = distinct !{null, !78, !"__already_done", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/tmp513.c", i32 288, i32 3}
!79 = !{ptr @tmp51x_info, !80, !"tmp51x_info", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/tmp513.c", i32 494, i32 41}
!81 = !{ptr @tmp51x_of_match, !82, !"tmp51x_of_match", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/tmp513.c", i32 610, i32 34}
!83 = !{ptr @tmp51x_id, !84, !"tmp51x_id", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/tmp513.c", i32 603, i32 35}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{!"auto-init"}
!95 = !{i64 1559982, i64 1560009, i64 1560031, i64 1560059}
!96 = !{i64 1560390, i64 1560417, i64 1560450, i64 1560471, i64 1560498, i64 1560524}
!97 = !{i64 1559695, i64 1559722}
!98 = !{i64 2149020339, i64 2149020344, i64 2149020357, i64 2149020401, i64 2149020435, i64 2149020456}
!99 = !{i16 0, i16 17}
!100 = !{!"branch_weights", i32 2000, i32 1}
