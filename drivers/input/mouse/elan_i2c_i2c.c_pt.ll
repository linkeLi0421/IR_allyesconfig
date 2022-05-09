; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/elan_i2c_i2c.c_pt.bc'
source_filename = "../drivers/input/mouse/elan_i2c_i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.elan_transport_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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

@elan_i2c_ops = dso_local constant { %struct.elan_transport_ops, [36 x i8] } { %struct.elan_transport_ops { ptr @elan_i2c_initialize, ptr @elan_i2c_sleep_control, ptr @elan_i2c_power_control, ptr @elan_i2c_set_mode, ptr @elan_i2c_calibrate, ptr @elan_i2c_calibrate_result, ptr @elan_i2c_get_baseline_data, ptr @elan_i2c_get_version, ptr @elan_i2c_get_sm_version, ptr @elan_i2c_get_checksum, ptr @elan_i2c_get_product_id, ptr @elan_i2c_get_max, ptr @elan_i2c_get_resolution, ptr @elan_i2c_get_num_traces, ptr @elan_i2c_iap_get_mode, ptr @elan_i2c_iap_reset, ptr @elan_i2c_prepare_fw_update, ptr @elan_i2c_write_fw_block, ptr @elan_i2c_finish_fw_update, ptr @elan_i2c_get_report_features, ptr @elan_i2c_get_report, ptr @elan_i2c_get_pressure_adjustment, ptr @elan_i2c_get_pattern }, [36 x i8] zeroinitializer }, align 32
@elan_i2c_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"device reset failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elan_i2c_initialize\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/mouse/elan_i2c_i2c.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@elan_i2c_initialize._entry_ptr = internal global ptr @elan_i2c_initialize._entry, section ".printk_index", align 4
@elan_i2c_initialize._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 157, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read reset response: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@elan_i2c_initialize._entry_ptr.7 = internal global ptr @elan_i2c_initialize._entry.5, section ".printk_index", align 4
@elan_i2c_initialize._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cannot get device descriptor: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@elan_i2c_initialize._entry_ptr.10 = internal global ptr @elan_i2c_initialize._entry.8, section ".printk_index", align 4
@elan_i2c_initialize._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 171, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"fetching report descriptor failed.: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@elan_i2c_initialize._entry_ptr.13 = internal global ptr @elan_i2c_initialize._entry.11, section ".printk_index", align 4
@elan_i2c_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"writing cmd (0x%04x) failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elan_i2c_write_cmd\00", [45 x i8] zeroinitializer }, align 32
@elan_i2c_write_cmd._entry_ptr = internal global ptr @elan_i2c_write_cmd._entry, section ".printk_index", align 4
@elan_i2c_power_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to read current power state: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"elan_i2c_power_control\00", [41 x i8] zeroinitializer }, align 32
@elan_i2c_power_control._entry_ptr = internal global ptr @elan_i2c_power_control._entry, section ".printk_index", align 4
@elan_i2c_power_control._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 208, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to write current power state: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@elan_i2c_power_control._entry_ptr.20 = internal global ptr @elan_i2c_power_control._entry.18, section ".printk_index", align 4
@elan_i2c_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"reading cmd (0x%04x) fail.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"elan_i2c_read_cmd\00", [46 x i8] zeroinitializer }, align 32
@elan_i2c_read_cmd._entry_ptr = internal global ptr @elan_i2c_read_cmd._entry, section ".printk_index", align 4
@elan_i2c_get_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 287, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get %s version: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elan_i2c_get_version\00", [43 x i8] zeroinitializer }, align 32
@elan_i2c_get_version._entry_ptr = internal global ptr @elan_i2c_get_version._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IAP\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FW\00", [29 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 308, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get ic type: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_i2c_get_sm_version\00", [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry_ptr = internal global ptr @elan_i2c_get_sm_version._entry, section ".printk_index", align 4
@elan_i2c_get_sm_version._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 317, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get SM version: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry_ptr.31 = internal global ptr @elan_i2c_get_sm_version._entry.29, section ".printk_index", align 4
@elan_i2c_get_sm_version._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry_ptr.33 = internal global ptr @elan_i2c_get_sm_version._entry.32, section ".printk_index", align 4
@elan_i2c_get_sm_version._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 334, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry_ptr.35 = internal global ptr @elan_i2c_get_sm_version._entry.34, section ".printk_index", align 4
@elan_i2c_get_sm_version._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_sm_version._entry_ptr.37 = internal global ptr @elan_i2c_get_sm_version._entry.36, section ".printk_index", align 4
@elan_i2c_get_checksum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 379, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get %s checksum: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elan_i2c_get_checksum\00", [42 x i8] zeroinitializer }, align 32
@elan_i2c_get_checksum._entry_ptr = internal global ptr @elan_i2c_get_checksum._entry, section ".printk_index", align 4
@elan_i2c_get_product_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get product ID: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_i2c_get_product_id\00", [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_product_id._entry_ptr = internal global ptr @elan_i2c_get_product_id._entry, section ".printk_index", align 4
@elan_i2c_get_max._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get X dimension: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"elan_i2c_get_max\00", [47 x i8] zeroinitializer }, align 32
@elan_i2c_get_max._entry_ptr = internal global ptr @elan_i2c_get_max._entry, section ".printk_index", align 4
@elan_i2c_get_max._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get Y dimension: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@elan_i2c_get_max._entry_ptr.46 = internal global ptr @elan_i2c_get_max._entry.44, section ".printk_index", align 4
@elan_i2c_get_resolution._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 420, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get resolution: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_i2c_get_resolution\00", [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_resolution._entry_ptr = internal global ptr @elan_i2c_get_resolution._entry, section ".printk_index", align 4
@elan_i2c_get_num_traces._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 439, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get trace info: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_i2c_get_num_traces\00", [40 x i8] zeroinitializer }, align 32
@elan_i2c_get_num_traces._entry_ptr = internal global ptr @elan_i2c_get_num_traces._entry, section ".printk_index", align 4
@elan_i2c_iap_get_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.2, i32 480, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to read iap control register: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"elan_i2c_iap_get_mode\00", [42 x i8] zeroinitializer }, align 32
@elan_i2c_iap_get_mode._entry_ptr = internal global ptr @elan_i2c_iap_get_mode._entry, section ".printk_index", align 4
@elan_i2c_iap_get_mode.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 0, i8 121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"elan_i2c\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iap control reg: 0x%04x.\0A\00", [38 x i8] zeroinitializer }, align 32
@elan_i2c_iap_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 499, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot reset IC: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"elan_i2c_iap_reset\00", [45 x i8] zeroinitializer }, align 32
@elan_i2c_iap_reset._entry_ptr = internal global ptr @elan_i2c_iap_reset._entry, section ".printk_index", align 4
@elan_i2c_prepare_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 592, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wrong mode: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"elan_i2c_prepare_fw_update\00", [37 x i8] zeroinitializer }, align 32
@elan_i2c_prepare_fw_update._entry_ptr = internal global ptr @elan_i2c_prepare_fw_update._entry, section ".printk_index", align 4
@elan_i2c_prepare_fw_update._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 614, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot read iap password: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@elan_i2c_prepare_fw_update._entry_ptr.61 = internal global ptr @elan_i2c_prepare_fw_update._entry.59, section ".printk_index", align 4
@elan_i2c_prepare_fw_update._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wrong iap password: 0x%X\0A\00", [38 x i8] zeroinitializer }, align 32
@elan_i2c_prepare_fw_update._entry_ptr.64 = internal global ptr @elan_i2c_prepare_fw_update._entry.62, section ".printk_index", align 4
@elan_i2c_set_flash_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 513, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot set flash key: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"elan_i2c_set_flash_key\00", [41 x i8] zeroinitializer }, align 32
@elan_i2c_set_flash_key._entry_ptr = internal global ptr @elan_i2c_set_flash_key._entry, section ".printk_index", align 4
@elan_read_write_iap_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 532, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot write iap type: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"elan_read_write_iap_type\00", [39 x i8] zeroinitializer }, align 32
@elan_read_write_iap_type._entry_ptr = internal global ptr @elan_read_write_iap_type._entry, section ".printk_index", align 4
@elan_read_write_iap_type._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 540, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to read iap type register: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@elan_read_write_iap_type._entry_ptr.71 = internal global ptr @elan_read_write_iap_type._entry.69, section ".printk_index", align 4
@elan_read_write_iap_type.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.53, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iap type reg: 0x%04x\0A\00", [42 x i8] zeroinitializer }, align 32
@elan_read_write_iap_type._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.68, ptr @.str.2, i32 551, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot set iap type\0A\00", [43 x i8] zeroinitializer }, align 32
@elan_read_write_iap_type._entry_ptr.75 = internal global ptr @elan_read_write_iap_type._entry.73, section ".printk_index", align 4
@elan_i2c_write_fw_block._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to write page %d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"elan_i2c_write_fw_block\00", [40 x i8] zeroinitializer }, align 32
@elan_i2c_write_fw_block._entry_ptr = internal global ptr @elan_i2c_write_fw_block._entry, section ".printk_index", align 4
@elan_i2c_write_fw_block._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.77, ptr @.str.2, i32 658, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read IAP write result: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@elan_i2c_write_fw_block._entry_ptr.80 = internal global ptr @elan_i2c_write_fw_block._entry.78, section ".printk_index", align 4
@elan_i2c_write_fw_block._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.77, ptr @.str.2, i32 665, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IAP reports failed write: %04hx\0A\00", [63 x i8] zeroinitializer }, align 32
@elan_i2c_write_fw_block._entry_ptr.83 = internal global ptr @elan_i2c_write_fw_block._entry.81, section ".printk_index", align 4
@elan_i2c_finish_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.2, i32 687, ptr @.str.86, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"failed to read I2C data after FW WDT reset: %d (%d)\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"elan_i2c_finish_fw_update\00", [38 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@elan_i2c_finish_fw_update._entry_ptr = internal global ptr @elan_i2c_finish_fw_update._entry, section ".printk_index", align 4
@elan_i2c_finish_fw_update._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.85, ptr @.str.2, i32 695, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@elan_i2c_finish_fw_update._entry_ptr.88 = internal global ptr @elan_i2c_finish_fw_update._entry.87, section ".printk_index", align 4
@elan_i2c_finish_fw_update._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 698, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout waiting for device reset\0A\00", [62 x i8] zeroinitializer }, align 32
@elan_i2c_finish_fw_update._entry_ptr.91 = internal global ptr @elan_i2c_finish_fw_update._entry.89, section ".printk_index", align 4
@elan_i2c_finish_fw_update._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to read INT signal: %d (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@elan_i2c_finish_fw_update._entry_ptr.94 = internal global ptr @elan_i2c_finish_fw_update._entry.92, section ".printk_index", align 4
@elan_i2c_get_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 735, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to read report data: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"elan_i2c_get_report\00", [44 x i8] zeroinitializer }, align 32
@elan_i2c_get_report._entry_ptr = internal global ptr @elan_i2c_get_report._entry, section ".printk_index", align 4
@elan_i2c_get_report._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 742, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"wrong report length (%d vs %d expected)\0A\00", [55 x i8] zeroinitializer }, align 32
@elan_i2c_get_report._entry_ptr.99 = internal global ptr @elan_i2c_get_report._entry.97, section ".printk_index", align 4
@elan_i2c_get_pressure_adjustment._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 458, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get pressure format: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"elan_i2c_get_pressure_adjustment\00", [63 x i8] zeroinitializer }, align 32
@elan_i2c_get_pressure_adjustment._entry_ptr = internal global ptr @elan_i2c_get_pressure_adjustment._entry, section ".printk_index", align 4
@elan_i2c_get_pattern._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 256, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get pattern: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"elan_i2c_get_pattern\00", [43 x i8] zeroinitializer }, align 32
@elan_i2c_get_pattern._entry_ptr = internal global ptr @elan_i2c_get_pattern._entry, section ".printk_index", align 4
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"elan_i2c_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 749, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 147, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 157, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 164, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 171, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 131, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 192, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 206, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 106, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 286, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 307, i32 4 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 316, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 325, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 333, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 342, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 378, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 359, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 395, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 403, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 420, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 439, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 478, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 485, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 499, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 592, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 613, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 620, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 513, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 531, i32 4 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 538, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 544, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 551, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 649, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 658, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 664, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 686, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 695, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 698, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 710, i32 3 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 735, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 740, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 457, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private constant [38 x i8] c"../drivers/input/mouse/elan_i2c_i2c.c\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 256, i32 3 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @elan_i2c_finish_fw_update._entry, ptr @elan_i2c_finish_fw_update._entry.87, ptr @elan_i2c_finish_fw_update._entry.89, ptr @elan_i2c_finish_fw_update._entry.92, ptr @elan_i2c_finish_fw_update._entry_ptr, ptr @elan_i2c_finish_fw_update._entry_ptr.88, ptr @elan_i2c_finish_fw_update._entry_ptr.91, ptr @elan_i2c_finish_fw_update._entry_ptr.94, ptr @elan_i2c_get_checksum._entry, ptr @elan_i2c_get_checksum._entry_ptr, ptr @elan_i2c_get_max._entry, ptr @elan_i2c_get_max._entry.44, ptr @elan_i2c_get_max._entry_ptr, ptr @elan_i2c_get_max._entry_ptr.46, ptr @elan_i2c_get_num_traces._entry, ptr @elan_i2c_get_num_traces._entry_ptr, ptr @elan_i2c_get_pattern._entry, ptr @elan_i2c_get_pattern._entry_ptr, ptr @elan_i2c_get_pressure_adjustment._entry, ptr @elan_i2c_get_pressure_adjustment._entry_ptr, ptr @elan_i2c_get_product_id._entry, ptr @elan_i2c_get_product_id._entry_ptr, ptr @elan_i2c_get_report._entry, ptr @elan_i2c_get_report._entry.97, ptr @elan_i2c_get_report._entry_ptr, ptr @elan_i2c_get_report._entry_ptr.99, ptr @elan_i2c_get_resolution._entry, ptr @elan_i2c_get_resolution._entry_ptr, ptr @elan_i2c_get_sm_version._entry, ptr @elan_i2c_get_sm_version._entry.29, ptr @elan_i2c_get_sm_version._entry.32, ptr @elan_i2c_get_sm_version._entry.34, ptr @elan_i2c_get_sm_version._entry.36, ptr @elan_i2c_get_sm_version._entry_ptr, ptr @elan_i2c_get_sm_version._entry_ptr.31, ptr @elan_i2c_get_sm_version._entry_ptr.33, ptr @elan_i2c_get_sm_version._entry_ptr.35, ptr @elan_i2c_get_sm_version._entry_ptr.37, ptr @elan_i2c_get_version._entry, ptr @elan_i2c_get_version._entry_ptr, ptr @elan_i2c_iap_get_mode._entry, ptr @elan_i2c_iap_get_mode._entry_ptr, ptr @elan_i2c_iap_reset._entry, ptr @elan_i2c_iap_reset._entry_ptr, ptr @elan_i2c_initialize._entry, ptr @elan_i2c_initialize._entry.11, ptr @elan_i2c_initialize._entry.5, ptr @elan_i2c_initialize._entry.8, ptr @elan_i2c_initialize._entry_ptr, ptr @elan_i2c_initialize._entry_ptr.10, ptr @elan_i2c_initialize._entry_ptr.13, ptr @elan_i2c_initialize._entry_ptr.7, ptr @elan_i2c_power_control._entry, ptr @elan_i2c_power_control._entry.18, ptr @elan_i2c_power_control._entry_ptr, ptr @elan_i2c_power_control._entry_ptr.20, ptr @elan_i2c_prepare_fw_update._entry, ptr @elan_i2c_prepare_fw_update._entry.59, ptr @elan_i2c_prepare_fw_update._entry.62, ptr @elan_i2c_prepare_fw_update._entry_ptr, ptr @elan_i2c_prepare_fw_update._entry_ptr.61, ptr @elan_i2c_prepare_fw_update._entry_ptr.64, ptr @elan_i2c_read_cmd._entry, ptr @elan_i2c_read_cmd._entry_ptr, ptr @elan_i2c_set_flash_key._entry, ptr @elan_i2c_set_flash_key._entry_ptr, ptr @elan_i2c_write_cmd._entry, ptr @elan_i2c_write_cmd._entry_ptr, ptr @elan_i2c_write_fw_block._entry, ptr @elan_i2c_write_fw_block._entry.78, ptr @elan_i2c_write_fw_block._entry.81, ptr @elan_i2c_write_fw_block._entry_ptr, ptr @elan_i2c_write_fw_block._entry_ptr.80, ptr @elan_i2c_write_fw_block._entry_ptr.83, ptr @elan_read_write_iap_type._entry, ptr @elan_read_write_iap_type._entry.69, ptr @elan_read_write_iap_type._entry.73, ptr @elan_read_write_iap_type._entry_ptr, ptr @elan_read_write_iap_type._entry_ptr.71, ptr @elan_read_write_iap_type._entry_ptr.75, ptr @elan_i2c_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [107 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_initialize._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_initialize._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_initialize._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_power_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_power_control._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_sm_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_sm_version._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_sm_version._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_sm_version._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_sm_version._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_checksum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_product_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_max._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_max._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_resolution._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_num_traces._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_iap_get_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_iap_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_prepare_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_prepare_fw_update._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_prepare_fw_update._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_set_flash_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_read_write_iap_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_read_write_iap_type._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_read_write_iap_type._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_write_fw_block._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_write_fw_block._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_write_fw_block._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_finish_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_finish_fw_update._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_finish_fw_update._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_finish_fw_update._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_report._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_pressure_adjustment._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @elan_i2c_get_pattern._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_initialize(ptr noundef %client) #0 align 64 {
entry:
  %buf.i49 = alloca [1 x i16], align 2
  %msgs.i50 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i45 = alloca [1 x i16], align 2
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %val = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %val) #7
  %0 = call ptr @memset(ptr %val, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %1 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 1280, ptr %buf.i, align 2
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %1, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 327679, ptr %4, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %client, align 8
  %11 = and i16 %10, 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %elan_i2c_write_cmd.exit.thread, label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit.thread:                   ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @msleep(i32 noundef 100) #7
  %call.i44 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %cmp = icmp slt i32 %call.i44, 0
  br i1 %cmp, label %do.end6, label %if.end7

elan_i2c_write_cmd.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef %spec.store.select.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %spec.store.select.i) #10
  br label %cleanup

