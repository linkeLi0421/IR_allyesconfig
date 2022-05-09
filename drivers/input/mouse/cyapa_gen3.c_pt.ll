; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/cyapa_gen3.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cyapa_cmd_len = type { i8, i8 }
%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.cyapa_cmd_states = type { %struct.cyapa_pip_cmd_states }
%struct.cyapa_pip_cmd_states = type { %struct.mutex, %struct.completion, %struct.atomic_t, i8, i8, ptr, ptr, ptr, i32, %struct.mutex, [256 x i8], [256 x i8] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.firmware = type { i32, ptr, ptr }
%struct.cyapa_reg_data = type { i8, i8, [5 x %struct.cyapa_touch] }
%struct.cyapa_touch = type { i8, i8, i8, i8, i8 }
%struct.gen3_write_block_cmd = type { i8, i8, [8 x i8], i16, [64 x i8], i8, i8 }

@cyapa_smbus_cmds = internal constant { [15 x %struct.cyapa_cmd_len], [34 x i8] } { [15 x %struct.cyapa_cmd_len] [%struct.cyapa_cmd_len { i8 0, i8 1 }, %struct.cyapa_cmd_len { i8 2, i8 1 }, %struct.cyapa_cmd_len { i8 4, i8 1 }, %struct.cyapa_cmd_len { i8 -128, i8 27 }, %struct.cyapa_cmd_len { i8 -112, i8 2 }, %struct.cyapa_cmd_len { i8 -104, i8 27 }, %struct.cyapa_cmd_len { i8 -64, i8 3 }, %struct.cyapa_cmd_len { i8 -62, i8 16 }, %struct.cyapa_cmd_len { i8 -60, i8 16 }, %struct.cyapa_cmd_len { i8 -58, i8 16 }, %struct.cyapa_cmd_len { i8 -56, i8 32 }, %struct.cyapa_cmd_len { i8 -54, i8 16 }, %struct.cyapa_cmd_len { i8 -52, i8 16 }, %struct.cyapa_cmd_len { i8 6, i8 1 }, %struct.cyapa_cmd_len { i8 8, i8 1 }], [34 x i8] zeroinitializer }, align 32
@cyapa_i2c_cmds = internal constant { [15 x %struct.cyapa_cmd_len], [34 x i8] } { [15 x %struct.cyapa_cmd_len] [%struct.cyapa_cmd_len { i8 40, i8 1 }, %struct.cyapa_cmd_len { i8 41, i8 1 }, %struct.cyapa_cmd_len { i8 0, i8 1 }, %struct.cyapa_cmd_len { i8 0, i8 27 }, %struct.cyapa_cmd_len { i8 40, i8 0 }, %struct.cyapa_cmd_len { i8 42, i8 27 }, %struct.cyapa_cmd_len { i8 0, i8 3 }, %struct.cyapa_cmd_len { i8 0, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 16 }, %struct.cyapa_cmd_len { i8 16, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 32 }, %struct.cyapa_cmd_len { i8 42, i8 16 }, %struct.cyapa_cmd_len { i8 0, i8 32 }, %struct.cyapa_cmd_len { i8 38, i8 1 }, %struct.cyapa_cmd_len { i8 39, i8 1 }], [34 x i8] zeroinitializer }, align 32
@cyapa_gen3_ops = dso_local constant { %struct.cyapa_dev_ops, [32 x i8] } { %struct.cyapa_dev_ops { ptr @cyapa_gen3_check_fw, ptr @cyapa_gen3_bl_enter, ptr @cyapa_gen3_bl_activate, ptr @cyapa_gen3_bl_initiate, ptr @cyapa_gen3_do_fw_update, ptr @cyapa_gen3_bl_deactivate, ptr @cyapa_gen3_show_baseline, ptr @cyapa_gen3_do_calibrate, ptr @cyapa_gen3_initialize, ptr @cyapa_gen3_state_parse, ptr @cyapa_gen3_do_operational_check, ptr @cyapa_gen3_irq_handler, ptr @cyapa_gen3_irq_cmd_handler, ptr @cyapa_gen3_empty_output_data, ptr @cyapa_gen3_set_power_mode, ptr @cyapa_gen3_set_proximity }, [32 x i8] zeroinitializer }, align 32
@cyapa_gen3_check_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"invalid firmware size = %zu, expected %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cyapa_gen3_check_fw\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/mouse/cyapa_gen3.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyapa_gen3_check_fw._entry_ptr = internal global ptr @cyapa_gen3_check_fw._entry, section ".printk_index", align 4
@cyapa_gen3_check_fw._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 583, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s %04x, expected: %04x\0A\00", [39 x i8] zeroinitializer }, align 32
@cyapa_gen3_check_fw._entry_ptr.7 = internal global ptr @cyapa_gen3_check_fw._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"invalid firmware header checksum = \00", [60 x i8] zeroinitializer }, align 32
@cyapa_gen3_check_fw._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 595, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyapa_gen3_check_fw._entry_ptr.10 = internal global ptr @cyapa_gen3_check_fw._entry.9, section ".printk_index", align 4
@bl_activate = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\FF8\00\01\02\03\04\05\06\07", [21 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 728, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FW update aborted, write image: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyapa_gen3_do_fw_update\00", [40 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_fw_update._entry_ptr = internal global ptr @cyapa_gen3_do_fw_update._entry, section ".printk_index", align 4
@cyapa_gen3_do_fw_update._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"FW update aborted, write checksum: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_fw_update._entry_ptr.15 = internal global ptr @cyapa_gen3_do_fw_update._entry.13, section ".printk_index", align 4
@bl_deactivate = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\FF;\00\01\02\03\04\05\06\07", [21 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error reading dev status. err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cyapa_gen3_show_baseline\00", [39 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr = internal global ptr @cyapa_gen3_show_baseline._entry, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 814, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Trackpad device is busy. device state = 0x%x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.21 = internal global ptr @cyapa_gen3_show_baseline._entry.18, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 823, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to send report baseline command. %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.24 = internal global ptr @cyapa_gen3_show_baseline._entry.22, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 834, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.26 = internal global ptr @cyapa_gen3_show_baseline._entry.25, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.17, ptr @.str.2, i32 842, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device timed out going to Normal state.\0A\00", [55 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.29 = internal global ptr @cyapa_gen3_show_baseline._entry.27, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.17, ptr @.str.2, i32 849, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read max baseline. err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.32 = internal global ptr @cyapa_gen3_show_baseline._entry.30, section ".printk_index", align 4
@cyapa_gen3_show_baseline._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.17, ptr @.str.2, i32 856, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read min baseline. err = %d\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_gen3_show_baseline._entry_ptr.35 = internal global ptr @cyapa_gen3_show_baseline._entry.33, section ".printk_index", align 4
@cyapa_gen3_show_baseline.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.17, ptr @.str.2, ptr @.str.37, i8 0, i8 -41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cyapatp\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Baseline report successful. Max: %d Min: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error reading dev status: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyapa_gen3_do_calibrate\00", [40 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry_ptr = internal global ptr @cyapa_gen3_do_calibrate._entry, section ".printk_index", align 4
@cyapa_gen3_do_calibrate._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.2, i32 759, ptr @.str.20, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Trackpad device is busy, device state: 0x%02x\0A\00", [49 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry_ptr.43 = internal global ptr @cyapa_gen3_do_calibrate._entry.41, section ".printk_index", align 4
@cyapa_gen3_do_calibrate._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.40, ptr @.str.2, i32 768, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to send calibrate command: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry_ptr.46 = internal global ptr @cyapa_gen3_do_calibrate._entry.44, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cyapa_gen3_do_calibrate._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 783, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry_ptr.48 = internal global ptr @cyapa_gen3_do_calibrate._entry.47, section ".printk_index", align 4
@cyapa_gen3_do_calibrate.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.36, ptr @.str.40, ptr @.str.2, ptr @.str.49, i8 0, i8 -60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Calibration successful.\0A\00", [39 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.40, ptr @.str.2, i32 792, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to calibrate. Timeout.\0A\00", [33 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_calibrate._entry_ptr.52 = internal global ptr @cyapa_gen3_do_calibrate._entry.50, section ".printk_index", align 4
@cyapa_gen3_do_operational_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 1067, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to bl_deactivate: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cyapa_gen3_do_operational_check\00", [32 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_operational_check._entry_ptr = internal global ptr @cyapa_gen3_do_operational_check._entry, section ".printk_index", align 4
@cyapa_gen3_do_operational_check._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 1078, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to bl_exit: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_operational_check._entry_ptr.57 = internal global ptr @cyapa_gen3_do_operational_check._entry.55, section ".printk_index", align 4
@cyapa_gen3_do_operational_check._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 1092, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: set full power mode failed: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_operational_check._entry_ptr.60 = internal global ptr @cyapa_gen3_do_operational_check._entry.58, section ".printk_index", align 4
@cyapa_gen3_do_operational_check._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 1100, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported protocol version (%d)\00", [62 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_operational_check._entry_ptr.63 = internal global ptr @cyapa_gen3_do_operational_check._entry.61, section ".printk_index", align 4
@product_id = external dso_local constant [0 x i8], align 1
@cyapa_gen3_do_operational_check._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 1108, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported product ID (%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@cyapa_gen3_do_operational_check._entry_ptr.66 = internal global ptr @cyapa_gen3_do_operational_check._entry.64, section ".printk_index", align 4
@bl_exit = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\00\FF\A5\00\01\02\03\04\05\06\07", [21 x i8] zeroinitializer }, align 32
@cyapa_gen3_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 1191, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to read report data, (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyapa_gen3_irq_handler\00", [41 x i8] zeroinitializer }, align 32
@cyapa_gen3_irq_handler._entry_ptr = internal global ptr @cyapa_gen3_irq_handler._entry, section ".printk_index", align 4
@cyapa_gen3_irq_handler._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1199, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid device state bytes: %02x %02x\0A\00", [57 x i8] zeroinitializer }, align 32
@cyapa_gen3_irq_handler._entry_ptr.71 = internal global ptr @cyapa_gen3_irq_handler._entry.69, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 252]
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"cyapa_smbus_cmds\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 208, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"cyapa_i2c_cmds\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 188, i32 35 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"cyapa_gen3_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1236, i32 28 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 572, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 581, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 593, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"bl_activate\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 131, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 728, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 737, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"bl_deactivate\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 133, i32 17 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 809, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 813, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 822, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 833, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 842, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 849, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 856, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 861, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 863, i32 34 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 754, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 758, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 767, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 783, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 787, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 792, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1067, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1078, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1091, i32 4 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1099, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1107, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant [8 x i8] c"bl_exit\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 135, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1191, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private constant [36 x i8] c"../drivers/input/mouse/cyapa_gen3.c\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.271, i32 1198, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @cyapa_gen3_check_fw._entry, ptr @cyapa_gen3_check_fw._entry.5, ptr @cyapa_gen3_check_fw._entry.9, ptr @cyapa_gen3_check_fw._entry_ptr, ptr @cyapa_gen3_check_fw._entry_ptr.10, ptr @cyapa_gen3_check_fw._entry_ptr.7, ptr @cyapa_gen3_do_calibrate._entry, ptr @cyapa_gen3_do_calibrate._entry.41, ptr @cyapa_gen3_do_calibrate._entry.44, ptr @cyapa_gen3_do_calibrate._entry.47, ptr @cyapa_gen3_do_calibrate._entry.50, ptr @cyapa_gen3_do_calibrate._entry_ptr, ptr @cyapa_gen3_do_calibrate._entry_ptr.43, ptr @cyapa_gen3_do_calibrate._entry_ptr.46, ptr @cyapa_gen3_do_calibrate._entry_ptr.48, ptr @cyapa_gen3_do_calibrate._entry_ptr.52, ptr @cyapa_gen3_do_fw_update._entry, ptr @cyapa_gen3_do_fw_update._entry.13, ptr @cyapa_gen3_do_fw_update._entry_ptr, ptr @cyapa_gen3_do_fw_update._entry_ptr.15, ptr @cyapa_gen3_do_operational_check._entry, ptr @cyapa_gen3_do_operational_check._entry.55, ptr @cyapa_gen3_do_operational_check._entry.58, ptr @cyapa_gen3_do_operational_check._entry.61, ptr @cyapa_gen3_do_operational_check._entry.64, ptr @cyapa_gen3_do_operational_check._entry_ptr, ptr @cyapa_gen3_do_operational_check._entry_ptr.57, ptr @cyapa_gen3_do_operational_check._entry_ptr.60, ptr @cyapa_gen3_do_operational_check._entry_ptr.63, ptr @cyapa_gen3_do_operational_check._entry_ptr.66, ptr @cyapa_gen3_irq_handler._entry, ptr @cyapa_gen3_irq_handler._entry.69, ptr @cyapa_gen3_irq_handler._entry_ptr, ptr @cyapa_gen3_irq_handler._entry_ptr.71, ptr @cyapa_gen3_show_baseline._entry, ptr @cyapa_gen3_show_baseline._entry.18, ptr @cyapa_gen3_show_baseline._entry.22, ptr @cyapa_gen3_show_baseline._entry.25, ptr @cyapa_gen3_show_baseline._entry.27, ptr @cyapa_gen3_show_baseline._entry.30, ptr @cyapa_gen3_show_baseline._entry.33, ptr @cyapa_gen3_show_baseline._entry_ptr, ptr @cyapa_gen3_show_baseline._entry_ptr.21, ptr @cyapa_gen3_show_baseline._entry_ptr.24, ptr @cyapa_gen3_show_baseline._entry_ptr.26, ptr @cyapa_gen3_show_baseline._entry_ptr.29, ptr @cyapa_gen3_show_baseline._entry_ptr.32, ptr @cyapa_gen3_show_baseline._entry_ptr.35, ptr @cyapa_smbus_cmds, ptr @cyapa_i2c_cmds, ptr @cyapa_gen3_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @bl_activate, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @bl_deactivate, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.45, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @bl_exit, ptr @.str.67, ptr @.str.68, ptr @.str.70], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_smbus_cmds to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_i2c_cmds to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_check_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_check_fw._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_check_fw._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_activate to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_fw_update._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_deactivate to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_show_baseline._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_calibrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_calibrate._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_calibrate._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_calibrate._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_calibrate._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_operational_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_operational_check._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_operational_check._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_operational_check._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_do_operational_check._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bl_exit to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen3_irq_handler._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_smbus_read_block(ptr nocapture noundef readonly %cyapa, i8 noundef zeroext %cmd, i32 noundef %len, ptr noundef %values) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  %conv = zext i8 %cmd to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and3 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %for.cond.preheader, label %if.then5

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp45.not = icmp eq i32 %len, 0
  br i1 %cmp45.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i8 %cmd, 1
  %call = tail call i32 @i2c_smbus_read_block_data(ptr noundef %1, i8 noundef zeroext %or, ptr noundef %values) #10
  br label %out

for.cond:                                         ; preds = %for.body
  %inc = add i8 %index.046, 1
  %conv9 = zext i8 %inc to i32
  %mul = shl nuw nsw i32 %conv9, 5
  %cmp = icmp ult i32 %mul, %len
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %mul47 = phi i32 [ %mul, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %index.046 = phi i8 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %and13 = shl i8 %index.046, 1
  %shl = and i8 %and13, 6
  %or14 = or i8 %shl, %cmd
  %2 = or i8 %or14, 1
  %add.ptr = getelementptr i8, ptr %values, i32 %mul47
  %call21 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %1, i8 noundef zeroext %2, ptr noundef %add.ptr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out:                                              ; preds = %for.cond.out_crit_edge, %if.then5
  %ret.1 = phi i32 [ %call, %if.then5 ], [ %call21, %for.cond.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp26 = icmp sgt i32 %ret.1, 0
  %spec.select = select i1 %cmp26, i32 %len, i32 %ret.1
  br label %cleanup

cleanup:                                          ; preds = %out, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %spec.select, %out ], [ %call21, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_reg_read_block(ptr nocapture noundef readonly %cyapa, i8 noundef zeroext %reg, i32 noundef %len, ptr noundef %values) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %conv = trunc i32 %len to i8
  %call = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext %conv, ptr noundef %values) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_read_block(ptr nocapture noundef readonly %cyapa, i8 noundef zeroext %cmd_idx, ptr noundef %values) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %smbus = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 8
  %0 = ptrtoint ptr %smbus to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %smbus, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %idxprom5 = zext i8 %cmd_idx to i32
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_smbus_cmds, i32 0, i32 %idxprom5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %len4 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_smbus_cmds, i32 0, i32 %idxprom5, i32 1
  %4 = ptrtoint ptr %len4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len4, align 1
  %conv = zext i8 %5 to i32
  %client1.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %6 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client1.i, align 4
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %and3.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i.for.body.i_crit_edge, label %if.then5.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i8 %3, 1
  %call.i = tail call i32 @i2c_smbus_read_block_data(ptr noundef %7, i8 noundef zeroext %or.i, ptr noundef %values) #10
  br label %out.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i8 %index.046.i, 1
  %conv9.i = zext i8 %inc.i to i32
  %mul.i = shl nuw nsw i32 %conv9.i, 5
  %cmp.i = icmp ult i32 %mul.i, %conv
  br i1 %cmp.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.out.i_crit_edge

for.cond.i.out.i_crit_edge:                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %mul47.i = phi i32 [ %mul.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %index.046.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %and13.i = shl i8 %index.046.i, 1
  %shl.i = and i8 %and13.i, 6
  %or14.i = or i8 %3, %shl.i
  %8 = or i8 %or14.i, 1
  %add.ptr.i = getelementptr i8, ptr %values, i32 %mul47.i
  %call21.i = tail call i32 @i2c_smbus_read_block_data(ptr noundef %7, i8 noundef zeroext %8, ptr noundef %add.ptr.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.i = icmp slt i32 %call21.i, 0
  br i1 %cmp22.i, label %for.body.i.cleanup_crit_edge, label %for.cond.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

out.i:                                            ; preds = %for.cond.i.out.i_crit_edge, %if.then5.i
  %ret.1.i = phi i32 [ %call.i, %if.then5.i ], [ %call21.i, %for.cond.i.out.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp26.i = icmp sgt i32 %ret.1.i, 0
  %spec.select.i = select i1 %cmp26.i, i32 %conv, i32 %ret.1.i
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx6 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_i2c_cmds, i32 0, i32 %idxprom5
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx6, align 1
  %len10 = getelementptr [15 x %struct.cyapa_cmd_len], ptr @cyapa_i2c_cmds, i32 0, i32 %idxprom5, i32 1
  %11 = ptrtoint ptr %len10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len10, align 1
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %call.i22 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %14, i8 noundef zeroext %10, i8 noundef zeroext %12, ptr noundef %values) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %out.i, %for.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i22, %if.end ], [ -22, %if.then.cleanup_crit_edge ], [ %spec.select.i, %out.i ], [ %call21.i, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_check_fw(ptr nocapture noundef readonly %cyapa, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30848, i32 %3)
  %cmp.not = icmp eq i32 %3, 30848
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %3, i32 noundef 30848) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i32
  %arrayidx4 = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %9 to i32
  %arrayidx8 = getelementptr i8, ptr %5, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %csum.08.i = phi i16 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %arrayidx.i = getelementptr i8, ptr %arrayidx8, i32 %i.07.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %11 to i16
  %add.i = add i16 %csum.08.i, %conv.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 126
  br i1 %exitcond.not.i, label %cyapa_gen3_csum.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cyapa_gen3_csum.exit:                             ; preds = %for.body.i
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv5
  %conv9 = zext i16 %add.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv9)
  %cmp11.not = icmp eq i32 %or, %conv9
  br i1 %cmp11.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %cyapa_gen3_csum.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %conv9, i32 noundef %or) #13
  br label %cleanup

if.end19:                                         ; preds = %cyapa_gen3_csum.exit
  %arrayidx21 = getelementptr i8, ptr %5, i32 126
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %13 to i32
  %arrayidx25 = getelementptr i8, ptr %5, i32 127
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx25, align 1
  %conv26 = zext i8 %15 to i32
  %arrayidx30 = getelementptr i8, ptr %5, i32 128
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.body.i67.for.body.i67_crit_edge, %if.end19
  %csum.08.i60 = phi i16 [ %add.i64, %for.body.i67.for.body.i67_crit_edge ], [ 0, %if.end19 ]
  %i.07.i61 = phi i32 [ %inc.i65, %for.body.i67.for.body.i67_crit_edge ], [ 0, %if.end19 ]
  %arrayidx.i62 = getelementptr i8, ptr %arrayidx30, i32 %i.07.i61
  %16 = ptrtoint ptr %arrayidx.i62 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i62, align 1
  %conv.i63 = zext i8 %17 to i16
  %add.i64 = add i16 %csum.08.i60, %conv.i63
  %inc.i65 = add nuw nsw i32 %i.07.i61, 1
  %exitcond.not.i66 = icmp eq i32 %inc.i65, 30720
  br i1 %exitcond.not.i66, label %cyapa_gen3_csum.exit68, label %for.body.i67.for.body.i67_crit_edge

for.body.i67.for.body.i67_crit_edge:              ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i67

cyapa_gen3_csum.exit68:                           ; preds = %for.body.i67
  %shl23 = shl nuw nsw i32 %conv22, 8
  %or27 = or i32 %shl23, %conv26
  %conv32 = zext i16 %add.i64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %or27, i32 %conv32)
  %cmp34.not = icmp eq i32 %or27, %conv32
  br i1 %cmp34.not, label %cyapa_gen3_csum.exit68.cleanup_crit_edge, label %do.end39

cyapa_gen3_csum.exit68.cleanup_crit_edge:         ; preds = %cyapa_gen3_csum.exit68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end39:                                         ; preds = %cyapa_gen3_csum.exit68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef %conv32, i32 noundef %or27) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end39, %cyapa_gen3_csum.exit68.cleanup_crit_edge, %do.end16, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end16 ], [ -22, %do.end39 ], [ 0, %cyapa_gen3_csum.exit68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_enter(ptr noundef %cyapa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cyapa, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then5 [
    i32 2, label %if.end.cleanup_crit_edge
    i32 4, label %if.end6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %3 = ptrtoint ptr %operational to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %operational, align 1
  %4 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cyapa, align 4
  %smbus.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 8
  %5 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %cmd.0.i = select i1 %tobool.not.i, i8 40, i8 0
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %cmd.0.i, i8 noundef zeroext 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 50000, i32 noundef 2) #10
  %arrayidx = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 1, i32 1
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end11
  %waiting_time.0 = phi i32 [ 2000, %if.end11 ], [ %sub24, %do.cond.do.body_crit_edge ]
  %call12 = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 500) #10
  %9 = zext i32 %call12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %call12, label %do.body.cleanup_crit_edge [
    i32 0, label %if.end18
    i32 -110, label %do.body.do.cond_crit_edge
  ]

do.body.do.cond_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %do.body
  %10 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp20 = icmp eq i32 %11, 2
  br i1 %cmp20, label %land.lhs.true, label %if.end18.if.end23_crit_edge

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end18
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  br i1 %tobool21.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end18.if.end23_crit_edge
  tail call void @msleep(i32 noundef 100) #10
  br label %do.cond

do.cond:                                          ; preds = %if.end23, %do.body.do.cond_crit_edge
  %.sink = phi i32 [ -100, %if.end23 ], [ -500, %do.body.do.cond_crit_edge ]
  %sub24 = add nsw i32 %waiting_time.0, %.sink
  %cmp25 = icmp sgt i32 %sub24, 0
  br i1 %cmp25, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  %15 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp28.not = icmp eq i32 %16, 2
  br i1 %cmp28.not, label %lor.lhs.false, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx, align 1
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  %spec.select = select i1 %tobool34.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %do.end.cleanup_crit_edge, %do.body.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ -11, %do.end.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ], [ %call12, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_activate(ptr noundef %cyapa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_activate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 2000) #10
  %call1 = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 11000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  %. = select i1 %cmp.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_bl_initiate(ptr nocapture noundef readnone %cyapa, ptr nocapture noundef readnone %fw) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_fw_update(ptr nocapture noundef readonly %cyapa, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %data = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 128
  %call = tail call fastcc i32 @cyapa_gen3_write_blocks(ptr noundef %cyapa, i32 noundef 32, i32 noundef 480, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call4 = tail call fastcc i32 @cyapa_gen3_write_blocks(ptr noundef %cyapa, i32 noundef 30, i32 noundef 2, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call4) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_bl_deactivate(ptr noundef %cyapa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_deactivate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 100) #10
  %call1 = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  %. = select i1 %cmp.not, i32 0, i32 -11
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %., %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_show_baseline(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %smbus.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not.i, i8 0, i8 5
  %client.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i) #13
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp2.not = icmp eq i32 %and, 3
  br i1 %cmp2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %call.i) #13
  br label %out

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i90 = icmp eq i8 %7, 0
  %cmd.0.i91 = select i1 %tobool.not.i90, i8 40, i8 0
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %call.i93 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %cmd.0.i91, i8 noundef zeroext 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %cmp9 = icmp slt i32 %call.i93, 0
  br i1 %cmp9, label %do.end13, label %do.body15.preheader

do.body15.preheader:                              ; preds = %if.end7
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %10 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i95 = icmp eq i8 %11, 0
  %spec.select121 = select i1 %tobool.not.i95, i8 0, i8 5
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %call.i100 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext %spec.select121) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %cmp17 = icmp slt i32 %call.i100, 0
  br i1 %cmp17, label %do.body15.preheader.do.end21_crit_edge, label %if.end22

do.body15.preheader.do.end21_crit_edge:           ; preds = %do.body15.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i93) #13
  br label %out

do.end21:                                         ; preds = %do.cond27.1.do.end21_crit_edge, %do.cond27.do.end21_crit_edge, %do.body15.preheader.do.end21_crit_edge
  %call.i100.lcssa = phi i32 [ %call.i100, %do.body15.preheader.do.end21_crit_edge ], [ %call.i100.1, %do.cond27.do.end21_crit_edge ], [ %call.i100.2, %do.cond27.1.do.end21_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call.i100.lcssa) #13
  br label %out

if.end22:                                         ; preds = %do.body15.preheader
  %and23 = and i32 %call.i100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 3
  br i1 %cmp24, label %if.end22.if.end34_crit_edge, label %do.cond27

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.cond27:                                        ; preds = %if.end22
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %14 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i95.1 = icmp eq i8 %15, 0
  %spec.select121.1 = select i1 %tobool.not.i95.1, i8 0, i8 5
  %16 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i, align 4
  %call.i100.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext %spec.select121.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.1)
  %cmp17.1 = icmp slt i32 %call.i100.1, 0
  br i1 %cmp17.1, label %do.cond27.do.end21_crit_edge, label %if.end22.1

