; ModuleID = '/llk/IR_all_yes/drivers/hwmon/occ/common.c_pt.bc'
source_filename = "../drivers/hwmon/occ/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+occ_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_occ_setup\09\09\09\09"
module asm "\09.long\09__crc_occ_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_occ_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22occ_setup\22\09\09\09\09\09"
module asm "__kstrtabns_occ_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.occ = type { ptr, %struct.occ_response, %struct.occ_sensors, i32, i8, ptr, i32, %struct.mutex, ptr, ptr, %struct.attribute_group, [2 x ptr], i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.occ_response = type <{ i8, i8, i8, i16, [4089 x i8], i16 }>
%struct.occ_sensors = type { %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor, %struct.occ_sensor }
%struct.occ_sensor = type { i8, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.occ_attribute = type { [32 x i8], %struct.sensor_device_attribute_2 }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.temp_sensor_2 = type <{ i32, i8, i8 }>
%struct.occ_sensor_data_block_header = type { [4 x i8], i8, i8, i8, i8 }
%struct.occ_sensor_data_block = type { %struct.occ_sensor_data_block_header, i32 }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.temp_sensor_1 = type { i16, i16 }
%struct.freq_sensor_1 = type { i16, i16 }
%struct.power_sensor_1 = type <{ i16, i32, i32, i16 }>
%struct.caps_sensor_2 = type <{ i16, i16, i16, i16, i16, i16, i8 }>
%struct.temp_sensor_10 = type { i32, i8, i8, i8, i8 }
%struct.freq_sensor_2 = type <{ i32, i16 }>
%struct.power_sensor_2 = type <{ i32, i8, i8, i16, i32, i64, i16 }>
%struct.power_sensor_a0 = type <{ i32, %struct.power_sensor_data_and_time, i32, %struct.power_sensor_data_and_time, %struct.power_sensor_data, %struct.power_sensor_data }>
%struct.power_sensor_data_and_time = type { i16, i16, i32, i64 }
%struct.power_sensor_data = type <{ i16, i32, i64 }>
%struct.caps_sensor_3 = type <{ i16, i16, i16, i16, i16, i16, i16, i8 }>
%struct.extended_sensor = type { %union.anon.47, i8, i8, [6 x i8] }
%union.anon.47 = type { i32 }

@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@occ_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&occ->lock\00", [21 x i8] zeroinitializer }, align 32
@occ_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"host is not ready\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"occ_setup\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hwmon/occ/common.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@occ_setup._entry_ptr = internal global ptr @occ_setup._entry, section ".printk_index", align 4
@occ_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1154, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to get OCC poll response=%02x: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@occ_setup._entry_ptr.9 = internal global ptr @occ_setup._entry.6, section ".printk_index", align 4
@occ_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1164, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to setup sensor attrs: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@occ_setup._entry_ptr.12 = internal global ptr @occ_setup._entry.10, section ".printk_index", align 4
@occ_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1173, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register hwmon device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@occ_setup._entry_ptr.15 = internal global ptr @occ_setup._entry.13, section ".printk_index", align 4
@occ_setup._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1179, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to setup sysfs: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@occ_setup._entry_ptr.18 = internal global ptr @occ_setup._entry.16, section ".printk_index", align 4
@__kstrtab_occ_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_occ_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_occ_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @occ_setup to i32), ptr @__kstrtab_occ_setup, ptr @__kstrtabns_occ_setup }, section "___ksymtab_gpl+occ_setup", align 4
@__UNIQUE_ID_author172 = internal constant [60 x i8] c"occ_hwmon_common.author=Eddie James <eajames@linux.ibm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [51 x i8] c"occ_hwmon_common.description=Common OCC hwmon code\00", section ".modinfo", align 1
@__UNIQUE_ID_file174 = internal constant [57 x i8] c"occ_hwmon_common.file=drivers/hwmon/occ/occ-hwmon-common\00", section ".modinfo", align 1
@__UNIQUE_ID_license175 = internal constant [29 x i8] c"occ_hwmon_common.license=GPL\00", section ".modinfo", align 1
@occ_parse_poll_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 1094, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OCC found, code level: %.16s\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"occ_parse_poll_response\00", [40 x i8] zeroinitializer }, align 32
@occ_parse_poll_response._entry_ptr = internal global ptr @occ_parse_poll_response._entry, section ".printk_index", align 4
@occ_parse_poll_response._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 1105, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exceeded response buffer\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@occ_parse_poll_response._entry_ptr.24 = internal global ptr @occ_parse_poll_response._entry.21, section ".printk_index", align 4
@occ_parse_poll_response.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.20, ptr @.str.3, ptr @.str.26, i8 1, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"occ_hwmon_common\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c" %04x..%04x: %.4s (%d sensors)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TEMP\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"FREQ\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"POWR\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CAPS\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"EXTN\00", [27 x i8] zeroinitializer }, align 32
@occ_parse_poll_response._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.3, i32 1126, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sensor not supported %.4s\0A\00", [37 x i8] zeroinitializer }, align 32
@occ_parse_poll_response._entry_ptr.34 = internal global ptr @occ_parse_poll_response._entry.32, section ".printk_index", align 4
@occ_parse_poll_response.__UNIQUE_ID_ddebug171 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.20, ptr @.str.3, ptr @.str.35, i8 1, i8 28, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Max resp size: %u+%zd=%zd\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_input\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp%d_fru_type\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp%d_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp%d_max\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"freq%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"freq%d_input\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power%d_label\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power%d_average\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"power%d_average_interval\00", [39 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"power%d_input\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power%d_cap\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"power%d_cap_not_redundant\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power%d_cap_max\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"power%d_cap_min\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power%d_cap_user\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"power%d_cap_user_source\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extn%d_label\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extn%d_flags\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"extn%d_input\00", [19 x i8] zeroinitializer }, align 32
@occ_setup_sensor_attrs.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"system\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%u_%u_%u\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%u_system\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%u_proc\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u_vdd\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%u_vdn\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%02x%02x%02x%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%02x\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%02x%02x%02x%02x%02x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 16]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 160]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.74 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.79 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [18 x i64] [i64 16, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.82 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1143, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1149, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1152, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1163, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1172, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1179, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1093, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1105, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1109, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1114, i32 42 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1116, i32 47 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1118, i32 47 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1120, i32 47 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1122, i32 47 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1125, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1135, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 873, i32 44 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 881, i32 6 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 884, i32 6 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 893, i32 6 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 899, i32 6 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 906, i32 7 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 918, i32 44 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 923, i32 44 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 942, i32 7 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 949, i32 7 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 956, i32 7 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 963, i32 7 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1012, i32 44 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1023, i32 5 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1028, i32 44 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1033, i32 44 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1038, i32 44 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1046, i32 6 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1056, i32 44 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1061, i32 44 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1066, i32 44 }
@___asan_gen_.246 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 1074, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 260, i32 25 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 457, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 605, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 486, i32 26 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 525, i32 26 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 539, i32 26 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 553, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 567, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 725, i32 25 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 728, i32 25 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 734, i32 24 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private constant [30 x i8] c"../drivers/hwmon/occ/common.c\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.283, i32 737, i32 24 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file174, ptr @__UNIQUE_ID_license175, ptr @__ksymtab_occ_setup, ptr @occ_parse_poll_response._entry, ptr @occ_parse_poll_response._entry.21, ptr @occ_parse_poll_response._entry.32, ptr @occ_parse_poll_response._entry_ptr, ptr @occ_parse_poll_response._entry_ptr.24, ptr @occ_parse_poll_response._entry_ptr.34, ptr @occ_setup._entry, ptr @occ_setup._entry.10, ptr @occ_setup._entry.13, ptr @occ_setup._entry.16, ptr @occ_setup._entry.6, ptr @occ_setup._entry_ptr, ptr @occ_setup._entry_ptr.12, ptr @occ_setup._entry_ptr.15, ptr @occ_setup._entry_ptr.18, ptr @occ_setup._entry_ptr.9, ptr @occ_setup.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @occ_setup_sensor_attrs.__key, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_parse_poll_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_parse_poll_response._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_parse_poll_response._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @occ_setup_sensor_attrs.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @occ_update_response(ptr noundef %occ) local_unnamed_addr #0 align 64 {
entry:
  %cmd.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 7
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %next_update = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 6
  %0 = ptrtoint ptr %next_update to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %next_update, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #6
  %3 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 1
  %4 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %5 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 3
  %6 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %7 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 5
  %8 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  %9 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %cmd.i, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %3, align 1
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %4, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %5, align 1
  %poll_cmd_data.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 4
  %13 = ptrtoint ptr %poll_cmd_data.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %poll_cmd_data.i, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %6, align 1
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %7, align 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %8, align 1
  %send_cmd.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 5
  %18 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_cmd.i, align 4
  %call.i = call i32 %19(ptr noundef %occ, ptr noundef nonnull %cmd.i, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %if.then1
  %last_error.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 13
  %20 = ptrtoint ptr %last_error.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call.i, ptr %last_error.i, align 4
  %error_count.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 14
  %21 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %error_count.i, align 4
  %inc.i = add i32 %22, 1
  store i32 %inc.i, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %cmp.i = icmp ugt i32 %22, 2
  br i1 %cmp.i, label %if.then7.i, label %if.then.i.occ_poll.exit_crit_edge

if.then.i.occ_poll.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %occ_poll.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %error.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %23 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %error.i, align 4
  br label %occ_poll.exit

if.end8.i:                                        ; preds = %if.then1
  %error_count9.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 14
  %24 = ptrtoint ptr %error_count9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %error_count9.i, align 4
  %last_error10.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 13
  %25 = ptrtoint ptr %last_error10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %last_error10.i, align 4
  %error11.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %26 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %error11.i, align 4
  %occ_state.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 4
  %27 = ptrtoint ptr %occ_state.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %occ_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp13.i = icmp eq i8 %28, 4
  %last_safe.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 15
  br i1 %cmp13.i, label %if.then15.i, label %if.else27.i

if.then15.i:                                      ; preds = %if.end8.i
  %29 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %last_safe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool16.not.i = icmp eq i32 %30, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then15.i
  %add.i = add i32 %30, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp20.i = icmp slt i32 %sub.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.then17.i.occ_poll.exit_crit_edge

if.then17.i.occ_poll.exit_crit_edge:              ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %occ_poll.exit

if.then22.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -112, ptr %error11.i, align 4
  br label %occ_poll.exit

if.else.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %34 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %last_safe.i, align 4
  br label %occ_poll.exit

if.else27.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %last_safe.i, align 4
  br label %occ_poll.exit

occ_poll.exit:                                    ; preds = %if.else27.i, %if.else.i, %if.then22.i, %if.then17.i.occ_poll.exit_crit_edge, %if.then7.i, %if.then.i.occ_poll.exit_crit_edge
  call void @occ_sysfs_poll_done(ptr noundef %occ) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %36, 100
  %37 = ptrtoint ptr %next_update to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add, ptr %next_update, align 4
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %last_error = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 13
  %38 = ptrtoint ptr %last_error to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %last_error, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.else, %occ_poll.exit
  %rc.0 = phi i32 [ %call.i, %occ_poll.exit ], [ %39, %if.else ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %if.end5 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @occ_setup(ptr noundef %occ, ptr noundef %name) #0 align 64 {
entry:
  %cmd.i = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @occ_setup.__key) #6
  %group = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 10
  %groups = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 11
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %group, ptr %groups, align 4
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #6
  %1 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 1
  %2 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %3 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 3
  %4 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %5 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 5
  %6 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  %7 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %cmd.i, align 1
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %1, align 1
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %2, align 1
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %3, align 1
  %poll_cmd_data.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 4
  %11 = ptrtoint ptr %poll_cmd_data.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %poll_cmd_data.i, align 4
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %5, align 1
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %6, align 1
  %send_cmd.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 5
  %16 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %send_cmd.i, align 4
  %call.i = call i32 %17(ptr noundef %occ, ptr noundef nonnull %cmd.i, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end8.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %last_error.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 13
  %18 = ptrtoint ptr %last_error.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call.i, ptr %last_error.i, align 4
  %error_count.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 14
  %19 = ptrtoint ptr %error_count.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error_count.i, align 4
  %inc.i = add i32 %20, 1
  store i32 %inc.i, ptr %error_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp.i = icmp ugt i32 %20, 2
  br i1 %cmp.i, label %if.then7.i, label %if.then.i.occ_poll.exit_crit_edge

if.then.i.occ_poll.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %occ_poll.exit

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %error.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %21 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i, ptr %error.i, align 4
  br label %occ_poll.exit

if.end8.i:                                        ; preds = %entry
  %error_count9.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 14
  %22 = ptrtoint ptr %error_count9.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %error_count9.i, align 4
  %last_error10.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 13
  %23 = ptrtoint ptr %last_error10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %last_error10.i, align 4
  %error11.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 12
  %24 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %error11.i, align 4
  %occ_state.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 4
  %25 = ptrtoint ptr %occ_state.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %occ_state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %26)
  %cmp13.i = icmp eq i8 %26, 4
  %last_safe.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 15
  br i1 %cmp13.i, label %if.then15.i, label %if.else27.i

if.then15.i:                                      ; preds = %if.end8.i
  %27 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_safe.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool16.not.i = icmp eq i32 %28, 0
  br i1 %tobool16.not.i, label %if.else.i, label %if.then17.i

if.then17.i:                                      ; preds = %if.then15.i
  %add.i = add i32 %28, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp20.i = icmp slt i32 %sub.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.then17.i.if.else.thread_crit_edge

if.then17.i.if.else.thread_crit_edge:             ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.thread

if.then22.i:                                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %error11.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -112, ptr %error11.i, align 4
  br label %if.else.thread

if.else.i:                                        ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_safe.i, align 4
  br label %if.else.thread

if.else27.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %last_safe.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %last_safe.i, align 4
  br label %if.else.thread

if.else.thread:                                   ; preds = %if.else27.i, %if.else.i, %if.then22.i, %if.then17.i.if.else.thread_crit_edge
  call void @occ_sysfs_poll_done(ptr noundef %occ) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #6
  br label %if.end10

occ_poll.exit:                                    ; preds = %if.then7.i, %if.then.i.occ_poll.exit_crit_edge
  call void @occ_sysfs_poll_done(ptr noundef %occ) #6
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -108, i32 %call.i)
  %cmp = icmp eq i32 %call.i, -108
  br i1 %cmp, label %do.end3, label %if.else

do.end3:                                          ; preds = %occ_poll.exit
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.else:                                          ; preds = %occ_poll.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %do.end8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %occ, align 4
  %return_status = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 2
  %38 = ptrtoint ptr %return_status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %return_status, align 2
  %conv = zext i8 %39 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.7, i32 noundef %conv, i32 noundef %call.i) #9
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.else.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %40, 100
  %next_update = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 6
  %41 = ptrtoint ptr %next_update to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add, ptr %next_update, align 4
  call fastcc void @occ_parse_poll_response(ptr noundef %occ)
  %42 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %occ, align 4
  %sensors1.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2
  %version.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 0, i32 1
  %44 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %version.i, align 1
  %46 = zext i8 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i8 %45, label %sw.default.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb5.i
    i8 16, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %sensors1.i, align 4
  %conv4.i = zext i8 %48 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 1
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sensors1.i, align 4
  %conv8.i = zext i8 %50 to i32
  %mul9.i = shl nuw nsw i32 %conv8.i, 2
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %sensors1.i, align 4
  %conv14.i = zext i8 %52 to i32
  %mul15.i = mul nuw nsw i32 %conv14.i, 5
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %sensors1.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb11.i, %sw.bb5.i, %sw.bb.i
  %show_temp.0.i = phi ptr [ @occ_show_temp_1, %sw.default.i ], [ @occ_show_temp_10, %sw.bb11.i ], [ @occ_show_temp_2, %sw.bb5.i ], [ @occ_show_temp_1, %sw.bb.i ]
  %num_attrs.0.i = phi i32 [ 0, %sw.default.i ], [ %mul15.i, %sw.bb11.i ], [ %mul9.i, %sw.bb5.i ], [ %mul.i, %sw.bb.i ]
  %freq.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 1
  %version19.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 1, i32 1
  %54 = ptrtoint ptr %version19.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %version19.i, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %55, label %sw.default28.i [
    i8 2, label %sw.bb21.i
    i8 1, label %sw.epilog.i.sw.bb22.i_crit_edge
  ]

sw.epilog.i.sw.bb22.i_crit_edge:                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

sw.bb21.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb22.i