do.end6:                                          ; preds = %elan_i2c_write_cmd.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, i32 noundef %call.i44) #10
  br label %cleanup

if.end7:                                          ; preds = %elan_i2c_write_cmd.exit.thread
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i45) #7
  %16 = ptrtoint ptr %buf.i45 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 256, ptr %buf.i45, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %17 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %18 = call ptr @memset(ptr %17, i32 255, i32 16)
  %19 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %addr1.i, align 2
  %21 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %msgs.i, align 4
  %flags.i46 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %22 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %client, align 8
  %24 = and i16 %23, 16
  %25 = ptrtoint ptr %flags.i46 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %flags.i46, align 2
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2, ptr %17, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %27 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %buf.i45, ptr %buf6.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %28 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %20, ptr %arrayinit.element.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %29 = or i16 %24, 1
  %30 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %flags9.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %31 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 30, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %32 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %val, ptr %buf15.i, align 4
  %33 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i, align 8
  %call.i48 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i48)
  %cmp.i = icmp eq i32 %call.i48, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i45) #7
  br i1 %cmp.i, label %if.end15, label %do.end14

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp18.i = icmp slt i32 %call.i48, 0
  %spec.select.i = select i1 %cmp18.i, i32 %call.i48, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %spec.select.i) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i49) #7
  %35 = ptrtoint ptr %buf.i49 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 512, ptr %buf.i49, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i50) #7
  %36 = getelementptr inbounds i8, ptr %msgs.i50, i32 4
  %37 = call ptr @memset(ptr %36, i32 255, i32 16)
  %38 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %addr1.i, align 2
  %40 = ptrtoint ptr %msgs.i50 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %msgs.i50, align 4
  %flags.i52 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 0, i32 1
  %41 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %client, align 8
  %43 = and i16 %42, 16
  %44 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %flags.i52, align 2
  %45 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2, ptr %36, align 4
  %buf6.i54 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 0, i32 3
  %46 = ptrtoint ptr %buf6.i54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %buf.i49, ptr %buf6.i54, align 4
  %arrayinit.element.i55 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 1
  %47 = ptrtoint ptr %arrayinit.element.i55 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %39, ptr %arrayinit.element.i55, align 4
  %flags9.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 1, i32 1
  %48 = or i16 %43, 1
  %49 = ptrtoint ptr %flags9.i56 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %flags9.i56, align 2
  %len14.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 1, i32 2
  %50 = ptrtoint ptr %len14.i57 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 158, ptr %len14.i57, align 4
  %buf15.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i50, i32 1, i32 3
  %51 = ptrtoint ptr %buf15.i58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %val, ptr %buf15.i58, align 4
  %52 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter.i, align 8
  %call.i60 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msgs.i50, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i60)
  %cmp.i61 = icmp eq i32 %call.i60, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i50) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i49) #7
  br i1 %cmp.i61, label %if.end15.cleanup_crit_edge, label %do.end22

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp18.i62 = icmp slt i32 %call.i60, 0
  %spec.select.i63 = select i1 %cmp18.i62, i32 %call.i60, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %spec.select.i63) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end22, %if.end15.cleanup_crit_edge, %do.end14, %do.end6, %elan_i2c_write_cmd.exit
  %retval.0 = phi i32 [ %spec.store.select.i, %elan_i2c_write_cmd.exit ], [ %call.i44, %do.end6 ], [ %spec.select.i, %do.end14 ], [ %spec.select.i63, %do.end22 ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_sleep_control(ptr noundef %client, i1 noundef zeroext %sleep) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = select i1 %sleep, i16 2049, i16 2048
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 1280, ptr %buf.i, align 2
  %2 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 327679, ptr %4, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %client, align 8
  %11 = and i16 %10, 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.elan_i2c_write_cmd.exit_crit_edge, label %if.then.i

entry.elan_i2c_write_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %elan_i2c_write_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef %spec.store.select.i) #10
  br label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit:                          ; preds = %if.then.i, %entry.elan_i2c_write_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then.i ], [ 0, %entry.elan_i2c_write_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_power_control(ptr noundef %client, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [2 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1795, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %4 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr2.i.i, align 2
  %8 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %client, align 8
  %11 = and i16 %10, 16
  %12 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags.i.i, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 2, ptr %4, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %7, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %16 = or i16 %11, 1
  %17 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %20 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 775) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %val, align 2
  %24 = and i16 %23, -257
  %25 = call i16 @llvm.bswap.i16(i16 %24)
  %not.enable = xor i1 %enable, true
  %masksel = zext i1 %not.enable to i16
  %reg.0 = or i16 %25, %masksel
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %26 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %27 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1795, ptr %buf.i, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %reg.0) #7
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %26, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %30 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 327679, ptr %30, align 4
  %32 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %addr2.i.i, align 2
  %34 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %35 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %client, align 8
  %37 = and i16 %36, 16
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i, ptr %buf4.i, align 4
  %40 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %elan_i2c_write_cmd.exit.thread, label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit.thread:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %cleanup

elan_i2c_write_cmd.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  %dev.i29 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29, ptr noundef nonnull @.str.14, i32 noundef 775, i32 noundef %spec.store.select.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i29, ptr noundef nonnull @.str.19, i32 noundef %spec.store.select.i) #10
  br label %cleanup