do.cond27.do.end21_crit_edge:                     ; preds = %do.cond27
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.end22.1:                                       ; preds = %do.cond27
  %and23.1 = and i32 %call.i100.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and23.1)
  %cmp24.1 = icmp eq i32 %and23.1, 3
  br i1 %cmp24.1, label %if.end22.1.if.end34_crit_edge, label %do.cond27.1

if.end22.1.if.end34_crit_edge:                    ; preds = %if.end22.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.cond27.1:                                      ; preds = %if.end22.1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %18 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i95.2 = icmp eq i8 %19, 0
  %spec.select121.2 = select i1 %tobool.not.i95.2, i8 0, i8 5
  %20 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i, align 4
  %call.i100.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext %spec.select121.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.2)
  %cmp17.2 = icmp slt i32 %call.i100.2, 0
  br i1 %cmp17.2, label %do.cond27.1.do.end21_crit_edge, label %if.end22.2

do.cond27.1.do.end21_crit_edge:                   ; preds = %do.cond27.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.end22.2:                                       ; preds = %do.cond27.1
  %and23.2 = and i32 %call.i100.2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and23.2)
  %cmp24.2 = icmp eq i32 %and23.2, 3
  br i1 %cmp24.2, label %if.end22.2.if.end34_crit_edge, label %do.cond27.2