sw.bb22.i:                                        ; preds = %sw.bb21.i, %sw.epilog.i.sw.bb22.i_crit_edge
  %show_freq.0.i = phi ptr [ @occ_show_freq_1, %sw.epilog.i.sw.bb22.i_crit_edge ], [ @occ_show_freq_2, %sw.bb21.i ]
  %57 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %freq.i, align 4
  %conv25.i = zext i8 %58 to i32
  %mul26.i = shl nuw nsw i32 %conv25.i, 1
  %add27.i = add nuw nsw i32 %mul26.i, %num_attrs.0.i
  br label %sw.epilog31.i

sw.default28.i:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %freq.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %freq.i, align 4
  br label %sw.epilog31.i

sw.epilog31.i:                                    ; preds = %sw.default28.i, %sw.bb22.i
  %show_freq.1.i = phi ptr [ @occ_show_freq_1, %sw.default28.i ], [ %show_freq.0.i, %sw.bb22.i ]
  %num_attrs.1.i = phi i32 [ %num_attrs.0.i, %sw.default28.i ], [ %add27.i, %sw.bb22.i ]
  %power.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 2
  %version32.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 2, i32 1
  %60 = ptrtoint ptr %version32.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %version32.i, align 1
  %62 = zext i8 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %61, label %sw.default47.i [
    i8 2, label %sw.bb34.i
    i8 1, label %sw.epilog31.i.sw.bb35.i_crit_edge
    i8 -96, label %sw.bb41.i
  ]

sw.epilog31.i.sw.bb35.i_crit_edge:                ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb35.i

sw.bb34.i:                                        ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb35.i

sw.bb35.i:                                        ; preds = %sw.bb34.i, %sw.epilog31.i.sw.bb35.i_crit_edge
  %show_power.0.i = phi ptr [ @occ_show_power_1, %sw.epilog31.i.sw.bb35.i_crit_edge ], [ @occ_show_power_2, %sw.bb34.i ]
  %63 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %power.i, align 4
  %conv38.i = zext i8 %64 to i32
  %mul39.i = shl nuw nsw i32 %conv38.i, 2
  %add40.i = add nuw nsw i32 %mul39.i, %num_attrs.1.i
  br label %sw.epilog50.i

sw.bb41.i:                                        ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %power.i, align 4
  %conv44.i = zext i8 %66 to i32
  %mul45.i = shl nuw nsw i32 %conv44.i, 4
  %add46.i = add nuw nsw i32 %mul45.i, %num_attrs.1.i
  br label %sw.epilog50.i

sw.default47.i:                                   ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %power.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 0, ptr %power.i, align 4
  br label %sw.epilog50.i

sw.epilog50.i:                                    ; preds = %sw.default47.i, %sw.bb41.i, %sw.bb35.i
  %show_power.1.i = phi ptr [ @occ_show_power_1, %sw.default47.i ], [ @occ_show_power_a0, %sw.bb41.i ], [ %show_power.0.i, %sw.bb35.i ]
  %num_attrs.2.i = phi i32 [ %num_attrs.1.i, %sw.default47.i ], [ %add46.i, %sw.bb41.i ], [ %add40.i, %sw.bb35.i ]
  %caps.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 3
  %version51.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 3, i32 1
  %68 = ptrtoint ptr %version51.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %version51.i, align 1
  %70 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %69, label %sw.default66.i [
    i8 1, label %sw.bb53.i
    i8 3, label %sw.bb59.i
    i8 2, label %sw.epilog50.i.sw.bb60.i_crit_edge
  ]

sw.epilog50.i.sw.bb60.i_crit_edge:                ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb60.i

sw.bb53.i:                                        ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %caps.i, align 4
  %conv56.i = zext i8 %72 to i32
  %mul57.i = mul nuw nsw i32 %conv56.i, 7
  %add58.i = add nuw nsw i32 %mul57.i, %num_attrs.2.i
  br label %sw.epilog69.i

sw.bb59.i:                                        ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb60.i

sw.bb60.i:                                        ; preds = %sw.bb59.i, %sw.epilog50.i.sw.bb60.i_crit_edge
  %show_caps.0.i = phi ptr [ @occ_show_caps_1_2, %sw.epilog50.i.sw.bb60.i_crit_edge ], [ @occ_show_caps_3, %sw.bb59.i ]
  %73 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %caps.i, align 4
  %conv63.i = zext i8 %74 to i32
  %mul64.i = shl nuw nsw i32 %conv63.i, 3
  %add65.i = add nuw nsw i32 %mul64.i, %num_attrs.2.i
  br label %sw.epilog69.i

sw.default66.i:                                   ; preds = %sw.epilog50.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %caps.i, align 4
  br label %sw.epilog69.i

sw.epilog69.i:                                    ; preds = %sw.default66.i, %sw.bb60.i, %sw.bb53.i
  %show_caps.1.i = phi ptr [ @occ_show_caps_1_2, %sw.default66.i ], [ %show_caps.0.i, %sw.bb60.i ], [ @occ_show_caps_1_2, %sw.bb53.i ]
  %num_attrs.3.i = phi i32 [ %num_attrs.2.i, %sw.default66.i ], [ %add65.i, %sw.bb60.i ], [ %add58.i, %sw.bb53.i ]
  %extended.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 4
  %version70.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 4, i32 1
  %76 = ptrtoint ptr %version70.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %version70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cond.i = icmp eq i8 %77, 1
  br i1 %cond.i, label %sw.bb72.i, label %sw.default78.i

sw.bb72.i:                                        ; preds = %sw.epilog69.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %extended.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %extended.i, align 4
  %conv75.i = zext i8 %79 to i32
  %mul76.i = mul nuw nsw i32 %conv75.i, 3
  %add77.i = add nuw nsw i32 %mul76.i, %num_attrs.3.i
  br label %sw.epilog81.i

sw.default78.i:                                   ; preds = %sw.epilog69.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %extended.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %extended.i, align 4
  br label %sw.epilog81.i

sw.epilog81.i:                                    ; preds = %sw.default78.i, %sw.bb72.i
  %num_attrs.4.i = phi i32 [ %add77.i, %sw.bb72.i ], [ %num_attrs.3.i, %sw.default78.i ]
  %mul82.i = shl nuw nsw i32 %num_attrs.4.i, 6
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %mul82.i, i32 noundef 3520) #6
  %attrs.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 9
  %81 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i.i, ptr %attrs.i, align 4
  %tobool.not.i71 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i71, label %sw.epilog81.i.do.end16_crit_edge, label %if.end.i

sw.epilog81.i.do.end16_crit_edge:                 ; preds = %sw.epilog81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.end.i:                                         ; preds = %sw.epilog81.i
  %mul84.i = shl nuw nsw i32 %num_attrs.4.i, 2
  %add85.i = or i32 %mul84.i, 1
  %call.i1094.i = call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %add85.i, i32 noundef 3520) #6
  %attrs87.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 10, i32 3
  %82 = ptrtoint ptr %attrs87.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i1094.i, ptr %attrs87.i, align 4
  %tobool90.not.i = icmp eq ptr %call.i1094.i, null
  br i1 %tobool90.not.i, label %if.end.i.do.end16_crit_edge, label %if.end92.i

if.end.i.do.end16_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16

if.end92.i:                                       ; preds = %if.end.i
  %83 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %attrs.i, align 4
  %85 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %sensors1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp1096.not.i = icmp eq i8 %86, 0
  br i1 %cmp1096.not.i, label %if.end92.i.for.cond225.preheader.i_crit_edge, label %for.body.lr.ph.i

if.end92.i.for.cond225.preheader.i_crit_edge:     ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond225.preheader.i

for.body.lr.ph.i:                                 ; preds = %if.end92.i
  %data.i = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 0, i32 2
  br label %for.body.i

for.cond225.preheader.i:                          ; preds = %for.inc.i.for.cond225.preheader.i_crit_edge, %if.end92.i.for.cond225.preheader.i_crit_edge
  %attr.0.lcssa.i = phi ptr [ %84, %if.end92.i.for.cond225.preheader.i_crit_edge ], [ %attr.1.i, %for.inc.i.for.cond225.preheader.i_crit_edge ]
  %87 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %cmp2291103.not.i = icmp eq i8 %88, 0
  br i1 %cmp2291103.not.i, label %for.cond225.preheader.i.for.end281.i_crit_edge, label %for.cond225.preheader.i.for.body231.i_crit_edge

for.cond225.preheader.i.for.body231.i_crit_edge:  ; preds = %for.cond225.preheader.i
  br label %for.body231.i

for.cond225.preheader.i.for.end281.i_crit_edge:   ; preds = %for.cond225.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end281.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.01101.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add98.i, %for.inc.i.for.body.i_crit_edge ]
  %attr.01100.i = phi ptr [ %84, %for.body.lr.ph.i ], [ %attr.1.i, %for.inc.i.for.body.i_crit_edge ]
  %.compoundliteral152.sroa.3.01099.i = phi i8 [ undef, %for.body.lr.ph.i ], [ %.compoundliteral152.sroa.3.1.i, %for.inc.i.for.body.i_crit_edge ]
  %.compoundliteral175.sroa.3.01098.i = phi i8 [ undef, %for.body.lr.ph.i ], [ %.compoundliteral175.sroa.3.1.i, %for.inc.i.for.body.i_crit_edge ]
  %.compoundliteral204.sroa.3.01097.i = phi i8 [ undef, %for.body.lr.ph.i ], [ %.compoundliteral204.sroa.3.1.i, %for.inc.i.for.body.i_crit_edge ]
  %add98.i = add nuw nsw i32 %i.01101.i, 1
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %call100.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.01100.i, i32 noundef 32, ptr noundef nonnull @.str.36, i32 noundef %add98.i) #6
  %sensor.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1
  %conv105.i = trunc i32 %i.01101.i to i8
  %91 = ptrtoint ptr %sensor.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %attr.01100.i, ptr %sensor.i, align 4
  %.compoundliteral.sroa.2.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %92 = ptrtoint ptr %.compoundliteral.sroa.2.0.sensor.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 292, ptr %.compoundliteral.sroa.2.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %93 = ptrtoint ptr %.compoundliteral.sroa.3.0.sensor.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 0, ptr %.compoundliteral.sroa.3.0.sensor.sroa_idx.i, align 2
  %.compoundliteral.sroa.5852.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %94 = ptrtoint ptr %.compoundliteral.sroa.5852.0.sensor.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %.compoundliteral.sroa.5852.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.6.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %95 = ptrtoint ptr %.compoundliteral.sroa.6.0.sensor.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %95, i32 8)
  store i64 0, ptr %.compoundliteral.sroa.6.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.7.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 1
  %96 = ptrtoint ptr %.compoundliteral.sroa.7.0.sensor.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %show_temp.0.i, ptr %.compoundliteral.sroa.7.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.8.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 0, i32 2
  %97 = ptrtoint ptr %.compoundliteral.sroa.8.0.sensor.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %.compoundliteral.sroa.8.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.9.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 1
  %98 = ptrtoint ptr %.compoundliteral.sroa.9.0.sensor.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv105.i, ptr %.compoundliteral.sroa.9.0.sensor.sroa_idx.i, align 4
  %.compoundliteral.sroa.10.0.sensor.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.01100.i, i32 0, i32 1, i32 2
  %99 = ptrtoint ptr %.compoundliteral.sroa.10.0.sensor.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %.compoundliteral.sroa.10.0.sensor.sroa_idx.i, align 1
  %incdec.ptr.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1
  %100 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %101)
  %cmp109.i = icmp eq i8 %101, 2
  br i1 %cmp109.i, label %land.lhs.true.i, label %for.body.i.if.else.i72_crit_edge

for.body.i.if.else.i72_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i72

land.lhs.true.i:                                  ; preds = %for.body.i
  %fru_type.i = getelementptr %struct.temp_sensor_2, ptr %90, i32 %i.01101.i, i32 1
  %102 = ptrtoint ptr %fru_type.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %fru_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %103)
  %cmp112.i = icmp eq i8 %103, 3
  br i1 %cmp112.i, label %land.lhs.true.i.if.end121.i_crit_edge, label %land.lhs.true.i.if.else.i72_crit_edge

land.lhs.true.i.if.else.i72_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i72

land.lhs.true.i.if.end121.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end121.i

if.else.i72:                                      ; preds = %land.lhs.true.i.if.else.i72_crit_edge, %for.body.i.if.else.i72_crit_edge
  br label %if.end121.i

if.end121.i:                                      ; preds = %if.else.i72, %land.lhs.true.i.if.end121.i_crit_edge
  %.str.38.sink.i = phi ptr [ @.str.38, %if.else.i72 ], [ @.str.37, %land.lhs.true.i.if.end121.i_crit_edge ]
  %call120.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr.i, i32 noundef 32, ptr noundef nonnull %.str.38.sink.i, i32 noundef %add98.i) #6
  %sensor122.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1
  %104 = ptrtoint ptr %sensor122.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %incdec.ptr.i, ptr %sensor122.i, align 4
  %.compoundliteral123.sroa.2.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %105 = ptrtoint ptr %.compoundliteral123.sroa.2.0.sensor122.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 292, ptr %.compoundliteral123.sroa.2.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.3.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %106 = ptrtoint ptr %.compoundliteral123.sroa.3.0.sensor122.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %.compoundliteral123.sroa.3.0.sensor122.sroa_idx.i, align 2
  %.compoundliteral123.sroa.5851.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %107 = ptrtoint ptr %.compoundliteral123.sroa.5851.0.sensor122.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %.compoundliteral123.sroa.5851.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.6.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %108 = ptrtoint ptr %.compoundliteral123.sroa.6.0.sensor122.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 8)
  store i64 0, ptr %.compoundliteral123.sroa.6.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.7.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 1
  %109 = ptrtoint ptr %.compoundliteral123.sroa.7.0.sensor122.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %show_temp.0.i, ptr %.compoundliteral123.sroa.7.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.8.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 0, i32 2
  %110 = ptrtoint ptr %.compoundliteral123.sroa.8.0.sensor122.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr null, ptr %.compoundliteral123.sroa.8.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.9.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 1
  %111 = ptrtoint ptr %.compoundliteral123.sroa.9.0.sensor122.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv105.i, ptr %.compoundliteral123.sroa.9.0.sensor122.sroa_idx.i, align 4
  %.compoundliteral123.sroa.10.0.sensor122.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 1, i32 1, i32 2
  %112 = ptrtoint ptr %.compoundliteral123.sroa.10.0.sensor122.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %.compoundliteral123.sroa.10.0.sensor122.sroa_idx.i, align 1
  %incdec.ptr141.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2
  %113 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %114)
  %cmp145.i = icmp ugt i8 %114, 1
  br i1 %cmp145.i, label %if.then147.i, label %if.end121.i.for.inc.i_crit_edge