cleanup:                                          ; preds = %elan_i2c_write_cmd.exit, %elan_i2c_write_cmd.exit.thread, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ %spec.store.select.i, %elan_i2c_write_cmd.exit ], [ 0, %elan_i2c_write_cmd.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_set_mode(ptr noundef %client, i8 noundef zeroext %mode) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %mode to i16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 3, ptr %buf.i, align 2
  %2 = shl nuw i16 %conv, 8
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %2, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 327679, ptr %4, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr1.i, align 2
  %8 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %client, align 8
  %11 = and i16 %10, 16
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %14 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.elan_i2c_write_cmd.exit_crit_edge, label %if.then.i

entry.elan_i2c_write_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %elan_i2c_write_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 768, i32 noundef %spec.store.select.i) #10
  br label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit:                          ; preds = %if.then.i, %entry.elan_i2c_write_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then.i ], [ 0, %entry.elan_i2c_write_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_calibrate(ptr noundef %client) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 5635, ptr %buf.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 256, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 327679, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %client, align 8
  %10 = and i16 %9, 16
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %entry.elan_i2c_write_cmd.exit_crit_edge, label %if.then.i

entry.elan_i2c_write_cmd.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %elan_i2c_write_cmd.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 790, i32 noundef %spec.store.select.i) #10
  br label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit:                          ; preds = %if.then.i, %entry.elan_i2c_write_cmd.exit_crit_edge
  %retval.0.i = phi i32 [ %spec.store.select.i, %if.then.i ], [ 0, %entry.elan_i2c_write_cmd.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_calibrate_result(ptr nocapture noundef readonly %client, ptr noundef %val) #0 align 64 {
entry:
  %buf.i = alloca [1 x i16], align 2
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 5635, ptr %buf.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %1 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %addr2.i, align 2
  %5 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %client, align 8
  %8 = and i16 %7, 16
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %flags.i, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %1, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i, ptr %buf6.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %4, ptr %arrayinit.element.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %13 = or i16 %8, 1
  %14 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags9.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %15 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %16 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %val, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp18.i, i32 %call.i, i32 -5
  %cond23.i = select i1 %cmp.i, i32 0, i32 %spec.select.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  ret i32 %cond23.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_baseline_data(ptr noundef %client, i1 noundef zeroext %max_baseline, ptr nocapture noundef writeonly %value) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  %conv = select i1 %max_baseline, i16 791, i16 792
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i.i, align 2
  %11 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %14 = and i16 %13, 16
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %7, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %10, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %19 = or i16 %14, 1
  %20 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i16 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val, align 2
  %27 = lshr i16 %26, 8
  %conv4 = trunc i16 %27 to i8
  %28 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4, ptr %value, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end ], [ %spec.select, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_version(ptr noundef %client, i8 noundef zeroext %pattern, i1 noundef zeroext %iap, ptr nocapture noundef writeonly %version) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pattern)
  %cmp = icmp eq i8 %pattern, 0
  %. = select i1 %cmp, i16 273, i16 272
  %cmd.0 = select i1 %iap, i16 %., i16 258
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = tail call i16 @llvm.bswap.i16(i16 %cmd.0) #7
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i.i, align 2
  %11 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %14 = and i16 %13, 16
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %7, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %10, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %19 = or i16 %14, 1
  %20 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end9, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i16 %cmd.0 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  %cond = select i1 %iap, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, i32 noundef %spec.select) #10
  br label %cleanup