if.end22.2.if.end34_crit_edge:                    ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

do.cond27.2:                                      ; preds = %if.end22.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28) #13
  br label %out

if.end34:                                         ; preds = %if.end22.2.if.end34_crit_edge, %if.end22.1.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %22 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i103 = icmp eq i8 %23, 0
  %spec.select122 = select i1 %tobool.not.i103, i8 38, i8 7
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  %call.i108 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext %spec.select122) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp36 = icmp slt i32 %call.i108, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call.i108) #13
  br label %out

if.end41:                                         ; preds = %if.end34
  %26 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i111 = icmp eq i8 %27, 0
  %spec.select123 = select i1 %tobool.not.i111, i8 39, i8 9
  %28 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client.i, align 4
  %call.i116 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext %spec.select123) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %cmp43 = icmp slt i32 %call.i116, 0
  br i1 %cmp43, label %do.end47, label %if.end48

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call.i116) #13
  br label %out

if.end48:                                         ; preds = %if.end41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyapa_gen3_show_baseline.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyapa_gen3_show_baseline, %if.then54)) #10
          to label %do.end57 [label %if.then54], !srcloc !137

if.then54:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyapa_gen3_show_baseline.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call.i108, i32 noundef %call.i116) #10
  br label %do.end57

do.end57:                                         ; preds = %if.then54, %if.end48
  %call58 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.38, i32 noundef %call.i108, i32 noundef %call.i116) #10
  br label %out

out:                                              ; preds = %do.end57, %do.end47, %do.end40, %do.cond27.2, %do.end21, %do.end13, %do.end6, %do.end
  %ret.0 = phi i32 [ %call.i, %do.end ], [ -11, %do.end6 ], [ %call.i93, %do.end13 ], [ %call.i100.lcssa, %do.end21 ], [ -110, %do.cond27.2 ], [ %call.i108, %do.end40 ], [ %call.i116, %do.end47 ], [ %call58, %do.end57 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_calibrate(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %smbus.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %spec.select = select i1 %tobool.not.i, i8 0, i8 5
  %client.i = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call.i) #13
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %call.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp2.not = icmp eq i32 %and, 3
  br i1 %cmp2.not, label %if.end7, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call.i) #13
  br label %out

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i61 = icmp eq i8 %7, 0
  %cmd.0.i62 = select i1 %tobool.not.i61, i8 40, i8 0
  %8 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i, align 4
  %call.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext %cmd.0.i62, i8 noundef zeroext -128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp9 = icmp slt i32 %call.i64, 0
  br i1 %cmp9, label %do.end13, label %if.end14

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %call.i64) #13
  br label %out

if.end14:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -200, %10
  br label %do.body15

do.body15:                                        ; preds = %do.cond35.do.body15_crit_edge, %if.end14
  tail call void @msleep(i32 noundef 100) #10
  %11 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i66 = icmp eq i8 %12, 0
  %spec.select77 = select i1 %tobool.not.i66, i8 0, i8 5
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %call.i71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext %spec.select77) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %cmp17 = icmp slt i32 %call.i71, 0
  br i1 %cmp17, label %do.end21, label %if.end22

do.end21:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39, i32 noundef %call.i71) #13
  br label %out