if.end121.i.for.inc.i_crit_edge:                  ; preds = %if.end121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then147.i:                                     ; preds = %if.end121.i
  %call150.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr141.i, i32 noundef 32, ptr noundef nonnull @.str.39, i32 noundef %add98.i) #6
  %sensor151.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1
  %bf.clear161.i = and i8 %.compoundliteral152.sroa.3.01099.i, 127
  %115 = ptrtoint ptr %sensor151.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %incdec.ptr141.i, ptr %sensor151.i, align 4
  %.compoundliteral152.sroa.2.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %116 = ptrtoint ptr %.compoundliteral152.sroa.2.0.sensor151.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 292, ptr %.compoundliteral152.sroa.2.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.3.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 0, i32 2
  %117 = ptrtoint ptr %.compoundliteral152.sroa.3.0.sensor151.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 %bf.clear161.i, ptr %.compoundliteral152.sroa.3.0.sensor151.sroa_idx.i, align 2
  %.compoundliteral152.sroa.5850.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 0, i32 3
  %118 = ptrtoint ptr %.compoundliteral152.sroa.5850.0.sensor151.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr null, ptr %.compoundliteral152.sroa.5850.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.6.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 0, i32 4
  %119 = ptrtoint ptr %.compoundliteral152.sroa.6.0.sensor151.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 8)
  store i64 0, ptr %.compoundliteral152.sroa.6.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.7.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 1
  %120 = ptrtoint ptr %.compoundliteral152.sroa.7.0.sensor151.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %show_temp.0.i, ptr %.compoundliteral152.sroa.7.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.8.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 0, i32 2
  %121 = ptrtoint ptr %.compoundliteral152.sroa.8.0.sensor151.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %.compoundliteral152.sroa.8.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.9.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 1
  %122 = ptrtoint ptr %.compoundliteral152.sroa.9.0.sensor151.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv105.i, ptr %.compoundliteral152.sroa.9.0.sensor151.sroa_idx.i, align 4
  %.compoundliteral152.sroa.10.0.sensor151.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 2, i32 1, i32 2
  %123 = ptrtoint ptr %.compoundliteral152.sroa.10.0.sensor151.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 2, ptr %.compoundliteral152.sroa.10.0.sensor151.sroa_idx.i, align 1
  %incdec.ptr170.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3
  %call173.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr170.i, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %add98.i) #6
  %sensor174.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1
  %bf.clear184.i = and i8 %.compoundliteral175.sroa.3.01098.i, 127
  %124 = ptrtoint ptr %sensor174.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %incdec.ptr170.i, ptr %sensor174.i, align 4
  %.compoundliteral175.sroa.2.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 0, i32 1
  %125 = ptrtoint ptr %.compoundliteral175.sroa.2.0.sensor174.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 292, ptr %.compoundliteral175.sroa.2.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.3.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 0, i32 2
  %126 = ptrtoint ptr %.compoundliteral175.sroa.3.0.sensor174.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %bf.clear184.i, ptr %.compoundliteral175.sroa.3.0.sensor174.sroa_idx.i, align 2
  %.compoundliteral175.sroa.5849.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 0, i32 3
  %127 = ptrtoint ptr %.compoundliteral175.sroa.5849.0.sensor174.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr null, ptr %.compoundliteral175.sroa.5849.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.6.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 0, i32 4
  %128 = ptrtoint ptr %.compoundliteral175.sroa.6.0.sensor174.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %128, i32 8)
  store i64 0, ptr %.compoundliteral175.sroa.6.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.7.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 1
  %129 = ptrtoint ptr %.compoundliteral175.sroa.7.0.sensor174.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %show_temp.0.i, ptr %.compoundliteral175.sroa.7.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.8.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 0, i32 2
  %130 = ptrtoint ptr %.compoundliteral175.sroa.8.0.sensor174.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr null, ptr %.compoundliteral175.sroa.8.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.9.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 1
  %131 = ptrtoint ptr %.compoundliteral175.sroa.9.0.sensor174.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %conv105.i, ptr %.compoundliteral175.sroa.9.0.sensor174.sroa_idx.i, align 4
  %.compoundliteral175.sroa.10.0.sensor174.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 3, i32 1, i32 2
  %132 = ptrtoint ptr %.compoundliteral175.sroa.10.0.sensor174.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 3, ptr %.compoundliteral175.sroa.10.0.sensor174.sroa_idx.i, align 1
  %incdec.ptr193.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4
  %133 = ptrtoint ptr %version.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %134)
  %cmp197.i = icmp eq i8 %134, 16
  br i1 %cmp197.i, label %if.then199.i, label %if.then147.i.for.inc.i_crit_edge

if.then147.i.for.inc.i_crit_edge:                 ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then199.i:                                     ; preds = %if.then147.i
  call void @__sanitizer_cov_trace_pc() #8
  %call202.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr193.i, i32 noundef 32, ptr noundef nonnull @.str.41, i32 noundef %add98.i) #6
  %sensor203.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1
  %bf.clear213.i = and i8 %.compoundliteral204.sroa.3.01097.i, 127
  %135 = ptrtoint ptr %sensor203.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %incdec.ptr193.i, ptr %sensor203.i, align 4
  %.compoundliteral204.sroa.2.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 0, i32 1
  %136 = ptrtoint ptr %.compoundliteral204.sroa.2.0.sensor203.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 292, ptr %.compoundliteral204.sroa.2.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.3.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 0, i32 2
  %137 = ptrtoint ptr %.compoundliteral204.sroa.3.0.sensor203.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 %bf.clear213.i, ptr %.compoundliteral204.sroa.3.0.sensor203.sroa_idx.i, align 2
  %.compoundliteral204.sroa.5848.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 0, i32 3
  %138 = ptrtoint ptr %.compoundliteral204.sroa.5848.0.sensor203.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %.compoundliteral204.sroa.5848.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.6.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 0, i32 4
  %139 = ptrtoint ptr %.compoundliteral204.sroa.6.0.sensor203.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 0, ptr %.compoundliteral204.sroa.6.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.7.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 1
  %140 = ptrtoint ptr %.compoundliteral204.sroa.7.0.sensor203.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %show_temp.0.i, ptr %.compoundliteral204.sroa.7.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.8.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 0, i32 2
  %141 = ptrtoint ptr %.compoundliteral204.sroa.8.0.sensor203.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr null, ptr %.compoundliteral204.sroa.8.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.9.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 1
  %142 = ptrtoint ptr %.compoundliteral204.sroa.9.0.sensor203.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 %conv105.i, ptr %.compoundliteral204.sroa.9.0.sensor203.sroa_idx.i, align 4
  %.compoundliteral204.sroa.10.0.sensor203.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 4, i32 1, i32 2
  %143 = ptrtoint ptr %.compoundliteral204.sroa.10.0.sensor203.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 4, ptr %.compoundliteral204.sroa.10.0.sensor203.sroa_idx.i, align 1
  %incdec.ptr222.i = getelementptr %struct.occ_attribute, ptr %attr.01100.i, i32 5
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then199.i, %if.then147.i.for.inc.i_crit_edge, %if.end121.i.for.inc.i_crit_edge
  %.compoundliteral204.sroa.3.1.i = phi i8 [ %bf.clear213.i, %if.then199.i ], [ %.compoundliteral204.sroa.3.01097.i, %if.then147.i.for.inc.i_crit_edge ], [ %.compoundliteral204.sroa.3.01097.i, %if.end121.i.for.inc.i_crit_edge ]
  %.compoundliteral175.sroa.3.1.i = phi i8 [ %bf.clear184.i, %if.then199.i ], [ %bf.clear184.i, %if.then147.i.for.inc.i_crit_edge ], [ %.compoundliteral175.sroa.3.01098.i, %if.end121.i.for.inc.i_crit_edge ]
  %.compoundliteral152.sroa.3.1.i = phi i8 [ %bf.clear161.i, %if.then199.i ], [ %bf.clear161.i, %if.then147.i.for.inc.i_crit_edge ], [ %.compoundliteral152.sroa.3.01099.i, %if.end121.i.for.inc.i_crit_edge ]
  %attr.1.i = phi ptr [ %incdec.ptr222.i, %if.then199.i ], [ %incdec.ptr193.i, %if.then147.i.for.inc.i_crit_edge ], [ %incdec.ptr141.i, %if.end121.i.for.inc.i_crit_edge ]
  %144 = ptrtoint ptr %sensors1.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %sensors1.i, align 4
  %conv96.i = zext i8 %145 to i32
  %cmp.i73 = icmp ult i32 %add98.i, %conv96.i
  br i1 %cmp.i73, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond225.preheader.i_crit_edge

for.inc.i.for.cond225.preheader.i_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond225.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body231.i:                                    ; preds = %for.body231.i.for.body231.i_crit_edge, %for.cond225.preheader.i.for.body231.i_crit_edge
  %i.11105.i = phi i32 [ %add232.i, %for.body231.i.for.body231.i_crit_edge ], [ 0, %for.cond225.preheader.i.for.body231.i_crit_edge ]
  %attr.21104.i = phi ptr [ %incdec.ptr278.i, %for.body231.i.for.body231.i_crit_edge ], [ %attr.0.lcssa.i, %for.cond225.preheader.i.for.body231.i_crit_edge ]
  %add232.i = add nuw nsw i32 %i.11105.i, 1
  %call235.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.21104.i, i32 noundef 32, ptr noundef nonnull @.str.42, i32 noundef %add232.i) #6
  %sensor236.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1
  %conv253.i = trunc i32 %i.11105.i to i8
  %146 = ptrtoint ptr %sensor236.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %attr.21104.i, ptr %sensor236.i, align 4
  %.compoundliteral237.sroa.2.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %147 = ptrtoint ptr %.compoundliteral237.sroa.2.0.sensor236.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 292, ptr %.compoundliteral237.sroa.2.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.3.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %148 = ptrtoint ptr %.compoundliteral237.sroa.3.0.sensor236.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 0, ptr %.compoundliteral237.sroa.3.0.sensor236.sroa_idx.i, align 2
  %.compoundliteral237.sroa.5847.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %149 = ptrtoint ptr %.compoundliteral237.sroa.5847.0.sensor236.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %.compoundliteral237.sroa.5847.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.6.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %150 = ptrtoint ptr %.compoundliteral237.sroa.6.0.sensor236.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 8)
  store i64 0, ptr %.compoundliteral237.sroa.6.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.7.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 1
  %151 = ptrtoint ptr %.compoundliteral237.sroa.7.0.sensor236.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %show_freq.1.i, ptr %.compoundliteral237.sroa.7.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.8.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 0, i32 2
  %152 = ptrtoint ptr %.compoundliteral237.sroa.8.0.sensor236.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr null, ptr %.compoundliteral237.sroa.8.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.9.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 1
  %153 = ptrtoint ptr %.compoundliteral237.sroa.9.0.sensor236.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 %conv253.i, ptr %.compoundliteral237.sroa.9.0.sensor236.sroa_idx.i, align 4
  %.compoundliteral237.sroa.10.0.sensor236.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.21104.i, i32 0, i32 1, i32 2
  %154 = ptrtoint ptr %.compoundliteral237.sroa.10.0.sensor236.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 0, ptr %.compoundliteral237.sroa.10.0.sensor236.sroa_idx.i, align 1
  %incdec.ptr255.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1
  %call258.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr255.i, i32 noundef 32, ptr noundef nonnull @.str.43, i32 noundef %add232.i) #6
  %sensor259.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1
  %155 = ptrtoint ptr %sensor259.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %incdec.ptr255.i, ptr %sensor259.i, align 4
  %.compoundliteral260.sroa.2.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %156 = ptrtoint ptr %.compoundliteral260.sroa.2.0.sensor259.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 292, ptr %.compoundliteral260.sroa.2.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.3.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %157 = ptrtoint ptr %.compoundliteral260.sroa.3.0.sensor259.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 0, ptr %.compoundliteral260.sroa.3.0.sensor259.sroa_idx.i, align 2
  %.compoundliteral260.sroa.5846.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %158 = ptrtoint ptr %.compoundliteral260.sroa.5846.0.sensor259.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr null, ptr %.compoundliteral260.sroa.5846.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.6.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %159 = ptrtoint ptr %.compoundliteral260.sroa.6.0.sensor259.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %159, i32 8)
  store i64 0, ptr %.compoundliteral260.sroa.6.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.7.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 1
  %160 = ptrtoint ptr %.compoundliteral260.sroa.7.0.sensor259.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %show_freq.1.i, ptr %.compoundliteral260.sroa.7.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.8.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 0, i32 2
  %161 = ptrtoint ptr %.compoundliteral260.sroa.8.0.sensor259.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr null, ptr %.compoundliteral260.sroa.8.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.9.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 1
  %162 = ptrtoint ptr %.compoundliteral260.sroa.9.0.sensor259.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 %conv253.i, ptr %.compoundliteral260.sroa.9.0.sensor259.sroa_idx.i, align 4
  %.compoundliteral260.sroa.10.0.sensor259.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 1, i32 1, i32 2
  %163 = ptrtoint ptr %.compoundliteral260.sroa.10.0.sensor259.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %163)
  store i8 1, ptr %.compoundliteral260.sroa.10.0.sensor259.sroa_idx.i, align 1
  %incdec.ptr278.i = getelementptr %struct.occ_attribute, ptr %attr.21104.i, i32 2
  %164 = ptrtoint ptr %freq.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %freq.i, align 4
  %conv228.i = zext i8 %165 to i32
  %cmp229.i = icmp ult i32 %add232.i, %conv228.i
  br i1 %cmp229.i, label %for.body231.i.for.body231.i_crit_edge, label %for.body231.i.for.end281.i_crit_edge

for.body231.i.for.end281.i_crit_edge:             ; preds = %for.body231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end281.i

for.body231.i.for.body231.i_crit_edge:            ; preds = %for.body231.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body231.i

for.end281.i:                                     ; preds = %for.body231.i.for.end281.i_crit_edge, %for.cond225.preheader.i.for.end281.i_crit_edge
  %attr.2.lcssa.i = phi ptr [ %attr.0.lcssa.i, %for.cond225.preheader.i.for.end281.i_crit_edge ], [ %incdec.ptr278.i, %for.body231.i.for.end281.i_crit_edge ]
  %166 = ptrtoint ptr %version32.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %version32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %167)
  %cmp285.i = icmp eq i8 %167, -96
  %168 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %power.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %cmp2921119.not.i = icmp eq i8 %169, 0
  br i1 %cmp285.i, label %for.cond288.preheader.i, label %for.cond415.preheader.i

for.cond415.preheader.i:                          ; preds = %for.end281.i
  br i1 %cmp2921119.not.i, label %for.cond415.preheader.i.if.end522.i_crit_edge, label %for.cond415.preheader.i.for.body421.i_crit_edge

for.cond415.preheader.i.for.body421.i_crit_edge:  ; preds = %for.cond415.preheader.i
  br label %for.body421.i

for.cond415.preheader.i.if.end522.i_crit_edge:    ; preds = %for.cond415.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end522.i

for.cond288.preheader.i:                          ; preds = %for.end281.i
  br i1 %cmp2921119.not.i, label %for.cond288.preheader.i.if.end522.i_crit_edge, label %for.cond288.preheader.i.for.body294.i_crit_edge

for.cond288.preheader.i.for.body294.i_crit_edge:  ; preds = %for.cond288.preheader.i
  br label %for.body294.i

for.cond288.preheader.i.if.end522.i_crit_edge:    ; preds = %for.cond288.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end522.i

for.body294.i:                                    ; preds = %for.end405.i.for.body294.i_crit_edge, %for.cond288.preheader.i.for.body294.i_crit_edge
  %indvars.iv.i = phi i32 [ %indvars.iv.next.i, %for.end405.i.for.body294.i_crit_edge ], [ 5, %for.cond288.preheader.i.for.body294.i_crit_edge ]
  %i.21125.i = phi i32 [ %inc407.i, %for.end405.i.for.body294.i_crit_edge ], [ 0, %for.cond288.preheader.i.for.body294.i_crit_edge ]
  %attr.31124.i = phi ptr [ %incdec.ptr401.i, %for.end405.i.for.body294.i_crit_edge ], [ %attr.2.lcssa.i, %for.cond288.preheader.i.for.body294.i_crit_edge ]
  %mul296.i = shl i32 %i.21125.i, 2
  %add297.i = or i32 %mul296.i, 1
  %conv322.i = trunc i32 %i.21125.i to i8
  br label %for.body301.i