if.end9:                                          ; preds = %entry
  br i1 %cmp, label %if.else21, label %if.then13

if.then13:                                        ; preds = %if.end9
  br i1 %iap, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  br label %if.end23

cond.false:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %val, align 1
  br label %if.end23

if.else21:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %val, align 1
  br label %if.end23

if.end23:                                         ; preds = %if.else21, %cond.false, %cond.true
  %storemerge = phi i8 [ %30, %if.else21 ], [ %26, %cond.true ], [ %28, %cond.false ]
  %31 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %storemerge, ptr %version, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end23 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_sm_version(ptr noundef %client, i8 noundef zeroext %pattern, ptr nocapture noundef writeonly %ic_type, ptr nocapture noundef writeonly %version, ptr nocapture noundef writeonly %clickpad) #0 align 64 {
entry:
  %buf.i.i133 = alloca [1 x i16], align 2
  %msgs.i.i134 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i115 = alloca [1 x i16], align 2
  %msgs.i.i116 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i97 = alloca [1 x i16], align 2
  %msgs.i.i98 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i79 = alloca [1 x i16], align 2
  %msgs.i.i80 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %pattern)
  %cmp.not = icmp eq i8 %pattern, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 769, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 259) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = ptrtoint ptr %ic_type to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ic_type, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i79) #7
  %27 = ptrtoint ptr %buf.i.i79 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1025, ptr %buf.i.i79, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i80) #7
  %28 = getelementptr inbounds i8, ptr %msgs.i.i80, i32 4
  %29 = call ptr @memset(ptr %28, i32 255, i32 16)
  %30 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr2.i.i, align 2
  %32 = ptrtoint ptr %msgs.i.i80 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %msgs.i.i80, align 4
  %flags.i.i82 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 0, i32 1
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %client, align 8
  %35 = and i16 %34, 16
  %36 = ptrtoint ptr %flags.i.i82 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %flags.i.i82, align 2
  %37 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %28, align 4
  %buf6.i.i83 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 0, i32 3
  %38 = ptrtoint ptr %buf6.i.i83 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %buf.i.i79, ptr %buf6.i.i83, align 4
  %arrayinit.element.i.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 1
  %39 = ptrtoint ptr %arrayinit.element.i.i84 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %31, ptr %arrayinit.element.i.i84, align 4
  %flags9.i.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 1, i32 1
  %40 = or i16 %35, 1
  %41 = ptrtoint ptr %flags9.i.i85 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %flags9.i.i85, align 2
  %len14.i.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 1, i32 2
  %42 = ptrtoint ptr %len14.i.i86 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 2, ptr %len14.i.i86, align 4
  %buf15.i.i87 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i80, i32 1, i32 3
  %43 = ptrtoint ptr %buf15.i.i87 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %val, ptr %buf15.i.i87, align 4
  %44 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i89 = call i32 @i2c_transfer(ptr noundef %45, ptr noundef nonnull %msgs.i.i80, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i89)
  %cmp.i.not.i90 = icmp eq i32 %call.i.i89, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i80) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i79) #7
  br i1 %cmp.i.not.i90, label %if.end13, label %do.end.i94

do.end.i94:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i89)
  %cmp18.i.i91 = icmp slt i32 %call.i.i89, 0
  %dev.i93 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i93, ptr noundef nonnull @.str.21, i32 noundef 260) #10
  %spec.select170 = select i1 %cmp18.i.i91, i32 %call.i.i89, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i93, ptr noundef nonnull @.str.30, i32 noundef %spec.select170) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %1, align 1
  %48 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %version, align 1
  br label %if.end51

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i97) #7
  %49 = ptrtoint ptr %buf.i.i97 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 769, ptr %buf.i.i97, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i98) #7
  %50 = getelementptr inbounds i8, ptr %msgs.i.i98, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 16)
  %addr2.i.i99 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %52 = ptrtoint ptr %addr2.i.i99 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr2.i.i99, align 2
  %54 = ptrtoint ptr %msgs.i.i98 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %msgs.i.i98, align 4
  %flags.i.i100 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 0, i32 1
  %55 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %client, align 8
  %57 = and i16 %56, 16
  %58 = ptrtoint ptr %flags.i.i100 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %57, ptr %flags.i.i100, align 2
  %59 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 2, ptr %50, align 4
  %buf6.i.i101 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 0, i32 3
  %60 = ptrtoint ptr %buf6.i.i101 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %buf.i.i97, ptr %buf6.i.i101, align 4
  %arrayinit.element.i.i102 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 1
  %61 = ptrtoint ptr %arrayinit.element.i.i102 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %53, ptr %arrayinit.element.i.i102, align 4
  %flags9.i.i103 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 1, i32 1
  %62 = or i16 %57, 1
  %63 = ptrtoint ptr %flags9.i.i103 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %flags9.i.i103, align 2
  %len14.i.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 1, i32 2
  %64 = ptrtoint ptr %len14.i.i104 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2, ptr %len14.i.i104, align 4
  %buf15.i.i105 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i98, i32 1, i32 3
  %65 = ptrtoint ptr %buf15.i.i105 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %val, ptr %buf15.i.i105, align 4
  %adapter.i.i106 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %66 = ptrtoint ptr %adapter.i.i106 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adapter.i.i106, align 8
  %call.i.i107 = call i32 @i2c_transfer(ptr noundef %67, ptr noundef nonnull %msgs.i.i98, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i107)
  %cmp.i.not.i108 = icmp eq i32 %call.i.i107, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i98) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i97) #7
  br i1 %cmp.i.not.i108, label %if.end25, label %do.end.i112

do.end.i112:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i107)
  %cmp18.i.i109 = icmp slt i32 %call.i.i107, 0
  %dev.i111 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i111, ptr noundef nonnull @.str.21, i32 noundef 259) #10
  %spec.select171 = select i1 %cmp18.i.i109, i32 %call.i.i107, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i111, ptr noundef nonnull @.str.30, i32 noundef %spec.select171) #10
  br label %cleanup

if.end25:                                         ; preds = %if.else
  %68 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %val, align 2
  %70 = ptrtoint ptr %version to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %version, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i115) #7
  %71 = ptrtoint ptr %buf.i.i115 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 4097, ptr %buf.i.i115, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i116) #7
  %72 = getelementptr inbounds i8, ptr %msgs.i.i116, i32 4
  %73 = call ptr @memset(ptr %72, i32 255, i32 16)
  %74 = ptrtoint ptr %addr2.i.i99 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr2.i.i99, align 2
  %76 = ptrtoint ptr %msgs.i.i116 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %msgs.i.i116, align 4
  %flags.i.i118 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 0, i32 1
  %77 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %client, align 8
  %79 = and i16 %78, 16
  %80 = ptrtoint ptr %flags.i.i118 to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %79, ptr %flags.i.i118, align 2
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 2, ptr %72, align 4
  %buf6.i.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 0, i32 3
  %82 = ptrtoint ptr %buf6.i.i119 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %buf.i.i115, ptr %buf6.i.i119, align 4
  %arrayinit.element.i.i120 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 1
  %83 = ptrtoint ptr %arrayinit.element.i.i120 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %75, ptr %arrayinit.element.i.i120, align 4
  %flags9.i.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 1, i32 1
  %84 = or i16 %79, 1
  %85 = ptrtoint ptr %flags9.i.i121 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %flags9.i.i121, align 2
  %len14.i.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 1, i32 2
  %86 = ptrtoint ptr %len14.i.i122 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 2, ptr %len14.i.i122, align 4
  %buf15.i.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i116, i32 1, i32 3
  %87 = ptrtoint ptr %buf15.i.i123 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %val, ptr %buf15.i.i123, align 4
  %88 = ptrtoint ptr %adapter.i.i106 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adapter.i.i106, align 8
  %call.i.i125 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msgs.i.i116, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i125)
  %cmp.i.not.i126 = icmp eq i32 %call.i.i125, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i116) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i115) #7
  br i1 %cmp.i.not.i126, label %if.end35, label %do.end.i130