if.end22:                                         ; preds = %do.body15
  %and23 = and i32 %call.i71, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 3
  br i1 %cmp24, label %do.body26, label %do.cond35

do.body26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cyapa_gen3_do_calibrate.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cyapa_gen3_do_calibrate, %if.then30)) #10
          to label %out [label %if.then30], !srcloc !137

if.then30:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cyapa_gen3_do_calibrate.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.49) #10
  br label %out

do.cond35:                                        ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %15
  %cmp36 = icmp slt i32 %sub, 0
  br i1 %cmp36, label %do.cond35.do.body15_crit_edge, label %do.end40

do.cond35.do.body15_crit_edge:                    ; preds = %do.cond35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body15

do.end40:                                         ; preds = %do.cond35
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %out

out:                                              ; preds = %do.end40, %if.then30, %do.body26, %do.end21, %do.end13, %do.end6, %do.end
  %16 = phi i32 [ %count, %do.body26 ], [ %count, %if.then30 ], [ -110, %do.end40 ], [ %call.i71, %do.end21 ], [ %call.i64, %do.end13 ], [ -11, %do.end6 ], [ %call.i, %do.end ]
  ret i32 %16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_initialize(ptr nocapture noundef readnone %cyapa) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_state_parse(ptr nocapture noundef %cyapa, ptr nocapture noundef readonly %reg_data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cyapa, align 4
  %1 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %reg_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.else43

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %reg_data, i32 2
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp4 = icmp eq i8 %4, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.land.lhs.true20_crit_edge

land.lhs.true.land.lhs.true20_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, ptr %reg_data, i32 1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %7 = and i8 %6, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %7)
  %switch = icmp eq i8 %7, 16
  br i1 %switch, label %if.then, label %land.lhs.true6.land.lhs.true20_crit_edge

land.lhs.true6.land.lhs.true20_crit_edge:         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true20

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #12
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %8 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %gen, align 4
  br label %if.end88.sink.split

land.lhs.true20:                                  ; preds = %land.lhs.true6.land.lhs.true20_crit_edge, %land.lhs.true.land.lhs.true20_crit_edge
  %arrayidx21 = getelementptr i8, ptr %reg_data, i32 1
  %9 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx21, align 1
  %11 = and i8 %10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp23.not = icmp eq i8 %11, 0
  br i1 %cmp23.not, label %land.lhs.true20.if.else76_crit_edge, label %if.then25

land.lhs.true20.if.else76_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

if.then25:                                        ; preds = %land.lhs.true20
  %gen26 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %12 = ptrtoint ptr %gen26 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 3, ptr %gen26, align 4
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %tobool.not = icmp sgt i8 %14, -1
  br i1 %tobool.not, label %if.else32, label %if.then25.if.end88.sink.split_crit_edge

if.then25.if.end88.sink.split_crit_edge:          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88.sink.split

if.else32:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2, align 1
  %17 = and i8 %16, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp36.not = icmp eq i8 %17, 0
  %. = select i1 %cmp36.not, i32 2, i32 3
  br label %if.end88.sink.split

if.else43:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %2)
  %tobool47.not = icmp sgt i8 %2, -1
  br i1 %tobool47.not, label %if.else63, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.else43
  %arrayidx49 = getelementptr i8, ptr %reg_data, i32 1
  %18 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx49, align 1
  %conv50 = zext i8 %19 to i32
  %and51 = and i32 %conv50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %land.lhs.true48.if.else76_crit_edge, label %if.then53

land.lhs.true48.if.else76_crit_edge:              ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

if.then53:                                        ; preds = %land.lhs.true48
  %20 = and i32 %conv50, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %20)
  %cmp57.not = icmp eq i32 %20, 96
  br i1 %cmp57.not, label %if.then53.if.end88_crit_edge, label %if.then59

if.then53.if.end88_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then59:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #12
  %gen60 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %21 = ptrtoint ptr %gen60 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %gen60, align 4
  br label %if.end88.sink.split

if.else63:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %2)
  %cmp66 = icmp eq i8 %2, 12
  br i1 %cmp66, label %land.lhs.true68, label %if.else63.if.else76_crit_edge

if.else63.if.else76_crit_edge:                    ; preds = %if.else63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

land.lhs.true68:                                  ; preds = %if.else63
  %arrayidx69 = getelementptr i8, ptr %reg_data, i32 1
  %22 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %23)
  %cmp71 = icmp eq i8 %23, 8
  br i1 %cmp71, label %if.then73, label %land.lhs.true68.if.else76_crit_edge

land.lhs.true68.if.else76_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else76

if.then73:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #12
  %gen74 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %24 = ptrtoint ptr %gen74 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 3, ptr %gen74, align 4
  br label %if.end88.sink.split

if.else76:                                        ; preds = %land.lhs.true68.if.else76_crit_edge, %if.else63.if.else76_crit_edge, %land.lhs.true48.if.else76_crit_edge, %land.lhs.true20.if.else76_crit_edge
  %arrayidx77 = getelementptr i8, ptr %reg_data, i32 1
  %25 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx77, align 1
  %27 = and i8 %26, -112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool80.not = icmp eq i8 %27, 0
  br i1 %tobool80.not, label %if.else76.if.end88_crit_edge, label %if.then81

if.else76.if.end88_crit_edge:                     ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then81:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #12
  %gen82 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %28 = ptrtoint ptr %gen82 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %gen82, align 4
  br label %if.end88.sink.split

if.end88.sink.split:                              ; preds = %if.then81, %if.then73, %if.then59, %if.else32, %if.then25.if.end88.sink.split_crit_edge, %if.then
  %.sink = phi i32 [ 4, %if.then73 ], [ 1, %if.then81 ], [ 4, %if.then59 ], [ 2, %if.then ], [ 1, %if.then25.if.end88.sink.split_crit_edge ], [ %., %if.else32 ]
  %29 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %cyapa, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88.sink.split, %if.else76.if.end88_crit_edge, %if.then53.if.end88_crit_edge
  %gen89 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %30 = ptrtoint ptr %gen89 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %gen89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %31)
  %cmp91 = icmp eq i8 %31, 3
  br i1 %cmp91, label %land.lhs.true93, label %if.end88.if.end110_crit_edge

if.end88.if.end110_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

land.lhs.true93:                                  ; preds = %if.end88
  %32 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cyapa, align 4
  %.off141 = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off141)
  %switch142 = icmp ult i32 %.off141, 4
  br i1 %switch142, label %land.lhs.true93.return_crit_edge, label %land.lhs.true93.if.end110_crit_edge

land.lhs.true93.if.end110_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

land.lhs.true93.return_crit_edge:                 ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end110:                                        ; preds = %land.lhs.true93.if.end110_crit_edge, %if.end88.if.end110_crit_edge
  br label %return

return:                                           ; preds = %if.end110, %land.lhs.true93.return_crit_edge
  %retval.0 = phi i32 [ -11, %if.end110 ], [ 0, %land.lhs.true93.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_do_operational_check(ptr noundef %cyapa) #0 align 64 {
entry:
  %query_data.i = alloca [27 x i8], align 1
  %bl_data.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb11_crit_edge
  ]

entry.sw.bb11_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i.i = tail call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_deactivate) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end.i:                                         ; preds = %sw.bb
  tail call void @msleep(i32 noundef 100) #10
  %call1.i = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 2
  br i1 %cmp.not.i, label %if.end4.i.sw.bb2_crit_edge, label %if.end4.i.do.end_crit_edge

if.end4.i.do.end_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.end4.i.sw.bb2_crit_edge:                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb2

do.end:                                           ; preds = %if.end4.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %if.end4.i.do.end_crit_edge ], [ %call1.i, %if.end.i.do.end_crit_edge ], [ %call.i.i, %sw.bb.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i.ph) #13
  br label %cleanup

sw.bb2:                                           ; preds = %if.end4.i.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %bl_data.i) #10
  %7 = getelementptr inbounds [16 x i8], ptr %bl_data.i, i32 0, i32 11
  %8 = getelementptr inbounds [16 x i8], ptr %bl_data.i, i32 0, i32 12
  %9 = call ptr @memset(ptr %bl_data.i, i32 255, i32 16)
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %call.i.i67 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %11, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %bl_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call.i.i67)
  %cmp.not.i68 = icmp eq i32 %call.i.i67, 16
  br i1 %cmp.not.i68, label %if.end.i69, label %sw.bb2.cyapa_gen3_bl_query_data.exit_crit_edge

sw.bb2.cyapa_gen3_bl_query_data.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_bl_query_data.exit

if.end.i69:                                       ; preds = %sw.bb2
  %12 = getelementptr inbounds [16 x i8], ptr %bl_data.i, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %14)
  %cmp2.i = icmp eq i8 %14, 17
  br i1 %cmp2.i, label %if.then4.i, label %if.end.i69.cyapa_gen3_bl_query_data.exit_crit_edge

if.end.i69.cyapa_gen3_bl_query_data.exit_crit_edge: ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_bl_query_data.exit

if.then4.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %7, align 1
  %fw_maj_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %17 = ptrtoint ptr %fw_maj_ver.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %fw_maj_ver.i, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  %fw_min_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %20 = ptrtoint ptr %fw_min_ver.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %fw_min_ver.i, align 2
  br label %cyapa_gen3_bl_query_data.exit

cyapa_gen3_bl_query_data.exit:                    ; preds = %if.then4.i, %if.end.i69.cyapa_gen3_bl_query_data.exit_crit_edge, %sw.bb2.cyapa_gen3_bl_query_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %bl_data.i) #10
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %call.i.i71 = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 11, ptr noundef nonnull @bl_exit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71)
  %tobool.not.i72 = icmp eq i32 %call.i.i71, 0
  br i1 %tobool.not.i72, label %if.end.i74, label %cyapa_gen3_bl_query_data.exit.do.end9_crit_edge

cyapa_gen3_bl_query_data.exit.do.end9_crit_edge:  ; preds = %cyapa_gen3_bl_query_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end.i74:                                       ; preds = %cyapa_gen3_bl_query_data.exit
  call void @msleep(i32 noundef 50) #10
  %call1.i73 = call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 4000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %cmp.i = icmp slt i32 %call1.i73, 0
  br i1 %cmp.i, label %if.end.i74.do.end9_crit_edge, label %if.end3.i

if.end.i74.do.end9_crit_edge:                     ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end3.i:                                        ; preds = %if.end.i74
  %23 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp4.not.i = icmp eq i32 %24, 4
  br i1 %cmp4.not.i, label %if.end3.i.sw.bb11_crit_edge, label %if.end3.i.do.end9_crit_edge