for.body301.i:                                    ; preds = %for.body301.i.for.body301.i_crit_edge, %for.body294.i
  %s.01116.i = phi i32 [ %add297.i, %for.body294.i ], [ %inc402.i, %for.body301.i.for.body301.i_crit_edge ]
  %attr.41115.i = phi ptr [ %attr.31124.i, %for.body294.i ], [ %incdec.ptr401.i, %for.body301.i.for.body301.i_crit_edge ]
  %nr295.01113.i = phi i32 [ 0, %for.body294.i ], [ %inc399.i, %for.body301.i.for.body301.i_crit_edge ]
  %call304.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.41115.i, i32 noundef 32, ptr noundef nonnull @.str.44, i32 noundef %s.01116.i) #6
  %sensor305.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1
  %conv325.i = trunc i32 %nr295.01113.i to i8
  %170 = ptrtoint ptr %sensor305.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %attr.41115.i, ptr %sensor305.i, align 4
  %.compoundliteral306.sroa.2.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %171 = ptrtoint ptr %.compoundliteral306.sroa.2.0.sensor305.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 292, ptr %.compoundliteral306.sroa.2.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.3.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %172 = ptrtoint ptr %.compoundliteral306.sroa.3.0.sensor305.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 0, ptr %.compoundliteral306.sroa.3.0.sensor305.sroa_idx.i, align 2
  %.compoundliteral306.sroa.5841.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %173 = ptrtoint ptr %.compoundliteral306.sroa.5841.0.sensor305.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %.compoundliteral306.sroa.5841.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.6.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %174 = ptrtoint ptr %.compoundliteral306.sroa.6.0.sensor305.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %174, i32 8)
  store i64 0, ptr %.compoundliteral306.sroa.6.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.7.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 1
  %175 = ptrtoint ptr %.compoundliteral306.sroa.7.0.sensor305.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %show_power.1.i, ptr %.compoundliteral306.sroa.7.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.8.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 0, i32 2
  %176 = ptrtoint ptr %.compoundliteral306.sroa.8.0.sensor305.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %.compoundliteral306.sroa.8.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.9.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 1
  %177 = ptrtoint ptr %.compoundliteral306.sroa.9.0.sensor305.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %conv322.i, ptr %.compoundliteral306.sroa.9.0.sensor305.sroa_idx.i, align 4
  %.compoundliteral306.sroa.10.0.sensor305.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.41115.i, i32 0, i32 1, i32 2
  %178 = ptrtoint ptr %.compoundliteral306.sroa.10.0.sensor305.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %conv325.i, ptr %.compoundliteral306.sroa.10.0.sensor305.sroa_idx.i, align 1
  %incdec.ptr326.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1
  %call329.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr326.i, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %s.01116.i) #6
  %sensor330.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1
  %conv350.i = or i8 %conv325.i, 1
  %179 = ptrtoint ptr %sensor330.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %incdec.ptr326.i, ptr %sensor330.i, align 4
  %.compoundliteral331.sroa.2.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %180 = ptrtoint ptr %.compoundliteral331.sroa.2.0.sensor330.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 292, ptr %.compoundliteral331.sroa.2.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.3.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %181 = ptrtoint ptr %.compoundliteral331.sroa.3.0.sensor330.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %.compoundliteral331.sroa.3.0.sensor330.sroa_idx.i, align 2
  %.compoundliteral331.sroa.5840.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %182 = ptrtoint ptr %.compoundliteral331.sroa.5840.0.sensor330.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr null, ptr %.compoundliteral331.sroa.5840.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.6.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %183 = ptrtoint ptr %.compoundliteral331.sroa.6.0.sensor330.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %183, i32 8)
  store i64 0, ptr %.compoundliteral331.sroa.6.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.7.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 1
  %184 = ptrtoint ptr %.compoundliteral331.sroa.7.0.sensor330.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %show_power.1.i, ptr %.compoundliteral331.sroa.7.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.8.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 0, i32 2
  %185 = ptrtoint ptr %.compoundliteral331.sroa.8.0.sensor330.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr null, ptr %.compoundliteral331.sroa.8.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.9.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 1
  %186 = ptrtoint ptr %.compoundliteral331.sroa.9.0.sensor330.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %conv322.i, ptr %.compoundliteral331.sroa.9.0.sensor330.sroa_idx.i, align 4
  %.compoundliteral331.sroa.10.0.sensor330.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 1, i32 1, i32 2
  %187 = ptrtoint ptr %.compoundliteral331.sroa.10.0.sensor330.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %conv350.i, ptr %.compoundliteral331.sroa.10.0.sensor330.sroa_idx.i, align 1
  %incdec.ptr351.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2
  %call354.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr351.i, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %s.01116.i) #6
  %sensor355.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1
  %conv375.i = or i8 %conv325.i, 2
  %188 = ptrtoint ptr %sensor355.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %incdec.ptr351.i, ptr %sensor355.i, align 4
  %.compoundliteral356.sroa.2.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %189 = ptrtoint ptr %.compoundliteral356.sroa.2.0.sensor355.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 292, ptr %.compoundliteral356.sroa.2.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.3.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 0, i32 2
  %190 = ptrtoint ptr %.compoundliteral356.sroa.3.0.sensor355.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 0, ptr %.compoundliteral356.sroa.3.0.sensor355.sroa_idx.i, align 2
  %.compoundliteral356.sroa.5839.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 0, i32 3
  %191 = ptrtoint ptr %.compoundliteral356.sroa.5839.0.sensor355.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr null, ptr %.compoundliteral356.sroa.5839.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.6.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 0, i32 4
  %192 = ptrtoint ptr %.compoundliteral356.sroa.6.0.sensor355.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %192, i32 8)
  store i64 0, ptr %.compoundliteral356.sroa.6.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.7.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 1
  %193 = ptrtoint ptr %.compoundliteral356.sroa.7.0.sensor355.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr %show_power.1.i, ptr %.compoundliteral356.sroa.7.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.8.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 0, i32 2
  %194 = ptrtoint ptr %.compoundliteral356.sroa.8.0.sensor355.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr null, ptr %.compoundliteral356.sroa.8.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.9.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 1
  %195 = ptrtoint ptr %.compoundliteral356.sroa.9.0.sensor355.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 %conv322.i, ptr %.compoundliteral356.sroa.9.0.sensor355.sroa_idx.i, align 4
  %.compoundliteral356.sroa.10.0.sensor355.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 2, i32 1, i32 2
  %196 = ptrtoint ptr %.compoundliteral356.sroa.10.0.sensor355.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %196)
  store i8 %conv375.i, ptr %.compoundliteral356.sroa.10.0.sensor355.sroa_idx.i, align 1
  %incdec.ptr376.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3
  %call379.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr376.i, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %s.01116.i) #6
  %sensor380.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1
  %inc399.i = add nuw nsw i32 %nr295.01113.i, 4
  %conv400.i = or i8 %conv325.i, 3
  %197 = ptrtoint ptr %sensor380.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %incdec.ptr376.i, ptr %sensor380.i, align 4
  %.compoundliteral381.sroa.2.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 0, i32 1
  %198 = ptrtoint ptr %.compoundliteral381.sroa.2.0.sensor380.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 292, ptr %.compoundliteral381.sroa.2.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.3.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 0, i32 2
  %199 = ptrtoint ptr %.compoundliteral381.sroa.3.0.sensor380.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %199)
  store i8 0, ptr %.compoundliteral381.sroa.3.0.sensor380.sroa_idx.i, align 2
  %.compoundliteral381.sroa.5838.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 0, i32 3
  %200 = ptrtoint ptr %.compoundliteral381.sroa.5838.0.sensor380.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr null, ptr %.compoundliteral381.sroa.5838.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.6.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 0, i32 4
  %201 = ptrtoint ptr %.compoundliteral381.sroa.6.0.sensor380.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %201, i32 8)
  store i64 0, ptr %.compoundliteral381.sroa.6.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.7.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 1
  %202 = ptrtoint ptr %.compoundliteral381.sroa.7.0.sensor380.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %show_power.1.i, ptr %.compoundliteral381.sroa.7.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.8.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 0, i32 2
  %203 = ptrtoint ptr %.compoundliteral381.sroa.8.0.sensor380.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr null, ptr %.compoundliteral381.sroa.8.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.9.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 1
  %204 = ptrtoint ptr %.compoundliteral381.sroa.9.0.sensor380.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %conv322.i, ptr %.compoundliteral381.sroa.9.0.sensor380.sroa_idx.i, align 4
  %.compoundliteral381.sroa.10.0.sensor380.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 3, i32 1, i32 2
  %205 = ptrtoint ptr %.compoundliteral381.sroa.10.0.sensor380.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %conv400.i, ptr %.compoundliteral381.sroa.10.0.sensor380.sroa_idx.i, align 1
  %incdec.ptr401.i = getelementptr %struct.occ_attribute, ptr %attr.41115.i, i32 4
  %inc402.i = add nuw nsw i32 %s.01116.i, 1
  %exitcond.not.i = icmp eq i32 %inc402.i, %indvars.iv.i
  br i1 %exitcond.not.i, label %for.end405.i, label %for.body301.i.for.body301.i_crit_edge

for.body301.i.for.body301.i_crit_edge:            ; preds = %for.body301.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body301.i

for.end405.i:                                     ; preds = %for.body301.i
  %inc407.i = add nuw nsw i32 %i.21125.i, 1
  %206 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %206)
  %207 = load i8, ptr %power.i, align 4
  %conv291.i = zext i8 %207 to i32
  %cmp292.i = icmp ult i32 %inc407.i, %conv291.i
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 4
  br i1 %cmp292.i, label %for.end405.i.for.body294.i_crit_edge, label %for.end408.loopexit.i

for.end405.i.for.body294.i_crit_edge:             ; preds = %for.end405.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body294.i

for.end408.loopexit.i:                            ; preds = %for.end405.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv291.i.le = zext i8 %207 to i32
  %phi.bo.i = shl nuw nsw i32 %conv291.i.le, 2
  br label %if.end522.i

for.body421.i:                                    ; preds = %for.body421.i.for.body421.i_crit_edge, %for.cond415.preheader.i.for.body421.i_crit_edge
  %i.31110.i = phi i32 [ %add422.i, %for.body421.i.for.body421.i_crit_edge ], [ 0, %for.cond415.preheader.i.for.body421.i_crit_edge ]
  %attr.51109.i = phi ptr [ %incdec.ptr514.i, %for.body421.i.for.body421.i_crit_edge ], [ %attr.2.lcssa.i, %for.cond415.preheader.i.for.body421.i_crit_edge ]
  %add422.i = add nuw nsw i32 %i.31110.i, 1
  %call425.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.51109.i, i32 noundef 32, ptr noundef nonnull @.str.44, i32 noundef %add422.i) #6
  %sensor426.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1
  %conv443.i = trunc i32 %i.31110.i to i8
  %208 = ptrtoint ptr %sensor426.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %attr.51109.i, ptr %sensor426.i, align 4
  %.compoundliteral427.sroa.2.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %209 = ptrtoint ptr %.compoundliteral427.sroa.2.0.sensor426.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 292, ptr %.compoundliteral427.sroa.2.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.3.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %210 = ptrtoint ptr %.compoundliteral427.sroa.3.0.sensor426.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 0, ptr %.compoundliteral427.sroa.3.0.sensor426.sroa_idx.i, align 2
  %.compoundliteral427.sroa.5837.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %211 = ptrtoint ptr %.compoundliteral427.sroa.5837.0.sensor426.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr null, ptr %.compoundliteral427.sroa.5837.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.6.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %212 = ptrtoint ptr %.compoundliteral427.sroa.6.0.sensor426.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 8)
  store i64 0, ptr %.compoundliteral427.sroa.6.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.7.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 1
  %213 = ptrtoint ptr %.compoundliteral427.sroa.7.0.sensor426.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %show_power.1.i, ptr %.compoundliteral427.sroa.7.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.8.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 0, i32 2
  %214 = ptrtoint ptr %.compoundliteral427.sroa.8.0.sensor426.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr null, ptr %.compoundliteral427.sroa.8.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.9.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 1
  %215 = ptrtoint ptr %.compoundliteral427.sroa.9.0.sensor426.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %215)
  store i8 %conv443.i, ptr %.compoundliteral427.sroa.9.0.sensor426.sroa_idx.i, align 4
  %.compoundliteral427.sroa.10.0.sensor426.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.51109.i, i32 0, i32 1, i32 2
  %216 = ptrtoint ptr %.compoundliteral427.sroa.10.0.sensor426.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 0, ptr %.compoundliteral427.sroa.10.0.sensor426.sroa_idx.i, align 1
  %incdec.ptr445.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1
  %call448.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr445.i, i32 noundef 32, ptr noundef nonnull @.str.45, i32 noundef %add422.i) #6
  %sensor449.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1
  %217 = ptrtoint ptr %sensor449.i to i32
  call void @__asan_store4_noabort(i32 %217)
  store ptr %incdec.ptr445.i, ptr %sensor449.i, align 4
  %.compoundliteral450.sroa.2.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %218 = ptrtoint ptr %.compoundliteral450.sroa.2.0.sensor449.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %218)
  store i16 292, ptr %.compoundliteral450.sroa.2.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.3.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %219 = ptrtoint ptr %.compoundliteral450.sroa.3.0.sensor449.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 0, ptr %.compoundliteral450.sroa.3.0.sensor449.sroa_idx.i, align 2
  %.compoundliteral450.sroa.5836.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %220 = ptrtoint ptr %.compoundliteral450.sroa.5836.0.sensor449.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr null, ptr %.compoundliteral450.sroa.5836.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.6.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %221 = ptrtoint ptr %.compoundliteral450.sroa.6.0.sensor449.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %221, i32 8)
  store i64 0, ptr %.compoundliteral450.sroa.6.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.7.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 1
  %222 = ptrtoint ptr %.compoundliteral450.sroa.7.0.sensor449.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %show_power.1.i, ptr %.compoundliteral450.sroa.7.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.8.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 0, i32 2
  %223 = ptrtoint ptr %.compoundliteral450.sroa.8.0.sensor449.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store ptr null, ptr %.compoundliteral450.sroa.8.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.9.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 1
  %224 = ptrtoint ptr %.compoundliteral450.sroa.9.0.sensor449.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %224)
  store i8 %conv443.i, ptr %.compoundliteral450.sroa.9.0.sensor449.sroa_idx.i, align 4
  %.compoundliteral450.sroa.10.0.sensor449.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 1, i32 1, i32 2
  %225 = ptrtoint ptr %.compoundliteral450.sroa.10.0.sensor449.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 1, ptr %.compoundliteral450.sroa.10.0.sensor449.sroa_idx.i, align 1
  %incdec.ptr468.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2
  %call471.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr468.i, i32 noundef 32, ptr noundef nonnull @.str.46, i32 noundef %add422.i) #6
  %sensor472.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1
  %226 = ptrtoint ptr %sensor472.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %incdec.ptr468.i, ptr %sensor472.i, align 4
  %.compoundliteral473.sroa.2.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %227 = ptrtoint ptr %.compoundliteral473.sroa.2.0.sensor472.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 292, ptr %.compoundliteral473.sroa.2.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.3.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 0, i32 2
  %228 = ptrtoint ptr %.compoundliteral473.sroa.3.0.sensor472.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %.compoundliteral473.sroa.3.0.sensor472.sroa_idx.i, align 2
  %.compoundliteral473.sroa.5835.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 0, i32 3
  %229 = ptrtoint ptr %.compoundliteral473.sroa.5835.0.sensor472.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr null, ptr %.compoundliteral473.sroa.5835.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.6.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 0, i32 4
  %230 = ptrtoint ptr %.compoundliteral473.sroa.6.0.sensor472.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %230, i32 8)
  store i64 0, ptr %.compoundliteral473.sroa.6.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.7.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 1
  %231 = ptrtoint ptr %.compoundliteral473.sroa.7.0.sensor472.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr %show_power.1.i, ptr %.compoundliteral473.sroa.7.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.8.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 0, i32 2
  %232 = ptrtoint ptr %.compoundliteral473.sroa.8.0.sensor472.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr null, ptr %.compoundliteral473.sroa.8.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.9.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 1
  %233 = ptrtoint ptr %.compoundliteral473.sroa.9.0.sensor472.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %233)
  store i8 %conv443.i, ptr %.compoundliteral473.sroa.9.0.sensor472.sroa_idx.i, align 4
  %.compoundliteral473.sroa.10.0.sensor472.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 2, i32 1, i32 2
  %234 = ptrtoint ptr %.compoundliteral473.sroa.10.0.sensor472.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 2, ptr %.compoundliteral473.sroa.10.0.sensor472.sroa_idx.i, align 1
  %incdec.ptr491.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3
  %call494.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr491.i, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %add422.i) #6
  %sensor495.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1
  %235 = ptrtoint ptr %sensor495.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr %incdec.ptr491.i, ptr %sensor495.i, align 4
  %.compoundliteral496.sroa.2.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 0, i32 1
  %236 = ptrtoint ptr %.compoundliteral496.sroa.2.0.sensor495.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 292, ptr %.compoundliteral496.sroa.2.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.3.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 0, i32 2
  %237 = ptrtoint ptr %.compoundliteral496.sroa.3.0.sensor495.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %237)
  store i8 0, ptr %.compoundliteral496.sroa.3.0.sensor495.sroa_idx.i, align 2
  %.compoundliteral496.sroa.5834.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 0, i32 3
  %238 = ptrtoint ptr %.compoundliteral496.sroa.5834.0.sensor495.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store ptr null, ptr %.compoundliteral496.sroa.5834.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.6.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 0, i32 4
  %239 = ptrtoint ptr %.compoundliteral496.sroa.6.0.sensor495.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 8)
  store i64 0, ptr %.compoundliteral496.sroa.6.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.7.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 1
  %240 = ptrtoint ptr %.compoundliteral496.sroa.7.0.sensor495.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store ptr %show_power.1.i, ptr %.compoundliteral496.sroa.7.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.8.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 0, i32 2
  %241 = ptrtoint ptr %.compoundliteral496.sroa.8.0.sensor495.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store ptr null, ptr %.compoundliteral496.sroa.8.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.9.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 1
  %242 = ptrtoint ptr %.compoundliteral496.sroa.9.0.sensor495.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 %conv443.i, ptr %.compoundliteral496.sroa.9.0.sensor495.sroa_idx.i, align 4
  %.compoundliteral496.sroa.10.0.sensor495.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 3, i32 1, i32 2
  %243 = ptrtoint ptr %.compoundliteral496.sroa.10.0.sensor495.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 3, ptr %.compoundliteral496.sroa.10.0.sensor495.sroa_idx.i, align 1
  %incdec.ptr514.i = getelementptr %struct.occ_attribute, ptr %attr.51109.i, i32 4
  %244 = ptrtoint ptr %power.i to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %power.i, align 4
  %conv418.i = zext i8 %245 to i32
  %cmp419.i = icmp ult i32 %add422.i, %conv418.i
  br i1 %cmp419.i, label %for.body421.i.for.body421.i_crit_edge, label %if.end522.i.loopexit