do.end.i130:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i125)
  %cmp18.i.i127 = icmp slt i32 %call.i.i125, 0
  %dev.i129 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i129, ptr noundef nonnull @.str.21, i32 noundef 272) #10
  %spec.select172 = select i1 %cmp18.i.i127, i32 %call.i.i125, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i129, ptr noundef nonnull @.str.27, i32 noundef %spec.select172) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  %90 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %val, align 2
  %conv37 = zext i8 %91 to i16
  %92 = ptrtoint ptr %ic_type to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv37, ptr %ic_type, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i133) #7
  %93 = ptrtoint ptr %buf.i.i133 to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 1025, ptr %buf.i.i133, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i134) #7
  %94 = getelementptr inbounds i8, ptr %msgs.i.i134, i32 4
  %95 = call ptr @memset(ptr %94, i32 255, i32 16)
  %96 = ptrtoint ptr %addr2.i.i99 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %addr2.i.i99, align 2
  %98 = ptrtoint ptr %msgs.i.i134 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %msgs.i.i134, align 4
  %flags.i.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 0, i32 1
  %99 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %client, align 8
  %101 = and i16 %100, 16
  %102 = ptrtoint ptr %flags.i.i136 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 %101, ptr %flags.i.i136, align 2
  %103 = ptrtoint ptr %94 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 2, ptr %94, align 4
  %buf6.i.i137 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 0, i32 3
  %104 = ptrtoint ptr %buf6.i.i137 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %buf.i.i133, ptr %buf6.i.i137, align 4
  %arrayinit.element.i.i138 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 1
  %105 = ptrtoint ptr %arrayinit.element.i.i138 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %97, ptr %arrayinit.element.i.i138, align 4
  %flags9.i.i139 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 1, i32 1
  %106 = or i16 %101, 1
  %107 = ptrtoint ptr %flags9.i.i139 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %flags9.i.i139, align 2
  %len14.i.i140 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 1, i32 2
  %108 = ptrtoint ptr %len14.i.i140 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 2, ptr %len14.i.i140, align 4
  %buf15.i.i141 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i134, i32 1, i32 3
  %109 = ptrtoint ptr %buf15.i.i141 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %val, ptr %buf15.i.i141, align 4
  %110 = ptrtoint ptr %adapter.i.i106 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter.i.i106, align 8
  %call.i.i143 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %msgs.i.i134, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i143)
  %cmp.i.not.i144 = icmp eq i32 %call.i.i143, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i134) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i133) #7
  br i1 %cmp.i.not.i144, label %if.end35.if.end51_crit_edge, label %do.end.i148

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end.i148:                                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp18.i.i145 = icmp slt i32 %call.i.i143, 0
  %dev.i147 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i147, ptr noundef nonnull @.str.21, i32 noundef 260) #10
  %spec.select173 = select i1 %cmp18.i.i145, i32 %call.i.i143, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i147, ptr noundef nonnull @.str.30, i32 noundef %spec.select173) #10
  br label %cleanup

if.end51:                                         ; preds = %if.end35.if.end51_crit_edge, %if.end13
  %112 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %112)
  %storemerge.in = load i8, ptr %val, align 2
  %storemerge = and i8 %storemerge.in, 16
  %113 = ptrtoint ptr %clickpad to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %storemerge, ptr %clickpad, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %do.end.i148, %do.end.i130, %do.end.i112, %do.end.i94, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ %spec.select170, %do.end.i94 ], [ 0, %if.end51 ], [ %spec.select171, %do.end.i112 ], [ %spec.select172, %do.end.i130 ], [ %spec.select173, %do.end.i148 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_checksum(ptr noundef %client, i1 noundef zeroext %iap, ptr nocapture noundef writeonly %csum) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  %conv = select i1 %iap, i16 789, i16 783
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv) #7
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %7 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i.i, align 2
  %11 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %14 = and i16 %13, 16
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags.i.i, align 2
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %7, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %18 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %10, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %19 = or i16 %14, 1
  %20 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %23 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i16 %conv to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  %cond4 = select i1 %iap, ptr @.str.25, ptr @.str.26
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond4, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %val, align 2
  %27 = call i16 @llvm.bswap.i16(i16 %26) #7
  %28 = ptrtoint ptr %csum to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %csum, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_product_id(ptr noundef %client, ptr nocapture noundef writeonly %id) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 257, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 257) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_max(ptr noundef %client, ptr nocapture noundef writeonly %max_x, ptr nocapture noundef writeonly %max_y) #0 align 64 {
entry:
  %buf.i.i24 = alloca [1 x i16], align 2
  %msgs.i.i25 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1537, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 262) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %conv = zext i16 %26 to i32
  %27 = ptrtoint ptr %max_x to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %max_x, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i24) #7
  %28 = ptrtoint ptr %buf.i.i24 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1793, ptr %buf.i.i24, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i25) #7
  %29 = getelementptr inbounds i8, ptr %msgs.i.i25, i32 4
  %30 = call ptr @memset(ptr %29, i32 255, i32 16)
  %31 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr2.i.i, align 2
  %33 = ptrtoint ptr %msgs.i.i25 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %msgs.i.i25, align 4
  %flags.i.i27 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 0, i32 1
  %34 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %client, align 8
  %36 = and i16 %35, 16
  %37 = ptrtoint ptr %flags.i.i27 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %flags.i.i27, align 2
  %38 = ptrtoint ptr %29 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 2, ptr %29, align 4
  %buf6.i.i28 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 0, i32 3
  %39 = ptrtoint ptr %buf6.i.i28 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i.i24, ptr %buf6.i.i28, align 4
  %arrayinit.element.i.i29 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 1
  %40 = ptrtoint ptr %arrayinit.element.i.i29 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %32, ptr %arrayinit.element.i.i29, align 4
  %flags9.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 1, i32 1
  %41 = or i16 %36, 1
  %42 = ptrtoint ptr %flags9.i.i30 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %flags9.i.i30, align 2
  %len14.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 1, i32 2
  %43 = ptrtoint ptr %len14.i.i31 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len14.i.i31, align 4
  %buf15.i.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i25, i32 1, i32 3
  %44 = ptrtoint ptr %buf15.i.i32 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %val, ptr %buf15.i.i32, align 4
  %45 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i34 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msgs.i.i25, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i34)
  %cmp.i.not.i35 = icmp eq i32 %call.i.i34, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i25) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i24) #7
  br i1 %cmp.i.not.i35, label %if.end11, label %do.end.i39

do.end.i39:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i34)
  %cmp18.i.i36 = icmp slt i32 %call.i.i34, 0
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.21, i32 noundef 263) #10
  %spec.select49 = select i1 %cmp18.i.i36, i32 %call.i.i34, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.45, i32 noundef %spec.select49) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %val, align 2
  %49 = call i16 @llvm.bswap.i16(i16 %48) #7
  %conv14 = zext i16 %49 to i32
  %50 = ptrtoint ptr %max_y to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv14, ptr %max_y, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.i39, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ %spec.select49, %do.end.i39 ], [ 0, %if.end11 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_resolution(ptr noundef %client, ptr nocapture noundef writeonly %hw_res_x, ptr nocapture noundef writeonly %hw_res_y) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2049, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 264) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %26 = ptrtoint ptr %hw_res_x to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %hw_res_x, align 1
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %29 = ptrtoint ptr %hw_res_y to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %hw_res_y, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_num_traces(ptr noundef %client, ptr nocapture noundef writeonly %x_traces, ptr nocapture noundef writeonly %y_traces) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1281, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 261) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %conv = zext i8 %25 to i32
  %26 = ptrtoint ptr %x_traces to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv, ptr %x_traces, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %conv2 = zext i8 %28 to i32
  %29 = ptrtoint ptr %y_traces to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv2, ptr %y_traces, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_iap_get_mode(ptr noundef %client, ptr nocapture noundef writeonly %mode) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 4099, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 784) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.51, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %val, align 2
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_i2c_iap_get_mode.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_i2c_iap_get_mode, %if.then8)) #7
          to label %do.end12 [label %if.then8], !srcloc !202

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i16 %26 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_i2c_iap_get_mode.__UNIQUE_ID_ddebug288, ptr noundef %dev9, ptr noundef nonnull @.str.54, i32 noundef %conv) #7
  br label %do.end12

do.end12:                                         ; preds = %if.then8, %if.end
  %27 = and i16 %26, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool14.not = icmp eq i16 %27, 0
  %cond = select i1 %tobool14.not, i32 1, i32 2
  %28 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cond, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %do.end12 ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_iap_reset(ptr noundef %client) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %0 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 5123, ptr %buf.i, align 2
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -3856, ptr %0, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %3 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 327679, ptr %3, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr1.i, align 2
  %7 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %client, align 8
  %10 = and i16 %9, 16
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %elan_i2c_write_cmd.exit.thread, label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %cleanup

elan_i2c_write_cmd.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14, i32 noundef 788, i32 noundef %spec.store.select.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.55, i32 noundef %spec.store.select.i) #10
  br label %cleanup