if.end3.i.do.end9_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end3.i.sw.bb11_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb11

do.end9:                                          ; preds = %if.end3.i.do.end9_crit_edge, %if.end.i74.do.end9_crit_edge, %cyapa_gen3_bl_query_data.exit.do.end9_crit_edge
  %retval.0.i76.ph = phi i32 [ -11, %if.end3.i.do.end9_crit_edge ], [ %call1.i73, %if.end.i74.do.end9_crit_edge ], [ %call.i.i71, %cyapa_gen3_bl_query_data.exit.do.end9_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef %retval.0.i76.ph) #13
  br label %cleanup

sw.bb11:                                          ; preds = %if.end3.i.sw.bb11_crit_edge, %entry.sw.bb11_crit_edge
  %call12 = call i32 @cyapa_gen3_set_power_mode(ptr noundef %cyapa, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %sw.bb11.if.end18_crit_edge, label %do.end17

sw.bb11.if.end18_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end18

do.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.54, i32 noundef %call12) #13
  br label %if.end18

if.end18:                                         ; preds = %do.end17, %sw.bb11.if.end18_crit_edge
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %query_data.i) #10
  %25 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 5
  %26 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 11
  %27 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 15
  %28 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 16
  %29 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 19
  %30 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 20
  %31 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 21
  %32 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 22
  %33 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 23
  %34 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 24
  %35 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 25
  %36 = getelementptr inbounds [27 x i8], ptr %query_data.i, i32 0, i32 26
  %37 = call ptr @memset(ptr %query_data.i, i32 255, i32 27)
  %38 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp.not.i77 = icmp eq i32 %39, 4
  br i1 %cmp.not.i77, label %if.end.i78, label %if.end18.cyapa_gen3_get_query_data.exit.thread_crit_edge

if.end18.cyapa_gen3_get_query_data.exit.thread_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_get_query_data.exit.thread

if.end.i78:                                       ; preds = %if.end18
  %call.i = call i32 @cyapa_read_block(ptr noundef %cyapa, i8 noundef zeroext 5, ptr noundef nonnull %query_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %call.i)
  %cmp1.not.i = icmp eq i32 %call.i, 27
  br i1 %cmp1.not.i, label %if.end21, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp3.i, i32 %call.i, i32 -5
  br label %cyapa_gen3_get_query_data.exit.thread

cyapa_gen3_get_query_data.exit.thread:            ; preds = %if.then2.i, %if.end18.cyapa_gen3_get_query_data.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ -16, %if.end18.cyapa_gen3_get_query_data.exit.thread_crit_edge ], [ %spec.select, %if.then2.i ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %query_data.i) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end.i78
  %product_id.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 16
  %40 = call ptr @memcpy(ptr %product_id.i, ptr %query_data.i, i32 5)
  %arrayidx7.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 5
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 45, ptr %arrayidx7.i, align 1
  %arrayidx9.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 6
  %42 = call ptr @memcpy(ptr %arrayidx9.i, ptr %25, i32 6)
  %arrayidx12.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 12
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 45, ptr %arrayidx12.i, align 4
  %arrayidx14.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 13
  %44 = ptrtoint ptr %26 to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %26, align 1
  %46 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 %45, ptr %arrayidx14.i, align 1
  %arrayidx17.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 15
  %47 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %arrayidx17.i, align 1
  %48 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %27, align 1
  %fw_maj_ver.i79 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %50 = ptrtoint ptr %fw_maj_ver.i79 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %fw_maj_ver.i79, align 1
  %51 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %28, align 1
  %fw_min_ver.i80 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %53 = ptrtoint ptr %fw_min_ver.i80 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %fw_min_ver.i80, align 2
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %29, align 1
  %56 = and i8 %55, 56
  %btn_capability.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %57 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %btn_capability.i, align 1
  %58 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %30, align 1
  %60 = and i8 %59, 15
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %61 = ptrtoint ptr %gen.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %gen.i, align 4
  %62 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %31, align 1
  %64 = and i8 %63, -16
  %and28.i = zext i8 %64 to i32
  %shl.i = shl nuw nsw i32 %and28.i, 4
  %65 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %32, align 1
  %conv30.i = zext i8 %66 to i32
  %or.i = or i32 %shl.i, %conv30.i
  %max_abs_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 22
  %67 = ptrtoint ptr %max_abs_x.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or.i, ptr %max_abs_x.i, align 4
  %68 = and i8 %63, 15
  %and33.i = zext i8 %68 to i32
  %shl34.i = shl nuw nsw i32 %and33.i, 8
  %69 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %33, align 1
  %conv36.i = zext i8 %70 to i32
  %or37.i = or i32 %shl34.i, %conv36.i
  %max_abs_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 23
  %71 = ptrtoint ptr %max_abs_y.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %or37.i, ptr %max_abs_y.i, align 4
  %72 = ptrtoint ptr %34 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %34, align 1
  %74 = and i8 %73, -16
  %and40.i = zext i8 %74 to i32
  %shl41.i = shl nuw nsw i32 %and40.i, 4
  %75 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %35, align 1
  %conv43.i = zext i8 %76 to i32
  %or44.i = or i32 %shl41.i, %conv43.i
  %physical_size_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 24
  %77 = ptrtoint ptr %physical_size_x.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or44.i, ptr %physical_size_x.i, align 4
  %78 = and i8 %73, 15
  %and47.i = zext i8 %78 to i32
  %shl48.i = shl nuw nsw i32 %and47.i, 8
  %79 = ptrtoint ptr %36 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %36, align 1
  %conv50.i = zext i8 %80 to i32
  %or51.i = or i32 %shl48.i, %conv50.i
  %physical_size_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 25
  %81 = ptrtoint ptr %physical_size_y.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %or51.i, ptr %physical_size_y.i, align 4
  %max_z.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 32
  %82 = ptrtoint ptr %max_z.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 255, ptr %max_z.i, align 4
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %query_data.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %60)
  %cmp22.not = icmp eq i8 %60, 3
  br i1 %cmp22.not, label %if.end30, label %do.end27

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %60 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %conv) #13
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %call31 = call i32 @strlen(ptr noundef nonnull @product_id) #14
  %bcmp = call i32 @bcmp(ptr %product_id.i, ptr nonnull @product_id, i32 %call31) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp33.not = icmp eq i32 %bcmp, 0
  br i1 %cmp33.not, label %if.end30.cleanup_crit_edge, label %do.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end38:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65, ptr noundef %product_id.i) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %if.end30.cleanup_crit_edge, %do.end27, %cyapa_gen3_get_query_data.exit.thread, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end27 ], [ -22, %do.end38 ], [ %retval.0.i76.ph, %do.end9 ], [ %retval.0.i.ph, %do.end ], [ 0, %if.end30.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ %retval.0.i82.ph, %cyapa_gen3_get_query_data.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_irq_handler(ptr nocapture noundef readonly %cyapa) #0 align 64 {
entry:
  %data = alloca %struct.cyapa_reg_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %data) #10
  %2 = getelementptr inbounds %struct.cyapa_reg_data, ptr %data, i32 0, i32 1
  %3 = call ptr @memset(ptr %data, i32 255, i32 27)
  %call = call i32 @cyapa_read_block(ptr noundef %cyapa, i8 noundef zeroext 3, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %call)
  %cmp.not = icmp eq i32 %call, 27
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67, i32 noundef %call) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data, align 1
  %conv = zext i8 %5 to i32
  %6 = and i32 %conv, 131
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %6)
  %7 = icmp eq i32 %6, 131
  br i1 %7, label %lor.lhs.false9, label %if.end.do.end17_crit_edge

if.end.do.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

lor.lhs.false9:                                   ; preds = %if.end
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %2, align 1
  %10 = and i8 %9, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12.not.not = icmp eq i8 %10, 0
  br i1 %cmp12.not.not, label %lor.lhs.false9.do.end17_crit_edge, label %if.end22

lor.lhs.false9.do.end17_crit_edge:                ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false9.do.end17_crit_edge, %if.end.do.end17_crit_edge
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %conv21 = zext i8 %12 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.70, i32 noundef %conv, i32 noundef %conv21) #13
  br label %cleanup

if.end22:                                         ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @cyapa_gen3_event_process(ptr noundef %cyapa, ptr noundef nonnull %data)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ 0, %if.end22 ]
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %data) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_gen3_irq_cmd_handler(ptr nocapture noundef readonly %cyapa) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %0 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp.not = icmp eq i8 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %2 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operational, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ %tobool.not, %if.end ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_empty_output_data(ptr nocapture noundef readnone %cyapa, ptr nocapture noundef readnone %buf, ptr nocapture noundef readnone %len, ptr nocapture noundef readnone %func) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen3_set_power_mode(ptr nocapture noundef readonly %cyapa, i8 noundef zeroext %power_mode, i16 noundef zeroext %always_unused, i32 noundef %pm_stage) #0 align 64 {
entry:
  %data.i = alloca %struct.cyapa_reg_data, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp.not = icmp eq i32 %3, 4
  br i1 %cmp.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %smbus.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 8
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %4 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %spec.select = select i1 %tobool.not.i, i8 41, i8 3
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext %spec.select) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp2 = icmp sgt i32 %call.i, -1
  br i1 %cmp2, label %while.cond.preheader.if.end7_crit_edge, label %if.end4

while.cond.preheader.if.end7_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4:                                          ; preds = %while.cond.preheader
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %8 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.1 = icmp eq i8 %9, 0
  %spec.select.1 = select i1 %tobool.not.i.1, i8 41, i8 3
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext %spec.select.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.1)
  %cmp2.1 = icmp sgt i32 %call.i.1, -1
  br i1 %cmp2.1, label %if.end4.if.end7_crit_edge, label %if.end4.1

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4.1:                                        ; preds = %if.end4
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %12 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.2 = icmp eq i8 %13, 0
  %spec.select.2 = select i1 %tobool.not.i.2, i8 41, i8 3
  %14 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i, align 4
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext %spec.select.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.2)
  %cmp2.2 = icmp sgt i32 %call.i.2, -1
  br i1 %cmp2.2, label %if.end4.1.if.end7_crit_edge, label %if.end4.2

if.end4.1.if.end7_crit_edge:                      ; preds = %if.end4.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4.2:                                        ; preds = %if.end4.1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %16 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.3 = icmp eq i8 %17, 0
  %spec.select.3 = select i1 %tobool.not.i.3, i8 41, i8 3
  %18 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i, align 4
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %19, i8 noundef zeroext %spec.select.3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.3)
  %cmp2.3 = icmp sgt i32 %call.i.3, -1
  br i1 %cmp2.3, label %if.end4.2.if.end7_crit_edge, label %if.end4.3