for.body421.i.for.body421.i_crit_edge:            ; preds = %for.body421.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body421.i

if.end522.i.loopexit:                             ; preds = %for.body421.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv418.i.le = zext i8 %245 to i32
  br label %if.end522.i

if.end522.i:                                      ; preds = %if.end522.i.loopexit, %for.end408.loopexit.i, %for.cond288.preheader.i.if.end522.i_crit_edge, %for.cond415.preheader.i.if.end522.i_crit_edge
  %attr.6.i = phi ptr [ %incdec.ptr401.i, %for.end408.loopexit.i ], [ %attr.2.lcssa.i, %for.cond288.preheader.i.if.end522.i_crit_edge ], [ %attr.2.lcssa.i, %for.cond415.preheader.i.if.end522.i_crit_edge ], [ %incdec.ptr514.i, %if.end522.i.loopexit ]
  %s.1.in.i = phi i32 [ %phi.bo.i, %for.end408.loopexit.i ], [ 0, %for.cond288.preheader.i.if.end522.i_crit_edge ], [ 0, %for.cond415.preheader.i.if.end522.i_crit_edge ], [ %conv418.i.le, %if.end522.i.loopexit ]
  %s.1.i = add nuw nsw i32 %s.1.in.i, 1
  %246 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %caps.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %247)
  %cmp526.not.i = icmp eq i8 %247, 0
  br i1 %cmp526.not.i, label %if.end522.i.if.end712.i_crit_edge, label %if.then528.i

if.end522.i.if.end712.i_crit_edge:                ; preds = %if.end522.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end712.i

if.then528.i:                                     ; preds = %if.end522.i
  %call531.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.6.i, i32 noundef 32, ptr noundef nonnull @.str.44, i32 noundef %s.1.i) #6
  %sensor532.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1
  %248 = ptrtoint ptr %sensor532.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %attr.6.i, ptr %sensor532.i, align 4
  %.compoundliteral533.sroa.2.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %249 = ptrtoint ptr %.compoundliteral533.sroa.2.0.sensor532.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %249)
  store i16 292, ptr %.compoundliteral533.sroa.2.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.3.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %250 = ptrtoint ptr %.compoundliteral533.sroa.3.0.sensor532.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 0, ptr %.compoundliteral533.sroa.3.0.sensor532.sroa_idx.i, align 2
  %.compoundliteral533.sroa.5833.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %251 = ptrtoint ptr %.compoundliteral533.sroa.5833.0.sensor532.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store ptr null, ptr %.compoundliteral533.sroa.5833.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.6.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %252 = ptrtoint ptr %.compoundliteral533.sroa.6.0.sensor532.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %252, i32 8)
  store i64 0, ptr %.compoundliteral533.sroa.6.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.7.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 1
  %253 = ptrtoint ptr %.compoundliteral533.sroa.7.0.sensor532.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %show_caps.1.i, ptr %.compoundliteral533.sroa.7.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.8.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 0, i32 2
  %254 = ptrtoint ptr %.compoundliteral533.sroa.8.0.sensor532.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr null, ptr %.compoundliteral533.sroa.8.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.9.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 1
  %255 = ptrtoint ptr %.compoundliteral533.sroa.9.0.sensor532.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %255)
  store i8 0, ptr %.compoundliteral533.sroa.9.0.sensor532.sroa_idx.i, align 4
  %.compoundliteral533.sroa.10.0.sensor532.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.6.i, i32 0, i32 1, i32 2
  %256 = ptrtoint ptr %.compoundliteral533.sroa.10.0.sensor532.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 0, ptr %.compoundliteral533.sroa.10.0.sensor532.sroa_idx.i, align 1
  %incdec.ptr550.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1
  %call553.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr550.i, i32 noundef 32, ptr noundef nonnull @.str.48, i32 noundef %s.1.i) #6
  %sensor554.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1
  %257 = ptrtoint ptr %sensor554.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store ptr %incdec.ptr550.i, ptr %sensor554.i, align 4
  %.compoundliteral555.sroa.2.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %258 = ptrtoint ptr %.compoundliteral555.sroa.2.0.sensor554.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %258)
  store i16 292, ptr %.compoundliteral555.sroa.2.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.3.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %259 = ptrtoint ptr %.compoundliteral555.sroa.3.0.sensor554.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 0, ptr %.compoundliteral555.sroa.3.0.sensor554.sroa_idx.i, align 2
  %.compoundliteral555.sroa.5832.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %260 = ptrtoint ptr %.compoundliteral555.sroa.5832.0.sensor554.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store ptr null, ptr %.compoundliteral555.sroa.5832.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.6.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %261 = ptrtoint ptr %.compoundliteral555.sroa.6.0.sensor554.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %261, i32 8)
  store i64 0, ptr %.compoundliteral555.sroa.6.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.7.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 1
  %262 = ptrtoint ptr %.compoundliteral555.sroa.7.0.sensor554.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %262)
  store ptr %show_caps.1.i, ptr %.compoundliteral555.sroa.7.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.8.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 0, i32 2
  %263 = ptrtoint ptr %.compoundliteral555.sroa.8.0.sensor554.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr null, ptr %.compoundliteral555.sroa.8.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.9.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 1
  %264 = ptrtoint ptr %.compoundliteral555.sroa.9.0.sensor554.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %264)
  store i8 0, ptr %.compoundliteral555.sroa.9.0.sensor554.sroa_idx.i, align 4
  %.compoundliteral555.sroa.10.0.sensor554.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 1, i32 1, i32 2
  %265 = ptrtoint ptr %.compoundliteral555.sroa.10.0.sensor554.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %265)
  store i8 1, ptr %.compoundliteral555.sroa.10.0.sensor554.sroa_idx.i, align 1
  %incdec.ptr572.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2
  %call575.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr572.i, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %s.1.i) #6
  %sensor576.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1
  %266 = ptrtoint ptr %sensor576.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr %incdec.ptr572.i, ptr %sensor576.i, align 4
  %.compoundliteral577.sroa.2.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %267 = ptrtoint ptr %.compoundliteral577.sroa.2.0.sensor576.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 292, ptr %.compoundliteral577.sroa.2.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.3.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 0, i32 2
  %268 = ptrtoint ptr %.compoundliteral577.sroa.3.0.sensor576.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %268)
  store i8 0, ptr %.compoundliteral577.sroa.3.0.sensor576.sroa_idx.i, align 2
  %.compoundliteral577.sroa.5831.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 0, i32 3
  %269 = ptrtoint ptr %.compoundliteral577.sroa.5831.0.sensor576.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr null, ptr %.compoundliteral577.sroa.5831.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.6.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 0, i32 4
  %270 = ptrtoint ptr %.compoundliteral577.sroa.6.0.sensor576.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %270, i32 8)
  store i64 0, ptr %.compoundliteral577.sroa.6.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.7.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 1
  %271 = ptrtoint ptr %.compoundliteral577.sroa.7.0.sensor576.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %show_caps.1.i, ptr %.compoundliteral577.sroa.7.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.8.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 0, i32 2
  %272 = ptrtoint ptr %.compoundliteral577.sroa.8.0.sensor576.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr null, ptr %.compoundliteral577.sroa.8.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.9.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 1
  %273 = ptrtoint ptr %.compoundliteral577.sroa.9.0.sensor576.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %273)
  store i8 0, ptr %.compoundliteral577.sroa.9.0.sensor576.sroa_idx.i, align 4
  %.compoundliteral577.sroa.10.0.sensor576.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 2, i32 1, i32 2
  %274 = ptrtoint ptr %.compoundliteral577.sroa.10.0.sensor576.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 2, ptr %.compoundliteral577.sroa.10.0.sensor576.sroa_idx.i, align 1
  %incdec.ptr594.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3
  %call597.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr594.i, i32 noundef 32, ptr noundef nonnull @.str.49, i32 noundef %s.1.i) #6
  %sensor598.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1
  %275 = ptrtoint ptr %sensor598.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %incdec.ptr594.i, ptr %sensor598.i, align 4
  %.compoundliteral599.sroa.2.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 0, i32 1
  %276 = ptrtoint ptr %.compoundliteral599.sroa.2.0.sensor598.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %276)
  store i16 292, ptr %.compoundliteral599.sroa.2.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.3.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 0, i32 2
  %277 = ptrtoint ptr %.compoundliteral599.sroa.3.0.sensor598.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 0, ptr %.compoundliteral599.sroa.3.0.sensor598.sroa_idx.i, align 2
  %.compoundliteral599.sroa.5830.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 0, i32 3
  %278 = ptrtoint ptr %.compoundliteral599.sroa.5830.0.sensor598.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr null, ptr %.compoundliteral599.sroa.5830.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.6.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 0, i32 4
  %279 = ptrtoint ptr %.compoundliteral599.sroa.6.0.sensor598.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %279, i32 8)
  store i64 0, ptr %.compoundliteral599.sroa.6.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.7.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 1
  %280 = ptrtoint ptr %.compoundliteral599.sroa.7.0.sensor598.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %show_caps.1.i, ptr %.compoundliteral599.sroa.7.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.8.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 0, i32 2
  %281 = ptrtoint ptr %.compoundliteral599.sroa.8.0.sensor598.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %281)
  store ptr null, ptr %.compoundliteral599.sroa.8.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.9.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 1
  %282 = ptrtoint ptr %.compoundliteral599.sroa.9.0.sensor598.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %282)
  store i8 0, ptr %.compoundliteral599.sroa.9.0.sensor598.sroa_idx.i, align 4
  %.compoundliteral599.sroa.10.0.sensor598.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 3, i32 1, i32 2
  %283 = ptrtoint ptr %.compoundliteral599.sroa.10.0.sensor598.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 3, ptr %.compoundliteral599.sroa.10.0.sensor598.sroa_idx.i, align 1
  %incdec.ptr616.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4
  %call619.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr616.i, i32 noundef 32, ptr noundef nonnull @.str.50, i32 noundef %s.1.i) #6
  %sensor620.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1
  %284 = ptrtoint ptr %sensor620.i to i32
  call void @__asan_store4_noabort(i32 %284)
  store ptr %incdec.ptr616.i, ptr %sensor620.i, align 4
  %.compoundliteral621.sroa.2.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 0, i32 1
  %285 = ptrtoint ptr %.compoundliteral621.sroa.2.0.sensor620.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 292, ptr %.compoundliteral621.sroa.2.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.3.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 0, i32 2
  %286 = ptrtoint ptr %.compoundliteral621.sroa.3.0.sensor620.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %286)
  store i8 0, ptr %.compoundliteral621.sroa.3.0.sensor620.sroa_idx.i, align 2
  %.compoundliteral621.sroa.5829.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 0, i32 3
  %287 = ptrtoint ptr %.compoundliteral621.sroa.5829.0.sensor620.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr null, ptr %.compoundliteral621.sroa.5829.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.6.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 0, i32 4
  %288 = ptrtoint ptr %.compoundliteral621.sroa.6.0.sensor620.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %288, i32 8)
  store i64 0, ptr %.compoundliteral621.sroa.6.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.7.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 1
  %289 = ptrtoint ptr %.compoundliteral621.sroa.7.0.sensor620.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store ptr %show_caps.1.i, ptr %.compoundliteral621.sroa.7.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.8.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 0, i32 2
  %290 = ptrtoint ptr %.compoundliteral621.sroa.8.0.sensor620.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %290)
  store ptr null, ptr %.compoundliteral621.sroa.8.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.9.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 1
  %291 = ptrtoint ptr %.compoundliteral621.sroa.9.0.sensor620.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %291)
  store i8 0, ptr %.compoundliteral621.sroa.9.0.sensor620.sroa_idx.i, align 4
  %.compoundliteral621.sroa.10.0.sensor620.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 4, i32 1, i32 2
  %292 = ptrtoint ptr %.compoundliteral621.sroa.10.0.sensor620.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 4, ptr %.compoundliteral621.sroa.10.0.sensor620.sroa_idx.i, align 1
  %incdec.ptr638.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5
  %call641.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr638.i, i32 noundef 32, ptr noundef nonnull @.str.51, i32 noundef %s.1.i) #6
  %sensor642.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1
  %293 = ptrtoint ptr %sensor642.i to i32
  call void @__asan_store4_noabort(i32 %293)
  store ptr %incdec.ptr638.i, ptr %sensor642.i, align 4
  %.compoundliteral643.sroa.2.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 0, i32 1
  %294 = ptrtoint ptr %.compoundliteral643.sroa.2.0.sensor642.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %294)
  store i16 292, ptr %.compoundliteral643.sroa.2.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.3.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 0, i32 2
  %295 = ptrtoint ptr %.compoundliteral643.sroa.3.0.sensor642.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %295)
  store i8 0, ptr %.compoundliteral643.sroa.3.0.sensor642.sroa_idx.i, align 2
  %.compoundliteral643.sroa.5828.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 0, i32 3
  %296 = ptrtoint ptr %.compoundliteral643.sroa.5828.0.sensor642.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %.compoundliteral643.sroa.5828.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.6.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 0, i32 4
  %297 = ptrtoint ptr %.compoundliteral643.sroa.6.0.sensor642.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %297, i32 8)
  store i64 0, ptr %.compoundliteral643.sroa.6.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.7.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 1
  %298 = ptrtoint ptr %.compoundliteral643.sroa.7.0.sensor642.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store ptr %show_caps.1.i, ptr %.compoundliteral643.sroa.7.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.8.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 0, i32 2
  %299 = ptrtoint ptr %.compoundliteral643.sroa.8.0.sensor642.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %299)
  store ptr null, ptr %.compoundliteral643.sroa.8.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.9.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 1
  %300 = ptrtoint ptr %.compoundliteral643.sroa.9.0.sensor642.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %300)
  store i8 0, ptr %.compoundliteral643.sroa.9.0.sensor642.sroa_idx.i, align 4
  %.compoundliteral643.sroa.10.0.sensor642.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 5, i32 1, i32 2
  %301 = ptrtoint ptr %.compoundliteral643.sroa.10.0.sensor642.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 5, ptr %.compoundliteral643.sroa.10.0.sensor642.sroa_idx.i, align 1
  %incdec.ptr660.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6
  %call663.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr660.i, i32 noundef 32, ptr noundef nonnull @.str.52, i32 noundef %s.1.i) #6
  %sensor664.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1
  %302 = ptrtoint ptr %sensor664.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %incdec.ptr660.i, ptr %sensor664.i, align 4
  %.compoundliteral665.sroa.2.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 0, i32 1
  %303 = ptrtoint ptr %.compoundliteral665.sroa.2.0.sensor664.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %303)
  store i16 420, ptr %.compoundliteral665.sroa.2.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.3.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 0, i32 2
  %304 = ptrtoint ptr %.compoundliteral665.sroa.3.0.sensor664.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %304)
  store i8 0, ptr %.compoundliteral665.sroa.3.0.sensor664.sroa_idx.i, align 2
  %.compoundliteral665.sroa.5827.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 0, i32 3
  %305 = ptrtoint ptr %.compoundliteral665.sroa.5827.0.sensor664.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr null, ptr %.compoundliteral665.sroa.5827.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.6.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 0, i32 4
  %306 = ptrtoint ptr %.compoundliteral665.sroa.6.0.sensor664.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %306, i32 8)
  store i64 0, ptr %.compoundliteral665.sroa.6.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.7.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 1
  %307 = ptrtoint ptr %.compoundliteral665.sroa.7.0.sensor664.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %show_caps.1.i, ptr %.compoundliteral665.sroa.7.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.8.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 0, i32 2
  %308 = ptrtoint ptr %.compoundliteral665.sroa.8.0.sensor664.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %308)
  store ptr @occ_store_caps_user, ptr %.compoundliteral665.sroa.8.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.9.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 1
  %309 = ptrtoint ptr %.compoundliteral665.sroa.9.0.sensor664.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 0, ptr %.compoundliteral665.sroa.9.0.sensor664.sroa_idx.i, align 4
  %.compoundliteral665.sroa.10.0.sensor664.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 6, i32 1, i32 2
  %310 = ptrtoint ptr %.compoundliteral665.sroa.10.0.sensor664.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %310)
  store i8 6, ptr %.compoundliteral665.sroa.10.0.sensor664.sroa_idx.i, align 1
  %incdec.ptr682.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7
  %311 = ptrtoint ptr %version51.i to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %version51.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %312)
  %cmp686.i = icmp ugt i8 %312, 1
  br i1 %cmp686.i, label %if.then688.i, label %if.then528.i.if.end712.i_crit_edge