cleanup:                                          ; preds = %elan_i2c_write_cmd.exit, %elan_i2c_write_cmd.exit.thread
  %retval.0 = phi i32 [ %spec.store.select.i, %elan_i2c_write_cmd.exit ], [ 0, %elan_i2c_write_cmd.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_prepare_fw_update(ptr noundef %client, i16 noundef zeroext %ic_type, i8 noundef zeroext %iap_version, i16 noundef zeroext %fw_page_size) #0 align 64 {
entry:
  %buf.i.i95 = alloca [2 x i16], align 2
  %msg.i.i96 = alloca %struct.i2c_msg, align 4
  %buf.i.i81 = alloca [2 x i16], align 2
  %msg.i.i82 = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i16], align 2
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %mode = alloca i32, align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %mode, align 4, !annotation !201
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 2, !annotation !201
  %2 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !201
  %4 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 2, !annotation !201
  %call = call i32 @elan_i2c_iap_get_mode(ptr noundef %client, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %8 = getelementptr inbounds [2 x i16], ptr %buf.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 5123, ptr %buf.i.i, align 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -3856, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %11, align 4
  %addr1.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i.i, align 2
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = and i16 %17, 16
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i.i, ptr %buf4.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %21 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %elan_i2c_iap_reset.exit.thread, label %elan_i2c_iap_reset.exit

elan_i2c_iap_reset.exit.thread:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @msleep(i32 noundef 30) #7
  br label %if.end7

elan_i2c_iap_reset.exit:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp6.i.i = icmp sgt i32 %call.i.i, -1
  %spec.store.select.i.i = select i1 %cmp6.i.i, i32 -5, i32 %call.i.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 788, i32 noundef %spec.store.select.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55, i32 noundef %spec.store.select.i.i) #10
  br label %cleanup

if.end7:                                          ; preds = %elan_i2c_iap_reset.exit.thread, %if.end.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i81) #7
  %23 = getelementptr inbounds [2 x i16], ptr %buf.i.i81, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i.i81 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 4355, ptr %buf.i.i81, align 2
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -23266, ptr %23, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i82) #7
  %26 = getelementptr inbounds i8, ptr %msg.i.i82, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 327679, ptr %26, align 4
  %addr1.i.i83 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %28 = ptrtoint ptr %addr1.i.i83 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr1.i.i83, align 2
  %30 = ptrtoint ptr %msg.i.i82 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %msg.i.i82, align 4
  %flags.i.i84 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i82, i32 0, i32 1
  %31 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %client, align 8
  %33 = and i16 %32, 16
  %34 = ptrtoint ptr %flags.i.i84 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %flags.i.i84, align 2
  %buf4.i.i85 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i82, i32 0, i32 3
  %35 = ptrtoint ptr %buf4.i.i85 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i.i81, ptr %buf4.i.i85, align 4
  %adapter.i.i86 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %36 = ptrtoint ptr %adapter.i.i86 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adapter.i.i86, align 8
  %call.i.i87 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i.i82, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i87)
  %cmp.not.i.i88 = icmp eq i32 %call.i.i87, 1
  br i1 %cmp.not.i.i88, label %elan_i2c_set_flash_key.exit.thread, label %elan_i2c_set_flash_key.exit

elan_i2c_set_flash_key.exit.thread:               ; preds = %if.end7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i82) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i81) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp12 = icmp eq i32 %7, 2
  %cond = select i1 %cmp12, i32 100, i32 30
  call void @msleep(i32 noundef %cond) #7
  %call13 = call i32 @elan_i2c_iap_get_mode(ptr noundef %client, ptr noundef nonnull %mode)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %elan_i2c_set_flash_key.exit.thread.cleanup_crit_edge

elan_i2c_set_flash_key.exit.thread.cleanup_crit_edge: ; preds = %elan_i2c_set_flash_key.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

elan_i2c_set_flash_key.exit:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i87)
  %cmp6.i.i90 = icmp sgt i32 %call.i.i87, -1
  %spec.store.select.i.i91 = select i1 %cmp6.i.i90, i32 -5, i32 %call.i.i87
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 785, i32 noundef %spec.store.select.i.i91) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i82) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i81) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %spec.store.select.i.i91) #10
  br label %cleanup

if.end16:                                         ; preds = %elan_i2c_set_flash_key.exit.thread
  %38 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp17 = icmp eq i32 %39, 2
  br i1 %cmp17, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef 2) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 13, i16 %ic_type)
  %cmp20 = icmp ult i16 %ic_type, 13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %iap_version)
  %cmp23.not = icmp eq i8 %iap_version, 0
  %or.cond = or i1 %cmp20, %cmp23.not
  br i1 %or.cond, label %if.end19.if.end30_crit_edge, label %if.then25

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end19
  %call26 = call fastcc i32 @elan_read_write_iap_type(ptr noundef %client, i16 noundef zeroext %fw_page_size)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then25.if.end30_crit_edge, label %if.then25.cleanup_crit_edge

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25.if.end30_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25.if.end30_crit_edge, %if.end19.if.end30_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i95) #7
  %40 = getelementptr inbounds [2 x i16], ptr %buf.i.i95, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i.i95 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 4355, ptr %buf.i.i95, align 2
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -23266, ptr %40, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i96) #7
  %43 = getelementptr inbounds i8, ptr %msg.i.i96, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 327679, ptr %43, align 4
  %45 = ptrtoint ptr %addr1.i.i83 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %addr1.i.i83, align 2
  %47 = ptrtoint ptr %msg.i.i96 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %msg.i.i96, align 4
  %flags.i.i98 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i96, i32 0, i32 1
  %48 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %client, align 8
  %50 = and i16 %49, 16
  %51 = ptrtoint ptr %flags.i.i98 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %flags.i.i98, align 2
  %buf4.i.i99 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i96, i32 0, i32 3
  %52 = ptrtoint ptr %buf4.i.i99 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %buf.i.i95, ptr %buf4.i.i99, align 4
  %53 = ptrtoint ptr %adapter.i.i86 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adapter.i.i86, align 8
  %call.i.i101 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i.i96, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i101)
  %cmp.not.i.i102 = icmp eq i32 %call.i.i101, 1
  br i1 %cmp.not.i.i102, label %elan_i2c_set_flash_key.exit109.thread, label %elan_i2c_set_flash_key.exit109

elan_i2c_set_flash_key.exit109.thread:            ; preds = %if.end30
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i95) #7
  call void @msleep(i32 noundef 30) #7
  %call35 = call fastcc i32 @elan_i2c_read_cmd(ptr noundef %client, i16 noundef zeroext 785, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end41, label %do.end40

elan_i2c_set_flash_key.exit109:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i101)
  %cmp6.i.i104 = icmp sgt i32 %call.i.i101, -1
  %spec.store.select.i.i105 = select i1 %cmp6.i.i104, i32 -5, i32 %call.i.i101
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 785, i32 noundef %spec.store.select.i.i105) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i96) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i95) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %spec.store.select.i.i105) #10
  br label %cleanup

do.end40:                                         ; preds = %elan_i2c_set_flash_key.exit109.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.60, i32 noundef %call35) #10
  br label %cleanup

if.end41:                                         ; preds = %elan_i2c_set_flash_key.exit109.thread
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %val, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -23266, i16 %56)
  %cmp45.not = icmp eq i16 %56, -23266
  br i1 %cmp45.not, label %if.end41.cleanup_crit_edge, label %do.end50

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %57 = call i16 @llvm.bswap.i16(i16 %56) #7
  %conv44 = zext i16 %57 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.63, i32 noundef %conv44) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end50, %if.end41.cleanup_crit_edge, %do.end40, %elan_i2c_set_flash_key.exit109, %if.then25.cleanup_crit_edge, %do.end, %elan_i2c_set_flash_key.exit, %elan_i2c_set_flash_key.exit.thread.cleanup_crit_edge, %elan_i2c_iap_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %call35, %do.end40 ], [ -5, %do.end50 ], [ %call, %entry.cleanup_crit_edge ], [ %spec.store.select.i.i, %elan_i2c_iap_reset.exit ], [ %spec.store.select.i.i91, %elan_i2c_set_flash_key.exit ], [ %call13, %elan_i2c_set_flash_key.exit.thread.cleanup_crit_edge ], [ %call26, %if.then25.cleanup_crit_edge ], [ %spec.store.select.i.i105, %elan_i2c_set_flash_key.exit109 ], [ 0, %if.end41.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_write_fw_block(ptr noundef %client, i16 noundef zeroext %fw_page_size, ptr nocapture noundef readonly %page, i16 noundef zeroext %checksum, i32 noundef %idx) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  %conv = zext i16 %fw_page_size to i32
  %add = add nuw nsw i32 %conv, 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #11
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %call9.i, align 128
  %arrayidx2 = getelementptr i8, ptr %call9.i, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %arrayidx2, align 1
  %arrayidx3 = getelementptr i8, ptr %call9.i, i32 2
  %7 = call ptr @memcpy(ptr %arrayidx3, ptr %page, i32 %conv)
  %add6 = add nuw nsw i32 %conv, 2
  %arrayidx7 = getelementptr i8, ptr %call9.i, i32 %add6
  %8 = tail call i16 @llvm.bswap.i16(i16 %checksum) #7
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %8, ptr %arrayidx7, align 1
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %call9.i, i32 noundef %add, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp.not = icmp eq i32 %call.i, %add
  br i1 %cmp.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp15 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp15, i32 %call.i, i32 -5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.76, i32 noundef %idx, i32 noundef %spec.select) #10
  br label %exit

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %fw_page_size)
  %cmp19 = icmp eq i16 %fw_page_size, 512
  %cond21 = select i1 %cmp19, i32 50, i32 35
  tail call void @msleep(i32 noundef %cond21) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 4099, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %11 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr2.i.i, align 2
  %15 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = and i16 %17, 16
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags.i.i, align 2
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %11, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %14, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %23 = or i16 %18, 1
  %24 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %23, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %25 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %27 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end28, label %do.end.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i65 = icmp slt i32 %call.i.i, 0
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 784) #10
  %spec.select70 = select i1 %cmp18.i.i65, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79, i32 noundef %spec.select70) #10
  br label %exit