if.end4.2.if.end7_crit_edge:                      ; preds = %if.end4.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4.3:                                        ; preds = %if.end4.2
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %20 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.4 = icmp eq i8 %21, 0
  %spec.select.4 = select i1 %tobool.not.i.4, i8 41, i8 3
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %call.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext %spec.select.4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.4)
  %cmp2.4 = icmp sgt i32 %call.i.4, -1
  br i1 %cmp2.4, label %if.end4.3.if.end7_crit_edge, label %if.end4.4

if.end4.3.if.end7_crit_edge:                      ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.end4.4:                                        ; preds = %if.end4.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end4.3.if.end7_crit_edge, %if.end4.2.if.end7_crit_edge, %if.end4.1.if.end7_crit_edge, %if.end4.if.end7_crit_edge, %while.cond.preheader.if.end7_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %while.cond.preheader.if.end7_crit_edge ], [ %call.i.1, %if.end4.if.end7_crit_edge ], [ %call.i.2, %if.end4.1.if.end7_crit_edge ], [ %call.i.3, %if.end4.2.if.end7_crit_edge ], [ %call.i.4, %if.end4.3.if.end7_crit_edge ]
  %and = and i32 %call.i.lcssa, 252
  %conv = zext i8 %power_mode to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv)
  %cmp8 = icmp eq i32 %and, %conv
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %conv13 = trunc i32 %and to i8
  %24 = zext i8 %conv13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.74)
  switch i8 %conv13, label %sw.default.i [
    i8 -4, label %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge
    i8 4, label %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge105
    i8 0, label %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge106
  ]

if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge106: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_wait_time_for_pwr_cmd.exit

if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge105: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_wait_time_for_pwr_cmd.exit

if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_get_wait_time_for_pwr_cmd.exit

sw.default.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %call.i87 = tail call zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext %conv13) #10
  %add.i = add i16 %call.i87, 50
  %phi.cast = zext i16 %add.i to i32
  br label %cyapa_get_wait_time_for_pwr_cmd.exit

cyapa_get_wait_time_for_pwr_cmd.exit:             ; preds = %sw.default.i, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge105, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge106
  %retval.0.i = phi i32 [ %phi.cast, %sw.default.i ], [ 20, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge ], [ 20, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge105 ], [ 20, %if.end11.cyapa_get_wait_time_for_pwr_cmd.exit_crit_edge106 ]
  %conv19 = and i32 %call.i.lcssa, 3
  %and21 = and i32 %conv, 252
  %or = or i32 %conv19, %and21
  %conv23 = trunc i32 %or to i8
  %25 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i89 = icmp eq i8 %26, 0
  %cmd.0.i90 = select i1 %tobool.not.i89, i8 41, i8 2
  %27 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i, align 4
  %call.i92 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext %cmd.0.i90, i8 noundef zeroext %conv23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool29.not = icmp eq i32 %call.i92, 0
  br i1 %tobool29.not, label %cyapa_get_wait_time_for_pwr_cmd.exit.while.end32_crit_edge, label %if.end31

cyapa_get_wait_time_for_pwr_cmd.exit.while.end32_crit_edge: ; preds = %cyapa_get_wait_time_for_pwr_cmd.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end32

if.end31:                                         ; preds = %cyapa_get_wait_time_for_pwr_cmd.exit
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %29 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i89.1 = icmp eq i8 %30, 0
  %cmd.0.i90.1 = select i1 %tobool.not.i89.1, i8 41, i8 2
  %31 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i, align 4
  %call.i92.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext %cmd.0.i90.1, i8 noundef zeroext %conv23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.1)
  %tobool29.not.1 = icmp eq i32 %call.i92.1, 0
  br i1 %tobool29.not.1, label %if.end31.while.end32_crit_edge, label %if.end31.1

if.end31.while.end32_crit_edge:                   ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end32

if.end31.1:                                       ; preds = %if.end31
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %33 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i89.2 = icmp eq i8 %34, 0
  %cmd.0.i90.2 = select i1 %tobool.not.i89.2, i8 41, i8 2
  %35 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i, align 4
  %call.i92.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext %cmd.0.i90.2, i8 noundef zeroext %conv23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.2)
  %tobool29.not.2 = icmp eq i32 %call.i92.2, 0
  br i1 %tobool29.not.2, label %if.end31.1.while.end32_crit_edge, label %if.end31.2

if.end31.1.while.end32_crit_edge:                 ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end32

if.end31.2:                                       ; preds = %if.end31.1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %37 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i89.3 = icmp eq i8 %38, 0
  %cmd.0.i90.3 = select i1 %tobool.not.i89.3, i8 41, i8 2
  %39 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i, align 4
  %call.i92.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext %cmd.0.i90.3, i8 noundef zeroext %conv23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.3)
  %tobool29.not.3 = icmp eq i32 %call.i92.3, 0
  br i1 %tobool29.not.3, label %if.end31.2.while.end32_crit_edge, label %if.end31.3

if.end31.2.while.end32_crit_edge:                 ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end32

if.end31.3:                                       ; preds = %if.end31.2
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %41 = ptrtoint ptr %smbus.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %smbus.i, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i89.4 = icmp eq i8 %42, 0
  %cmd.0.i90.4 = select i1 %tobool.not.i89.4, i8 41, i8 2
  %43 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %client.i, align 4
  %call.i92.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %44, i8 noundef zeroext %cmd.0.i90.4, i8 noundef zeroext %conv23) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.4)
  %tobool29.not.4 = icmp eq i32 %call.i92.4, 0
  br i1 %tobool29.not.4, label %if.end31.3.while.end32_crit_edge, label %if.end31.4

if.end31.3.while.end32_crit_edge:                 ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end32

if.end31.4:                                       ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  br label %while.end32

while.end32:                                      ; preds = %if.end31.4, %if.end31.3.while.end32_crit_edge, %if.end31.2.while.end32_crit_edge, %if.end31.1.while.end32_crit_edge, %if.end31.while.end32_crit_edge, %cyapa_get_wait_time_for_pwr_cmd.exit.while.end32_crit_edge
  %ret.3 = phi i32 [ 0, %cyapa_get_wait_time_for_pwr_cmd.exit.while.end32_crit_edge ], [ 0, %if.end31.while.end32_crit_edge ], [ 0, %if.end31.1.while.end32_crit_edge ], [ 0, %if.end31.2.while.end32_crit_edge ], [ 0, %if.end31.3.while.end32_crit_edge ], [ %call.i92.4, %if.end31.4 ]
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %45 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %operational, align 1, !range !136
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool33.not = icmp eq i8 %46, 0
  %tobool35.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool33.not, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %while.end32.if.else55_crit_edge, label %land.lhs.true36

while.end32.if.else55_crit_edge:                  ; preds = %while.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

land.lhs.true36:                                  ; preds = %while.end32
  %call37 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %1) #10
  %47 = and i32 %pm_stage, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %switch = icmp eq i32 %47, 4
  %or.cond86 = and i1 %switch, %call37
  br i1 %or.cond86, label %while.cond45.preheader, label %land.lhs.true36.if.else55_crit_edge

land.lhs.true36.if.else55_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else55

while.cond45.preheader:                           ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp46101.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp46101.not, label %while.cond45.preheader.cleanup_crit_edge, label %while.body48.lr.ph

while.cond45.preheader.cleanup_crit_edge:         ; preds = %while.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body48.lr.ph:                               ; preds = %while.cond45.preheader
  %48 = getelementptr inbounds %struct.cyapa_reg_data, ptr %data.i, i32 0, i32 1
  br label %while.body48

while.body48:                                     ; preds = %cyapa_gen3_try_poll_handler.exit.while.body48_crit_edge, %while.body48.lr.ph
  %sleep_time.0102 = phi i32 [ %retval.0.i, %while.body48.lr.ph ], [ %sub, %cyapa_gen3_try_poll_handler.exit.while.body48_crit_edge ]
  %49 = call i32 @llvm.umin.i32(i32 %sleep_time.0102, i32 8)
  call void @msleep(i32 noundef %49) #10
  %sub = add nsw i32 %sleep_time.0102, -8
  call void @llvm.lifetime.start.p0(i64 27, ptr nonnull %data.i) #10
  %50 = call ptr @memset(ptr %data.i, i32 255, i32 27)
  %call.i93 = call i32 @cyapa_read_block(ptr noundef %cyapa, i8 noundef zeroext 3, ptr noundef nonnull %data.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %call.i93)
  %cmp.not.i = icmp eq i32 %call.i93, 27
  br i1 %cmp.not.i, label %if.end.i, label %while.body48.cyapa_gen3_try_poll_handler.exit_crit_edge

while.body48.cyapa_gen3_try_poll_handler.exit_crit_edge: ; preds = %while.body48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_try_poll_handler.exit

if.end.i:                                         ; preds = %while.body48
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %data.i, align 1
  %53 = and i8 %52, -125
  call void @__sanitizer_cov_trace_const_cmp1(i8 -125, i8 %53)
  %54 = icmp eq i8 %53, -125
  br i1 %54, label %lor.lhs.false8.i, label %if.end.i.cyapa_gen3_try_poll_handler.exit_crit_edge

if.end.i.cyapa_gen3_try_poll_handler.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_try_poll_handler.exit

lor.lhs.false8.i:                                 ; preds = %if.end.i
  %55 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %48, align 1
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %cmp11.not.not.i = icmp eq i8 %57, 0
  br i1 %cmp11.not.not.i, label %lor.lhs.false8.i.cyapa_gen3_try_poll_handler.exit_crit_edge, label %if.end14.i

lor.lhs.false8.i.cyapa_gen3_try_poll_handler.exit_crit_edge: ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_try_poll_handler.exit

if.end14.i:                                       ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @cyapa_gen3_event_process(ptr noundef %cyapa, ptr noundef nonnull %data.i) #10
  br label %cyapa_gen3_try_poll_handler.exit

cyapa_gen3_try_poll_handler.exit:                 ; preds = %if.end14.i, %lor.lhs.false8.i.cyapa_gen3_try_poll_handler.exit_crit_edge, %if.end.i.cyapa_gen3_try_poll_handler.exit_crit_edge, %while.body48.cyapa_gen3_try_poll_handler.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 27, ptr nonnull %data.i) #10
  %cmp46 = icmp ugt i32 %sleep_time.0102, 8
  br i1 %cmp46, label %cyapa_gen3_try_poll_handler.exit.while.body48_crit_edge, label %cyapa_gen3_try_poll_handler.exit.cleanup_crit_edge