if.then528.i.if.end712.i_crit_edge:               ; preds = %if.then528.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end712.i

if.then688.i:                                     ; preds = %if.then528.i
  call void @__sanitizer_cov_trace_pc() #8
  %call691.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr682.i, i32 noundef 32, ptr noundef nonnull @.str.53, i32 noundef %s.1.i) #6
  %sensor692.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1
  %313 = ptrtoint ptr %sensor692.i to i32
  call void @__asan_store4_noabort(i32 %313)
  store ptr %incdec.ptr682.i, ptr %sensor692.i, align 4
  %.compoundliteral693.sroa.2.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 0, i32 1
  %314 = ptrtoint ptr %.compoundliteral693.sroa.2.0.sensor692.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %314)
  store i16 292, ptr %.compoundliteral693.sroa.2.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.3.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 0, i32 2
  %315 = ptrtoint ptr %.compoundliteral693.sroa.3.0.sensor692.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %315)
  store i8 0, ptr %.compoundliteral693.sroa.3.0.sensor692.sroa_idx.i, align 2
  %.compoundliteral693.sroa.5826.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 0, i32 3
  %316 = ptrtoint ptr %.compoundliteral693.sroa.5826.0.sensor692.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store ptr null, ptr %.compoundliteral693.sroa.5826.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.6.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 0, i32 4
  %317 = ptrtoint ptr %.compoundliteral693.sroa.6.0.sensor692.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %317, i32 8)
  store i64 0, ptr %.compoundliteral693.sroa.6.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.7.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 1
  %318 = ptrtoint ptr %.compoundliteral693.sroa.7.0.sensor692.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %show_caps.1.i, ptr %.compoundliteral693.sroa.7.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.8.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 0, i32 2
  %319 = ptrtoint ptr %.compoundliteral693.sroa.8.0.sensor692.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %319)
  store ptr null, ptr %.compoundliteral693.sroa.8.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.9.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 1
  %320 = ptrtoint ptr %.compoundliteral693.sroa.9.0.sensor692.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %320)
  store i8 0, ptr %.compoundliteral693.sroa.9.0.sensor692.sroa_idx.i, align 4
  %.compoundliteral693.sroa.10.0.sensor692.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 7, i32 1, i32 2
  %321 = ptrtoint ptr %.compoundliteral693.sroa.10.0.sensor692.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %321)
  store i8 7, ptr %.compoundliteral693.sroa.10.0.sensor692.sroa_idx.i, align 1
  %incdec.ptr710.i = getelementptr %struct.occ_attribute, ptr %attr.6.i, i32 8
  br label %if.end712.i

if.end712.i:                                      ; preds = %if.then688.i, %if.then528.i.if.end712.i_crit_edge, %if.end522.i.if.end712.i_crit_edge
  %attr.7.i = phi ptr [ %incdec.ptr710.i, %if.then688.i ], [ %incdec.ptr682.i, %if.then528.i.if.end712.i_crit_edge ], [ %attr.6.i, %if.end522.i.if.end712.i_crit_edge ]
  %322 = ptrtoint ptr %extended.i to i32
  call void @__asan_load1_noabort(i32 %322)
  %323 = load i8, ptr %extended.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %323)
  %cmp7171129.not.i = icmp eq i8 %323, 0
  br i1 %cmp7171129.not.i, label %if.end712.i.for.cond793.preheader.i_crit_edge, label %if.end712.i.for.body719.i_crit_edge

if.end712.i.for.body719.i_crit_edge:              ; preds = %if.end712.i
  br label %for.body719.i

if.end712.i.for.cond793.preheader.i_crit_edge:    ; preds = %if.end712.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond793.preheader.i

for.cond793.preheader.i:                          ; preds = %for.body719.i.for.cond793.preheader.i_crit_edge, %if.end712.i.for.cond793.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_attrs.4.i)
  %cmp7941132.not.i = icmp eq i32 %num_attrs.4.i, 0
  br i1 %cmp7941132.not.i, label %for.cond793.preheader.i.if.end18_crit_edge, label %for.cond793.preheader.i.do.body.i_crit_edge

for.cond793.preheader.i.do.body.i_crit_edge:      ; preds = %for.cond793.preheader.i
  br label %do.body.i

for.cond793.preheader.i.if.end18_crit_edge:       ; preds = %for.cond793.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

for.body719.i:                                    ; preds = %for.body719.i.for.body719.i_crit_edge, %if.end712.i.for.body719.i_crit_edge
  %i.41131.i = phi i32 [ %add720.i, %for.body719.i.for.body719.i_crit_edge ], [ 0, %if.end712.i.for.body719.i_crit_edge ]
  %attr.81130.i = phi ptr [ %incdec.ptr789.i, %for.body719.i.for.body719.i_crit_edge ], [ %attr.7.i, %if.end712.i.for.body719.i_crit_edge ]
  %add720.i = add nuw nsw i32 %i.41131.i, 1
  %call723.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %attr.81130.i, i32 noundef 32, ptr noundef nonnull @.str.54, i32 noundef %add720.i) #6
  %sensor724.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1
  %conv741.i = trunc i32 %i.41131.i to i8
  %324 = ptrtoint ptr %sensor724.i to i32
  call void @__asan_store4_noabort(i32 %324)
  store ptr %attr.81130.i, ptr %sensor724.i, align 4
  %.compoundliteral725.sroa.2.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %325 = ptrtoint ptr %.compoundliteral725.sroa.2.0.sensor724.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %325)
  store i16 292, ptr %.compoundliteral725.sroa.2.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.3.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %326 = ptrtoint ptr %.compoundliteral725.sroa.3.0.sensor724.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %326)
  store i8 0, ptr %.compoundliteral725.sroa.3.0.sensor724.sroa_idx.i, align 2
  %.compoundliteral725.sroa.5825.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %327 = ptrtoint ptr %.compoundliteral725.sroa.5825.0.sensor724.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store ptr null, ptr %.compoundliteral725.sroa.5825.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.6.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %328 = ptrtoint ptr %.compoundliteral725.sroa.6.0.sensor724.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %328, i32 8)
  store i64 0, ptr %.compoundliteral725.sroa.6.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.7.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 1
  %329 = ptrtoint ptr %.compoundliteral725.sroa.7.0.sensor724.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr @occ_show_extended, ptr %.compoundliteral725.sroa.7.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.8.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 0, i32 2
  %330 = ptrtoint ptr %.compoundliteral725.sroa.8.0.sensor724.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr null, ptr %.compoundliteral725.sroa.8.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.9.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 1
  %331 = ptrtoint ptr %.compoundliteral725.sroa.9.0.sensor724.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %331)
  store i8 %conv741.i, ptr %.compoundliteral725.sroa.9.0.sensor724.sroa_idx.i, align 4
  %.compoundliteral725.sroa.10.0.sensor724.sroa_idx.i = getelementptr inbounds %struct.occ_attribute, ptr %attr.81130.i, i32 0, i32 1, i32 2
  %332 = ptrtoint ptr %.compoundliteral725.sroa.10.0.sensor724.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 0, ptr %.compoundliteral725.sroa.10.0.sensor724.sroa_idx.i, align 1
  %incdec.ptr743.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1
  %call746.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr743.i, i32 noundef 32, ptr noundef nonnull @.str.55, i32 noundef %add720.i) #6
  %sensor747.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1
  %333 = ptrtoint ptr %sensor747.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store ptr %incdec.ptr743.i, ptr %sensor747.i, align 4
  %.compoundliteral748.sroa.2.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 0, i32 1
  %334 = ptrtoint ptr %.compoundliteral748.sroa.2.0.sensor747.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %334)
  store i16 292, ptr %.compoundliteral748.sroa.2.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.3.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 0, i32 2
  %335 = ptrtoint ptr %.compoundliteral748.sroa.3.0.sensor747.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %335)
  store i8 0, ptr %.compoundliteral748.sroa.3.0.sensor747.sroa_idx.i, align 2
  %.compoundliteral748.sroa.5824.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 0, i32 3
  %336 = ptrtoint ptr %.compoundliteral748.sroa.5824.0.sensor747.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store ptr null, ptr %.compoundliteral748.sroa.5824.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.6.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 0, i32 4
  %337 = ptrtoint ptr %.compoundliteral748.sroa.6.0.sensor747.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %337, i32 8)
  store i64 0, ptr %.compoundliteral748.sroa.6.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.7.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 1
  %338 = ptrtoint ptr %.compoundliteral748.sroa.7.0.sensor747.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store ptr @occ_show_extended, ptr %.compoundliteral748.sroa.7.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.8.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 0, i32 2
  %339 = ptrtoint ptr %.compoundliteral748.sroa.8.0.sensor747.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %339)
  store ptr null, ptr %.compoundliteral748.sroa.8.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.9.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 1
  %340 = ptrtoint ptr %.compoundliteral748.sroa.9.0.sensor747.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 %conv741.i, ptr %.compoundliteral748.sroa.9.0.sensor747.sroa_idx.i, align 4
  %.compoundliteral748.sroa.10.0.sensor747.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 1, i32 1, i32 2
  %341 = ptrtoint ptr %.compoundliteral748.sroa.10.0.sensor747.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 1, ptr %.compoundliteral748.sroa.10.0.sensor747.sroa_idx.i, align 1
  %incdec.ptr766.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2
  %call769.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %incdec.ptr766.i, i32 noundef 32, ptr noundef nonnull @.str.56, i32 noundef %add720.i) #6
  %sensor770.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1
  %342 = ptrtoint ptr %sensor770.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store ptr %incdec.ptr766.i, ptr %sensor770.i, align 4
  %.compoundliteral771.sroa.2.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 0, i32 1
  %343 = ptrtoint ptr %.compoundliteral771.sroa.2.0.sensor770.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %343)
  store i16 292, ptr %.compoundliteral771.sroa.2.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.3.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 0, i32 2
  %344 = ptrtoint ptr %.compoundliteral771.sroa.3.0.sensor770.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %344)
  store i8 0, ptr %.compoundliteral771.sroa.3.0.sensor770.sroa_idx.i, align 2
  %.compoundliteral771.sroa.5823.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 0, i32 3
  %345 = ptrtoint ptr %.compoundliteral771.sroa.5823.0.sensor770.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store ptr null, ptr %.compoundliteral771.sroa.5823.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.6.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 0, i32 4
  %346 = ptrtoint ptr %.compoundliteral771.sroa.6.0.sensor770.sroa_idx.i to i32
  call void @__asan_storeN_noabort(i32 %346, i32 8)
  store i64 0, ptr %.compoundliteral771.sroa.6.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.7.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 1
  %347 = ptrtoint ptr %.compoundliteral771.sroa.7.0.sensor770.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr @occ_show_extended, ptr %.compoundliteral771.sroa.7.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.8.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 0, i32 2
  %348 = ptrtoint ptr %.compoundliteral771.sroa.8.0.sensor770.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr null, ptr %.compoundliteral771.sroa.8.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.9.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 1
  %349 = ptrtoint ptr %.compoundliteral771.sroa.9.0.sensor770.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %349)
  store i8 %conv741.i, ptr %.compoundliteral771.sroa.9.0.sensor770.sroa_idx.i, align 4
  %.compoundliteral771.sroa.10.0.sensor770.sroa_idx.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 2, i32 1, i32 2
  %350 = ptrtoint ptr %.compoundliteral771.sroa.10.0.sensor770.sroa_idx.i to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 2, ptr %.compoundliteral771.sroa.10.0.sensor770.sroa_idx.i, align 1
  %incdec.ptr789.i = getelementptr %struct.occ_attribute, ptr %attr.81130.i, i32 3
  %351 = ptrtoint ptr %extended.i to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %extended.i, align 4
  %conv716.i = zext i8 %352 to i32
  %cmp717.i = icmp ult i32 %add720.i, %conv716.i
  br i1 %cmp717.i, label %for.body719.i.for.body719.i_crit_edge, label %for.body719.i.for.cond793.preheader.i_crit_edge

for.body719.i.for.cond793.preheader.i_crit_edge:  ; preds = %for.body719.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond793.preheader.i

for.body719.i.for.body719.i_crit_edge:            ; preds = %for.body719.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body719.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.cond793.preheader.i.do.body.i_crit_edge
  %i.51133.i = phi i32 [ %inc811.i, %do.body.i.do.body.i_crit_edge ], [ 0, %for.cond793.preheader.i.do.body.i_crit_edge ]
  %353 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %attrs.i, align 4
  %key801.i = getelementptr %struct.occ_attribute, ptr %354, i32 %i.51133.i, i32 1, i32 0, i32 0, i32 3
  %355 = ptrtoint ptr %key801.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store ptr @occ_setup_sensor_attrs.__key, ptr %key801.i, align 4
  %356 = load ptr, ptr %attrs.i, align 4
  %sensor804.i = getelementptr %struct.occ_attribute, ptr %356, i32 %i.51133.i, i32 1
  %357 = ptrtoint ptr %attrs87.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %attrs87.i, align 4
  %arrayidx809.i = getelementptr ptr, ptr %358, i32 %i.51133.i
  %359 = ptrtoint ptr %arrayidx809.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store ptr %sensor804.i, ptr %arrayidx809.i, align 4
  %inc811.i = add nuw nsw i32 %i.51133.i, 1
  %exitcond1136.not.i = icmp eq i32 %inc811.i, %num_attrs.4.i
  br i1 %exitcond1136.not.i, label %do.body.i.if.end18_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body.i.if.end18_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end16:                                         ; preds = %if.end.i.do.end16_crit_edge, %sw.epilog81.i.do.end16_crit_edge
  %360 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %361, ptr noundef nonnull @.str.11, i32 noundef -12) #9
  br label %cleanup

if.end18:                                         ; preds = %do.body.i.if.end18_crit_edge, %for.cond793.preheader.i.if.end18_crit_edge
  %362 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %occ, align 4
  %call21 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %363, ptr noundef %name, ptr noundef %occ, ptr noundef %groups) #6
  %hwmon = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 8
  %364 = ptrtoint ptr %hwmon to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %call21, ptr %hwmon, align 4
  %cmp.i74 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %365 = ptrtoint ptr %call21 to i32
  %366 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %367, ptr noundef nonnull @.str.14, i32 noundef %365) #9
  br label %cleanup

if.end31:                                         ; preds = %if.end18
  %call32 = call i32 @occ_setup_sysfs(ptr noundef %occ) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %do.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %368 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %occ, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %369, ptr noundef nonnull @.str.17, i32 noundef %call32) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %if.end31.cleanup_crit_edge, %if.then24, %do.end16, %do.end8, %do.end3
  %retval.0 = phi i32 [ -108, %do.end3 ], [ %call.i, %do.end8 ], [ -12, %do.end16 ], [ %365, %if.then24 ], [ %call32, %do.end37 ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @occ_parse_poll_response(ptr noundef %occ) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sensors1 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2
  %0 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %occ, align 4
  %occ_code_level = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 16
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.19, ptr noundef %occ_code_level) #9
  %num_sensor_data_blocks = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 38
  %2 = ptrtoint ptr %num_sensor_data_blocks to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %num_sensor_data_blocks, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp156.not = icmp eq i8 %3, 0
  br i1 %cmp156.not, label %entry.do.body88_crit_edge, label %for.body.lr.ph

entry.do.body88_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88

for.body.lr.ph:                                   ; preds = %entry
  %block4 = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 1, i32 4, i32 40
  %extended = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 4
  %caps = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 3
  %power = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 2
  %freq = getelementptr inbounds %struct.occ, ptr %occ, i32 0, i32 2, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0160 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %size.0158 = phi i32 [ 0, %for.body.lr.ph ], [ %add10, %for.inc.for.body_crit_edge ]
  %block.0157 = phi ptr [ %block4, %for.body.lr.ph ], [ %add.ptr, %for.inc.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %block.0157, i32 %offset.0159
  %num_sensors = getelementptr inbounds %struct.occ_sensor_data_block_header, ptr %add.ptr, i32 0, i32 4
  %4 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_sensors, align 1
  %conv7 = zext i8 %5 to i32
  %sensor_length = getelementptr inbounds %struct.occ_sensor_data_block_header, ptr %add.ptr, i32 0, i32 3
  %6 = ptrtoint ptr %sensor_length to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sensor_length, align 1
  %conv9 = zext i8 %7 to i32
  %mul = mul nuw nsw i32 %conv9, %conv7
  %add = add nuw nsw i32 %mul, 8
  %add10 = add i32 %add, %size.0158
  %8 = add i32 %add10, -4049
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4089, i32 %8)
  %cmp12 = icmp ult i32 %8, -4089
  br i1 %cmp12, label %do.end16, label %do.body18