if.end28:                                         ; preds = %if.end17
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %val, align 2
  %31 = call i16 @llvm.bswap.i16(i16 %30) #7
  %conv31 = zext i16 %31 to i32
  %and = and i32 %conv31, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end28.exit_crit_edge, label %do.end36

if.end28.exit_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.82, i32 noundef %conv31) #10
  br label %exit

exit:                                             ; preds = %do.end36, %if.end28.exit_crit_edge, %do.end.i, %if.then14
  %error.0 = phi i32 [ %spec.select, %if.then14 ], [ %spec.select70, %do.end.i ], [ -5, %do.end36 ], [ 0, %if.end28.exit_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_finish_fw_update(ptr noundef %client, ptr noundef %completion) #0 align 64 {
entry:
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %buffer = alloca [39 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 39, ptr nonnull %buffer) #7
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 39)
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 39, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %cmp2.not, i32 -5, i32 %call.i
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.84, i32 noundef %spec.select, i32 noundef %call.i) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %1 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %completion, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %3) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %4 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1280, ptr %buf.i, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 1, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 327679, ptr %7, align 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr1.i, align 2
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %client, align 8
  %14 = and i16 %13, 16
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf4.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %17 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter.i, align 8
  %call.i60 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60)
  %cmp.not.i = icmp eq i32 %call.i60, 1
  br i1 %cmp.not.i, label %elan_i2c_write_cmd.exit.thread, label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit.thread:                   ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %call9 = call i32 @wait_for_completion_timeout(ptr noundef %completion, i32 noundef 30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.end14, label %if.end20

elan_i2c_write_cmd.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i60)
  %cmp6.i = icmp sgt i32 %call.i60, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 5, i32 noundef %spec.store.select.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %spec.store.select.i) #10
  br label %if.end16.thread

do.end14:                                         ; preds = %elan_i2c_write_cmd.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.90) #10
  br label %if.end16.thread

if.end16.thread:                                  ; preds = %do.end14, %elan_i2c_write_cmd.exit
  %error.0.ph = phi i32 [ -110, %do.end14 ], [ %spec.store.select.i, %elan_i2c_write_cmd.exit ]
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %20) #7
  br label %cleanup

if.end20:                                         ; preds = %elan_i2c_write_cmd.exit.thread
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %22) #7
  %call.i61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 2, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i61)
  %cmp23.not = icmp eq i32 %call.i61, 2
  br i1 %cmp23.not, label %if.end20.cleanup_crit_edge, label %if.then24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %cmp25 = icmp slt i32 %call.i61, 0
  %spec.select59 = select i1 %cmp25, i32 %call.i61, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.93, i32 noundef %spec.select59, i32 noundef %call.i61) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end20.cleanup_crit_edge, %if.end16.thread
  %retval.0 = phi i32 [ %spec.select59, %if.then24 ], [ 0, %if.end20.cleanup_crit_edge ], [ %error.0.ph, %if.end16.thread ]
  call void @llvm.lifetime.end.p0(i64 39, ptr nonnull %buffer) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @elan_i2c_get_report_features(ptr nocapture noundef readnone %client, i8 noundef zeroext %pattern, ptr nocapture noundef writeonly %features, ptr nocapture noundef writeonly %report_len) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %features, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %pattern)
  %cmp = icmp ult i8 %pattern, 2
  %cond = select i1 %cmp, i32 34, i32 39
  %1 = ptrtoint ptr %report_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cond, ptr %report_len, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_report(ptr noundef %client, ptr noundef %report, i32 noundef %report_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef %report, i32 noundef %report_len, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %report_len)
  %cmp1.not = icmp eq i32 %call.i, %report_len
  br i1 %cmp1.not, label %if.end.cleanup_crit_edge, label %do.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6, ptr noundef nonnull @.str.98, i32 noundef %call.i, i32 noundef %report_len) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -5, %do.end5 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_pressure_adjustment(ptr noundef %client, ptr nocapture noundef writeonly %adjustment) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 2561, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 266) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.100, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  %26 = and i8 %25, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool1.not = icmp eq i8 %26, 0
  %. = select i1 %tobool1.not, i32 25, i32 0
  %27 = ptrtoint ptr %adjustment to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %adjustment, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %if.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elan_i2c_get_pattern(ptr noundef %client, ptr nocapture noundef writeonly %pattern) #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %val = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !201
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %6 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %addr2.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr2.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr2.i.i, align 2
  %10 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %msgs.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 16
  %14 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %flags.i.i, align 2
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 2, ptr %6, align 4
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %17 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %9, ptr %arrayinit.element.i.i, align 4
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %18 = or i16 %13, 1
  %19 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags9.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %20 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %21 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %val, ptr %buf15.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %22 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %23, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end, label %do.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef 256) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.102, i32 noundef %spec.select) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %val, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp = icmp eq i8 %25, -1
  br i1 %cmp, label %land.lhs.true, label %if.end.cond.false_crit_edge

if.end.cond.false_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true:                                    ; preds = %if.end
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %27)
  %cmp4 = icmp eq i8 %27, -1
  br i1 %cmp4, label %land.lhs.true.cond.end_crit_edge, label %land.lhs.true.cond.false_crit_edge

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true.cond.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %if.end.cond.false_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %land.lhs.true.cond.end_crit_edge
  %cond = phi i8 [ %29, %cond.false ], [ 0, %land.lhs.true.cond.end_crit_edge ]
  %30 = ptrtoint ptr %pattern to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %cond, ptr %pattern, align 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end.i
  %retval.0 = phi i32 [ %spec.select, %do.end.i ], [ 0, %cond.end ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_i2c_read_cmd(ptr noundef %client, i16 noundef zeroext %reg, ptr noundef %val) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [1 x i16], align 2
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %0 = tail call i16 @llvm.bswap.i16(i16 %reg) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 %0, ptr %buf.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %2 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %addr2.i, align 2
  %6 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %client, align 8
  %9 = and i16 %8, 16
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %flags.i, align 2
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %2, align 4
  %buf6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf6.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %13 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %5, ptr %arrayinit.element.i, align 4
  %flags9.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %14 = or i16 %9, 1
  %15 = ptrtoint ptr %flags9.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %flags9.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %16 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %val, ptr %buf15.i, align 4
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %18 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp18.i = icmp slt i32 %call.i, 0
  %spec.select.i = select i1 %cmp18.i, i32 %call.i, i32 -5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i16 %reg to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @elan_read_write_iap_type(ptr noundef %client, i16 noundef zeroext %fw_page_size) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [1 x i16], align 2
  %msgs.i.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i16], align 2
  %msg.i = alloca %struct.i2c_msg, align 4
  %val = alloca [3 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 2, !annotation !201
  %1 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !201
  %3 = getelementptr inbounds [3 x i8], ptr %val, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 2, !annotation !201
  %5 = lshr i16 %fw_page_size, 1
  %6 = getelementptr inbounds [2 x i16], ptr %buf.i, i32 0, i32 1
  %7 = call i16 @llvm.bswap.i16(i16 %5) #7
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %addr1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %9 = getelementptr inbounds i8, ptr %msgs.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 1
  %buf6.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 0, i32 3
  %arrayinit.element.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1
  %flags9.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 2
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i.i, i32 1, i32 3
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %do.cond30.do.body_crit_edge, %entry
  %retry.0 = phi i32 [ 3, %entry ], [ %dec, %do.cond30.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 1027, ptr %buf.i, align 2
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %7, ptr %6, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #7
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 327679, ptr %8, align 4
  %13 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr1.i, align 2
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %msg.i, align 4
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %client, align 8
  %18 = and i16 %17, 16
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %flags.i, align 2
  %20 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %buf4.i, align 4
  %21 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter.i, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %elan_i2c_write_cmd.exit.thread, label %elan_i2c_write_cmd.exit

elan_i2c_write_cmd.exit.thread:                   ; preds = %do.body
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %23 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1027, ptr %buf.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i.i) #7
  %24 = call ptr @memset(ptr %9, i32 255, i32 16)
  %25 = ptrtoint ptr %addr1.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr1.i, align 2
  %27 = ptrtoint ptr %msgs.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %msgs.i.i, align 4
  %28 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %client, align 8
  %30 = and i16 %29, 16
  %31 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %flags.i.i, align 2
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 2, ptr %9, align 4
  %33 = ptrtoint ptr %buf6.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i.i, ptr %buf6.i.i, align 4
  %34 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %26, ptr %arrayinit.element.i.i, align 4
  %35 = or i16 %30, 1
  %36 = ptrtoint ptr %flags9.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %flags9.i.i, align 2
  %37 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %len14.i.i, align 4
  %38 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %val, ptr %buf15.i.i, align 4
  %39 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adapter.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msgs.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.i.not.i = icmp eq i32 %call.i.i, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br i1 %cmp.i.not.i, label %if.end10, label %do.end.i

elan_i2c_write_cmd.exit:                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, -1
  %spec.store.select.i = select i1 %cmp6.i, i32 -5, i32 %call.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.14, i32 noundef 772, i32 noundef %spec.store.select.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.67, i32 noundef %spec.store.select.i) #10
  br label %cleanup