cyapa_gen3_try_poll_handler.exit.cleanup_crit_edge: ; preds = %cyapa_gen3_try_poll_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cyapa_gen3_try_poll_handler.exit.while.body48_crit_edge: ; preds = %cyapa_gen3_try_poll_handler.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body48

if.else55:                                        ; preds = %land.lhs.true36.if.else55_crit_edge, %while.end32.if.else55_crit_edge
  tail call void @msleep(i32 noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.else55, %cyapa_gen3_try_poll_handler.exit.cleanup_crit_edge, %while.cond45.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %ret.3, %if.else55 ], [ %ret.3, %while.cond45.preheader.cleanup_crit_edge ], [ %call.i.4, %if.end4.4 ], [ %ret.3, %cyapa_gen3_try_poll_handler.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cyapa_gen3_set_proximity(ptr nocapture noundef readnone %cyapa, i1 noundef zeroext %enable) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_poll_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen3_write_blocks(ptr nocapture noundef readonly %cyapa, i32 noundef %start_block, i32 noundef %block_count, ptr nocapture noundef readonly %image_data) unnamed_addr #0 align 64 {
entry:
  %cmd.i.i = alloca [17 x i8], align 1
  %write_block_cmd.i = alloca %struct.gen3_write_block_cmd, align 1
  %status.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %block_count)
  %cmp14.not = icmp eq i32 %block_count, 0
  br i1 %cmp14.not, label %entry.cleanup3_crit_edge, label %for.body.lr.ph

entry.cleanup3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup3

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %write_block_cmd.i, i32 76
  %1 = getelementptr inbounds [3 x i8], ptr %status.i, i32 0, i32 1
  %2 = getelementptr inbounds [3 x i8], ptr %status.i, i32 0, i32 2
  %cmd_code.i = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %write_block_cmd.i, i32 0, i32 1
  %key.i = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %write_block_cmd.i, i32 0, i32 2
  %block_num.i = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %write_block_cmd.i, i32 0, i32 3
  %block_data.i = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %write_block_cmd.i, i32 0, i32 4
  %cmd_checksum.i = getelementptr inbounds %struct.gen3_write_block_cmd, ptr %write_block_cmd.i, i32 0, i32 6
  %3 = getelementptr inbounds [17 x i8], ptr %cmd.i.i, i32 0, i32 1
  %client.i.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %arrayidx.1.i.i = getelementptr inbounds i8, ptr %write_block_cmd.i, i32 16
  %arrayidx.2.i.i = getelementptr inbounds i8, ptr %write_block_cmd.i, i32 32
  %arrayidx.3.i.i = getelementptr inbounds i8, ptr %write_block_cmd.i, i32 48
  %arrayidx.4.i.i = getelementptr inbounds i8, ptr %write_block_cmd.i, i32 64
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add = add i32 %i.015, %start_block
  %mul = shl i32 %i.015, 6
  %arrayidx = getelementptr i8, ptr %image_data, i32 %mul
  %conv = trunc i32 %add to i16
  call void @llvm.lifetime.start.p0(i64 78, ptr nonnull %write_block_cmd.i) #10
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 -1, ptr %0, align 1, !annotation !138
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status.i) #10
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %status.i, align 1, !annotation !138
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %1, align 1, !annotation !138
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %2, align 1, !annotation !138
  %8 = ptrtoint ptr %write_block_cmd.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %write_block_cmd.i, align 1
  %9 = ptrtoint ptr %cmd_code.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 57, ptr %cmd_code.i, align 1
  %10 = ptrtoint ptr %key.i to i32
  call void @__asan_storeN_noabort(i32 %10, i32 8)
  store i64 283686952306183, ptr %key.i, align 1
  %11 = ptrtoint ptr %block_num.i to i32
  call void @__asan_storeN_noabort(i32 %11, i32 2)
  store i16 %conv, ptr %block_num.i, align 1
  %12 = call ptr @memcpy(ptr %block_data.i, ptr %arrayidx, i32 64)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body
  %csum.08.i.i = phi i16 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body ]
  %i.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body ]
  %arrayidx.i.i = getelementptr i8, ptr %block_data.i, i32 %i.07.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i16
  %add.i.i = add i16 %csum.08.i.i, %conv.i.i
  %inc.i.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 64
  br i1 %exitcond.not.i.i, label %cyapa_gen3_csum.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

cyapa_gen3_csum.exit.i:                           ; preds = %for.body.i.i
  %conv.i = trunc i16 %add.i.i to i8
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i, ptr %0, align 1
  br label %for.body.i60.i

for.body.i60.i:                                   ; preds = %for.body.i60.i.for.body.i60.i_crit_edge, %cyapa_gen3_csum.exit.i
  %csum.08.i53.i = phi i16 [ %add.i57.i, %for.body.i60.i.for.body.i60.i_crit_edge ], [ 0, %cyapa_gen3_csum.exit.i ]
  %i.07.i54.i = phi i32 [ %inc.i58.i, %for.body.i60.i.for.body.i60.i_crit_edge ], [ 0, %cyapa_gen3_csum.exit.i ]
  %arrayidx.i55.i = getelementptr i8, ptr %write_block_cmd.i, i32 %i.07.i54.i
  %16 = ptrtoint ptr %arrayidx.i55.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i55.i, align 1
  %conv.i56.i = zext i8 %17 to i16
  %add.i57.i = add i16 %csum.08.i53.i, %conv.i56.i
  %inc.i58.i = add nuw nsw i32 %i.07.i54.i, 1
  %exitcond.not.i59.i = icmp eq i32 %inc.i58.i, 77
  br i1 %exitcond.not.i59.i, label %cyapa_gen3_csum.exit61.i, label %for.body.i60.i.for.body.i60.i_crit_edge

for.body.i60.i.for.body.i60.i_crit_edge:          ; preds = %for.body.i60.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i60.i

cyapa_gen3_csum.exit61.i:                         ; preds = %for.body.i60.i
  %conv5.i = trunc i16 %add.i57.i to i8
  %18 = ptrtoint ptr %cmd_checksum.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv5.i, ptr %cmd_checksum.i, align 1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %cmd.i.i) #10
  %19 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %cmd.i.i, align 1
  %20 = call ptr @memcpy(ptr %3, ptr %write_block_cmd.i, i32 16)
  %21 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %22, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %cyapa_gen3_csum.exit61.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge

cyapa_gen3_csum.exit61.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge: ; preds = %cyapa_gen3_csum.exit61.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_write_buffer.exit.thread.i

for.cond.i.i:                                     ; preds = %cyapa_gen3_csum.exit61.i
  %23 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 16, ptr %cmd.i.i, align 1
  %24 = call ptr @memcpy(ptr %3, ptr %arrayidx.1.i.i, i32 16)
  %25 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i.i.i, align 4
  %call.i.1.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %26, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %call.i.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.cond.1.i.i, label %for.cond.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge

for.cond.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_write_buffer.exit.thread.i

for.cond.1.i.i:                                   ; preds = %for.cond.i.i
  %27 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 32, ptr %cmd.i.i, align 1
  %28 = call ptr @memcpy(ptr %3, ptr %arrayidx.2.i.i, i32 16)
  %29 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i.i.i, align 4
  %call.i.2.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %30, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %call.i.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.cond.2.i.i, label %for.cond.1.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge

for.cond.1.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge: ; preds = %for.cond.1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_write_buffer.exit.thread.i

for.cond.2.i.i:                                   ; preds = %for.cond.1.i.i
  %31 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 48, ptr %cmd.i.i, align 1
  %32 = call ptr @memcpy(ptr %3, ptr %arrayidx.3.i.i, i32 16)
  %33 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i.i.i, align 4
  %call.i.3.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %34, i8 noundef zeroext 0, i8 noundef zeroext 17, ptr noundef nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %call.i.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %cyapa_gen3_write_buffer.exit.i, label %for.cond.2.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge

for.cond.2.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge: ; preds = %for.cond.2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cyapa_gen3_write_buffer.exit.thread.i

cyapa_gen3_write_buffer.exit.thread.i:            ; preds = %for.cond.2.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge, %for.cond.1.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge, %for.cond.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge, %cyapa_gen3_csum.exit61.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge
  %retval.2.i.ph.i = phi i32 [ %call.i.3.i.i, %for.cond.2.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge ], [ %call.i.2.i.i, %for.cond.1.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge ], [ %call.i.1.i.i, %for.cond.i.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge ], [ %call.i.i.i, %cyapa_gen3_csum.exit61.i.cyapa_gen3_write_buffer.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cmd.i.i) #10
  br label %select.unfold

cyapa_gen3_write_buffer.exit.i:                   ; preds = %for.cond.2.i.i
  %35 = ptrtoint ptr %cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 64, ptr %cmd.i.i, align 1
  %36 = call ptr @memcpy(ptr %3, ptr %arrayidx.4.i.i, i32 14)
  %37 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %client.i.i.i, align 4
  %call.i.4.i.i = call i32 @i2c_smbus_write_i2c_block_data(ptr noundef %38, i8 noundef zeroext 0, i8 noundef zeroext 15, ptr noundef nonnull %cmd.i.i) #10
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %cmd.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i.i)
  %tobool.not.i = icmp eq i32 %call.i.4.i.i, 0
  br i1 %tobool.not.i, label %cyapa_gen3_write_buffer.exit.i.do.body.i_crit_edge, label %cyapa_gen3_write_buffer.exit.i.select.unfold_crit_edge

cyapa_gen3_write_buffer.exit.i.select.unfold_crit_edge: ; preds = %cyapa_gen3_write_buffer.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %select.unfold

cyapa_gen3_write_buffer.exit.i.do.body.i_crit_edge: ; preds = %cyapa_gen3_write_buffer.exit.i
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %cyapa_gen3_write_buffer.exit.i.do.body.i_crit_edge
  %tries.0.i = phi i32 [ %dec.i, %do.cond.i.do.body.i_crit_edge ], [ 11, %cyapa_gen3_write_buffer.exit.i.do.body.i_crit_edge ]
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 20000, i32 noundef 2) #10
  %39 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i.i.i, align 4
  %call.i.i = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %40, i8 noundef zeroext 0, i8 noundef zeroext 3, ptr noundef nonnull %status.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp.not.i, label %do.cond.i, label %if.then10.i