do.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %occ, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.22) #9
  br label %cleanup

do.body18:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @occ_parse_poll_response.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@occ_parse_poll_response, %if.then21)) #6
          to label %do.end30 [label %if.then21], !srcloc !145

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %occ, align 4
  %sub = add nuw nsw i32 %mul, 7
  %13 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %num_sensors, align 1
  %conv27 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @occ_parse_poll_response.__UNIQUE_ID_ddebug170, ptr noundef %12, ptr noundef nonnull @.str.26, i32 noundef %offset.0159, i32 noundef %sub, ptr noundef %add.ptr, i32 noundef %conv27) #6
  br label %do.end30

do.end30:                                         ; preds = %if.then21, %do.body18
  %call34 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.27, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %do.end30.if.end81_crit_edge, label %if.else

do.end30.if.end81_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.else:                                          ; preds = %do.end30
  %call41 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.28, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.else.if.end81_crit_edge, label %if.else45

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.else45:                                        ; preds = %if.else
  %call49 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.29, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.else45.if.end81_crit_edge, label %if.else53

if.else45.if.end81_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.else53:                                        ; preds = %if.else45
  %call57 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.30, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp eq i32 %call57, 0
  br i1 %cmp58, label %if.else53.if.end81_crit_edge, label %if.else61

if.else53.if.end81_crit_edge:                     ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

if.else61:                                        ; preds = %if.else53
  %call65 = tail call i32 @strncmp(ptr noundef %add.ptr, ptr noundef nonnull dereferenceable(5) @.str.31, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.else61.if.end81_crit_edge, label %do.end72

if.else61.if.end81_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81

do.end72:                                         ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %occ, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.33, ptr noundef %add.ptr) #9
  br label %for.inc

if.end81:                                         ; preds = %if.else61.if.end81_crit_edge, %if.else53.if.end81_crit_edge, %if.else45.if.end81_crit_edge, %if.else.if.end81_crit_edge, %do.end30.if.end81_crit_edge
  %sensor.0 = phi ptr [ %sensors1, %do.end30.if.end81_crit_edge ], [ %freq, %if.else.if.end81_crit_edge ], [ %power, %if.else45.if.end81_crit_edge ], [ %caps, %if.else53.if.end81_crit_edge ], [ %extended, %if.else61.if.end81_crit_edge ]
  %17 = ptrtoint ptr %num_sensors to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %num_sensors, align 1
  %19 = ptrtoint ptr %sensor.0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %sensor.0, align 4
  %sensor_format = getelementptr inbounds %struct.occ_sensor_data_block_header, ptr %add.ptr, i32 0, i32 2
  %20 = ptrtoint ptr %sensor_format to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %sensor_format, align 1
  %version = getelementptr inbounds %struct.occ_sensor, ptr %sensor.0, i32 0, i32 1
  %22 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %version, align 1
  %data86 = getelementptr inbounds %struct.occ_sensor_data_block, ptr %add.ptr, i32 0, i32 1
  %data87 = getelementptr inbounds %struct.occ_sensor, ptr %sensor.0, i32 0, i32 2
  %23 = ptrtoint ptr %data87 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %data86, ptr %data87, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end81, %do.end72
  %inc = add nuw nsw i32 %i.0160, 1
  %24 = ptrtoint ptr %num_sensor_data_blocks to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_sensor_data_blocks, align 1
  %conv = zext i8 %25 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body88_crit_edge

for.inc.do.body88_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body88

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body88:                                        ; preds = %for.inc.do.body88_crit_edge, %entry.do.body88_crit_edge
  %size.0.lcssa = phi i32 [ 0, %entry.do.body88_crit_edge ], [ %add10, %for.inc.do.body88_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @occ_parse_poll_response.__UNIQUE_ID_ddebug171, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@occ_parse_poll_response, %if.then100)) #6
          to label %cleanup [label %if.then100], !srcloc !145

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %occ to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %occ, align 4
  %add102 = add nsw i32 %size.0.lcssa, 40
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @occ_parse_poll_response.__UNIQUE_ID_ddebug171, ptr noundef %27, ptr noundef nonnull @.str.35, i32 noundef %size.0.lcssa, i32 noundef 40, i32 noundef %add102) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %do.body88, %do.end16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @occ_setup_sysfs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @occ_sysfs_poll_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_temp_1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.temp_sensor_1, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr4, align 1
  %conv7 = zext i16 %10 to i32
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %value = getelementptr %struct.temp_sensor_1, ptr %3, i32 %conv, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %value, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %cmp = icmp eq i16 %12, -1
  br i1 %cmp, label %sw.bb8.cleanup_crit_edge, label %if.end12

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %conv15 = zext i16 %12 to i32
  %mul = mul nuw nsw i32 %conv15, 1000
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end12, %sw.bb
  %val.0 = phi i32 [ %mul, %if.end12 ], [ %conv7, %sw.bb ]
  %call16 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -121, %sw.bb8.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_freq_1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 1, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.freq_sensor_1, ptr %3, i32 %conv
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr %struct.freq_sensor_1, ptr %3, i32 %conv, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %val.0.in = phi ptr [ %value, %sw.bb7 ], [ %add.ptr4, %sw.bb ]
  %9 = ptrtoint ptr %val.0.in to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %val.0 = load i16, ptr %val.0.in, align 1
  %conv9 = zext i16 %val.0 to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %conv9) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_power_1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 2, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb12
    i8 3, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.power_sensor_1, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr4, align 1
  %conv7 = zext i16 %10 to i64
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator = getelementptr %struct.power_sensor_1, ptr %3, i32 %conv, i32 2
  %11 = ptrtoint ptr %accumulator to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %accumulator, align 1
  %update_tag = getelementptr %struct.power_sensor_1, ptr %3, i32 %conv, i32 1
  %13 = ptrtoint ptr %update_tag to i32
  call void @__asan_loadN_noabort(i32 %13, i32 4)
  %14 = load i32, ptr %update_tag, align 1
  %div = udiv i32 %12, %14
  %conv11 = zext i32 %div to i64
  %mul = mul nuw nsw i64 %conv11, 1000000
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag13 = getelementptr %struct.power_sensor_1, ptr %3, i32 %conv, i32 1
  %15 = ptrtoint ptr %update_tag13 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %update_tag13, align 1
  %conv15 = zext i32 %16 to i64
  %powr_sample_time_us = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %powr_sample_time_us to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %powr_sample_time_us, align 4
  %conv16 = sext i32 %18 to i64
  %mul17 = mul nsw i64 %conv16, %conv15
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr %struct.power_sensor_1, ptr %3, i32 %conv, i32 3
  %19 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %value, align 1
  %conv20 = zext i16 %20 to i64
  %mul21 = mul nuw nsw i64 %conv20, 1000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb12, %sw.bb8, %sw.bb
  %val.0 = phi i64 [ %mul21, %sw.bb18 ], [ %mul17, %sw.bb12 ], [ %mul, %sw.bb8 ], [ %conv7, %sw.bb ]
  %call22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.58, i64 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_caps_1_2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 3, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb10
    i8 3, label %sw.bb14
    i8 4, label %sw.bb18
    i8 5, label %sw.bb22
    i8 6, label %sw.bb26
    i8 7, label %sw.bb30
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr4, align 1
  %conv9 = zext i16 %10 to i64
  %mul = mul nuw nsw i64 %conv9, 1000000
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %system_power = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 1
  %11 = ptrtoint ptr %system_power to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %system_power, align 1
  %conv12 = zext i16 %12 to i64
  %mul13 = mul nuw nsw i64 %conv12, 1000000
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %n_cap = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 2
  %13 = ptrtoint ptr %n_cap to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %n_cap, align 1
  %conv16 = zext i16 %14 to i64
  %mul17 = mul nuw nsw i64 %conv16, 1000000
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 3
  %15 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %max, align 1
  %conv20 = zext i16 %16 to i64
  %mul21 = mul nuw nsw i64 %conv20, 1000000
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %min = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 4
  %17 = ptrtoint ptr %min to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %min, align 1
  %conv24 = zext i16 %18 to i64
  %mul25 = mul nuw nsw i64 %conv24, 1000000
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %user = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 5
  %19 = ptrtoint ptr %user to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %user, align 1
  %conv28 = zext i16 %20 to i64
  %mul29 = mul nuw nsw i64 %conv28, 1000000
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %version = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 3, i32 1
  %21 = ptrtoint ptr %version to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp = icmp eq i8 %22, 1
  br i1 %cmp, label %sw.bb30.cleanup_crit_edge, label %if.end36

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #8
  %user_source = getelementptr %struct.caps_sensor_2, ptr %3, i32 %conv, i32 6
  %23 = ptrtoint ptr %user_source to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %user_source, align 1
  %conv37 = zext i8 %24 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end36, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb7
  %val.0 = phi i64 [ %conv37, %if.end36 ], [ %mul29, %sw.bb26 ], [ %mul25, %sw.bb22 ], [ %mul21, %sw.bb18 ], [ %mul17, %sw.bb14 ], [ %mul13, %sw.bb10 ], [ %mul, %sw.bb7 ]
  %call38 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.58, i64 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call38, %sw.epilog ], [ %call6, %sw.bb ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_temp_2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb21
    i8 3, label %sw.bb24
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.temp_sensor_2, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %value = getelementptr %struct.temp_sensor_2, ptr %3, i32 %conv, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %conv8 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp = icmp eq i8 %12, -1
  br i1 %cmp, label %sw.bb7.cleanup_crit_edge, label %if.end11

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  %fru_type = getelementptr %struct.temp_sensor_2, ptr %3, i32 %conv, i32 1
  %13 = ptrtoint ptr %fru_type to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fru_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %14)
  %cmp13.not = icmp eq i8 %14, 3
  br i1 %cmp13.not, label %if.end11.sw.epilog_crit_edge, label %if.then15

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp16 = icmp eq i8 %12, 0
  br i1 %cmp16, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %mul = mul nuw nsw i32 %conv8, 1000
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fru_type22 = getelementptr %struct.temp_sensor_2, ptr %3, i32 %conv, i32 1
  %15 = ptrtoint ptr %fru_type22 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fru_type22, align 1
  %conv23 = zext i8 %16 to i32
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value25 = getelementptr %struct.temp_sensor_2, ptr %3, i32 %conv, i32 2
  %17 = ptrtoint ptr %value25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %value25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %18)
  %cmp27 = icmp eq i8 %18, -1
  %conv28 = zext i1 %cmp27 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb24, %sw.bb21, %if.end19, %if.end11.sw.epilog_crit_edge, %sw.bb
  %val.0 = phi i32 [ %conv28, %sw.bb24 ], [ %conv23, %sw.bb21 ], [ %mul, %if.end19 ], [ %conv8, %if.end11.sw.epilog_crit_edge ], [ %10, %sw.bb ]
  %call29 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then15.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call29, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -121, %sw.bb7.cleanup_crit_edge ], [ -11, %if.then15.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_temp_10(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb16
    i8 3, label %sw.bb18
    i8 4, label %sw.bb23
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.temp_sensor_10, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  %value = getelementptr %struct.temp_sensor_10, ptr %3, i32 %conv, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %value, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %12, label %if.end15 [
    i8 -1, label %sw.bb7.cleanup_crit_edge
    i8 0, label %if.then14
  ]

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then14:                                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %conv8 = zext i8 %12 to i32
  %mul = mul nuw nsw i32 %conv8, 1000
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %fru_type = getelementptr %struct.temp_sensor_10, ptr %3, i32 %conv, i32 1
  %14 = ptrtoint ptr %fru_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fru_type, align 1
  %conv17 = zext i8 %15 to i32
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value19 = getelementptr %struct.temp_sensor_10, ptr %3, i32 %conv, i32 2
  %16 = ptrtoint ptr %value19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %value19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %17)
  %cmp21 = icmp eq i8 %17, -1
  %conv22 = zext i1 %cmp21 to i32
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %throttle = getelementptr %struct.temp_sensor_10, ptr %3, i32 %conv, i32 3
  %18 = ptrtoint ptr %throttle to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %throttle, align 1
  %conv24 = zext i8 %19 to i32
  %mul25 = mul nuw nsw i32 %conv24, 1000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb23, %sw.bb18, %sw.bb16, %if.end15, %sw.bb
  %val.0 = phi i32 [ %mul25, %sw.bb23 ], [ %conv22, %sw.bb18 ], [ %conv17, %sw.bb16 ], [ %mul, %if.end15 ], [ %10, %sw.bb ]
  %call26 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then14, %sw.bb7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %sw.epilog ], [ -11, %if.then14 ], [ %call2, %entry.cleanup_crit_edge ], [ -121, %sw.bb7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_freq_2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 1, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.freq_sensor_2, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr %struct.freq_sensor_2, ptr %3, i32 %conv, i32 1
  %11 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %value, align 1
  %conv9 = zext i16 %12 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %val.0 = phi i32 [ %conv9, %sw.bb7 ], [ %10, %sw.bb ]
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.57, i32 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_power_2(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 2, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb10
    i8 2, label %sw.bb12
    i8 3, label %sw.bb17
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  %function_id = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 1
  %11 = ptrtoint ptr %function_id to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %function_id, align 1
  %conv7 = zext i8 %12 to i32
  %apss_channel = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 2
  %13 = ptrtoint ptr %apss_channel to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %apss_channel, align 1
  %conv8 = zext i8 %14 to i32
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.60, i32 noundef %10, i32 noundef %conv7, i32 noundef %conv8) #6
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  %update_tag = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 4
  %15 = ptrtoint ptr %update_tag to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %update_tag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i = icmp eq i32 %16, 0
  br i1 %cmp.i, label %sw.bb10.sw.epilog_crit_edge, label %cond.false.i

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false.i:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 5
  %conv.i = zext i32 %16 to i64
  %17 = ptrtoint ptr %accumulator to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %18 = load i64, ptr %accumulator, align 1
  %mul.i = mul i64 %18, 1000000
  %call3.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %conv.i) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag13 = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 4
  %19 = ptrtoint ptr %update_tag13 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %update_tag13, align 1
  %conv15 = zext i32 %20 to i64
  %powr_sample_time_us = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %powr_sample_time_us to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %powr_sample_time_us, align 4
  %conv16 = sext i32 %22 to i64
  %mul = mul nsw i64 %conv16, %conv15
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr %struct.power_sensor_2, ptr %3, i32 %conv, i32 6
  %23 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %value, align 1
  %conv19 = zext i16 %24 to i64
  %mul20 = mul nuw nsw i64 %conv19, 1000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb12, %cond.false.i, %sw.bb10.sw.epilog_crit_edge
  %val.0 = phi i64 [ %mul20, %sw.bb17 ], [ %mul, %sw.bb12 ], [ %call3.i, %cond.false.i ], [ 0, %sw.bb10.sw.epilog_crit_edge ]
  %call21 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.58, i64 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %sw.epilog ], [ %call9, %sw.bb ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_power_a0(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 2, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %add.ptr4 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb8
    i8 2, label %sw.bb11
    i8 3, label %sw.bb17
    i8 4, label %sw.bb22
    i8 5, label %sw.bb26
    i8 6, label %sw.bb31
    i8 7, label %sw.bb39
    i8 8, label %sw.bb45
    i8 9, label %sw.bb49
    i8 10, label %sw.bb54
    i8 11, label %sw.bb62
    i8 12, label %sw.bb68
    i8 13, label %sw.bb72
    i8 14, label %sw.bb77
    i8 15, label %sw.bb85
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %add.ptr4, align 1
  %call7 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.61, i32 noundef %10) #6
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %update_tag = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 1, i32 2
  %11 = ptrtoint ptr %update_tag to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %update_tag, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i = icmp eq i32 %12, 0
  br i1 %cmp.i, label %sw.bb8.sw.epilog_crit_edge, label %cond.false.i

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false.i:                                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 1, i32 3
  %conv.i = zext i32 %12 to i64
  %13 = ptrtoint ptr %accumulator to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %accumulator, align 1
  %mul.i = mul i64 %14, 1000000
  %call3.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef %conv.i) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag13 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 1, i32 2
  %15 = ptrtoint ptr %update_tag13 to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %update_tag13, align 1
  %conv15 = zext i32 %16 to i64
  %powr_sample_time_us = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %powr_sample_time_us to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %powr_sample_time_us, align 4
  %conv16 = sext i32 %18 to i64
  %mul = mul nsw i64 %conv16, %conv15
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 1, i32 1
  %19 = ptrtoint ptr %value to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %value, align 1
  %conv20 = zext i16 %20 to i64
  %mul21 = mul nuw nsw i64 %conv20, 1000000
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %add.ptr4, align 1
  %call25 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.62, i32 noundef %22) #6
  br label %cleanup