do.end.i:                                         ; preds = %elan_i2c_write_cmd.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp18.i.i = icmp slt i32 %call.i.i, 0
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.21, i32 noundef 772) #10
  %spec.select = select i1 %cmp18.i.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.70, i32 noundef %spec.select) #10
  br label %cleanup

if.end10:                                         ; preds = %elan_i2c_write_cmd.exit.thread
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %val, align 2
  %43 = call i16 @llvm.bswap.i16(i16 %42) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @elan_read_write_iap_type.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@elan_read_write_iap_type, %if.then18)) #7
          to label %do.end23 [label %if.then18], !srcloc !202

if.then18:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %conv20 = zext i16 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @elan_read_write_iap_type.__UNIQUE_ID_ddebug289, ptr noundef %dev19, ptr noundef nonnull @.str.72, i32 noundef %conv20) #7
  br label %do.end23

do.end23:                                         ; preds = %if.then18, %if.end10
  call void @__sanitizer_cov_trace_cmp2(i16 %43, i16 %5)
  %cmp = icmp eq i16 %43, %5
  br i1 %cmp, label %do.end23.cleanup_crit_edge, label %do.cond30

do.end23.cleanup_crit_edge:                       ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.cond30:                                        ; preds = %do.end23
  %dec = add nsw i32 %retry.0, -1
  %cmp31.not = icmp eq i32 %dec, 0
  br i1 %cmp31.not, label %do.end36, label %do.cond30.do.body_crit_edge

do.cond30.do.body_crit_edge:                      ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end36:                                         ; preds = %do.cond30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.74) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %do.end23.cleanup_crit_edge, %do.end.i, %elan_i2c_write_cmd.exit
  %retval.0 = phi i32 [ %spec.store.select.i, %elan_i2c_write_cmd.exit ], [ %spec.select, %do.end.i ], [ -5, %do.end36 ], [ 0, %do.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 107)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @elan_i2c_ops, !1, !"elan_i2c_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 749, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 147, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @elan_i2c_initialize._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @elan_i2c_initialize._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 157, i32 3}
!12 = !{ptr @elan_i2c_initialize._entry.5, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @elan_i2c_initialize._entry_ptr.7, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 164, i32 3}
!16 = !{ptr @elan_i2c_initialize._entry.8, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @elan_i2c_initialize._entry_ptr.10, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 171, i32 3}
!20 = !{ptr @elan_i2c_initialize._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @elan_i2c_initialize._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 131, i32 3}
!24 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @elan_i2c_write_cmd._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @elan_i2c_write_cmd._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 192, i32 3}
!29 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @elan_i2c_power_control._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @elan_i2c_power_control._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.19, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 206, i32 3}
!34 = !{ptr @elan_i2c_power_control._entry.18, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @elan_i2c_power_control._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 106, i32 3}
!38 = !{ptr @.str.22, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @elan_i2c_read_cmd._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @elan_i2c_read_cmd._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.23, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 286, i32 3}
!43 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @elan_i2c_get_version._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @elan_i2c_get_version._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 307, i32 4}
!50 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @elan_i2c_get_sm_version._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @elan_i2c_get_sm_version._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 316, i32 4}
!55 = !{ptr @elan_i2c_get_sm_version._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @elan_i2c_get_sm_version._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @elan_i2c_get_sm_version._entry.32, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 325, i32 4}
!59 = !{ptr @elan_i2c_get_sm_version._entry_ptr.33, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @elan_i2c_get_sm_version._entry.34, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 333, i32 4}
!62 = !{ptr @elan_i2c_get_sm_version._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @elan_i2c_get_sm_version._entry.36, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 342, i32 4}
!65 = !{ptr @elan_i2c_get_sm_version._entry_ptr.37, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.38, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 378, i32 3}
!68 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @elan_i2c_get_checksum._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @elan_i2c_get_checksum._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 359, i32 3}
!73 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @elan_i2c_get_product_id._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @elan_i2c_get_product_id._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 395, i32 3}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @elan_i2c_get_max._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @elan_i2c_get_max._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 403, i32 3}
!83 = !{ptr @elan_i2c_get_max._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @elan_i2c_get_max._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.47, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 420, i32 3}
!87 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @elan_i2c_get_resolution._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @elan_i2c_get_resolution._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 439, i32 3}
!92 = !{ptr @.str.50, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @elan_i2c_get_num_traces._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @elan_i2c_get_num_traces._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 478, i32 3}
!97 = !{ptr @.str.52, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @elan_i2c_iap_get_mode._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @elan_i2c_iap_get_mode._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 485, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @elan_i2c_iap_get_mode.__UNIQUE_ID_ddebug288, !101, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 499, i32 3}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @elan_i2c_iap_reset._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @elan_i2c_iap_reset._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 592, i32 3}
!111 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @elan_i2c_prepare_fw_update._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @elan_i2c_prepare_fw_update._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 613, i32 3}
!116 = !{ptr @elan_i2c_prepare_fw_update._entry.59, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @elan_i2c_prepare_fw_update._entry_ptr.61, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 620, i32 3}
!120 = !{ptr @elan_i2c_prepare_fw_update._entry.62, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @elan_i2c_prepare_fw_update._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 513, i32 3}
!124 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @elan_i2c_set_flash_key._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @elan_i2c_set_flash_key._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.67, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 531, i32 4}
!129 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @elan_read_write_iap_type._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @elan_read_write_iap_type._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 538, i32 4}
!134 = !{ptr @elan_read_write_iap_type._entry.69, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @elan_read_write_iap_type._entry_ptr.71, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.72, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 544, i32 3}
!138 = !{ptr @elan_read_write_iap_type.__UNIQUE_ID_ddebug289, !137, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!139 = !{ptr @.str.74, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 551, i32 2}
!141 = !{ptr @elan_read_write_iap_type._entry.73, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @elan_read_write_iap_type._entry_ptr.75, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 649, i32 3}
!145 = !{ptr @.str.77, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @elan_i2c_write_fw_block._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @elan_i2c_write_fw_block._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 658, i32 3}
!150 = !{ptr @elan_i2c_write_fw_block._entry.78, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @elan_i2c_write_fw_block._entry_ptr.80, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.82, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 664, i32 3}
!154 = !{ptr @elan_i2c_write_fw_block._entry.81, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @elan_i2c_write_fw_block._entry_ptr.83, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.84, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 686, i32 3}
!158 = !{ptr @.str.85, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @elan_i2c_finish_fw_update._entry, !157, !"_entry", i1 false, i1 false}
!161 = !{ptr @elan_i2c_finish_fw_update._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @elan_i2c_finish_fw_update._entry.87, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 695, i32 3}
!164 = !{ptr @elan_i2c_finish_fw_update._entry_ptr.88, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 698, i32 3}
!167 = !{ptr @elan_i2c_finish_fw_update._entry.89, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @elan_i2c_finish_fw_update._entry_ptr.91, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.93, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 710, i32 3}
!171 = !{ptr @elan_i2c_finish_fw_update._entry.92, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @elan_i2c_finish_fw_update._entry_ptr.94, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.95, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 735, i32 3}
!175 = !{ptr @.str.96, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @elan_i2c_get_report._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @elan_i2c_get_report._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.98, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 740, i32 3}
!180 = !{ptr @elan_i2c_get_report._entry.97, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @elan_i2c_get_report._entry_ptr.99, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.100, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 457, i32 3}
!184 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @elan_i2c_get_pressure_adjustment._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @elan_i2c_get_pressure_adjustment._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.102, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/mouse/elan_i2c_i2c.c", i32 256, i32 3}
!189 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @elan_i2c_get_pattern._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @elan_i2c_get_pattern._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"auto-init"}
!202 = !{i64 2148331858, i64 2148331863, i64 2148331876, i64 2148331920, i64 2148331954, i64 2148331975}