if.then10.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp11.i = icmp slt i32 %call.i.i, 0
  %spec.select = select i1 %cmp11.i, i32 %call.i.i, i32 -5
  br label %select.unfold

do.cond.i:                                        ; preds = %do.body.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool15.not.i = icmp sgt i8 %42, -1
  %dec.i = add nsw i32 %tries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool16.not.i = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool15.not.i, i1 true, i1 %tobool16.not.i
  br i1 %or.cond.i, label %do.end.i, label %do.cond.i.do.body.i_crit_edge

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.end.i:                                         ; preds = %do.cond.i
  br i1 %tobool15.not.i, label %if.else.i, label %do.end.i.select.unfold_crit_edge

do.end.i.select.unfold_crit_edge:                 ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %select.unfold

if.else.i:                                        ; preds = %do.end.i
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %2, align 1
  %45 = and i8 %44, -4
  %46 = and i8 %42, -111
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %46)
  %cmp30.not.i = icmp eq i8 %46, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %45)
  %cmp33.not.i = icmp eq i8 %45, 32
  %or.cond51.i = select i1 %cmp30.not.i, i1 %cmp33.not.i, i1 false
  br i1 %or.cond51.i, label %for.inc, label %if.else.i.select.unfold_crit_edge

if.else.i.select.unfold_crit_edge:                ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %select.unfold

select.unfold:                                    ; preds = %if.else.i.select.unfold_crit_edge, %do.end.i.select.unfold_crit_edge, %if.then10.i, %cyapa_gen3_write_buffer.exit.i.select.unfold_crit_edge, %cyapa_gen3_write_buffer.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.2.i.ph.i, %cyapa_gen3_write_buffer.exit.thread.i ], [ %spec.select, %if.then10.i ], [ %call.i.4.i.i, %cyapa_gen3_write_buffer.exit.i.select.unfold_crit_edge ], [ -110, %do.end.i.select.unfold_crit_edge ], [ -5, %if.else.i.select.unfold_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %write_block_cmd.i) #10
  br label %cleanup3

for.inc:                                          ; preds = %if.else.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status.i) #10
  call void @llvm.lifetime.end.p0(i64 78, ptr nonnull %write_block_cmd.i) #10
  %inc = add nuw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, %block_count
  br i1 %exitcond.not, label %for.inc.cleanup3_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup3

cleanup3:                                         ; preds = %for.inc.cleanup3_crit_edge, %select.unfold, %entry.cleanup3_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %select.unfold ], [ 0, %entry.cleanup3_crit_edge ], [ 0, %for.inc.cleanup3_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cyapa_gen3_event_process(ptr nocapture noundef readonly %cyapa, ptr nocapture noundef readonly %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %finger_btn = getelementptr inbounds %struct.cyapa_reg_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %finger_btn to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %finger_btn, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp7.not = icmp ult i8 %3, 16
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %4 = lshr i8 %3, 4
  %umax = zext i8 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.cyapa_reg_data, ptr %data, i32 0, i32 2, i32 %i.08
  %id = getelementptr %struct.cyapa_reg_data, ptr %data, i32 0, i32 2, i32 %i.08, i32 4
  %5 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %id, align 1
  %conv3 = zext i8 %6 to i32
  %sub = add nsw i32 %conv3, -1
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 47, i32 noundef %sub) #10
  %call = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %1, i32 noundef 0, i1 noundef zeroext true) #10
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = and i8 %8, -16
  %and5 = zext i8 %9 to i32
  %shl = shl nuw nsw i32 %and5, 4
  %x_lo = getelementptr %struct.cyapa_reg_data, ptr %data, i32 0, i32 2, i32 %i.08, i32 1
  %10 = ptrtoint ptr %x_lo to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %x_lo, align 1
  %conv6 = zext i8 %11 to i32
  %or = or i32 %shl, %conv6
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 53, i32 noundef %or) #10
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, 15
  %and9 = zext i8 %14 to i32
  %shl10 = shl nuw nsw i32 %and9, 8
  %y_lo = getelementptr %struct.cyapa_reg_data, ptr %data, i32 0, i32 2, i32 %i.08, i32 2
  %15 = ptrtoint ptr %y_lo to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %y_lo, align 1
  %conv11 = zext i8 %16 to i32
  %or12 = or i32 %shl10, %conv11
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 54, i32 noundef %or12) #10
  %pressure = getelementptr %struct.cyapa_reg_data, ptr %data, i32 0, i32 2, i32 %i.08, i32 3
  %17 = ptrtoint ptr %pressure to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pressure, align 1
  %conv13 = zext i8 %18 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 3, i32 noundef 58, i32 noundef %conv13) #10
  %inc = add nuw nsw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %1) #10
  %btn_capability = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %19 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %btn_capability, align 1
  %21 = and i8 %20, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not = icmp eq i8 %21, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %finger_btn to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %finger_btn, align 1
  %24 = and i8 %23, 1
  %25 = zext i8 %24 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 272, i32 noundef %25) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %26 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %btn_capability, align 1
  %28 = and i8 %27, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool24.not = icmp eq i8 %28, 0
  br i1 %tobool24.not, label %if.end.if.end34_crit_edge, label %if.then25

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then25:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %finger_btn to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %finger_btn, align 1
  %31 = lshr i8 %30, 2
  %.lobit6 = and i8 %31, 1
  %32 = zext i8 %.lobit6 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 274, i32 noundef %32) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %if.end.if.end34_crit_edge
  %33 = ptrtoint ptr %btn_capability to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %btn_capability, align 1
  %35 = and i8 %34, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool38.not = icmp eq i8 %35, 0
  br i1 %tobool38.not, label %if.end34.if.end48_crit_edge, label %if.then39

if.end34.if.end48_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %finger_btn to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %finger_btn, align 1
  %38 = lshr i8 %37, 1
  %.lobit = and i8 %38, 1
  %39 = zext i8 %.lobit to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef 273, i32 noundef %39) #10
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.end34.if.end48_crit_edge
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cyapa_pwr_cmd_to_sleep_time(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !91, !93, !94, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !120, !121, !122, !123, !125, !126}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @cyapa_gen3_ops, !1, !"cyapa_gen3_ops", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1236, i32 28}
!2 = !{ptr @cyapa_smbus_cmds, !3, !"cyapa_smbus_cmds", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 208, i32 35}
!4 = !{ptr @cyapa_i2c_cmds, !5, !"cyapa_i2c_cmds", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 188, i32 35}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 572, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @cyapa_gen3_check_fw._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @cyapa_gen3_check_fw._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 581, i32 3}
!16 = !{ptr @cyapa_gen3_check_fw._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @cyapa_gen3_check_fw._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @cyapa_gen3_check_fw._entry.9, !20, !"_entry", i1 false, i1 false}
!20 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 593, i32 3}
!21 = !{ptr @cyapa_gen3_check_fw._entry_ptr.10, !20, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @bl_activate, !23, !"bl_activate", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 131, i32 17}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 728, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cyapa_gen3_do_fw_update._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @cyapa_gen3_do_fw_update._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 737, i32 3}
!31 = !{ptr @cyapa_gen3_do_fw_update._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cyapa_gen3_do_fw_update._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"security_key", i1 false, i1 false}
!34 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 129, i32 17}
!35 = !{ptr @bl_deactivate, !36, !"bl_deactivate", i1 false, i1 false}
!36 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 133, i32 17}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 809, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cyapa_gen3_show_baseline._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cyapa_gen3_show_baseline._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 813, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cyapa_gen3_show_baseline._entry.18, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 822, i32 3}
!49 = !{ptr @cyapa_gen3_show_baseline._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @cyapa_gen3_show_baseline._entry.25, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 833, i32 4}
!53 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 842, i32 3}
!56 = !{ptr @cyapa_gen3_show_baseline._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 849, i32 3}
!60 = !{ptr @cyapa_gen3_show_baseline._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 856, i32 3}
!64 = !{ptr @cyapa_gen3_show_baseline._entry.33, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cyapa_gen3_show_baseline._entry_ptr.35, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 861, i32 2}
!68 = !{ptr @.str.37, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cyapa_gen3_show_baseline.__UNIQUE_ID_ddebug289, !67, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 863, i32 34}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 754, i32 3}
!74 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @cyapa_gen3_do_calibrate._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @cyapa_gen3_do_calibrate._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 758, i32 3}
!79 = !{ptr @cyapa_gen3_do_calibrate._entry.41, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cyapa_gen3_do_calibrate._entry_ptr.43, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 767, i32 3}
!83 = !{ptr @cyapa_gen3_do_calibrate._entry.44, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @cyapa_gen3_do_calibrate._entry_ptr.46, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @cyapa_gen3_do_calibrate._entry.47, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 783, i32 4}
!87 = !{ptr @cyapa_gen3_do_calibrate._entry_ptr.48, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 787, i32 4}
!90 = !{ptr @cyapa_gen3_do_calibrate.__UNIQUE_ID_ddebug288, !89, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!91 = !{ptr @.str.51, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 792, i32 2}
!93 = !{ptr @cyapa_gen3_do_calibrate._entry.50, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @cyapa_gen3_do_calibrate._entry_ptr.52, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1067, i32 4}
!97 = !{ptr @.str.54, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cyapa_gen3_do_operational_check._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @cyapa_gen3_do_operational_check._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1078, i32 4}
!102 = !{ptr @cyapa_gen3_do_operational_check._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cyapa_gen3_do_operational_check._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1091, i32 4}
!106 = !{ptr @cyapa_gen3_do_operational_check._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cyapa_gen3_do_operational_check._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1099, i32 4}
!110 = !{ptr @cyapa_gen3_do_operational_check._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cyapa_gen3_do_operational_check._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.65, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1107, i32 4}
!114 = !{ptr @cyapa_gen3_do_operational_check._entry.64, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @cyapa_gen3_do_operational_check._entry_ptr.66, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @bl_exit, !117, !"bl_exit", i1 false, i1 false}
!117 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 135, i32 17}
!118 = !{ptr @.str.67, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1191, i32 3}
!120 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @cyapa_gen3_irq_handler._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @cyapa_gen3_irq_handler._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.70, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/mouse/cyapa_gen3.c", i32 1198, i32 3}
!125 = !{ptr @cyapa_gen3_irq_handler._entry.69, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @cyapa_gen3_irq_handler._entry_ptr.71, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i8 0, i8 2}
!137 = !{i64 2148791342, i64 2148791347, i64 2148791360, i64 2148791404, i64 2148791438, i64 2148791459}
!138 = !{!"auto-init"}