sw.bb26:                                          ; preds = %if.end
  %update_tag29 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 3, i32 2
  %23 = ptrtoint ptr %update_tag29 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %24 = load i32, ptr %update_tag29, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i127 = icmp eq i32 %24, 0
  br i1 %cmp.i127, label %sw.bb26.sw.epilog_crit_edge, label %cond.false.i131

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false.i131:                                  ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator27 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 3, i32 3
  %conv.i128 = zext i32 %24 to i64
  %25 = ptrtoint ptr %accumulator27 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %26 = load i64, ptr %accumulator27, align 1
  %mul.i129 = mul i64 %26, 1000000
  %call3.i130 = tail call i64 @div64_u64(i64 noundef %mul.i129, i64 noundef %conv.i128) #6
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag33 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 3, i32 2
  %27 = ptrtoint ptr %update_tag33 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %update_tag33, align 1
  %conv35 = zext i32 %28 to i64
  %powr_sample_time_us36 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %29 = ptrtoint ptr %powr_sample_time_us36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %powr_sample_time_us36, align 4
  %conv37 = sext i32 %30 to i64
  %mul38 = mul nsw i64 %conv37, %conv35
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %value41 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 3, i32 1
  %31 = ptrtoint ptr %value41 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 2)
  %32 = load i16, ptr %value41, align 1
  %conv43 = zext i16 %32 to i64
  %mul44 = mul nuw nsw i64 %conv43, 1000000
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 4)
  %34 = load i32, ptr %add.ptr4, align 1
  %call48 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.63, i32 noundef %34) #6
  br label %cleanup

sw.bb49:                                          ; preds = %if.end
  %update_tag52 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 4, i32 1
  %35 = ptrtoint ptr %update_tag52 to i32
  call void @__asan_loadN_noabort(i32 %35, i32 4)
  %36 = load i32, ptr %update_tag52, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i134 = icmp eq i32 %36, 0
  br i1 %cmp.i134, label %sw.bb49.sw.epilog_crit_edge, label %cond.false.i138

sw.bb49.sw.epilog_crit_edge:                      ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false.i138:                                  ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator50 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 4, i32 2
  %conv.i135 = zext i32 %36 to i64
  %37 = ptrtoint ptr %accumulator50 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %accumulator50, align 1
  %mul.i136 = mul i64 %38, 1000000
  %call3.i137 = tail call i64 @div64_u64(i64 noundef %mul.i136, i64 noundef %conv.i135) #6
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag56 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 4, i32 1
  %39 = ptrtoint ptr %update_tag56 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 4)
  %40 = load i32, ptr %update_tag56, align 1
  %conv58 = zext i32 %40 to i64
  %powr_sample_time_us59 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %41 = ptrtoint ptr %powr_sample_time_us59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %powr_sample_time_us59, align 4
  %conv60 = sext i32 %42 to i64
  %mul61 = mul nsw i64 %conv60, %conv58
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdd63 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 4
  %43 = ptrtoint ptr %vdd63 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %vdd63, align 1
  %conv66 = zext i16 %44 to i64
  %mul67 = mul nuw nsw i64 %conv66, 1000000
  br label %sw.epilog

sw.bb68:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %add.ptr4, align 1
  %call71 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.64, i32 noundef %46) #6
  br label %cleanup

sw.bb72:                                          ; preds = %if.end
  %update_tag75 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 5, i32 1
  %47 = ptrtoint ptr %update_tag75 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %update_tag75, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i141 = icmp eq i32 %48, 0
  br i1 %cmp.i141, label %sw.bb72.sw.epilog_crit_edge, label %cond.false.i145

sw.bb72.sw.epilog_crit_edge:                      ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false.i145:                                  ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #8
  %accumulator73 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 5, i32 2
  %conv.i142 = zext i32 %48 to i64
  %49 = ptrtoint ptr %accumulator73 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %50 = load i64, ptr %accumulator73, align 1
  %mul.i143 = mul i64 %50, 1000000
  %call3.i144 = tail call i64 @div64_u64(i64 noundef %mul.i143, i64 noundef %conv.i142) #6
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %update_tag79 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 5, i32 1
  %51 = ptrtoint ptr %update_tag79 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %52 = load i32, ptr %update_tag79, align 1
  %conv81 = zext i32 %52 to i64
  %powr_sample_time_us82 = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 3
  %53 = ptrtoint ptr %powr_sample_time_us82 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %powr_sample_time_us82, align 4
  %conv83 = sext i32 %54 to i64
  %mul84 = mul nsw i64 %conv83, %conv81
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %vdn86 = getelementptr %struct.power_sensor_a0, ptr %3, i32 %conv, i32 5
  %55 = ptrtoint ptr %vdn86 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 2)
  %56 = load i16, ptr %vdn86, align 1
  %conv89 = zext i16 %56 to i64
  %mul90 = mul nuw nsw i64 %conv89, 1000000
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb85, %sw.bb77, %cond.false.i145, %sw.bb72.sw.epilog_crit_edge, %sw.bb62, %sw.bb54, %cond.false.i138, %sw.bb49.sw.epilog_crit_edge, %sw.bb39, %sw.bb31, %cond.false.i131, %sw.bb26.sw.epilog_crit_edge, %sw.bb17, %sw.bb11, %cond.false.i, %sw.bb8.sw.epilog_crit_edge
  %val.0 = phi i64 [ %mul90, %sw.bb85 ], [ %mul84, %sw.bb77 ], [ %mul67, %sw.bb62 ], [ %mul61, %sw.bb54 ], [ %mul44, %sw.bb39 ], [ %mul38, %sw.bb31 ], [ %mul21, %sw.bb17 ], [ %mul, %sw.bb11 ], [ %call3.i, %cond.false.i ], [ 0, %sw.bb8.sw.epilog_crit_edge ], [ %call3.i130, %cond.false.i131 ], [ 0, %sw.bb26.sw.epilog_crit_edge ], [ %call3.i137, %cond.false.i138 ], [ 0, %sw.bb49.sw.epilog_crit_edge ], [ %call3.i144, %cond.false.i145 ], [ 0, %sw.bb72.sw.epilog_crit_edge ]
  %call91 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.58, i64 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb68, %sw.bb45, %sw.bb22, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call91, %sw.epilog ], [ %call71, %sw.bb68 ], [ %call48, %sw.bb45 ], [ %call25, %sw.bb22 ], [ %call7, %sw.bb ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_caps_3(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 3, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb10
    i8 3, label %sw.bb14
    i8 4, label %sw.bb18
    i8 5, label %sw.bb22
    i8 6, label %sw.bb26
    i8 7, label %sw.bb30
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.59) #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4 = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv
  %9 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 2)
  %10 = load i16, ptr %add.ptr4, align 1
  %conv9 = zext i16 %10 to i64
  %mul = mul nuw nsw i64 %conv9, 1000000
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %system_power = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 1
  %11 = ptrtoint ptr %system_power to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %system_power, align 1
  %conv12 = zext i16 %12 to i64
  %mul13 = mul nuw nsw i64 %conv12, 1000000
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %n_cap = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 2
  %13 = ptrtoint ptr %n_cap to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %n_cap, align 1
  %conv16 = zext i16 %14 to i64
  %mul17 = mul nuw nsw i64 %conv16, 1000000
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %max = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 3
  %15 = ptrtoint ptr %max to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %max, align 1
  %conv20 = zext i16 %16 to i64
  %mul21 = mul nuw nsw i64 %conv20, 1000000
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hard_min = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 4
  %17 = ptrtoint ptr %hard_min to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %hard_min, align 1
  %conv24 = zext i16 %18 to i64
  %mul25 = mul nuw nsw i64 %conv24, 1000000
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %user = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 6
  %19 = ptrtoint ptr %user to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %user, align 1
  %conv28 = zext i16 %20 to i64
  %mul29 = mul nuw nsw i64 %conv28, 1000000
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %user_source = getelementptr %struct.caps_sensor_3, ptr %3, i32 %conv, i32 7
  %21 = ptrtoint ptr %user_source to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %user_source, align 1
  %conv31 = zext i8 %22 to i64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb14, %sw.bb10, %sw.bb7
  %val.0 = phi i64 [ %conv31, %sw.bb30 ], [ %mul29, %sw.bb26 ], [ %mul25, %sw.bb22 ], [ %mul21, %sw.bb18 ], [ %mul17, %sw.bb14 ], [ %mul13, %sw.bb10 ], [ %mul, %sw.bb7 ]
  %call32 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.58, i64 noundef %val.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call32, %sw.epilog ], [ %call6, %sw.bb ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_store_caps_user(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i = alloca [8 x i8], align 1
  %value = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %value, align 8, !annotation !146
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call1 = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %value) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %value, align 8
  %call2 = call i64 @div64_u64(i64 noundef %4, i64 noundef 1000000) #6
  %conv = trunc i64 %call2 to i16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #6
  %5 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %6 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %7 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %8 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %9 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %10 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %11 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %cmd.i, align 1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 34, ptr %5, align 1
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %6, align 1
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %7, align 1
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %conv, ptr %8, align 1
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %9, align 1
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %10, align 1
  %lock.i = getelementptr inbounds %struct.occ, ptr %2, i32 0, i32 7
  %call.i = call i32 @mutex_lock_interruptible_nested(ptr noundef %lock.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.occ_set_user_power_cap.exit_crit_edge

if.end.occ_set_user_power_cap.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %occ_set_user_power_cap.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %send_cmd.i = getelementptr inbounds %struct.occ, ptr %2, i32 0, i32 5
  %18 = ptrtoint ptr %send_cmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %send_cmd.i, align 4
  %call7.i = call i32 %19(ptr noundef %2, ptr noundef nonnull %cmd.i, i32 noundef 8) #6
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %occ_set_user_power_cap.exit

occ_set_user_power_cap.exit:                      ; preds = %if.end.i, %if.end.occ_set_user_power_cap.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i, %if.end.occ_set_user_power_cap.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  %count.call3 = select i1 %tobool4.not, i32 %count, i32 %retval.0.i
  br label %cleanup

cleanup:                                          ; preds = %occ_set_user_power_cap.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count.call3, %occ_set_user_power_cap.exit ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %value) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @occ_show_extended(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2 = tail call i32 @occ_update_response(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.occ, ptr %1, i32 0, i32 2, i32 4, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %add.ptr3 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %7, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb19
    i8 2, label %sw.bb23
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %flags = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool6.not = icmp sgt i8 %10, -1
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %add.ptr3, align 1
  %call9 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.65, i32 noundef %12) #6
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr3, align 1
  %conv10 = zext i8 %14 to i32
  %arrayidx11 = getelementptr [4 x i8], ptr %add.ptr3, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %arrayidx13 = getelementptr [4 x i8], ptr %add.ptr3, i32 0, i32 2
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %18 to i32
  %arrayidx15 = getelementptr [4 x i8], ptr %add.ptr3, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %20 to i32
  %call17 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.66, i32 noundef %conv10, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv16) #6
  br label %cleanup

sw.bb19:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %flags20 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 1
  %21 = ptrtoint ptr %flags20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %flags20, align 1
  %conv21 = zext i8 %22 to i32
  %call22 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.67, i32 noundef %conv21) #6
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %data24 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3
  %23 = ptrtoint ptr %data24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data24, align 1
  %conv26 = zext i8 %24 to i32
  %arrayidx28 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3, i32 1
  %25 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %26 to i32
  %arrayidx31 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3, i32 2
  %27 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %28 to i32
  %arrayidx34 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3, i32 3
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx34, align 1
  %conv35 = zext i8 %30 to i32
  %arrayidx37 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3, i32 4
  %31 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %32 to i32
  %arrayidx40 = getelementptr %struct.extended_sensor, ptr %3, i32 %conv, i32 3, i32 5
  %33 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %34 to i32
  %call42 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.68, i32 noundef %conv26, i32 noundef %conv29, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %sw.bb19, %if.else, %if.then7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call42, %sw.bb23 ], [ %call22, %sw.bb19 ], [ %call9, %if.then7 ], [ %call17, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !64, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @occ_setup.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/occ/common.c", i32 1143, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/occ/common.c", i32 1149, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @occ_setup._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @occ_setup._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/occ/common.c", i32 1152, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @occ_setup._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @occ_setup._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/occ/common.c", i32 1163, i32 3}
!18 = !{ptr @occ_setup._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @occ_setup._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/occ/common.c", i32 1172, i32 3}
!22 = !{ptr @occ_setup._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @occ_setup._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/occ/common.c", i32 1179, i32 3}
!26 = !{ptr @occ_setup._entry.16, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @occ_setup._entry_ptr.18, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @__ksymtab_occ_setup, !29, !"__ksymtab_occ_setup", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/occ/common.c", i32 1183, i32 1}
!30 = !{ptr @__UNIQUE_ID_author172, !31, !"__UNIQUE_ID_author172", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/occ/common.c", i32 1185, i32 1}
!32 = !{ptr @__UNIQUE_ID_description173, !33, !"__UNIQUE_ID_description173", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/occ/common.c", i32 1186, i32 1}
!34 = !{ptr @__UNIQUE_ID_file174, !35, !"__UNIQUE_ID_file174", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/occ/common.c", i32 1187, i32 1}
!36 = !{ptr @__UNIQUE_ID_license175, !35, !"__UNIQUE_ID_license175", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/occ/common.c", i32 1093, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @occ_parse_poll_response._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @occ_parse_poll_response._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/occ/common.c", i32 1105, i32 4}
!44 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @occ_parse_poll_response._entry.21, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @occ_parse_poll_response._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/occ/common.c", i32 1109, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @occ_parse_poll_response.__UNIQUE_ID_ddebug170, !48, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/occ/common.c", i32 1114, i32 42}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/occ/common.c", i32 1116, i32 47}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/occ/common.c", i32 1118, i32 47}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/occ/common.c", i32 1120, i32 47}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/occ/common.c", i32 1122, i32 47}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/occ/common.c", i32 1125, i32 4}
!63 = !{ptr @occ_parse_poll_response._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @occ_parse_poll_response._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/occ/common.c", i32 1135, i32 2}
!67 = !{ptr @occ_parse_poll_response.__UNIQUE_ID_ddebug171, !66, !"__UNIQUE_ID_ddebug171", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/occ/common.c", i32 873, i32 44}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/occ/common.c", i32 881, i32 6}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/occ/common.c", i32 884, i32 6}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/occ/common.c", i32 893, i32 6}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/occ/common.c", i32 899, i32 6}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/occ/common.c", i32 906, i32 7}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/occ/common.c", i32 918, i32 44}
!82 = !{ptr @.str.43, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/occ/common.c", i32 923, i32 44}
!84 = !{ptr @.str.44, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/occ/common.c", i32 942, i32 7}
!86 = !{ptr @.str.45, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/occ/common.c", i32 949, i32 7}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/occ/common.c", i32 956, i32 7}
!90 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/occ/common.c", i32 963, i32 7}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/occ/common.c", i32 1012, i32 44}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/occ/common.c", i32 1023, i32 5}
!96 = !{ptr @.str.50, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/occ/common.c", i32 1028, i32 44}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/occ/common.c", i32 1033, i32 44}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/occ/common.c", i32 1038, i32 44}
!102 = !{ptr @.str.53, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/occ/common.c", i32 1046, i32 6}
!104 = !{ptr @.str.54, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/occ/common.c", i32 1056, i32 44}
!106 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/occ/common.c", i32 1061, i32 44}
!108 = !{ptr @.str.56, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/occ/common.c", i32 1066, i32 44}
!110 = !{ptr @occ_setup_sensor_attrs.__key, !111, !"__key", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/occ/common.c", i32 1074, i32 3}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/occ/common.c", i32 260, i32 25}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/occ/common.c", i32 457, i32 25}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/occ/common.c", i32 605, i32 26}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/occ/common.c", i32 486, i32 26}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/occ/common.c", i32 525, i32 26}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/occ/common.c", i32 539, i32 26}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/occ/common.c", i32 553, i32 26}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/occ/common.c", i32 567, i32 26}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/occ/common.c", i32 725, i32 25}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/occ/common.c", i32 728, i32 25}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/occ/common.c", i32 734, i32 24}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/occ/common.c", i32 737, i32 24}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i64 2148303665, i64 2148303670, i64 2148303683, i64 2148303727, i64 2148303761, i64 2148303782}
!146 = !{!"auto-init"}
