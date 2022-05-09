; ModuleID = '/llk/IR_all_yes/drivers/input/mouse/cyapa_gen5.c_pt.bc'
source_filename = "../drivers/input/mouse/cyapa_gen5.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cyapa_dev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyapa = type { i32, [3 x i8], i8, ptr, ptr, ptr, [32 x i8], i8, i8, i8, i16, i8, i16, i8, i16, %struct.gen6_interval_setting, [16 x i8], i8, i8, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32, i32, %struct.mutex, ptr, %union.cyapa_cmd_states }
%struct.gen6_interval_setting = type { i16, i16, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.cyapa_pip_report_data = type { [7 x i8], [10 x %struct.cyapa_pip_touch_record] }
%struct.cyapa_pip_touch_record = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.pip_bl_cmd_head = type { i16, i16, i8, i8, %struct.pip_bl_packet_start, [0 x i8] }
%struct.pip_bl_packet_start = type { i8, i8, i16 }
%struct.firmware = type { i32, ptr, ptr }
%struct.cyapa_tsg_bin_image_data_record = type <{ i8, i16, i16, [128 x i8] }>
%struct.cyapa_tsg_bin_image_head = type { i8, i8, i8, i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.tsg_bl_metadata_row_params = type <{ i16, i16, i32, i16, i16, i32, i32, i16, i16, [36 x i8], i16 }>
%struct.tsg_bl_flash_row_head = type <{ i8, i16, [0 x i8] }>
%struct.pip_bl_packet_end = type <{ i16, i8 }>
%struct.pip_app_cmd_head = type <{ i16, i16, i8, i8, i8, [0 x i8] }>
%struct.gen5_app_set_parameter_data = type <{ i8, i8, i32 }>

@pip_read_sys_info = dso_local global { [7 x i8], [25 x i8] } { [7 x i8] c"\04\00\05\00/\00\02", [25 x i8] zeroinitializer }, align 32
@pip_bl_read_app_info = dso_local global { [13 x i8], [19 x i8] } { [13 x i8] c"\04\00\0B\00@\00\01<\00\00\B0B\17", [19 x i8] zeroinitializer }, align 32
@cyapa_pip_cmd_state_initialize.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&pip->cmd_lock\00", [17 x i8] zeroinitializer }, align 32
@cyapa_pip_cmd_state_initialize.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pip->pm_stage_lock\00", [44 x i8] zeroinitializer }, align 32
@__const.cyapa_pip_bl_exit.bl_gen5_bl_exit = private unnamed_addr constant [13 x i8] c"\04\00\0B\00@\00\01;\00\00 \C7\17", align 1
@__const.cyapa_pip_bl_enter.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\01", align 1
@cyapa_pip_check_fw._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: firmware image not match TP device.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cyapa_pip_check_fw\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/input/mouse/cyapa_gen5.c\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cyapa_pip_check_fw._entry_ptr = internal global ptr @cyapa_pip_check_fw._entry, section ".printk_index", align 4
@cyapa_pip_check_fw._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1271, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: invalid app_integrity data.\0A\00", [63 x i8] zeroinitializer }, align 32
@cyapa_pip_check_fw._entry_ptr.10 = internal global ptr @cyapa_pip_check_fw._entry.8, section ".printk_index", align 4
@cyapa_pip_check_fw._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: invalid app_integrity crc.\0A\00", [32 x i8] zeroinitializer }, align 32
@cyapa_pip_check_fw._entry_ptr.13 = internal global ptr @cyapa_pip_check_fw._entry.11, section ".printk_index", align 4
@cyapa_pip_check_fw._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1294, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: invalid image alignment.\0A\00", [34 x i8] zeroinitializer }, align 32
@cyapa_pip_check_fw._entry_ptr.16 = internal global ptr @cyapa_pip_check_fw._entry.14, section ".printk_index", align 4
@cyapa_pip_check_fw._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1307, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: invalid firmware app crc check.\0A\00", [59 x i8] zeroinitializer }, align 32
@cyapa_pip_check_fw._entry_ptr.19 = internal global ptr @cyapa_pip_check_fw._entry.17, section ".printk_index", align 4
@cyapa_pip_do_fw_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1403, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Gen5 FW update aborted: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cyapa_pip_do_fw_update\00", [41 x i8] zeroinitializer }, align 32
@cyapa_pip_do_fw_update._entry_ptr = internal global ptr @cyapa_pip_do_fw_update._entry, section ".printk_index", align 4
@__const.cyapa_pip_resume_scanning.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\04", align 1
@__const.cyapa_pip_suspend_scanning.cmd = private unnamed_addr constant [7 x i8] c"\04\00\05\00/\00\03", align 1
@cyapa_pip_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 2774, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"invalid device state, gen=%d, state=0x%02x\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cyapa_pip_irq_handler\00", [42 x i8] zeroinitializer }, align 32
@cyapa_pip_irq_handler._entry_ptr = internal global ptr @cyapa_pip_irq_handler._entry, section ".printk_index", align 4
@cyapa_pip_irq_handler._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.5, i32 2781, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read length bytes, (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cyapa_pip_irq_handler._entry_ptr.26 = internal global ptr @cyapa_pip_irq_handler._entry.24, section ".printk_index", align 4
@cyapa_pip_irq_handler._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.5, i32 2791, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid report_len=%d. bytes: %02x %02x\0A\00", [55 x i8] zeroinitializer }, align 32
@cyapa_pip_irq_handler._entry_ptr.29 = internal global ptr @cyapa_pip_irq_handler._entry.27, section ".printk_index", align 4
@cyapa_pip_irq_handler._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.23, ptr @.str.5, i32 2802, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read %d bytes report data, (%d)\0A\00", [53 x i8] zeroinitializer }, align 32
@cyapa_pip_irq_handler._entry_ptr.32 = internal global ptr @cyapa_pip_irq_handler._entry.30, section ".printk_index", align 4
@cyapa_gen5_ops = dso_local constant { %struct.cyapa_dev_ops, [32 x i8] } { %struct.cyapa_dev_ops { ptr @cyapa_pip_check_fw, ptr @cyapa_pip_bl_enter, ptr @cyapa_pip_bl_activate, ptr @cyapa_pip_bl_initiate, ptr @cyapa_pip_do_fw_update, ptr @cyapa_pip_bl_deactivate, ptr @cyapa_gen5_show_baseline, ptr @cyapa_pip_do_calibrate, ptr @cyapa_pip_cmd_state_initialize, ptr @cyapa_gen5_state_parse, ptr @cyapa_gen5_do_operational_check, ptr @cyapa_pip_irq_handler, ptr @cyapa_pip_irq_cmd_handler, ptr @cyapa_empty_pip_output_data, ptr @cyapa_gen5_set_power_mode, ptr @cyapa_pip_set_proximity }, [32 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@cyapa_pip_event_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.5, i32 2845, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid report_id=0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cyapa_pip_event_process\00", [40 x i8] zeroinitializer }, align 32
@cyapa_pip_event_process._entry_ptr = internal global ptr @cyapa_pip_event_process._entry, section ".printk_index", align 4
@cyapa_pip_event_process._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.5, i32 2853, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid touch packet length=%d\0A\00", [32 x i8] zeroinitializer }, align 32
@cyapa_pip_event_process._entry_ptr.38 = internal global ptr @cyapa_pip_event_process._entry.36, section ".printk_index", align 4
@cyapa_pip_event_process._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.5, i32 2863, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid button packet length=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@cyapa_pip_event_process._entry_ptr.41 = internal global ptr @cyapa_pip_event_process._entry.39, section ".printk_index", align 4
@cyapa_pip_event_process._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.5, i32 2870, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid proximity data, length=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@cyapa_pip_event_process._entry_ptr.44 = internal global ptr @cyapa_pip_event_process._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d %d %d %d %d %d %d %d %d %d %d \00", [62 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cyapa_gen5_do_operational_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 2571, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to set power active mode.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cyapa_gen5_do_operational_check\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cyapa_gen5_do_operational_check._entry_ptr = internal global ptr @cyapa_gen5_do_operational_check._entry, section ".printk_index", align 4
@cyapa_gen5_do_operational_check._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.48, ptr @.str.5, i32 2579, ptr @.str.49, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to enable proximity.\0A\00", [63 x i8] zeroinitializer }, align 32
@cyapa_gen5_do_operational_check._entry_ptr.52 = internal global ptr @cyapa_gen5_do_operational_check._entry.50, section ".printk_index", align 4
@product_id = external dso_local constant [0 x i8], align 1
@cyapa_gen5_do_operational_check._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.5, i32 2590, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: unknown product ID (%s)\0A\00", [35 x i8] zeroinitializer }, align 32
@cyapa_gen5_do_operational_check._entry_ptr.55 = internal global ptr @cyapa_gen5_do_operational_check._entry.53, section ".printk_index", align 4
@cyapa_gen5_set_power_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 1656, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"enter deep sleep fail: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cyapa_gen5_set_power_mode\00", [38 x i8] zeroinitializer }, align 32
@cyapa_gen5_set_power_mode._entry_ptr = internal global ptr @cyapa_gen5_set_power_mode._entry, section ".printk_index", align 4
@cyapa_gen5_set_power_mode._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.57, ptr @.str.5, i32 1672, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"deep sleep wake fail: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@cyapa_gen5_set_power_mode._entry_ptr.60 = internal global ptr @cyapa_gen5_set_power_mode._entry.58, section ".printk_index", align 4
@cyapa_gen5_set_power_mode._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.57, ptr @.str.5, i32 1681, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"change to active fail: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cyapa_gen5_set_power_mode._entry_ptr.63 = internal global ptr @cyapa_gen5_set_power_mode._entry.61, section ".printk_index", align 4
@cyapa_gen5_set_power_mode._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.57, ptr @.str.5, i32 1690, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail to button only mode: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@cyapa_gen5_set_power_mode._entry_ptr.66 = internal global ptr @cyapa_gen5_set_power_mode._entry.64, section ".printk_index", align 4
@cyapa_gen5_set_power_mode._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.57, ptr @.str.5, i32 1715, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"set power state to 0x%02x failed: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@cyapa_gen5_set_power_mode._entry_ptr.69 = internal global ptr @cyapa_gen5_set_power_mode._entry.67, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 1, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 18]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 5, i64 6]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967186]
@__sancov_gen_cov_switch_values.74 = internal global [8 x i64] [i64 6, i64 16, i64 0, i64 2, i64 29, i64 32, i64 238, i64 250]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 32]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 32]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 247, i64 255]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 32]
@__sancov_gen_cov_switch_values.79 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 31, i64 48]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 8, i64 31, i64 48]
@__sancov_gen_cov_switch_values.81 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 4, i64 252]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 8, i64 4, i64 252]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"pip_read_sys_info\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 337, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant [21 x i8] c"pip_bl_read_app_info\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 338, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 354, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 356, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1255, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1271, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1281, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1294, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1307, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1402, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2773, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2781, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2789, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2801, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [15 x i8] c"cyapa_gen5_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2888, i32 28 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 87, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2845, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2853, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2863, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2870, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2421, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2427, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2570, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2577, i32 5 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 2589, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1656, i32 4 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1672, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1681, i32 4 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1690, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.280 = private constant [36 x i8] c"../drivers/input/mouse/cyapa_gen5.c\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.280, i32 1714, i32 4 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @cyapa_gen5_do_operational_check._entry, ptr @cyapa_gen5_do_operational_check._entry.50, ptr @cyapa_gen5_do_operational_check._entry.53, ptr @cyapa_gen5_do_operational_check._entry_ptr, ptr @cyapa_gen5_do_operational_check._entry_ptr.52, ptr @cyapa_gen5_do_operational_check._entry_ptr.55, ptr @cyapa_gen5_set_power_mode._entry, ptr @cyapa_gen5_set_power_mode._entry.58, ptr @cyapa_gen5_set_power_mode._entry.61, ptr @cyapa_gen5_set_power_mode._entry.64, ptr @cyapa_gen5_set_power_mode._entry.67, ptr @cyapa_gen5_set_power_mode._entry_ptr, ptr @cyapa_gen5_set_power_mode._entry_ptr.60, ptr @cyapa_gen5_set_power_mode._entry_ptr.63, ptr @cyapa_gen5_set_power_mode._entry_ptr.66, ptr @cyapa_gen5_set_power_mode._entry_ptr.69, ptr @cyapa_pip_check_fw._entry, ptr @cyapa_pip_check_fw._entry.11, ptr @cyapa_pip_check_fw._entry.14, ptr @cyapa_pip_check_fw._entry.17, ptr @cyapa_pip_check_fw._entry.8, ptr @cyapa_pip_check_fw._entry_ptr, ptr @cyapa_pip_check_fw._entry_ptr.10, ptr @cyapa_pip_check_fw._entry_ptr.13, ptr @cyapa_pip_check_fw._entry_ptr.16, ptr @cyapa_pip_check_fw._entry_ptr.19, ptr @cyapa_pip_do_fw_update._entry, ptr @cyapa_pip_do_fw_update._entry_ptr, ptr @cyapa_pip_event_process._entry, ptr @cyapa_pip_event_process._entry.36, ptr @cyapa_pip_event_process._entry.39, ptr @cyapa_pip_event_process._entry.42, ptr @cyapa_pip_event_process._entry_ptr, ptr @cyapa_pip_event_process._entry_ptr.38, ptr @cyapa_pip_event_process._entry_ptr.41, ptr @cyapa_pip_event_process._entry_ptr.44, ptr @cyapa_pip_irq_handler._entry, ptr @cyapa_pip_irq_handler._entry.24, ptr @cyapa_pip_irq_handler._entry.27, ptr @cyapa_pip_irq_handler._entry.30, ptr @cyapa_pip_irq_handler._entry_ptr, ptr @cyapa_pip_irq_handler._entry_ptr.26, ptr @cyapa_pip_irq_handler._entry_ptr.29, ptr @cyapa_pip_irq_handler._entry_ptr.32, ptr @pip_read_sys_info, ptr @pip_bl_read_app_info, ptr @cyapa_pip_cmd_state_initialize.__key, ptr @.str, ptr @cyapa_pip_cmd_state_initialize.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @cyapa_gen5_ops, ptr @init_completion.__key, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pip_read_sys_info to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pip_bl_read_app_info to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_cmd_state_initialize.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_cmd_state_initialize.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_check_fw._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_check_fw._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_check_fw._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_check_fw._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_check_fw._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_do_fw_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_irq_handler._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_irq_handler._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_irq_handler._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_event_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_event_process._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_event_process._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_pip_event_process._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_do_operational_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_do_operational_check._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_do_operational_check._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_set_power_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_set_power_mode._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_set_power_mode._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_set_power_mode._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cyapa_gen5_set_power_mode._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_cmd_state_initialize(ptr noundef %cyapa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_states = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35
  %cmd_ready = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1
  %0 = ptrtoint ptr %cmd_ready to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cmd_ready, align 4
  %wait.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #11
  %cmd_issued = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued, i32 noundef 4) #11
  %1 = ptrtoint ptr %cmd_issued to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 0, ptr %cmd_issued, align 4
  tail call void @__mutex_init(ptr noundef %cmd_states, ptr noundef nonnull @.str, ptr noundef nonnull @cyapa_pip_cmd_state_initialize.__key) #11
  %pm_stage_lock = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %pm_stage_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @cyapa_pip_cmd_state_initialize.__key.1) #11
  %pm_stage = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 8
  %2 = ptrtoint ptr %pm_stage to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %pm_stage, align 4
  %resp_sort_func = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 5
  %3 = ptrtoint ptr %resp_sort_func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %resp_sort_func, align 4
  %in_progress_cmd = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 3
  %4 = ptrtoint ptr %in_progress_cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %in_progress_cmd, align 4
  %resp_data = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 6
  %5 = ptrtoint ptr %resp_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %resp_data, align 4
  %resp_len = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 7
  %6 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %resp_len, align 4
  %dev_pwr_mode = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 13
  %7 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %dev_pwr_mode, align 2
  %dev_sleep_time = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 14
  %8 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %dev_sleep_time, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_read(ptr nocapture noundef readonly %cyapa, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp = icmp eq i32 %size, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %size)
  %cmp1 = icmp ugt i32 %size, 256
  %or.cond = or i1 %tobool.not, %cmp1
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %size, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp4.not = icmp eq i32 %call.i, %size
  br i1 %cmp4.not, label %if.end3.cleanup_crit_edge, label %if.then5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp6, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then5 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %size, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_write(ptr nocapture noundef readonly %cyapa, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool1.not = icmp eq i32 %size, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %buf, i32 noundef %size, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %size)
  %cmp.not = icmp eq i32 %call.i, %size
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp3, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then2 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef writeonly %buf, ptr noundef %len, ptr noundef readonly %func) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %pm_stage_lock.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_stage_lock.i, i32 noundef 0) #11
  %pm_stage1.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 8
  %2 = ptrtoint ptr %pm_stage1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pm_stage1.i, align 4
  tail call void @mutex_unlock(ptr noundef %pm_stage_lock.i) #11
  %tobool.not = icmp eq ptr %len, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len, align 4
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 256)
  %7 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %buf_len.0 = phi i32 [ %6, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %empty_buf = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11
  %tobool.not.i = icmp eq ptr %empty_buf, null
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %tobool60.not = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.0)
  %tobool62.not = icmp eq i32 %buf_len.0, 0
  %or.cond165 = select i1 %tobool60.not, i1 true, i1 %tobool62.not
  %tobool64.not = icmp eq ptr %func, null
  %or.cond166 = or i1 %tobool64.not, %or.cond165
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %tobool84.not = icmp eq ptr %1, null
  %8 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %switch = icmp eq i32 %8, 4
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %report_count.0 = phi i32 [ 8, %if.end ], [ %report_count.1, %do.cond.do.body_crit_edge ]
  %empty_count.0 = phi i32 [ 0, %if.end ], [ %empty_count.2, %do.cond.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %empty_count.0)
  %cmp2 = icmp sgt i32 %empty_count.0, 5
  %brmerge = select i1 %cmp2, i1 true, i1 %tobool.not.i
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit, label %if.end3.i

if.end3.i:                                        ; preds = %do.body
  %9 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i, align 4
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %empty_buf, i32 noundef 2, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %if.end8, label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  %spec.select184 = select i1 %cmp6.i, i32 %call.i.i, i32 -5
  br label %cleanup

if.end8:                                          ; preds = %if.end3.i
  %11 = ptrtoint ptr %empty_buf to i32
  call void @__asan_loadN_noabort(i32 %11, i32 2)
  %12 = load i16, ptr %empty_buf, align 1
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #11
  %conv = zext i16 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp12 = icmp eq i16 %12, 512
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %inc = add nsw i32 %empty_count.0, 1
  br label %do.cond

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %13)
  %cmp15 = icmp ugt i16 %13, 256
  br i1 %cmp15, label %if.else.cleanup_crit_edge, label %if.else18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %cmp19 = icmp eq i16 %12, 0
  br i1 %cmp19, label %if.then21, label %if.end3.i173

if.then21:                                        ; preds = %if.else18
  br i1 %or.cond166, label %if.then21.do.cond_crit_edge, label %land.lhs.true26

if.then21.do.cond_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

land.lhs.true26:                                  ; preds = %if.then21
  %call29 = tail call zeroext i1 %func(ptr noundef %cyapa, ptr noundef nonnull %empty_buf, i32 noundef 2) #11
  br i1 %call29, label %if.then31, label %land.lhs.true26.do.cond_crit_edge

land.lhs.true26.do.cond_crit_edge:                ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.then31:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #13
  %14 = tail call i32 @llvm.smin.i32(i32 %buf_len.0, i32 2)
  %15 = call ptr @memcpy(ptr %buf, ptr %empty_buf, i32 %14)
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %14, ptr %len, align 4
  br label %cleanup

if.end3.i173:                                     ; preds = %if.else18
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %call.i.i171 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %18, ptr noundef nonnull %empty_buf, i32 noundef %conv, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i171, i32 %conv)
  %cmp4.not.i172 = icmp eq i32 %call.i.i171, %conv
  br i1 %cmp4.not.i172, label %if.end50, label %if.then5.i176

if.then5.i176:                                    ; preds = %if.end3.i173
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i171)
  %cmp6.i174 = icmp slt i32 %call.i.i171, 0
  %spec.select185 = select i1 %cmp6.i174, i32 %call.i.i171, i32 -5
  br label %cleanup

if.end50:                                         ; preds = %if.end3.i173
  %dec = add i32 %report_count.0, -1
  %19 = ptrtoint ptr %empty_buf to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %empty_buf, align 1
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #11
  %conv54 = zext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %21)
  %cmp55 = icmp ult i16 %21, 3
  br i1 %cmp55, label %if.end50.do.cond_crit_edge, label %if.else59

if.end50.do.cond_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.else59:                                        ; preds = %if.end50
  br i1 %or.cond166, label %if.else59.if.else80_crit_edge, label %land.lhs.true65

if.else59.if.else80_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else80

land.lhs.true65:                                  ; preds = %if.else59
  %call68 = tail call zeroext i1 %func(ptr noundef %cyapa, ptr noundef nonnull %empty_buf, i32 noundef %conv54) #11
  br i1 %call68, label %if.then70, label %land.lhs.true65.if.else80_crit_edge

land.lhs.true65.if.else80_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else80

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #13
  %22 = tail call i32 @llvm.smin.i32(i32 %buf_len.0, i32 %conv54)
  %23 = call ptr @memcpy(ptr %buf, ptr %empty_buf, i32 %22)
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %len, align 4
  br label %cleanup

if.else80:                                        ; preds = %land.lhs.true65.if.else80_crit_edge, %if.else59.if.else80_crit_edge
  %25 = ptrtoint ptr %operational to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %operational, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool81.not = icmp eq i8 %26, 0
  %or.cond167 = select i1 %tobool81.not, i1 true, i1 %tobool84.not
  br i1 %or.cond167, label %if.else80.do.cond_crit_edge, label %land.lhs.true85

if.else80.do.cond_crit_edge:                      ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

land.lhs.true85:                                  ; preds = %if.else80
  %call86 = tail call zeroext i1 @input_device_enabled(ptr noundef nonnull %1) #11
  %or.cond168 = select i1 %call86, i1 %switch, i1 false
  br i1 %or.cond168, label %if.then93, label %land.lhs.true85.do.cond_crit_edge

land.lhs.true85.do.cond_crit_edge:                ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.cond

if.then93:                                        ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #13
  %call96 = tail call fastcc i32 @cyapa_pip_event_process(ptr noundef %cyapa, ptr noundef nonnull %empty_buf)
  br label %do.cond

do.cond:                                          ; preds = %if.then93, %land.lhs.true85.do.cond_crit_edge, %if.else80.do.cond_crit_edge, %if.end50.do.cond_crit_edge, %land.lhs.true26.do.cond_crit_edge, %if.then21.do.cond_crit_edge, %if.then14
  %report_count.1 = phi i32 [ %report_count.0, %if.then14 ], [ %report_count.0, %land.lhs.true26.do.cond_crit_edge ], [ %report_count.0, %if.then21.do.cond_crit_edge ], [ %dec, %if.end50.do.cond_crit_edge ], [ %dec, %if.then93 ], [ %dec, %land.lhs.true85.do.cond_crit_edge ], [ %dec, %if.else80.do.cond_crit_edge ]
  %empty_count.2 = phi i32 [ %inc, %if.then14 ], [ %empty_count.0, %land.lhs.true26.do.cond_crit_edge ], [ %empty_count.0, %if.then21.do.cond_crit_edge ], [ 1, %if.end50.do.cond_crit_edge ], [ 0, %if.then93 ], [ 0, %land.lhs.true85.do.cond_crit_edge ], [ 0, %if.else80.do.cond_crit_edge ]
  %error.0 = phi i32 [ 2, %if.then14 ], [ 2, %land.lhs.true26.do.cond_crit_edge ], [ 2, %if.then21.do.cond_crit_edge ], [ -22, %if.end50.do.cond_crit_edge ], [ -22, %if.then93 ], [ -22, %land.lhs.true85.do.cond_crit_edge ], [ -22, %if.else80.do.cond_crit_edge ]
  %tobool100.not = icmp eq i32 %report_count.1, 0
  br i1 %tobool100.not, label %do.cond.cleanup_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

do.cond.cleanup_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %.mux.le = select i1 %cmp2, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %do.cond.cleanup_crit_edge, %if.then70, %if.then5.i176, %if.then31, %if.else.cleanup_crit_edge, %if.then5.i
  %retval.0 = phi i32 [ 0, %if.then31 ], [ 0, %if.then70 ], [ %spec.select184, %if.then5.i ], [ %spec.select185, %if.then5.i176 ], [ %.mux.le, %cleanup.loopexit.split.loop.exit ], [ -22, %if.else.cleanup_crit_edge ], [ %error.0, %do.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_pip_event_process(ptr nocapture noundef readonly %cyapa, ptr nocapture noundef readonly %report_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %report_data to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %report_data, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #11
  %conv = zext i16 %4 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %3)
  %cmp = icmp eq i16 %3, 512
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr [7 x i8], ptr %report_data, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %6)
  %cmp6 = icmp eq i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %cmp8 = icmp eq i16 %3, 1024
  %or.cond = select i1 %cmp6, i1 %cmp8, i1 false
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #11
  %call.i134 = tail call i64 @ktime_get_mono_fast_ns() #11
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %7 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store volatile i64 %call.i134, ptr %last_busy.i, align 8
  %call.i135 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 12) #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %8 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %do.end [
    i8 1, label %land.lhs.true39
    i8 3, label %if.else.land.lhs.true60_crit_edge
    i8 5, label %if.else.land.lhs.true60_crit_edge149
    i8 6, label %if.else.land.lhs.true60_crit_edge150
    i8 7, label %if.end70
  ]

if.else.land.lhs.true60_crit_edge150:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

if.else.land.lhs.true60_crit_edge149:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

if.else.land.lhs.true60_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true60

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.34, i32 noundef %conv5) #14
  br label %cleanup

land.lhs.true39:                                  ; preds = %if.else
  %9 = add i16 %4, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -121, i16 %9)
  %10 = icmp ult i16 %9, -121
  br i1 %10, label %do.end47, label %if.then85

do.end47:                                         ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %conv) #14
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.else.land.lhs.true60_crit_edge, %if.else.land.lhs.true60_crit_edge149, %if.else.land.lhs.true60_crit_edge150
  %11 = add i16 %4, -15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9, i16 %11)
  %12 = icmp ult i16 %11, -9
  br i1 %12, label %do.end69, label %if.else91

do.end69:                                         ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40, i32 noundef %conv) #14
  br label %cleanup

if.end70:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %3)
  %cmp75.not = icmp eq i16 %3, 1536
  br i1 %cmp75.not, label %if.then90, label %do.end80

do.end80:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %conv) #14
  br label %cleanup

if.then85:                                        ; preds = %land.lhs.true39
  %input1.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %13 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input1.i, align 4
  %arrayidx.i = getelementptr [7 x i8], ptr %report_data, i32 0, i32 5
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %17 = and i8 %16, 31
  %and.i = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp9.not.i = icmp eq i8 %17, 0
  br i1 %cmp9.not.i, label %if.then85.cyapa_pip_report_touches.exit_crit_edge, label %for.body.lr.ph.i

if.then85.cyapa_pip_report_touches.exit_crit_edge: ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_report_touches.exit

for.body.lr.ph.i:                                 ; preds = %if.then85
  %x_origin.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 26
  %max_abs_x.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 22
  %y_origin.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 27
  %max_abs_y.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 23
  br label %for.body.i

for.body.i:                                       ; preds = %cyapa_pip_report_slot_data.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cyapa_pip_report_slot_data.exit.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input1.i, align 4
  %touch_tip_event_id.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 1
  %20 = ptrtoint ptr %touch_tip_event_id.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %touch_tip_event_id.i.i, align 1
  %22 = and i8 %21, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %22)
  %cmp.i.i = icmp eq i8 %22, 96
  br i1 %cmp.i.i, label %for.body.i.cyapa_pip_report_slot_data.exit.i_crit_edge, label %if.end.i.i

for.body.i.cyapa_pip_report_slot_data.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_report_slot_data.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %23 = and i8 %21, 31
  %and5.i.i = zext i8 %23 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 47, i32 noundef %and5.i.i) #11
  %call.i.i = tail call zeroext i1 @input_mt_report_slot_state(ptr noundef %19, i32 noundef 0, i1 noundef zeroext true) #11
  %x_hi.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 3
  %24 = ptrtoint ptr %x_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %x_hi.i.i, align 1
  %conv8.i.i = zext i8 %25 to i32
  %shl.i.i = shl nuw nsw i32 %conv8.i.i, 8
  %x_lo.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 2
  %26 = ptrtoint ptr %x_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %x_lo.i.i, align 1
  %conv9.i.i = zext i8 %27 to i32
  %or.i.i = or i32 %shl.i.i, %conv9.i.i
  %28 = ptrtoint ptr %x_origin.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %x_origin.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %if.end.i.i.if.end11.i.i_crit_edge, label %if.then10.i.i

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %max_abs_x.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_abs_x.i.i, align 4
  %sub.i.i = sub i32 %31, %or.i.i
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %x.0.i.i = phi i32 [ %sub.i.i, %if.then10.i.i ], [ %or.i.i, %if.end.i.i.if.end11.i.i_crit_edge ]
  %y_hi.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 5
  %32 = ptrtoint ptr %y_hi.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %y_hi.i.i, align 1
  %conv12.i.i = zext i8 %33 to i32
  %shl13.i.i = shl nuw nsw i32 %conv12.i.i, 8
  %y_lo.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 4
  %34 = ptrtoint ptr %y_lo.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %y_lo.i.i, align 1
  %conv14.i.i = zext i8 %35 to i32
  %or15.i.i = or i32 %shl13.i.i, %conv14.i.i
  %36 = ptrtoint ptr %y_origin.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %y_origin.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool16.not.i.i = icmp eq i8 %37, 0
  br i1 %tobool16.not.i.i, label %if.end11.i.i.if.end19.i.i_crit_edge, label %if.then17.i.i

if.end11.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %max_abs_y.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_abs_y.i.i, align 4
  %sub18.i.i = sub i32 %39, %or15.i.i
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %if.end11.i.i.if.end19.i.i_crit_edge
  %y.0.i.i = phi i32 [ %sub18.i.i, %if.then17.i.i ], [ %or15.i.i, %if.end11.i.i.if.end19.i.i_crit_edge ]
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 53, i32 noundef %x.0.i.i) #11
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 54, i32 noundef %y.0.i.i) #11
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 25, i32 noundef 0) #11
  %z.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 6
  %40 = ptrtoint ptr %z.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %z.i.i, align 1
  %conv20.i.i = zext i8 %41 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 58, i32 noundef %conv20.i.i) #11
  %major_axis_len.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 7
  %42 = ptrtoint ptr %major_axis_len.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %major_axis_len.i.i, align 1
  %conv21.i.i = zext i8 %43 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 48, i32 noundef %conv21.i.i) #11
  %minor_axis_len.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 8
  %44 = ptrtoint ptr %minor_axis_len.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %minor_axis_len.i.i, align 1
  %conv22.i.i = zext i8 %45 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 49, i32 noundef %conv22.i.i) #11
  %major_tool_len.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 9
  %46 = ptrtoint ptr %major_tool_len.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %major_tool_len.i.i, align 1
  %conv23.i.i = zext i8 %47 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 50, i32 noundef %conv23.i.i) #11
  %minor_tool_len.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 10
  %48 = ptrtoint ptr %minor_tool_len.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %minor_tool_len.i.i, align 1
  %conv24.i.i = zext i8 %49 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 51, i32 noundef %conv24.i.i) #11
  %orientation.i.i = getelementptr %struct.cyapa_pip_report_data, ptr %report_data, i32 0, i32 1, i32 %i.010.i, i32 11
  %50 = ptrtoint ptr %orientation.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %orientation.i.i, align 1
  %conv25.i.i = zext i8 %51 to i32
  tail call void @input_event(ptr noundef %19, i32 noundef 3, i32 noundef 52, i32 noundef %conv25.i.i) #11
  br label %cyapa_pip_report_slot_data.exit.i

cyapa_pip_report_slot_data.exit.i:                ; preds = %if.end19.i.i, %for.body.i.cyapa_pip_report_slot_data.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %and.i
  br i1 %exitcond.not.i, label %cyapa_pip_report_slot_data.exit.i.cyapa_pip_report_touches.exit_crit_edge, label %cyapa_pip_report_slot_data.exit.i.for.body.i_crit_edge

cyapa_pip_report_slot_data.exit.i.for.body.i_crit_edge: ; preds = %cyapa_pip_report_slot_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

cyapa_pip_report_slot_data.exit.i.cyapa_pip_report_touches.exit_crit_edge: ; preds = %cyapa_pip_report_slot_data.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_report_touches.exit

cyapa_pip_report_touches.exit:                    ; preds = %cyapa_pip_report_slot_data.exit.i.cyapa_pip_report_touches.exit_crit_edge, %if.then85.cyapa_pip_report_touches.exit_crit_edge
  tail call void @input_mt_sync_frame(ptr noundef %14) #11
  tail call void @input_event(ptr noundef %14, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

if.then90:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  %input1.i136 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %52 = ptrtoint ptr %input1.i136 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input1.i136, align 4
  %arrayidx.i137 = getelementptr [7 x i8], ptr %report_data, i32 0, i32 5
  %54 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx.i137, align 1
  %56 = and i8 %55, 1
  %conv3.i = zext i8 %56 to i32
  tail call void @input_event(ptr noundef %53, i32 noundef 3, i32 noundef 25, i32 noundef %conv3.i) #11
  tail call void @input_event(ptr noundef %53, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

if.else91:                                        ; preds = %land.lhs.true60
  %input1.i138 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 5
  %57 = ptrtoint ptr %input1.i138 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input1.i138, align 4
  %arrayidx.i139 = getelementptr [7 x i8], ptr %report_data, i32 0, i32 5
  %59 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i139, align 1
  %btn_capability.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %61 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %btn_capability.i, align 1
  %63 = and i8 %62, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i, label %if.else91.if.end.i_crit_edge, label %if.then.i

if.else91.if.end.i_crit_edge:                     ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #13
  %64 = and i8 %60, 1
  %65 = zext i8 %64 to i32
  tail call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef 272, i32 noundef %65) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else91.if.end.i_crit_edge
  %66 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %btn_capability.i, align 1
  %68 = and i8 %67, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool12.not.i = icmp eq i8 %68, 0
  br i1 %tobool12.not.i, label %if.end.i.if.end21.i_crit_edge, label %if.then13.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21.i

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %69 = lshr i8 %60, 2
  %.lobit49.i = and i8 %69, 1
  %70 = zext i8 %.lobit49.i to i32
  tail call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef 274, i32 noundef %70) #11
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then13.i, %if.end.i.if.end21.i_crit_edge
  %71 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %btn_capability.i, align 1
  %73 = and i8 %72, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool25.not.i = icmp eq i8 %73, 0
  br i1 %tobool25.not.i, label %if.end21.i.cyapa_pip_report_buttons.exit_crit_edge, label %if.then26.i

if.end21.i.cyapa_pip_report_buttons.exit_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_report_buttons.exit

if.then26.i:                                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #13
  %74 = lshr i8 %60, 1
  %.lobit.i = and i8 %74, 1
  %75 = zext i8 %.lobit.i to i32
  tail call void @input_event(ptr noundef %58, i32 noundef 1, i32 noundef 273, i32 noundef %75) #11
  br label %cyapa_pip_report_buttons.exit

cyapa_pip_report_buttons.exit:                    ; preds = %if.then26.i, %if.end21.i.cyapa_pip_report_buttons.exit_crit_edge
  tail call void @input_event(ptr noundef %58, i32 noundef 0, i32 noundef 0, i32 noundef 0) #11
  br label %cleanup

cleanup:                                          ; preds = %cyapa_pip_report_buttons.exit, %if.then90, %cyapa_pip_report_touches.exit, %do.end80, %do.end69, %do.end47, %do.end, %if.then10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then10 ], [ -22, %do.end ], [ 0, %do.end47 ], [ 0, %do.end69 ], [ 0, %do.end80 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then90 ], [ 0, %cyapa_pip_report_buttons.exit ], [ 0, %cyapa_pip_report_touches.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef %cmd, i32 noundef %cmd_len, ptr noundef %resp_data, ptr noundef %resp_len, i32 noundef %timeout, ptr noundef %func, i1 noundef zeroext %irq_mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_states = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35
  %tobool.not = icmp eq ptr %cmd, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd_len)
  %tobool1.not = icmp eq i32 %cmd_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %cmd_states, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %resp_sort_func = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 5
  %0 = ptrtoint ptr %resp_sort_func to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %func, ptr %resp_sort_func, align 4
  %resp_data5 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 6
  %1 = ptrtoint ptr %resp_data5 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %resp_data, ptr %resp_data5, align 4
  %resp_len6 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 7
  %2 = ptrtoint ptr %resp_len6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %resp_len, ptr %resp_len6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %cmd_len)
  %cmp = icmp sgt i32 %cmd_len, 6
  br i1 %cmp, label %land.lhs.true, label %if.end4.if.end24_crit_edge

if.end4.if.end24_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end4
  %arrayidx = getelementptr i8, ptr %cmd, i32 4
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %4)
  %cmp7 = icmp eq i8 %4, 47
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx10 = getelementptr i8, ptr %cmd, i32 6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %7 = and i8 %6, 127
  br label %if.end24.sink.split

if.else:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cmd_len)
  %cmp13 = icmp ugt i32 %cmd_len, 12
  br i1 %cmp13, label %land.lhs.true15, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

land.lhs.true15:                                  ; preds = %if.else
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %cmp18 = icmp eq i8 %9, 64
  br i1 %cmp18, label %if.then20, label %land.lhs.true15.if.end24_crit_edge

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then20:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx21 = getelementptr i8, ptr %cmd, i32 7
  %10 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx21, align 1
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.then20, %if.then9
  %.sink = phi i8 [ %11, %if.then20 ], [ %7, %if.then9 ]
  %in_progress_cmd22 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 3
  %12 = ptrtoint ptr %in_progress_cmd22 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.sink, ptr %in_progress_cmd22, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %land.lhs.true15.if.end24_crit_edge, %if.else.if.end24_crit_edge, %if.end4.if.end24_crit_edge
  %is_irq_mode = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 4
  br i1 %irq_mode, label %if.end.i21.i, label %if.end.i.i111

if.end.i21.i:                                     ; preds = %if.end24
  %13 = ptrtoint ptr %is_irq_mode to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %is_irq_mode, align 1
  %cmd_ready.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1
  %14 = ptrtoint ptr %cmd_ready.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %cmd_ready.i, align 4
  %wait.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @init_completion.__key) #11
  %cmd_issued.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i, i32 1, i32 3, i32 1) #11
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i, ptr %cmd_issued.i, i32 1, ptr elementtype(i32) %cmd_issued.i) #11, !srcloc !129
  %client.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %16 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client.i.i, align 4
  %call.i.i20.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %cmd, i32 noundef %cmd_len, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i20.i, i32 %cmd_len)
  %cmp.not.i.i = icmp eq i32 %call.i.i20.i, %cmd_len
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i

if.then.i:                                        ; preds = %if.end.i21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i20.i)
  %cmp3.i.i = icmp slt i32 %call.i.i20.i, 0
  %call.i.i18.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i, ptr %cmd_issued.i, i32 1, ptr elementtype(i32) %cmd_issued.i) #11, !srcloc !130
  br i1 %cmp3.i.i, label %cyapa_do_i2c_pip_cmd_irq_sync.exit, label %if.then.i.if.end52_crit_edge

if.then.i.if.end52_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.else.i.i:                                      ; preds = %if.end.i21.i
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #11
  %call4.i = tail call i32 @wait_for_completion_timeout(ptr noundef %cmd_ready.i, i32 noundef %call2.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp eq i32 %call4.i, 0
  br i1 %cmp5.i, label %cyapa_do_i2c_pip_cmd_irq_sync.exit.thread121, label %if.else.i.i.if.end52_crit_edge

if.else.i.i.if.end52_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

cyapa_do_i2c_pip_cmd_irq_sync.exit.thread121:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i19.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i, i32 1, i32 3, i32 1) #11
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i, ptr %cmd_issued.i, i32 1, ptr elementtype(i32) %cmd_issued.i) #11, !srcloc !130
  br label %land.lhs.true30

cyapa_do_i2c_pip_cmd_irq_sync.exit:               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %call.i.i20.i)
  %cmp28 = icmp eq i32 %call.i.i20.i, -110
  br i1 %cmp28, label %cyapa_do_i2c_pip_cmd_irq_sync.exit.land.lhs.true30_crit_edge, label %cyapa_do_i2c_pip_cmd_irq_sync.exit.if.end52_crit_edge

cyapa_do_i2c_pip_cmd_irq_sync.exit.if.end52_crit_edge: ; preds = %cyapa_do_i2c_pip_cmd_irq_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

cyapa_do_i2c_pip_cmd_irq_sync.exit.land.lhs.true30_crit_edge: ; preds = %cyapa_do_i2c_pip_cmd_irq_sync.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %cyapa_do_i2c_pip_cmd_irq_sync.exit.land.lhs.true30_crit_edge, %cyapa_do_i2c_pip_cmd_irq_sync.exit.thread121
  %tobool31.not = icmp eq ptr %resp_data, null
  %tobool33.not = icmp eq ptr %resp_len, null
  %or.cond102 = or i1 %tobool31.not, %tobool33.not
  br i1 %or.cond102, label %land.lhs.true30.if.end52_crit_edge, label %land.lhs.true34

land.lhs.true30.if.end52_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

land.lhs.true34:                                  ; preds = %land.lhs.true30
  %20 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp35.not = icmp eq i32 %21, 0
  %tobool38.not = icmp eq ptr %func, null
  %or.cond103 = or i1 %tobool38.not, %cmp35.not
  br i1 %or.cond103, label %land.lhs.true34.if.end52_crit_edge, label %if.then39

land.lhs.true34.if.end52_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

if.then39:                                        ; preds = %land.lhs.true34
  %call40 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, ptr noundef nonnull %func)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %lor.lhs.false42, label %if.then39.if.then45_crit_edge

if.then39.if.then45_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

lor.lhs.false42:                                  ; preds = %if.then39
  %22 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43 = icmp eq i32 %23, 0
  br i1 %cmp43, label %lor.lhs.false42.if.then45_crit_edge, label %lor.lhs.false42.if.end52_crit_edge

lor.lhs.false42.if.end52_crit_edge:               ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end52

lor.lhs.false42.if.then45_crit_edge:              ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then45

if.then45:                                        ; preds = %lor.lhs.false42.if.then45_crit_edge, %if.then39.if.then45_crit_edge
  %spec.select = phi i32 [ -110, %lor.lhs.false42.if.then45_crit_edge ], [ %call40, %if.then39.if.then45_crit_edge ]
  br label %if.end52

if.end.i.i111:                                    ; preds = %if.end24
  %24 = ptrtoint ptr %is_irq_mode to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %is_irq_mode, align 1
  %cmd_issued.i104 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 2
  %call.i.i.i105 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i104, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i104, i32 1, i32 3, i32 1) #11
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i104, ptr %cmd_issued.i104, i32 1, ptr elementtype(i32) %cmd_issued.i104) #11, !srcloc !129
  %client.i.i109 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %26 = ptrtoint ptr %client.i.i109 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i.i109, align 4
  %call.i.i61.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %27, ptr noundef nonnull %cmd, i32 noundef %cmd_len, i16 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i61.i, i32 %cmd_len)
  %cmp.not.i.i110 = icmp eq i32 %call.i.i61.i, %cmd_len
  br i1 %cmp.not.i.i110, label %if.end.i115, label %if.then.i114

if.then.i114:                                     ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i61.i)
  %cmp3.i.i112 = icmp slt i32 %call.i.i61.i, 0
  %spec.select82.i = select i1 %cmp3.i.i112, i32 %call.i.i61.i, i32 -5
  %call.i.i59.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i104, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i104, i32 1, i32 3, i32 1) #11
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i104, ptr %cmd_issued.i104, i32 1, ptr elementtype(i32) %cmd_issued.i104) #11, !srcloc !130
  br label %if.end52

if.end.i115:                                      ; preds = %if.end.i.i111
  %tobool2.not.i = icmp eq ptr %resp_len, null
  br i1 %tobool2.not.i, label %if.end.i115.if.end31.i_crit_edge, label %cond.end5.i

if.end.i115.if.end31.i_crit_edge:                 ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

cond.end5.i:                                      ; preds = %if.end.i115
  %29 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp_len, align 4
  %tobool7.not.i = icmp eq ptr %resp_data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp10.not.i = icmp eq i32 %30, 0
  %or.cond.i = select i1 %tobool7.not.i, i1 true, i1 %cmp10.not.i
  %tobool12.not.i = icmp eq ptr %func, null
  %or.cond57.i = or i1 %tobool12.not.i, %or.cond.i
  br i1 %or.cond57.i, label %cond.end5.i.if.end31.i_crit_edge, label %if.then13.i

cond.end5.i.if.end31.i_crit_edge:                 ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then13.i:                                      ; preds = %cond.end5.i
  %div.i = udiv i32 %timeout, 5
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.backedge, %if.then13.i
  %tries.0.i = phi i32 [ %div.i, %if.then13.i ], [ %tries.0.i.be, %do.body.i.backedge ]
  tail call void @usleep_range_state(i32 noundef 3000, i32 noundef 5000, i32 noundef 2) #11
  %31 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %resp_len, align 4
  %call14.i = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, ptr noundef nonnull %func) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %do.cond.thread.i

lor.lhs.false.i:                                  ; preds = %do.body.i
  %32 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.i = icmp eq i32 %33, 0
  br i1 %cmp16.i, label %do.cond.i, label %lor.lhs.false20.i

do.cond.i:                                        ; preds = %lor.lhs.false.i
  %dec.i = add i32 %tries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp18.i = icmp sgt i32 %dec.i, 0
  br i1 %cmp18.i, label %do.cond.i.do.body.i.backedge_crit_edge, label %do.cond.i.if.then24.i_crit_edge

do.cond.i.if.then24.i_crit_edge:                  ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

do.cond.i.do.body.i.backedge_crit_edge:           ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.backedge

do.cond.thread.i:                                 ; preds = %do.body.i
  %dec74.i = add nsw i32 %tries.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tries.0.i)
  %cmp1875.i = icmp sgt i32 %tries.0.i, 1
  br i1 %cmp1875.i, label %do.cond.thread.i.do.body.i.backedge_crit_edge, label %do.cond.thread.i.if.then24.i_crit_edge

do.cond.thread.i.if.then24.i_crit_edge:           ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

do.cond.thread.i.do.body.i.backedge_crit_edge:    ; preds = %do.cond.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.backedge

do.body.i.backedge:                               ; preds = %do.cond.thread.i.do.body.i.backedge_crit_edge, %do.cond.i.do.body.i.backedge_crit_edge
  %tries.0.i.be = phi i32 [ %dec.i, %do.cond.i.do.body.i.backedge_crit_edge ], [ %dec74.i, %do.cond.thread.i.do.body.i.backedge_crit_edge ]
  br label %do.body.i

lor.lhs.false20.i:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0.i)
  %cmp23.i = icmp eq i32 %tries.0.i, 0
  br i1 %cmp23.i, label %lor.lhs.false20.i.if.then24.i_crit_edge, label %lor.lhs.false20.i.if.end31.i_crit_edge

lor.lhs.false20.i.if.end31.i_crit_edge:           ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

lor.lhs.false20.i.if.then24.i_crit_edge:          ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24.i

if.then24.i:                                      ; preds = %lor.lhs.false20.i.if.then24.i_crit_edge, %do.cond.thread.i.if.then24.i_crit_edge, %do.cond.i.if.then24.i_crit_edge
  %spec.select.i116 = phi i32 [ -110, %lor.lhs.false20.i.if.then24.i_crit_edge ], [ %call14.i, %do.cond.thread.i.if.then24.i_crit_edge ], [ -110, %do.cond.i.if.then24.i_crit_edge ]
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then24.i, %lor.lhs.false20.i.if.end31.i_crit_edge, %cond.end5.i.if.end31.i_crit_edge, %if.end.i115.if.end31.i_crit_edge
  %error.0.i = phi i32 [ %spec.select.i116, %if.then24.i ], [ 0, %cond.end5.i.if.end31.i_crit_edge ], [ 0, %lor.lhs.false20.i.if.end31.i_crit_edge ], [ 0, %if.end.i115.if.end31.i_crit_edge ]
  %call.i.i60.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued.i104, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued.i104, i32 1, i32 3, i32 1) #11
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued.i104, ptr %cmd_issued.i104, i32 1, ptr elementtype(i32) %cmd_issued.i104) #11, !srcloc !130
  br label %if.end52

if.end52:                                         ; preds = %if.end31.i, %if.then.i114, %if.then45, %lor.lhs.false42.if.end52_crit_edge, %land.lhs.true34.if.end52_crit_edge, %land.lhs.true30.if.end52_crit_edge, %cyapa_do_i2c_pip_cmd_irq_sync.exit.if.end52_crit_edge, %if.else.i.i.if.end52_crit_edge, %if.then.i.if.end52_crit_edge
  %error.0 = phi i32 [ %spec.select, %if.then45 ], [ 0, %lor.lhs.false42.if.end52_crit_edge ], [ -110, %land.lhs.true34.if.end52_crit_edge ], [ -110, %land.lhs.true30.if.end52_crit_edge ], [ %call.i.i20.i, %cyapa_do_i2c_pip_cmd_irq_sync.exit.if.end52_crit_edge ], [ %spec.select82.i, %if.then.i114 ], [ %error.0.i, %if.end31.i ], [ 0, %if.else.i.i.if.end52_crit_edge ], [ -5, %if.then.i.if.end52_crit_edge ]
  %35 = ptrtoint ptr %resp_sort_func to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %resp_sort_func, align 4
  %36 = ptrtoint ptr %resp_data5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %resp_data5, align 4
  %37 = ptrtoint ptr %resp_len6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %resp_len6, align 4
  %in_progress_cmd56 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 3
  %38 = ptrtoint ptr %in_progress_cmd56 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %in_progress_cmd56, align 4
  tail call void @mutex_unlock(ptr noundef %cmd_states) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %if.end52 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_sort_tsg_pip_bl_resp_data(ptr nocapture readnone %cyapa, ptr noundef readonly %data, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len)
  %cmp = icmp slt i32 %len, 11
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %1)
  %cmp1 = icmp eq i8 %1, 48
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr i8, ptr %data, i32 3
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %land.lhs.true7, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %arrayidx8 = getelementptr i8, ptr %data, i32 4
  %4 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp10 = icmp eq i8 %5, 1
  br i1 %cmp10, label %land.lhs.true7.return_crit_edge, label %land.lhs.true7.if.end13_crit_edge

land.lhs.true7.if.end13_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

land.lhs.true7.return_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end13:                                         ; preds = %land.lhs.true7.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  br label %return

return:                                           ; preds = %if.end13, %land.lhs.true7.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end13 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true7.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_sort_tsg_pip_app_resp_data(ptr nocapture noundef readonly %cyapa, ptr noundef readonly %data, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp = icmp slt i32 %len, 5
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr i8, ptr %data, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp1 = icmp eq i8 %1, 31
  br i1 %cmp1, label %land.lhs.true, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr i8, ptr %data, i32 3
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp5 = icmp eq i8 %3, 0
  br i1 %cmp5, label %if.then7, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then7:                                         ; preds = %land.lhs.true
  %4 = ptrtoint ptr %data to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %data, align 1
  %arrayidx10 = getelementptr i8, ptr %data, i32 4
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx10, align 1
  %8 = and i8 %7, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp12 = icmp eq i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %5)
  %cmp15 = icmp eq i16 %5, 1536
  %or.cond43 = select i1 %cmp12, i1 %cmp15, i1 false
  br i1 %or.cond43, label %land.lhs.true17, label %if.then7.if.else_crit_edge

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true17:                                  ; preds = %if.then7
  %arrayidx18 = getelementptr i8, ptr %data, i32 5
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18, align 1
  %in_progress_cmd = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 3
  %11 = ptrtoint ptr %in_progress_cmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_progress_cmd, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp21 = icmp eq i8 %10, %12
  br i1 %cmp21, label %land.lhs.true17.cleanup_crit_edge, label %land.lhs.true17.if.else_crit_edge

land.lhs.true17.if.else_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

land.lhs.true17.cleanup_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true17.if.else_crit_edge, %if.then7.if.else_crit_edge
  %in_progress_cmd27 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 3
  %13 = ptrtoint ptr %in_progress_cmd27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_progress_cmd27, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %14)
  %cmp29 = icmp eq i8 %8, %14
  br i1 %cmp29, label %if.else.cleanup_crit_edge, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %if.end.if.end34_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.else.cleanup_crit_edge, %land.lhs.true17.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end34 ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true17.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_initiate(ptr noundef %cyapa, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %cmd = alloca [256 x i8], align 2
  %resp_data = alloca [11 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data) #11
  %0 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 2
  %1 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 5
  %2 = call ptr @memset(ptr %resp_data, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %call = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 252)
  %5 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1024, ptr %cmd, align 2
  %length = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %length to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -27904, ptr %length, align 2
  %report_id = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 2
  %7 = ptrtoint ptr %report_id to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %report_id, align 2
  %packet_start = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 4
  %8 = ptrtoint ptr %packet_start to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %packet_start, align 2
  %cmd_code = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %cmd_code to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 72, ptr %cmd_code, align 1
  %data_length = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %data_length to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -30720, ptr %data_length, align 2
  %data4 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 0, i32 5
  %11 = ptrtoint ptr %data4 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 -6556957366271672998, ptr %data4, align 2
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  %conv.i = zext i8 %15 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw, align 4
  %sub.i = sub i32 %17, %add.i
  %div.i = udiv i32 %sub.i, 133
  %arrayidx2.i = getelementptr i8, ptr %13, i32 %add.i
  %sub8 = add nsw i32 %div.i, -1
  %record_data = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %sub8, i32 3
  %metadata_raw_parameter = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 1, i32 4, i32 2
  %18 = call ptr @memcpy(ptr %metadata_raw_parameter, ptr %record_data, i32 60)
  %call13 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %metadata_raw_parameter, i32 noundef 60) #11
  %metadata_crc = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 7, i32 4, i32 2
  %19 = call i16 @llvm.bswap.i16(i16 %call13) #11
  %20 = ptrtoint ptr %metadata_crc to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %metadata_crc, align 2
  %add.ptr = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 14, i32 4
  %call19 = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %packet_start, i32 noundef 140) #11
  %21 = call i16 @llvm.bswap.i16(i16 %call19) #11
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr, align 2
  %eop = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd, i32 14, i32 4, i32 2
  %23 = ptrtoint ptr %eop to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 23, ptr %eop, align 2
  %24 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %resp_len, align 4
  %call22 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 149, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 12000, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool.not = icmp eq i32 %call22, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %25 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %26)
  %cmp.not = icmp eq i32 %26, 11
  br i1 %cmp.not, label %lor.lhs.false24, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false24:                                  ; preds = %lor.lhs.false
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %28)
  %cmp27.not = icmp eq i8 %28, 48
  br i1 %cmp27.not, label %lor.lhs.false29, label %lor.lhs.false24.if.then_crit_edge

lor.lhs.false24.if.then_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false29:                                  ; preds = %lor.lhs.false24
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp32 = icmp eq i8 %30, 0
  br i1 %cmp32, label %lor.lhs.false29.cleanup_crit_edge, label %lor.lhs.false29.if.then_crit_edge

lor.lhs.false29.if.then_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

lor.lhs.false29.cleanup_crit_edge:                ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %lor.lhs.false29.if.then_crit_edge, %lor.lhs.false24.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %spec.select = phi i32 [ -11, %lor.lhs.false29.if.then_crit_edge ], [ -11, %lor.lhs.false24.if.then_crit_edge ], [ -11, %lor.lhs.false.if.then_crit_edge ], [ %call22, %entry.if.then_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %if.then, %lor.lhs.false29.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ 0, %lor.lhs.false29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_itu_t(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_exit(ptr noundef %cyapa) local_unnamed_addr #0 align 64 {
entry:
  %bl_gen5_bl_exit = alloca [13 x i8], align 1
  %resp_data = alloca [11 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %bl_gen5_bl_exit) #11
  %0 = call ptr @memcpy(ptr %bl_gen5_bl_exit, ptr @__const.cyapa_pip_bl_exit.bl_gen5_bl_exit, i32 13)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data) #11
  %1 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 1
  %2 = getelementptr inbounds [11 x i8], ptr %resp_data, i32 0, i32 2
  %3 = call ptr @memset(ptr %resp_data, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 11, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %bl_gen5_bl_exit, i32 noundef 13, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_bl_exit_data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %6)
  %cmp = icmp eq i32 %6, 11
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %8)
  %cmp2 = icmp eq i8 %8, 48
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %9 = ptrtoint ptr %resp_data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %resp_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp8 = icmp eq i8 %10, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end5.if.end15_crit_edge

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end5
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp12 = icmp eq i8 %12, 0
  br i1 %cmp12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end15 ], [ %call, %entry.cleanup_crit_edge ], [ -11, %lor.lhs.false.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %bl_gen5_bl_exit) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_bl_exit_data(ptr nocapture noundef readnone %cyapa, ptr noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp1 = icmp slt i32 %len, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %len)
  %cmp10 = icmp eq i32 %len, 11
  br i1 %cmp10, label %land.lhs.true12, label %if.end9.if.end33_crit_edge

if.end9.if.end33_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true12:                                  ; preds = %if.end9
  %arrayidx13 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %5)
  %cmp15 = icmp eq i8 %5, 48
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.if.end33_crit_edge

land.lhs.true12.if.end33_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %arrayidx18 = getelementptr i8, ptr %buf, i32 3
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp20 = icmp eq i8 %7, 0
  br i1 %cmp20, label %land.lhs.true22, label %land.lhs.true17.if.end33_crit_edge

land.lhs.true17.if.end33_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true22:                                  ; preds = %land.lhs.true17
  %arrayidx23 = getelementptr i8, ptr %buf, i32 4
  %8 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp25 = icmp eq i8 %9, 1
  br i1 %cmp25, label %land.lhs.true27, label %land.lhs.true22.if.end33_crit_edge

land.lhs.true22.if.end33_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true27:                                  ; preds = %land.lhs.true22
  %arrayidx28 = getelementptr i8, ptr %buf, i32 10
  %10 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %11)
  %cmp30 = icmp eq i8 %11, 23
  br i1 %cmp30, label %land.lhs.true27.return_crit_edge, label %land.lhs.true27.if.end33_crit_edge

land.lhs.true27.if.end33_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true27.return_crit_edge:                 ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end33:                                         ; preds = %land.lhs.true27.if.end33_crit_edge, %land.lhs.true22.if.end33_crit_edge, %land.lhs.true17.if.end33_crit_edge, %land.lhs.true12.if.end33_crit_edge, %if.end9.if.end33_crit_edge
  br label %return

return:                                           ; preds = %if.end33, %land.lhs.true27.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end33 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ], [ true, %land.lhs.true27.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_bl_enter(ptr noundef %cyapa) #0 align 64 {
entry:
  %cmd = alloca [7 x i8], align 1
  %resp_data = alloca [2 x i8], align 2
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd) #11
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.cyapa_pip_bl_enter.cmd, i32 7)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %resp_data) #11
  %1 = getelementptr inbounds [2 x i8], ptr %resp_data, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %call = tail call i32 @cyapa_poll_state(ptr noundef %cyapa, i32 noundef 500) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i1 @cyapa_is_pip_bl_mode(ptr noundef %cyapa) #11
  br i1 %call1, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call3 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %cyapa) #11
  br i1 %call3, label %if.end6, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.else
  %call7 = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %2 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %resp_len, align 4
  %3 = ptrtoint ptr %resp_data to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %resp_data, align 2
  %call10 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 7, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_application_launch_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end6.if.then18_crit_edge

if.end6.if.then18_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false:                                    ; preds = %if.end6
  %4 = ptrtoint ptr %resp_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %resp_data, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11.not = icmp eq i8 %5, 0
  br i1 %cmp11.not, label %lor.lhs.false13, label %lor.lhs.false.if.then18_crit_edge

lor.lhs.false.if.then18_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp16.not = icmp eq i8 %7, 0
  br i1 %cmp16.not, label %if.end21, label %lor.lhs.false13.if.then18_crit_edge

lor.lhs.false13.if.then18_crit_edge:              ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

if.then18:                                        ; preds = %lor.lhs.false13.if.then18_crit_edge, %lor.lhs.false.if.then18_crit_edge, %if.end6.if.then18_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp19 = icmp slt i32 %call10, 0
  %spec.select = select i1 %cmp19, i32 %call10, i32 -11
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false13
  %operational = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 2
  %8 = ptrtoint ptr %operational to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %operational, align 1
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %9 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %gen, align 4
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %10, label %if.end21.cleanup_crit_edge [
    i8 5, label %if.then25
    i8 6, label %if.then31
  ]

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %cyapa, align 4
  br label %cleanup

if.then31:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %cyapa, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.then25, %if.end21.cleanup_crit_edge, %if.then18, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then18 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cyapa_poll_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_bl_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cyapa_is_pip_app_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_application_launch_data(ptr nocapture noundef readnone %cyapa, ptr noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp1 = icmp slt i32 %len, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp2 = icmp eq i8 %1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %arrayidx4 = getelementptr i8, ptr %buf, i32 1
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp6 = icmp eq i8 %3, 0
  br i1 %cmp6, label %land.lhs.true.return_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  br label %return

return:                                           ; preds = %if.end9, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end9 ], [ false, %entry.return_crit_edge ], [ true, %land.lhs.true.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_check_fw(ptr nocapture noundef readonly %cyapa, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %5, label %entry.cleanup.sink.split_crit_edge [
    i8 12, label %entry.if.end.i_crit_edge
    i8 18, label %entry.if.end.i_crit_edge103
  ]

entry.if.end.i_crit_edge103:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %entry.if.end.i_crit_edge, %entry.if.end.i_crit_edge103
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %7 = ptrtoint ptr %gen.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %gen.i, align 4
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %8, label %if.end.i.cleanup.sink.split_crit_edge [
    i8 6, label %sw.bb.i
    i8 5, label %sw.bb15.i
  ]

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

sw.bb.i:                                          ; preds = %if.end.i
  %family_id.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %family_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -101, i8 %11)
  %cmp8.not.i = icmp eq i8 %11, -101
  br i1 %cmp8.not.i, label %lor.lhs.false.i, label %sw.bb.i.cleanup.sink.split_crit_edge

sw.bb.i.cleanup.sink.split_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false.i:                                  ; preds = %sw.bb.i
  %silicon_id_hi.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %silicon_id_hi.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %silicon_id_hi.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %13)
  %cmp11.not.i = icmp eq i8 %13, 11
  br i1 %cmp11.not.i, label %lor.lhs.false.i.if.end_crit_edge, label %lor.lhs.false.i.cleanup.sink.split_crit_edge

lor.lhs.false.i.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb15.i:                                        ; preds = %if.end.i
  %platform_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 17
  %14 = ptrtoint ptr %platform_ver.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %platform_ver.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %15)
  %cmp17.i = icmp ult i8 %15, 2
  br i1 %cmp17.i, label %if.then19.i, label %if.end26.i

if.then19.i:                                      ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %5)
  %cmp22.i = icmp eq i8 %5, 12
  br i1 %cmp22.i, label %if.then19.i.if.end_crit_edge, label %if.then19.i.cleanup.sink.split_crit_edge

if.then19.i.cleanup.sink.split_crit_edge:         ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.then19.i.if.end_crit_edge:                     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end26.i:                                       ; preds = %sw.bb15.i
  %family_id27.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %3, i32 0, i32 9
  %16 = ptrtoint ptr %family_id27.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %family_id27.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -111, i8 %17)
  %cmp29.not.i = icmp eq i8 %17, -111
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %if.end26.i.cleanup.sink.split_crit_edge

if.end26.i.cleanup.sink.split_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false31.i:                                ; preds = %if.end26.i
  %silicon_id_hi32.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_head, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %silicon_id_hi32.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %silicon_id_hi32.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp34.not.i = icmp eq i8 %19, 2
  br i1 %cmp34.not.i, label %lor.lhs.false31.i.if.end_crit_edge, label %lor.lhs.false31.i.cleanup.sink.split_crit_edge

lor.lhs.false31.i.cleanup.sink.split_crit_edge:   ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false31.i.if.end_crit_edge:               ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false31.i.if.end_crit_edge, %if.then19.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %20 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fw, align 4
  %sub.i = sub i32 %21, %add.i
  %div.i = udiv i32 %sub.i, 133
  %arrayidx2.i = getelementptr i8, ptr %3, i32 %add.i
  %sub = add nsw i32 %div.i, -1
  %arrayidx = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %sub
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp.not = icmp eq i8 %23, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.end
  %row_number = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %sub, i32 1
  %24 = ptrtoint ptr %row_number to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %row_number, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %25)
  %cmp6.not = icmp eq i16 %25, 511
  br i1 %cmp6.not, label %if.end12, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end12:                                         ; preds = %lor.lhs.false
  %record_data = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %sub, i32 3
  %call15 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %record_data, i32 noundef 60) #11
  %metadata_crc = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 10
  %26 = ptrtoint ptr %metadata_crc to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %metadata_crc, align 1
  %28 = tail call i16 @llvm.bswap.i16(i16 %27) #11
  call void @__sanitizer_cov_trace_cmp2(i16 %call15, i16 %28)
  %cmp19.not = icmp eq i16 %call15, %28
  br i1 %cmp19.not, label %if.end25, label %if.end12.cleanup.sink.split_crit_edge

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end25:                                         ; preds = %if.end12
  %app_start = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 2
  %29 = ptrtoint ptr %app_start to i32
  call void @__asan_loadN_noabort(i32 %29, i32 4)
  %30 = load i32, ptr %app_start, align 1
  %31 = and i32 %30, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool30.not = icmp eq i32 %31, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end25.cleanup.sink.split_crit_edge

if.end25.cleanup.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

lor.lhs.false31:                                  ; preds = %if.end25
  %upgrade_len = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 7
  %32 = ptrtoint ptr %upgrade_len to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %upgrade_len, align 1
  %upgrade_start = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 6
  %34 = ptrtoint ptr %upgrade_start to i32
  call void @__asan_loadN_noabort(i32 %34, i32 4)
  %35 = load i32, ptr %upgrade_start, align 1
  %app_len = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 3
  %36 = ptrtoint ptr %app_len to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %app_len, align 1
  %38 = tail call i16 @llvm.bswap.i16(i16 %37) #11
  %conv32 = zext i16 %38 to i32
  %rem33 = and i32 %conv32, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem33)
  %tobool34.not = icmp eq i32 %rem33, 0
  %39 = and i32 %35, 2130706432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool37.not = icmp eq i32 %39, 0
  %or.cond = select i1 %tobool34.not, i1 %tobool37.not, i1 false
  %40 = and i16 %33, 32512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool41.not = icmp eq i16 %40, 0
  %or.cond97 = select i1 %or.cond, i1 %tobool41.not, i1 false
  br i1 %or.cond97, label %for.cond.preheader, label %lor.lhs.false31.cleanup.sink.split_crit_edge

lor.lhs.false31.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %38)
  %cmp48100.not = icmp ult i16 %38, 128
  br i1 %cmp48100.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %div96 = lshr i32 %conv32, 7
  %umax = call i32 @llvm.umax.i32(i32 %div96, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0102 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %app_crc.0101 = phi i16 [ %call54, %for.body.for.body_crit_edge ], [ -1, %for.body.preheader ]
  %record_data52 = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %i.0102, i32 3
  %call54 = tail call zeroext i16 @crc_itu_t(i16 noundef zeroext %app_crc.0101, ptr noundef %record_data52, i32 noundef 128) #11
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %app_crc.0.lcssa = phi i16 [ -1, %for.cond.preheader.for.end_crit_edge ], [ %call54, %for.body.for.end_crit_edge ]
  %app_crc56 = getelementptr inbounds %struct.tsg_bl_metadata_row_params, ptr %record_data, i32 0, i32 4
  %41 = ptrtoint ptr %app_crc56 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 2)
  %42 = load i16, ptr %app_crc56, align 1
  %43 = tail call i16 @llvm.bswap.i16(i16 %42) #11
  call void @__sanitizer_cov_trace_cmp2(i16 %app_crc.0.lcssa, i16 %43)
  %cmp59.not = icmp eq i16 %app_crc.0.lcssa, %43
  br i1 %cmp59.not, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %lor.lhs.false31.cleanup.sink.split_crit_edge, %if.end25.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge, %lor.lhs.false31.i.cleanup.sink.split_crit_edge, %if.end26.i.cleanup.sink.split_crit_edge, %if.then19.i.cleanup.sink.split_crit_edge, %lor.lhs.false.i.cleanup.sink.split_crit_edge, %sw.bb.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.18.sink = phi ptr [ @.str.3, %entry.cleanup.sink.split_crit_edge ], [ @.str.3, %lor.lhs.false.i.cleanup.sink.split_crit_edge ], [ @.str.3, %sw.bb.i.cleanup.sink.split_crit_edge ], [ @.str.3, %if.then19.i.cleanup.sink.split_crit_edge ], [ @.str.3, %lor.lhs.false31.i.cleanup.sink.split_crit_edge ], [ @.str.3, %if.end26.i.cleanup.sink.split_crit_edge ], [ @.str.3, %if.end.i.cleanup.sink.split_crit_edge ], [ @.str.9, %if.end.cleanup.sink.split_crit_edge ], [ @.str.9, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ @.str.12, %if.end12.cleanup.sink.split_crit_edge ], [ @.str.15, %if.end25.cleanup.sink.split_crit_edge ], [ @.str.15, %lor.lhs.false31.cleanup.sink.split_crit_edge ], [ @.str.18, %for.end.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.18.sink, ptr noundef nonnull @.str.4) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ -22, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_do_fw_update(ptr noundef %cyapa, ptr nocapture noundef readonly %fw) #0 align 64 {
entry:
  %cmd.i = alloca [256 x i8], align 2
  %resp_data.i = alloca [11 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %conv.i = zext i8 %5 to i32
  %add.i = add nuw nsw i32 %conv.i, 1
  %6 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw, align 4
  %sub.i = sub i32 %7, %add.i
  %arrayidx2.i = getelementptr i8, ptr %3, i32 %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 265, i32 %sub.i)
  %cmp21 = icmp ugt i32 %sub.i, 265
  br i1 %cmp21, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %div.i = udiv i32 %sub.i, 133
  %8 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 2
  %9 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 5
  %10 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %packet_start.i = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd.i, i32 0, i32 4
  %length.i = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd.i, i32 0, i32 1
  %cmd_code.i = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd.i, i32 0, i32 4, i32 1
  %data_length.i = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd.i, i32 0, i32 4, i32 2
  %data.i15 = getelementptr inbounds %struct.pip_bl_cmd_head, ptr %cmd.i, i32 0, i32 5
  %flash_row_id12.i = getelementptr inbounds %struct.tsg_bl_flash_row_head, ptr %data.i15, i32 0, i32 1
  %flash_data.i = getelementptr inbounds %struct.tsg_bl_flash_row_head, ptr %data.i15, i32 0, i32 2
  %11 = add nsw i32 %div.i, -2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx2.i, i32 %i.022
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data.i) #11
  %12 = call ptr @memset(ptr %resp_data.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #11
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx, align 1
  %row_number.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx, i32 0, i32 1
  %15 = ptrtoint ptr %row_number.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %row_number.i, align 1
  %record_len2.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx, i32 0, i32 2
  %17 = ptrtoint ptr %record_len2.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %record_len2.i, align 1
  %record_data4.i = getelementptr inbounds %struct.cyapa_tsg_bin_image_data_record, ptr %arrayidx, i32 0, i32 3
  %19 = call ptr @memset(ptr %10, i32 0, i32 252)
  %20 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1024, ptr %cmd.i, align 2
  %21 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 -29184, ptr %length.i, align 2
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 64, ptr %10, align 2
  %23 = ptrtoint ptr %packet_start.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %packet_start.i, align 2
  %24 = ptrtoint ptr %cmd_code.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 57, ptr %cmd_code.i, align 1
  %conv8.i = zext i16 %18 to i32
  %add.i14 = add i16 %18, 3
  %25 = call i16 @llvm.bswap.i16(i16 %add.i14) #11
  %26 = ptrtoint ptr %data_length.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %data_length.i, align 2
  %27 = ptrtoint ptr %data.i15 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %14, ptr %data.i15, align 2
  %28 = call i16 @llvm.bswap.i16(i16 %16) #11
  %29 = ptrtoint ptr %flash_row_id12.i to i32
  call void @__asan_storeN_noabort(i32 %29, i32 2)
  store i16 %28, ptr %flash_row_id12.i, align 1
  %30 = call ptr @memcpy(ptr %flash_data.i, ptr %record_data4.i, i32 %conv8.i)
  %conv17.i = zext i16 %add.i14 to i32
  %add.ptr.i = getelementptr i8, ptr %data.i15, i32 %conv17.i
  %add19.i = add nuw nsw i32 %conv17.i, 4
  %call20.i = call zeroext i16 @crc_itu_t(i16 noundef zeroext -1, ptr noundef %packet_start.i, i32 noundef %add19.i) #11
  %31 = call i16 @llvm.bswap.i16(i16 %call20.i) #11
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %32, i32 2)
  store i16 %31, ptr %add.ptr.i, align 1
  %eop.i = getelementptr inbounds %struct.pip_bl_packet_end, ptr %add.ptr.i, i32 0, i32 1
  %33 = ptrtoint ptr %eop.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 23, ptr %eop.i, align 1
  %34 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 11, ptr %resp_len.i, align 4
  %call25.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 144, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body
  %35 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %36)
  %cmp.not.i = icmp eq i32 %36, 11
  br i1 %cmp.not.i, label %lor.lhs.false27.i, label %lor.lhs.false.i.do.end_crit_edge

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false27.i:                                ; preds = %lor.lhs.false.i
  %37 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %38)
  %cmp29.not.i = icmp eq i8 %38, 48
  br i1 %cmp29.not.i, label %lor.lhs.false31.i, label %lor.lhs.false27.i.do.end_crit_edge

lor.lhs.false27.i.do.end_crit_edge:               ; preds = %lor.lhs.false27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false31.i:                                ; preds = %lor.lhs.false27.i
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %cmp34.i = icmp eq i8 %40, 0
  br i1 %cmp34.i, label %for.inc, label %lor.lhs.false31.i.do.end_crit_edge

lor.lhs.false31.i.do.end_crit_edge:               ; preds = %lor.lhs.false31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp36.i = icmp slt i32 %call25.i, 0
  %spec.select = select i1 %cmp36.i, i32 %call25.i, i32 -11
  br label %do.end

do.end:                                           ; preds = %if.then.i, %lor.lhs.false31.i.do.end_crit_edge, %lor.lhs.false27.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %spec.select, %if.then.i ], [ -11, %lor.lhs.false31.i.do.end_crit_edge ], [ -11, %lor.lhs.false27.i.do.end_crit_edge ], [ -11, %lor.lhs.false.i.do.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false31.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %i.022, %11
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_set_proximity(ptr noundef %cyapa, i1 noundef zeroext %enable) #0 align 64 {
entry:
  %cmd = alloca [8 x i8], align 1
  %resp_data = alloca [6 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 1
  %1 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 2
  %2 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 3
  %3 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 4
  %4 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 5
  %5 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 6
  %6 = getelementptr inbounds [8 x i8], ptr %cmd, i32 0, i32 7
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %cmd, align 1
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 6, ptr %1, align 1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %2, align 1
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 47, ptr %3, align 1
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %4, align 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 73, ptr %5, align 1
  %conv = zext i1 %enable to i8
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data) #11
  %15 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 3
  %16 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 4
  %17 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 5
  %18 = call ptr @memset(ptr %resp_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %19 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 8, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false)
  %20 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %call, label %cond.end [
    i32 0, label %lor.lhs.false
    i32 -110, label %entry.cond.end.thread_crit_edge
  ]

entry.cond.end.thread_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

lor.lhs.false:                                    ; preds = %entry
  %21 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %23)
  %cmp = icmp eq i8 %23, 31
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cond.end.thread44_crit_edge

lor.lhs.false.cond.end.thread44_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread44

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp14 = icmp eq i8 %25, 0
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.cond.end.thread44_crit_edge

land.lhs.true.cond.end.thread44_crit_edge:        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread44

land.lhs.true16:                                  ; preds = %land.lhs.true
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %16, align 1
  %28 = and i8 %27, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %28)
  %cmp19 = icmp eq i8 %28, 73
  br i1 %cmp19, label %lor.lhs.false21, label %land.lhs.true16.cond.end.thread44_crit_edge

land.lhs.true16.cond.end.thread44_crit_edge:      ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread44

lor.lhs.false21:                                  ; preds = %land.lhs.true16
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp24 = icmp eq i8 %30, 0
  br i1 %cmp24, label %lor.lhs.false21.cleanup_crit_edge, label %lor.lhs.false21.cond.end.thread44_crit_edge

lor.lhs.false21.cond.end.thread44_crit_edge:      ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread44

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end.thread44:                                ; preds = %lor.lhs.false21.cond.end.thread44_crit_edge, %land.lhs.true16.cond.end.thread44_crit_edge, %land.lhs.true.cond.end.thread44_crit_edge, %lor.lhs.false.cond.end.thread44_crit_edge
  br label %cleanup

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp28 = icmp slt i32 %call, 0
  br i1 %cmp28, label %cond.end.cond.end.thread_crit_edge, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.end.cond.end.thread_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.thread

cond.end.thread:                                  ; preds = %cond.end.cond.end.thread_crit_edge, %entry.cond.end.thread_crit_edge
  %cond43 = phi i32 [ %call, %cond.end.cond.end.thread_crit_edge ], [ -95, %entry.cond.end.thread_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cond.end.thread, %cond.end.cleanup_crit_edge, %cond.end.thread44, %lor.lhs.false21.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false21.cleanup_crit_edge ], [ %cond43, %cond.end.thread ], [ -22, %cond.end.cleanup_crit_edge ], [ -22, %cond.end.thread44 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_deep_sleep(ptr noundef %cyapa, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [4 x i8], align 4
  %resp_data = alloca [5 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd) #11
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 83886088, ptr %cmd, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %resp_data) #11
  %1 = call ptr @memset(ptr %resp_data, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %and = and i8 %state, 3
  %arrayidx = getelementptr inbounds [4 x i8], ptr %cmd, i32 0, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %and, ptr %arrayidx, align 2
  %3 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 4, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = getelementptr inbounds [5 x i8], ptr %resp_data, i32 0, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %4, align 1
  %7 = and i8 %6, 3
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %state)
  %cmp.not = icmp eq i8 %7, %state
  %spec.select = select i1 %cmp.not, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_pip_deep_sleep_data(ptr nocapture noundef readnone %cyapa, ptr nocapture noundef readonly %buf, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp = icmp eq i32 %len, 5
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %1)
  %cmp1 = icmp eq i8 %1, -16
  br i1 %cmp1, label %land.lhs.true3, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %arrayidx4 = getelementptr i8, ptr %buf, i32 4
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx4, align 1
  %4 = and i8 %3, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %4)
  %cmp6 = icmp eq i8 %4, 8
  br i1 %cmp6, label %land.lhs.true3.return_crit_edge, label %land.lhs.true3.if.end_crit_edge

land.lhs.true3.if.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true3.return_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true3.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true3.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true3.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_resume_scanning(ptr noundef %cyapa) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [7 x i8], align 1
  %resp_data = alloca [6 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd) #11
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.cyapa_pip_resume_scanning.cmd, i32 7)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data) #11
  %1 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 3
  %2 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 4
  %3 = call ptr @memset(ptr %resp_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %call = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %resp_len, align 4
  %call2 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 7, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %7)
  %cmp = icmp eq i8 %7, 31
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  %12 = and i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %12)
  %cmp11 = icmp eq i8 %12, 4
  br i1 %cmp11, label %if.end, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_suspend_scanning(ptr noundef %cyapa) local_unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [7 x i8], align 1
  %resp_data = alloca [6 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd) #11
  %0 = call ptr @memcpy(ptr %cmd, ptr @__const.cyapa_pip_suspend_scanning.cmd, i32 7)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data) #11
  %1 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 3
  %2 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 4
  %3 = call ptr @memset(ptr %resp_data, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %call = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %4 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 6, ptr %resp_len, align 4
  %call2 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 7, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = getelementptr inbounds [6 x i8], ptr %resp_data, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %7)
  %cmp = icmp eq i8 %7, 31
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp6 = icmp eq i8 %9, 0
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true8:                                   ; preds = %land.lhs.true
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  %12 = and i8 %11, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %12)
  %cmp11 = icmp eq i8 %12, 3
  br i1 %cmp11, label %if.end, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  %call13 = call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_do_calibrate(ptr nocapture noundef readonly %dev, ptr nocapture readnone %attr, ptr nocapture readnone %buf, i32 noundef %count) #0 align 64 {
entry:
  %cmd.i27 = alloca [8 x i8], align 8
  %resp_data.i28 = alloca [6 x i8], align 1
  %resp_len.i29 = alloca i32, align 4
  %cmd.i = alloca [8 x i8], align 8
  %resp_data.i = alloca [6 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i) #11
  %2 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 5
  %5 = call ptr @memset(ptr %resp_data.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #11
  %call.i = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %6 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 288236974010017792, ptr %cmd.i, align 8
  %7 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 6, ptr %resp_len.i, align 4
  %call4.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 8, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %8 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %10)
  %cmp.i = icmp eq i8 %10, 31
  br i1 %cmp.i, label %land.lhs.true.i, label %lor.lhs.false.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge

lor.lhs.false.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_calibrate_pwcs.exit.thread

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %cmp9.i = icmp eq i8 %12, 0
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge

land.lhs.true.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_calibrate_pwcs.exit.thread

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %3, align 1
  %15 = and i8 %14, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %15)
  %cmp14.i = icmp eq i8 %15, 40
  br i1 %cmp14.i, label %lor.lhs.false16.i, label %land.lhs.true11.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge

land.lhs.true11.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_calibrate_pwcs.exit.thread

lor.lhs.false16.i:                                ; preds = %land.lhs.true11.i
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp19.i = icmp eq i8 %17, 0
  br i1 %cmp19.i, label %if.end5, label %lor.lhs.false16.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge

lor.lhs.false16.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_calibrate_pwcs.exit.thread

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp21.i = icmp slt i32 %call4.i, 0
  %spec.select49 = select i1 %cmp21.i, i32 %call4.i, i32 -11
  br label %cyapa_pip_calibrate_pwcs.exit.thread

cyapa_pip_calibrate_pwcs.exit.thread:             ; preds = %if.then.i, %lor.lhs.false16.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge, %land.lhs.true11.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge, %land.lhs.true.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge, %lor.lhs.false.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %lor.lhs.false16.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge ], [ -11, %land.lhs.true11.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge ], [ -11, %land.lhs.true.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge ], [ -11, %lor.lhs.false.i.cyapa_pip_calibrate_pwcs.exit.thread_crit_edge ], [ %spec.select49, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #11
  br label %resume_scanning

if.end5:                                          ; preds = %lor.lhs.false16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i27) #11
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i28) #11
  %18 = getelementptr inbounds [6 x i8], ptr %resp_data.i28, i32 0, i32 3
  %19 = getelementptr inbounds [6 x i8], ptr %resp_data.i28, i32 0, i32 4
  %20 = getelementptr inbounds [6 x i8], ptr %resp_data.i28, i32 0, i32 5
  %21 = call ptr @memset(ptr %resp_data.i28, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i29) #11
  %call.i30 = call i32 @cyapa_empty_pip_output_data(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %22 = ptrtoint ptr %cmd.i27 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 288236974010017794, ptr %cmd.i27, align 8
  %23 = ptrtoint ptr %resp_len.i29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %resp_len.i29, align 4
  %call4.i31 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %1, ptr noundef nonnull %cmd.i27, i32 noundef 8, ptr noundef nonnull %resp_data.i28, ptr noundef nonnull %resp_len.i29, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i31)
  %tobool.not.i32 = icmp eq i32 %call4.i31, 0
  br i1 %tobool.not.i32, label %lor.lhs.false.i34, label %if.end5.if.then.i43_crit_edge

if.end5.if.then.i43_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i43

lor.lhs.false.i34:                                ; preds = %if.end5
  %24 = getelementptr inbounds [6 x i8], ptr %resp_data.i28, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %26)
  %cmp.i33 = icmp eq i8 %26, 31
  br i1 %cmp.i33, label %land.lhs.true.i36, label %lor.lhs.false.i34.if.then.i43_crit_edge

lor.lhs.false.i34.if.then.i43_crit_edge:          ; preds = %lor.lhs.false.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i43

land.lhs.true.i36:                                ; preds = %lor.lhs.false.i34
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp9.i35 = icmp eq i8 %28, 0
  br i1 %cmp9.i35, label %land.lhs.true11.i38, label %land.lhs.true.i36.if.then.i43_crit_edge

land.lhs.true.i36.if.then.i43_crit_edge:          ; preds = %land.lhs.true.i36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i43

land.lhs.true11.i38:                              ; preds = %land.lhs.true.i36
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %19, align 1
  %31 = and i8 %30, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 40, i8 %31)
  %cmp14.i37 = icmp eq i8 %31, 40
  br i1 %cmp14.i37, label %lor.lhs.false16.i40, label %land.lhs.true11.i38.if.then.i43_crit_edge

land.lhs.true11.i38.if.then.i43_crit_edge:        ; preds = %land.lhs.true11.i38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i43

lor.lhs.false16.i40:                              ; preds = %land.lhs.true11.i38
  %32 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp19.i39 = icmp eq i8 %33, 0
  br i1 %cmp19.i39, label %lor.lhs.false16.i40.cyapa_pip_calibrate_pwcs.exit45_crit_edge, label %lor.lhs.false16.i40.if.then.i43_crit_edge

lor.lhs.false16.i40.if.then.i43_crit_edge:        ; preds = %lor.lhs.false16.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i43

lor.lhs.false16.i40.cyapa_pip_calibrate_pwcs.exit45_crit_edge: ; preds = %lor.lhs.false16.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_pip_calibrate_pwcs.exit45

if.then.i43:                                      ; preds = %lor.lhs.false16.i40.if.then.i43_crit_edge, %land.lhs.true11.i38.if.then.i43_crit_edge, %land.lhs.true.i36.if.then.i43_crit_edge, %lor.lhs.false.i34.if.then.i43_crit_edge, %if.end5.if.then.i43_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i31)
  %cmp21.i41 = icmp slt i32 %call4.i31, 0
  %spec.select.i42 = select i1 %cmp21.i41, i32 %call4.i31, i32 -11
  br label %cyapa_pip_calibrate_pwcs.exit45

cyapa_pip_calibrate_pwcs.exit45:                  ; preds = %if.then.i43, %lor.lhs.false16.i40.cyapa_pip_calibrate_pwcs.exit45_crit_edge
  %retval.0.i44 = phi i32 [ %spec.select.i42, %if.then.i43 ], [ 0, %lor.lhs.false16.i40.cyapa_pip_calibrate_pwcs.exit45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i29) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i28) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i27) #11
  br label %resume_scanning

resume_scanning:                                  ; preds = %cyapa_pip_calibrate_pwcs.exit45, %cyapa_pip_calibrate_pwcs.exit.thread
  %calibrate_error.0 = phi i32 [ %retval.0.i44, %cyapa_pip_calibrate_pwcs.exit45 ], [ %retval.0.i.ph, %cyapa_pip_calibrate_pwcs.exit.thread ]
  %call10 = call i32 @cyapa_pip_resume_scanning(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %calibrate_error.0)
  %tobool12.not = icmp eq i32 %calibrate_error.0, 0
  %or.cond = select i1 %tobool11.not, i1 %tobool12.not, i1 false
  %calibrate_error.0.call10 = select i1 %tobool11.not, i32 %calibrate_error.0, i32 %call10
  %spec.select = select i1 %or.cond, i32 %count, i32 %calibrate_error.0.call10
  br label %cleanup

cleanup:                                          ; preds = %resume_scanning, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %spec.select, %resume_scanning ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cyapa_pip_sort_system_info_data(ptr nocapture readnone %cyapa, ptr nocapture noundef readonly %buf, i32 %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %buf, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %1)
  %cmp = icmp eq i8 %1, 31
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx2 = getelementptr i8, ptr %buf, i32 3
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4 = icmp eq i8 %3, 0
  br i1 %cmp4, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %arrayidx7 = getelementptr i8, ptr %buf, i32 4
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %6 = and i8 %5, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp9 = icmp eq i8 %6, 2
  br i1 %cmp9, label %land.lhs.true6.return_crit_edge, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6.return_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true6.return_crit_edge
  %retval.0 = phi i1 [ false, %if.end ], [ true, %land.lhs.true6.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @cyapa_pip_irq_cmd_handler(ptr noundef %cyapa) #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #11
  %cmd_issued = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cmd_issued, i32 noundef 4) #11
  %0 = ptrtoint ptr %cmd_issued to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %cmd_issued, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then:                                          ; preds = %entry
  %is_irq_mode = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 4
  %2 = ptrtoint ptr %is_irq_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_irq_mode, align 1, !range !128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then
  %irq_cmd_buf = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 10
  %tobool.not.i = icmp eq ptr %irq_cmd_buf, null
  br i1 %tobool.not.i, label %if.end.cyapa_i2c_pip_read.exit_crit_edge, label %if.end3.i

if.end.cyapa_i2c_pip_read.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_i2c_pip_read.exit

if.end3.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %client.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %call.i.i102 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %irq_cmd_buf, i32 noundef 2, i16 noundef zeroext 1) #11
  br label %cyapa_i2c_pip_read.exit

cyapa_i2c_pip_read.exit:                          ; preds = %if.end3.i, %if.end.cyapa_i2c_pip_read.exit_crit_edge
  %6 = ptrtoint ptr %irq_cmd_buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %7 = load i16, ptr %irq_cmd_buf, align 1
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #11
  %9 = tail call i16 @llvm.umax.i16(i16 %8, i16 2)
  %10 = zext i16 %9 to i32
  %11 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %9)
  %cmp11 = icmp ult i16 %9, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %9)
  %cmp1.i = icmp ugt i16 %9, 256
  %or.cond.i = or i1 %tobool.not.i, %cmp1.i
  %or.cond = select i1 %cmp11, i1 true, i1 %or.cond.i
  br i1 %or.cond, label %cyapa_i2c_pip_read.exit.if.end17_crit_edge, label %if.end3.i107

cyapa_i2c_pip_read.exit.if.end17_crit_edge:       ; preds = %cyapa_i2c_pip_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.end3.i107:                                     ; preds = %cyapa_i2c_pip_read.exit
  call void @__sanitizer_cov_trace_pc() #13
  %client.i104 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %12 = ptrtoint ptr %client.i104 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i104, align 4
  %call.i.i105 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %13, ptr noundef nonnull %irq_cmd_buf, i32 noundef %10, i16 noundef zeroext 1) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end3.i107, %cyapa_i2c_pip_read.exit.if.end17_crit_edge
  %resp_sort_func = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 5
  %14 = ptrtoint ptr %resp_sort_func to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %resp_sort_func, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end17.if.then24_crit_edge, label %land.lhs.true

if.end17.if.then24_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

land.lhs.true:                                    ; preds = %if.end17
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  %call22 = tail call zeroext i1 %15(ptr noundef %cyapa, ptr noundef %irq_cmd_buf, i32 noundef %17) #11
  br i1 %call22, label %if.end40, label %land.lhs.true.if.then24_crit_edge

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then24

if.then24:                                        ; preds = %land.lhs.true.if.then24_crit_edge, %if.end17.if.then24_crit_edge
  %18 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %length, align 4
  %resp_len = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 7
  %19 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resp_len, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %if.then24.if.end28_crit_edge, label %if.then26

if.then24.if.end28_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then26:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %23 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %length, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then24.if.end28_crit_edge
  %resp_data = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 6
  %24 = ptrtoint ptr %resp_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %resp_data, align 4
  %26 = ptrtoint ptr %resp_sort_func to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %resp_sort_func, align 4
  %call30 = call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef %25, ptr noundef nonnull %length, ptr noundef %27)
  %28 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %resp_len, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.end28.cleanup_crit_edge, label %land.lhs.true33

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true33:                                  ; preds = %if.end28
  %30 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp34.not = icmp eq i32 %31, 0
  br i1 %cmp34.not, label %land.lhs.true33.cleanup_crit_edge, label %if.then36

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %29, align 4
  %call.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued, i32 noundef 4) #11
  call void @llvm.prefetch.p0(ptr %cmd_issued, i32 1, i32 3, i32 1) #11
  %33 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued, ptr %cmd_issued, i32 1, ptr elementtype(i32) %cmd_issued) #11, !srcloc !130
  %cmd_ready = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1
  call void @complete(ptr noundef %cmd_ready) #11
  br label %cleanup

if.end40:                                         ; preds = %land.lhs.true
  %resp_data41 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 6
  %34 = ptrtoint ptr %resp_data41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %resp_data41, align 4
  %tobool42.not = icmp eq ptr %35, null
  br i1 %tobool42.not, label %if.end40.if.end60_crit_edge, label %land.lhs.true43

if.end40.if.end60_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

land.lhs.true43:                                  ; preds = %if.end40
  %resp_len44 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 7
  %36 = ptrtoint ptr %resp_len44 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %resp_len44, align 4
  %tobool45.not = icmp eq ptr %37, null
  br i1 %tobool45.not, label %land.lhs.true43.if.end60_crit_edge, label %if.then46

land.lhs.true43.if.end60_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then46:                                        ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %37, align 4
  %40 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %length, align 4
  %42 = tail call i32 @llvm.smin.i32(i32 %39, i32 %41)
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %37, align 4
  %44 = ptrtoint ptr %resp_data41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %resp_data41, align 4
  %46 = ptrtoint ptr %resp_len44 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %resp_len44, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = call ptr @memcpy(ptr %45, ptr %irq_cmd_buf, i32 %49)
  br label %if.end60

if.end60:                                         ; preds = %if.then46, %land.lhs.true43.if.end60_crit_edge, %if.end40.if.end60_crit_edge
  %call.i.i101 = tail call zeroext i1 @__kasan_check_write(ptr noundef %cmd_issued, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %cmd_issued, i32 1, i32 3, i32 1) #11
  %51 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %cmd_issued, ptr %cmd_issued, i32 1, ptr elementtype(i32) %cmd_issued) #11, !srcloc !130
  %cmd_ready62 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 1
  tail call void @complete(ptr noundef %cmd_ready62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then36, %land.lhs.true33.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #11
  ret i1 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cyapa_pip_irq_handler(ptr noundef %cyapa) #0 align 64 {
entry:
  %report_data = alloca %struct.cyapa_pip_report_data, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 127, ptr nonnull %report_data) #11
  %2 = call ptr @memset(ptr %report_data, i32 255, i32 127)
  %call = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %cyapa) #11
  br i1 %call, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %3 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %gen, align 4
  %conv = zext i8 %4 to i32
  %5 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cyapa, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef %conv, i32 noundef %6) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %report_data, i32 noundef 2, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp4.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp4.not.i, label %if.end8, label %cyapa_i2c_pip_read.exit

cyapa_i2c_pip_read.exit:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i = icmp slt i32 %call.i.i, 0
  %spec.select.i = select i1 %cmp6.i, i32 %call.i.i, i32 -5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %spec.select.i) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %report_data to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %report_data, align 2
  %11 = call i16 @llvm.bswap.i16(i16 %10) #11
  %conv10 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %11)
  %cmp11 = icmp ult i16 %11, 2
  br i1 %cmp11, label %do.end16, label %if.end23

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %report_data to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %report_data, align 2
  %conv19 = zext i8 %13 to i32
  %arrayidx21 = getelementptr inbounds [7 x i8], ptr %report_data, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx21, align 1
  %conv22 = zext i8 %15 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28, i32 noundef %conv10, i32 noundef %conv19, i32 noundef %conv22) #14
  br label %cleanup

if.end23:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %10)
  %cmp24 = icmp eq i16 %10, 512
  br i1 %cmp24, label %if.end23.cleanup_crit_edge, label %if.end.i

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %11)
  %cmp1.i = icmp ugt i16 %11, 256
  br i1 %cmp1.i, label %if.end.i.do.end34_crit_edge, label %if.end3.i

if.end.i.do.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

if.end3.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client, align 4
  %call.i.i58 = call i32 @i2c_transfer_buffer_flags(ptr noundef %17, ptr noundef nonnull %report_data, i32 noundef %conv10, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i58, i32 %conv10)
  %cmp4.not.i59 = icmp eq i32 %call.i.i58, %conv10
  br i1 %cmp4.not.i59, label %if.end3.i.if.end35_crit_edge, label %cyapa_i2c_pip_read.exit64

if.end3.i.if.end35_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

cyapa_i2c_pip_read.exit64:                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i58)
  %cmp6.i60 = icmp slt i32 %call.i.i58, 0
  %spec.select.i61 = select i1 %cmp6.i60, i32 %call.i.i58, i32 -5
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i61, i32 %conv10)
  %cmp29.not = icmp eq i32 %spec.select.i61, %conv10
  br i1 %cmp29.not, label %cyapa_i2c_pip_read.exit64.if.end35_crit_edge, label %cyapa_i2c_pip_read.exit64.do.end34_crit_edge

cyapa_i2c_pip_read.exit64.do.end34_crit_edge:     ; preds = %cyapa_i2c_pip_read.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end34

cyapa_i2c_pip_read.exit64.if.end35_crit_edge:     ; preds = %cyapa_i2c_pip_read.exit64
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

do.end34:                                         ; preds = %cyapa_i2c_pip_read.exit64.do.end34_crit_edge, %if.end.i.do.end34_crit_edge
  %retval.0.i6372 = phi i32 [ %spec.select.i61, %cyapa_i2c_pip_read.exit64.do.end34_crit_edge ], [ -22, %if.end.i.do.end34_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %conv10, i32 noundef %retval.0.i6372) #14
  br label %cleanup

if.end35:                                         ; preds = %cyapa_i2c_pip_read.exit64.if.end35_crit_edge, %if.end3.i.if.end35_crit_edge
  %call36 = call fastcc i32 @cyapa_pip_event_process(ptr noundef %cyapa, ptr noundef nonnull %report_data)
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %do.end34, %if.end23.cleanup_crit_edge, %do.end16, %cyapa_i2c_pip_read.exit, %do.end
  %retval.0 = phi i32 [ -22, %cyapa_i2c_pip_read.exit ], [ -22, %do.end16 ], [ -22, %do.end34 ], [ %call36, %if.end35 ], [ -22, %do.end ], [ 0, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 127, ptr nonnull %report_data) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cyapa_pip_bl_activate(ptr nocapture readnone %cyapa) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cyapa_pip_bl_deactivate(ptr nocapture readnone %cyapa) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_show_baseline(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  %cmd.i = alloca [7 x i8], align 2
  %resp_data.i = alloca [6 x i8], align 1
  %resp_len.i = alloca i32, align 4
  %data_size.i136 = alloca i32, align 4
  %data_size.i = alloca i32, align 4
  %gidac_mutual_max = alloca i32, align 4
  %gidac_mutual_min = alloca i32, align 4
  %gidac_mutual_ave = alloca i32, align 4
  %lidac_mutual_max = alloca i32, align 4
  %lidac_mutual_min = alloca i32, align 4
  %lidac_mutual_ave = alloca i32, align 4
  %lidac_self_max = alloca i32, align 4
  %lidac_self_min = alloca i32, align 4
  %lidac_self_ave = alloca i32, align 4
  %raw_cap_mutual_max = alloca i32, align 4
  %raw_cap_mutual_min = alloca i32, align 4
  %raw_cap_mutual_ave = alloca i32, align 4
  %raw_cap_self_max = alloca i32, align 4
  %raw_cap_self_min = alloca i32, align 4
  %raw_cap_self_ave = alloca i32, align 4
  %mutual_diffdata_max = alloca i32, align 4
  %mutual_diffdata_min = alloca i32, align 4
  %mutual_diffdata_ave = alloca i32, align 4
  %self_diffdata_max = alloca i32, align 4
  %self_diffdata_min = alloca i32, align 4
  %self_diffdata_ave = alloca i32, align 4
  %mutual_baseline_max = alloca i32, align 4
  %mutual_baseline_min = alloca i32, align 4
  %mutual_baseline_ave = alloca i32, align 4
  %self_baseline_max = alloca i32, align 4
  %self_baseline_min = alloca i32, align 4
  %self_baseline_ave = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gidac_mutual_max) #11
  %2 = ptrtoint ptr %gidac_mutual_max to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gidac_mutual_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gidac_mutual_min) #11
  %3 = ptrtoint ptr %gidac_mutual_min to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %gidac_mutual_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gidac_mutual_ave) #11
  %4 = ptrtoint ptr %gidac_mutual_ave to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %gidac_mutual_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_mutual_max) #11
  %5 = ptrtoint ptr %lidac_mutual_max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %lidac_mutual_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_mutual_min) #11
  %6 = ptrtoint ptr %lidac_mutual_min to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %lidac_mutual_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_mutual_ave) #11
  %7 = ptrtoint ptr %lidac_mutual_ave to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %lidac_mutual_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_self_max) #11
  %8 = ptrtoint ptr %lidac_self_max to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %lidac_self_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_self_min) #11
  %9 = ptrtoint ptr %lidac_self_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %lidac_self_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lidac_self_ave) #11
  %10 = ptrtoint ptr %lidac_self_ave to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %lidac_self_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_mutual_max) #11
  %11 = ptrtoint ptr %raw_cap_mutual_max to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %raw_cap_mutual_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_mutual_min) #11
  %12 = ptrtoint ptr %raw_cap_mutual_min to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %raw_cap_mutual_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_mutual_ave) #11
  %13 = ptrtoint ptr %raw_cap_mutual_ave to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %raw_cap_mutual_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_self_max) #11
  %14 = ptrtoint ptr %raw_cap_self_max to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %raw_cap_self_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_self_min) #11
  %15 = ptrtoint ptr %raw_cap_self_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %raw_cap_self_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %raw_cap_self_ave) #11
  %16 = ptrtoint ptr %raw_cap_self_ave to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %raw_cap_self_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_diffdata_max) #11
  %17 = ptrtoint ptr %mutual_diffdata_max to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %mutual_diffdata_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_diffdata_min) #11
  %18 = ptrtoint ptr %mutual_diffdata_min to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %mutual_diffdata_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_diffdata_ave) #11
  %19 = ptrtoint ptr %mutual_diffdata_ave to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %mutual_diffdata_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_diffdata_max) #11
  %20 = ptrtoint ptr %self_diffdata_max to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %self_diffdata_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_diffdata_min) #11
  %21 = ptrtoint ptr %self_diffdata_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %self_diffdata_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_diffdata_ave) #11
  %22 = ptrtoint ptr %self_diffdata_ave to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %self_diffdata_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_baseline_max) #11
  %23 = ptrtoint ptr %mutual_baseline_max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %mutual_baseline_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_baseline_min) #11
  %24 = ptrtoint ptr %mutual_baseline_min to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %mutual_baseline_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mutual_baseline_ave) #11
  %25 = ptrtoint ptr %mutual_baseline_ave to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %mutual_baseline_ave, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_baseline_max) #11
  %26 = ptrtoint ptr %self_baseline_max to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %self_baseline_max, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_baseline_min) #11
  %27 = ptrtoint ptr %self_baseline_min to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %self_baseline_min, align 4, !annotation !131
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %self_baseline_ave) #11
  %28 = ptrtoint ptr %self_baseline_ave to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %self_baseline_ave, align 4, !annotation !131
  %call1 = tail call zeroext i1 @cyapa_is_pip_app_mode(ptr noundef %1) #11
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @cyapa_pip_suspend_scanning(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.i) #11
  %29 = ptrtoint ptr %gidac_mutual_ave to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %gidac_mutual_ave, align 4
  %30 = ptrtoint ptr %gidac_mutual_min to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %gidac_mutual_min, align 4
  %31 = ptrtoint ptr %gidac_mutual_max to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %gidac_mutual_max, align 4
  %32 = ptrtoint ptr %lidac_mutual_ave to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %lidac_mutual_ave, align 4
  %33 = ptrtoint ptr %lidac_mutual_min to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %lidac_mutual_min, align 4
  %34 = ptrtoint ptr %lidac_mutual_max to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %lidac_mutual_max, align 4
  %35 = ptrtoint ptr %data_size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %data_size.i, align 4
  %call.i = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %data_size.i, ptr noundef nonnull %gidac_mutual_max, ptr noundef nonnull %gidac_mutual_min, ptr noundef nonnull %gidac_mutual_ave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %cyapa_gen5_read_mutual_idac_data.exit, label %cyapa_gen5_read_mutual_idac_data.exit.thread

cyapa_gen5_read_mutual_idac_data.exit.thread:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i) #11
  br label %resume_scanning

cyapa_gen5_read_mutual_idac_data.exit:            ; preds = %if.end4
  %call1.i = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %data_size.i, ptr noundef nonnull %lidac_mutual_max, ptr noundef nonnull %lidac_mutual_min, ptr noundef nonnull %lidac_mutual_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %if.end8, label %cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge

cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge: ; preds = %cyapa_gen5_read_mutual_idac_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end8:                                          ; preds = %cyapa_gen5_read_mutual_idac_data.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_size.i136) #11
  %36 = ptrtoint ptr %lidac_self_ave to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %lidac_self_ave, align 4
  %37 = ptrtoint ptr %lidac_self_min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %lidac_self_min, align 4
  %38 = ptrtoint ptr %lidac_self_max to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %lidac_self_max, align 4
  %39 = ptrtoint ptr %data_size.i136 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %data_size.i136, align 4
  %call.i137 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %data_size.i136, ptr noundef nonnull %lidac_self_max, ptr noundef nonnull %lidac_self_min, ptr noundef nonnull %lidac_self_ave) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %cyapa_gen5_read_self_idac_data.exit, label %cyapa_gen5_read_self_idac_data.exit.thread

cyapa_gen5_read_self_idac_data.exit.thread:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i136) #11
  br label %resume_scanning

cyapa_gen5_read_self_idac_data.exit:              ; preds = %if.end8
  %40 = ptrtoint ptr %lidac_self_max to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %lidac_self_max, align 4
  %42 = ptrtoint ptr %lidac_self_min to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %lidac_self_min, align 4
  %call1.i139 = call fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %data_size.i136, ptr noundef nonnull %lidac_self_max, ptr noundef nonnull %lidac_self_min, ptr noundef nonnull %lidac_self_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_size.i136) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i139)
  %tobool10.not = icmp eq i32 %call1.i139, 0
  br i1 %tobool10.not, label %if.end12, label %cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge

cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge: ; preds = %cyapa_gen5_read_self_idac_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end12:                                         ; preds = %cyapa_gen5_read_self_idac_data.exit
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %cmd.i) #11
  %44 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 2
  %45 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 4
  %46 = getelementptr inbounds [7 x i8], ptr %cmd.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i) #11
  %47 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 2
  %48 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 3
  %49 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 4
  %50 = getelementptr inbounds [6 x i8], ptr %resp_data.i, i32 0, i32 5
  %51 = call ptr @memset(ptr %resp_data.i, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #11
  %52 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 12032, ptr %45, align 2
  %53 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 1024, ptr %cmd.i, align 2
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 1280, ptr %44, align 2
  %55 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 42, ptr %46, align 2
  %56 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 6, ptr %resp_len.i, align 4
  %call.i142 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %1, ptr noundef nonnull %cmd.i, i32 noundef 7, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142)
  %tobool.not.i143 = icmp eq i32 %call.i142, 0
  br i1 %tobool.not.i143, label %lor.lhs.false.i, label %if.end12.cyapa_gen5_execute_panel_scan.exit_crit_edge

if.end12.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

lor.lhs.false.i:                                  ; preds = %if.end12
  %57 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %58)
  %cmp.not.i = icmp eq i32 %58, 6
  br i1 %cmp.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.cyapa_gen5_execute_panel_scan.exit_crit_edge

lor.lhs.false.i.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %59 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %47, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %60)
  %cmp5.i = icmp eq i8 %60, 31
  br i1 %cmp5.i, label %land.lhs.true.i, label %lor.lhs.false4.i.cyapa_gen5_execute_panel_scan.exit_crit_edge

lor.lhs.false4.i.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false4.i
  %61 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp9.i = icmp eq i8 %62, 0
  br i1 %cmp9.i, label %land.lhs.true11.i, label %land.lhs.true.i.cyapa_gen5_execute_panel_scan.exit_crit_edge

land.lhs.true.i.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

land.lhs.true11.i:                                ; preds = %land.lhs.true.i
  %63 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %49, align 1
  %65 = and i8 %64, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %65)
  %cmp14.i = icmp eq i8 %65, 42
  br i1 %cmp14.i, label %lor.lhs.false16.i, label %land.lhs.true11.i.cyapa_gen5_execute_panel_scan.exit_crit_edge

land.lhs.true11.i.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

lor.lhs.false16.i:                                ; preds = %land.lhs.true11.i
  %66 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp19.i = icmp eq i8 %67, 0
  br i1 %cmp19.i, label %if.end16, label %lor.lhs.false16.i.cyapa_gen5_execute_panel_scan.exit_crit_edge

lor.lhs.false16.i.cyapa_gen5_execute_panel_scan.exit_crit_edge: ; preds = %lor.lhs.false16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_execute_panel_scan.exit

cyapa_gen5_execute_panel_scan.exit:               ; preds = %lor.lhs.false16.i.cyapa_gen5_execute_panel_scan.exit_crit_edge, %land.lhs.true11.i.cyapa_gen5_execute_panel_scan.exit_crit_edge, %land.lhs.true.i.cyapa_gen5_execute_panel_scan.exit_crit_edge, %lor.lhs.false4.i.cyapa_gen5_execute_panel_scan.exit_crit_edge, %lor.lhs.false.i.cyapa_gen5_execute_panel_scan.exit_crit_edge, %if.end12.cyapa_gen5_execute_panel_scan.exit_crit_edge
  %spec.select.i = phi i32 [ -11, %lor.lhs.false16.i.cyapa_gen5_execute_panel_scan.exit_crit_edge ], [ -11, %land.lhs.true11.i.cyapa_gen5_execute_panel_scan.exit_crit_edge ], [ -11, %land.lhs.true.i.cyapa_gen5_execute_panel_scan.exit_crit_edge ], [ -11, %lor.lhs.false4.i.cyapa_gen5_execute_panel_scan.exit_crit_edge ], [ -11, %lor.lhs.false.i.cyapa_gen5_execute_panel_scan.exit_crit_edge ], [ %call.i142, %if.end12.cyapa_gen5_execute_panel_scan.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #11
  br label %resume_scanning

if.end16:                                         ; preds = %lor.lhs.false16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %cmd.i) #11
  %electrodes_x = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 28
  %68 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %electrodes_x, align 4
  %electrodes_y = getelementptr inbounds %struct.cyapa, ptr %1, i32 0, i32 29
  %70 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %electrodes_y, align 4
  %mul = mul i32 %71, %69
  %call17 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 0, i32 noundef %mul, ptr noundef nonnull %raw_cap_mutual_max, ptr noundef nonnull %raw_cap_mutual_min, ptr noundef nonnull %raw_cap_mutual_ave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.resume_scanning_crit_edge

if.end16.resume_scanning_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end20:                                         ; preds = %if.end16
  %72 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %electrodes_x, align 4
  %74 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %electrodes_y, align 4
  %add = add i32 %75, %73
  %call23 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 3, i32 noundef %add, ptr noundef nonnull %raw_cap_self_max, ptr noundef nonnull %raw_cap_self_min, ptr noundef nonnull %raw_cap_self_ave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end20.resume_scanning_crit_edge

if.end20.resume_scanning_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end26:                                         ; preds = %if.end20
  %76 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %electrodes_x, align 4
  %78 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %electrodes_y, align 4
  %mul29 = mul i32 %79, %77
  %call30 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 2, i32 noundef %mul29, ptr noundef nonnull %mutual_diffdata_max, ptr noundef nonnull %mutual_diffdata_min, ptr noundef nonnull %mutual_diffdata_ave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end26.resume_scanning_crit_edge

if.end26.resume_scanning_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end33:                                         ; preds = %if.end26
  %80 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %electrodes_x, align 4
  %82 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %electrodes_y, align 4
  %add36 = add i32 %83, %81
  %call37 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 5, i32 noundef %add36, ptr noundef nonnull %self_diffdata_max, ptr noundef nonnull %self_diffdata_min, ptr noundef nonnull %self_diffdata_ave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end33.resume_scanning_crit_edge

if.end33.resume_scanning_crit_edge:               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end40:                                         ; preds = %if.end33
  %84 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %electrodes_x, align 4
  %86 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %electrodes_y, align 4
  %mul43 = mul i32 %87, %85
  %call44 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 1, i32 noundef %mul43, ptr noundef nonnull %mutual_baseline_max, ptr noundef nonnull %mutual_baseline_min, ptr noundef nonnull %mutual_baseline_ave)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end40.resume_scanning_crit_edge

if.end40.resume_scanning_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %resume_scanning

if.end47:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  %88 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %electrodes_x, align 4
  %90 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %electrodes_y, align 4
  %add50 = add i32 %91, %89
  %call51 = call fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %1, i8 noundef zeroext 4, i32 noundef %add50, ptr noundef nonnull %self_baseline_max, ptr noundef nonnull %self_baseline_min, ptr noundef nonnull %self_baseline_ave)
  br label %resume_scanning

resume_scanning:                                  ; preds = %if.end47, %if.end40.resume_scanning_crit_edge, %if.end33.resume_scanning_crit_edge, %if.end26.resume_scanning_crit_edge, %if.end20.resume_scanning_crit_edge, %if.end16.resume_scanning_crit_edge, %cyapa_gen5_execute_panel_scan.exit, %cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge, %cyapa_gen5_read_self_idac_data.exit.thread, %cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge, %cyapa_gen5_read_mutual_idac_data.exit.thread
  %gidac_self_rx.1 = phi i32 [ %41, %if.end47 ], [ %41, %if.end40.resume_scanning_crit_edge ], [ %41, %if.end33.resume_scanning_crit_edge ], [ %41, %if.end26.resume_scanning_crit_edge ], [ %41, %if.end20.resume_scanning_crit_edge ], [ %41, %if.end16.resume_scanning_crit_edge ], [ %41, %cyapa_gen5_execute_panel_scan.exit ], [ %41, %cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge ], [ 0, %cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge ], [ 0, %cyapa_gen5_read_mutual_idac_data.exit.thread ], [ 0, %cyapa_gen5_read_self_idac_data.exit.thread ]
  %gidac_self_tx.1 = phi i32 [ %43, %if.end47 ], [ %43, %if.end40.resume_scanning_crit_edge ], [ %43, %if.end33.resume_scanning_crit_edge ], [ %43, %if.end26.resume_scanning_crit_edge ], [ %43, %if.end20.resume_scanning_crit_edge ], [ %43, %if.end16.resume_scanning_crit_edge ], [ %43, %cyapa_gen5_execute_panel_scan.exit ], [ %43, %cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge ], [ 0, %cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge ], [ 0, %cyapa_gen5_read_mutual_idac_data.exit.thread ], [ 0, %cyapa_gen5_read_self_idac_data.exit.thread ]
  %error.0 = phi i32 [ %call51, %if.end47 ], [ %call44, %if.end40.resume_scanning_crit_edge ], [ %call37, %if.end33.resume_scanning_crit_edge ], [ %call30, %if.end26.resume_scanning_crit_edge ], [ %call23, %if.end20.resume_scanning_crit_edge ], [ %call17, %if.end16.resume_scanning_crit_edge ], [ %spec.select.i, %cyapa_gen5_execute_panel_scan.exit ], [ %call1.i139, %cyapa_gen5_read_self_idac_data.exit.resume_scanning_crit_edge ], [ %call1.i, %cyapa_gen5_read_mutual_idac_data.exit.resume_scanning_crit_edge ], [ %call.i, %cyapa_gen5_read_mutual_idac_data.exit.thread ], [ %call.i137, %cyapa_gen5_read_self_idac_data.exit.thread ]
  %call55 = call i32 @cyapa_pip_resume_scanning(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool57.not = icmp eq i32 %error.0, 0
  %or.cond = select i1 %tobool56.not, i1 %tobool57.not, i1 false
  br i1 %or.cond, label %if.end60, label %if.then58

if.then58:                                        ; preds = %resume_scanning
  call void @__sanitizer_cov_trace_pc() #13
  %error.0.call55 = select i1 %tobool56.not, i32 %error.0, i32 %call55
  br label %cleanup

if.end60:                                         ; preds = %resume_scanning
  call void @__sanitizer_cov_trace_pc() #13
  %92 = ptrtoint ptr %gidac_mutual_min to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %gidac_mutual_min, align 4
  %94 = ptrtoint ptr %gidac_mutual_max to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %gidac_mutual_max, align 4
  %96 = ptrtoint ptr %gidac_mutual_ave to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %gidac_mutual_ave, align 4
  %98 = ptrtoint ptr %lidac_mutual_min to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lidac_mutual_min, align 4
  %100 = ptrtoint ptr %lidac_mutual_max to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %lidac_mutual_max, align 4
  %102 = ptrtoint ptr %lidac_mutual_ave to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %lidac_mutual_ave, align 4
  %104 = ptrtoint ptr %lidac_self_min to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %lidac_self_min, align 4
  %106 = ptrtoint ptr %lidac_self_max to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lidac_self_max, align 4
  %108 = ptrtoint ptr %lidac_self_ave to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %lidac_self_ave, align 4
  %call61 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.45, i32 noundef %93, i32 noundef %95, i32 noundef %97, i32 noundef %99, i32 noundef %101, i32 noundef %103, i32 noundef %gidac_self_rx.1, i32 noundef %gidac_self_tx.1, i32 noundef %105, i32 noundef %107, i32 noundef %109) #11
  %add.ptr = getelementptr i8, ptr %buf, i32 %call61
  %sub = sub i32 4096, %call61
  %110 = ptrtoint ptr %raw_cap_mutual_min to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %raw_cap_mutual_min, align 4
  %112 = ptrtoint ptr %raw_cap_mutual_max to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %raw_cap_mutual_max, align 4
  %114 = ptrtoint ptr %raw_cap_mutual_ave to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %raw_cap_mutual_ave, align 4
  %116 = ptrtoint ptr %raw_cap_self_min to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %raw_cap_self_min, align 4
  %118 = ptrtoint ptr %raw_cap_self_max to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %raw_cap_self_max, align 4
  %120 = ptrtoint ptr %raw_cap_self_ave to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %raw_cap_self_ave, align 4
  %122 = ptrtoint ptr %mutual_diffdata_min to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %mutual_diffdata_min, align 4
  %124 = ptrtoint ptr %mutual_diffdata_max to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %mutual_diffdata_max, align 4
  %126 = ptrtoint ptr %mutual_diffdata_ave to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %mutual_diffdata_ave, align 4
  %128 = ptrtoint ptr %self_diffdata_min to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %self_diffdata_min, align 4
  %130 = ptrtoint ptr %self_diffdata_max to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %self_diffdata_max, align 4
  %132 = ptrtoint ptr %self_diffdata_ave to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %self_diffdata_ave, align 4
  %134 = ptrtoint ptr %mutual_baseline_min to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mutual_baseline_min, align 4
  %136 = ptrtoint ptr %mutual_baseline_max to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %mutual_baseline_max, align 4
  %138 = ptrtoint ptr %mutual_baseline_ave to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mutual_baseline_ave, align 4
  %140 = ptrtoint ptr %self_baseline_min to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %self_baseline_min, align 4
  %142 = ptrtoint ptr %self_baseline_max to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %self_baseline_max, align 4
  %144 = ptrtoint ptr %self_baseline_ave to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %self_baseline_ave, align 4
  %call62 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.46, i32 noundef %111, i32 noundef %113, i32 noundef %115, i32 noundef %117, i32 noundef %119, i32 noundef %121, i32 noundef %123, i32 noundef %125, i32 noundef %127, i32 noundef %129, i32 noundef %131, i32 noundef %133, i32 noundef %135, i32 noundef %137, i32 noundef %139, i32 noundef %141, i32 noundef %143, i32 noundef %145) #11
  %add63 = add i32 %call62, %call61
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then58, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0.call55, %if.then58 ], [ %add63, %if.end60 ], [ -16, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_baseline_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_baseline_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_baseline_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_baseline_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_baseline_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_baseline_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_diffdata_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_diffdata_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %self_diffdata_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_diffdata_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_diffdata_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mutual_diffdata_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_self_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_self_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_self_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_mutual_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_mutual_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %raw_cap_mutual_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_self_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_self_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_self_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_mutual_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_mutual_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lidac_mutual_max) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gidac_mutual_ave) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gidac_mutual_min) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gidac_mutual_max) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_state_parse(ptr noundef %cyapa, ptr noundef readonly %reg_data, i32 noundef %len) #0 align 64 {
entry:
  %resp_data.i138 = alloca [32 x i8], align 2
  %resp_data.i = alloca [32 x i8], align 2
  %length.i = alloca i32, align 4
  %cmd.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %reg_data, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp slt i32 %len, 3
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %cyapa, align 4
  %1 = ptrtoint ptr %reg_data to i32
  call void @__asan_loadN_noabort(i32 %1, i32 2)
  %2 = load i16, ptr %reg_data, align 1
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #11
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.74)
  switch i16 %3, label %if.end.if.else45_crit_edge [
    i16 0, label %if.end.if.then6_crit_edge
    i16 2, label %if.end.if.then6_crit_edge163
    i16 32, label %land.lhs.true
    i16 238, label %if.end.land.lhs.true27_crit_edge
    i16 250, label %if.end.land.lhs.true27_crit_edge164
    i16 29, label %land.lhs.true37
  ]

if.end.land.lhs.true27_crit_edge164:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

if.end.land.lhs.true27_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true27

if.end.if.then6_crit_edge163:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then6

if.end.if.else45_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else45

if.then6:                                         ; preds = %if.end.if.then6_crit_edge, %if.end.if.then6_crit_edge163
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resp_data.i) #11
  %5 = getelementptr inbounds [32 x i8], ptr %resp_data.i, i32 0, i32 2
  %6 = getelementptr inbounds [32 x i8], ptr %resp_data.i, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length.i) #11
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd.i) #11
  %7 = getelementptr inbounds [2 x i8], ptr %cmd.i, i32 0, i32 1
  %call.i = tail call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %8 = call ptr @memset(ptr %resp_data.i, i32 0, i32 32)
  %client.i.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %9 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %10, ptr noundef nonnull %resp_data.i, i32 noundef 3, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i)
  %cmp4.not.i.i = icmp eq i32 %call.i.i.i, 3
  br i1 %cmp4.not.i.i, label %if.end.i, label %if.then6.gen5_idle_state_parse.exit_crit_edge

if.then6.gen5_idle_state_parse.exit_crit_edge:    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %gen5_idle_state_parse.exit

if.end.i:                                         ; preds = %if.then6
  %11 = ptrtoint ptr %resp_data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %resp_data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp5.i = icmp eq i16 %12, 512
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.gen5_idle_state_parse.exit_crit_edge

if.end.i.gen5_idle_state_parse.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gen5_idle_state_parse.exit

if.then7.i:                                       ; preds = %if.end.i
  %gen.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %13 = ptrtoint ptr %gen.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 5, ptr %gen.i, align 4
  %call8.i = call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %14 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %cmd.i, align 1
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %7, align 1
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 32, ptr %length.i, align 4
  %call13.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 2, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %length.i, i32 noundef 300, ptr noundef nonnull @cyapa_sort_gen5_hid_descriptor_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool.not.i, label %if.end15.i, label %if.then7.i.gen5_idle_state_parse.exit_crit_edge

if.then7.i.gen5_idle_state_parse.exit_crit_edge:  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %gen5_idle_state_parse.exit

if.end15.i:                                       ; preds = %if.then7.i
  %17 = ptrtoint ptr %resp_data.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %resp_data.i, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #11
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %6, align 2
  %22 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.75)
  switch i16 %19, label %if.end15.i.if.else49.i_crit_edge [
    i16 32, label %if.end15.i.land.lhs.true.i_crit_edge
    i16 2, label %if.end15.i.land.lhs.true.i_crit_edge165
  ]

if.end15.i.land.lhs.true.i_crit_edge165:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end15.i.land.lhs.true.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.end15.i.if.else49.i_crit_edge:                 ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else49.i

land.lhs.true.i:                                  ; preds = %if.end15.i.land.lhs.true.i_crit_edge, %if.end15.i.land.lhs.true.i_crit_edge165
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %cmp28.i = icmp eq i8 %24, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %21)
  %cmp31.i = icmp eq i16 %21, 1
  %or.cond.i = select i1 %cmp28.i, i1 %cmp31.i, i1 false
  br i1 %or.cond.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %if.else.i

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i
  %25 = zext i16 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.76)
  switch i16 %19, label %if.else.i.if.else49.i_crit_edge [
    i16 32, label %if.else.i.land.lhs.true39.i_crit_edge
    i16 2, label %if.else.i.land.lhs.true39.i_crit_edge166
  ]

if.else.i.land.lhs.true39.i_crit_edge166:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true39.i

if.else.i.land.lhs.true39.i_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true39.i

if.else.i.if.else49.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else49.i

land.lhs.true39.i:                                ; preds = %if.else.i.land.lhs.true39.i_crit_edge, %if.else.i.land.lhs.true39.i_crit_edge166
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %24)
  %cmp42.i = icmp eq i8 %24, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %21)
  %cmp45.i = icmp eq i16 %21, -512
  %or.cond1.i = select i1 %cmp42.i, i1 %cmp45.i, i1 false
  br i1 %or.cond1.i, label %land.lhs.true39.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true39.i.if.else49.i_crit_edge

land.lhs.true39.i.if.else49.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else49.i

land.lhs.true39.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i

if.else49.i:                                      ; preds = %land.lhs.true39.i.if.else49.i_crit_edge, %if.else.i.if.else49.i_crit_edge, %if.end15.i.if.else49.i_crit_edge
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else49.i, %land.lhs.true39.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.else49.i ], [ 5, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ 6, %land.lhs.true39.i.cleanup.sink.split.i_crit_edge ]
  %26 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink.i, ptr %cyapa, align 4
  br label %gen5_idle_state_parse.exit

gen5_idle_state_parse.exit:                       ; preds = %cleanup.sink.split.i, %if.then7.i.gen5_idle_state_parse.exit_crit_edge, %if.end.i.gen5_idle_state_parse.exit_crit_edge, %if.then6.gen5_idle_state_parse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length.i) #11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resp_data.i) #11
  br label %if.end89

land.lhs.true:                                    ; preds = %if.end
  %arrayidx10 = getelementptr i8, ptr %reg_data, i32 2
  %27 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx10, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %28, label %land.lhs.true.if.else45_crit_edge [
    i8 -1, label %land.lhs.true.if.then19_crit_edge
    i8 -9, label %land.lhs.true.if.then19_crit_edge167
  ]

land.lhs.true.if.then19_crit_edge167:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.if.then19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then19

land.lhs.true.if.else45_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else45

if.then19:                                        ; preds = %land.lhs.true.if.then19_crit_edge, %land.lhs.true.if.then19_crit_edge167
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %resp_data.i138) #11
  %30 = getelementptr inbounds [32 x i8], ptr %resp_data.i138, i32 0, i32 2
  %client.i.i139 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %31 = call ptr @memset(ptr %resp_data.i138, i32 255, i32 32)
  %32 = ptrtoint ptr %client.i.i139 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %client.i.i139, align 4
  %call.i.i.i140 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %resp_data.i138, i32 noundef 32, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i.i.i140)
  %cmp4.not.i.i141 = icmp eq i32 %call.i.i.i140, 32
  br i1 %cmp4.not.i.i141, label %if.end.i142, label %if.then19.gen5_hid_description_header_parse.exit_crit_edge

if.then19.gen5_hid_description_header_parse.exit_crit_edge: ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %gen5_hid_description_header_parse.exit

if.end.i142:                                      ; preds = %if.then19
  %34 = getelementptr inbounds [32 x i8], ptr %resp_data.i138, i32 0, i32 16
  %35 = ptrtoint ptr %resp_data.i138 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %resp_data.i138, align 2
  %37 = call i16 @llvm.bswap.i16(i16 %36) #11
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %34, align 2
  %40 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %37, label %if.end.i142.cleanup.sink.split.i148_crit_edge [
    i16 2, label %if.then8.i
    i16 32, label %land.lhs.true.i145
  ]

if.end.i142.cleanup.sink.split.i148_crit_edge:    ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i148

if.then8.i:                                       ; preds = %if.end.i142
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %cmp11.i = icmp eq i8 %42, -1
  %gen.i143 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %43 = ptrtoint ptr %gen.i143 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 5, ptr %gen.i143, align 4
  %..i = select i1 %cmp11.i, i32 5, i32 6
  br label %cleanup.sink.split.i148

land.lhs.true.i145:                               ; preds = %if.end.i142
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %30, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %45)
  %cmp22.i = icmp eq i8 %45, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %39)
  %cmp25.i = icmp eq i16 %39, 1
  %or.cond.i144 = select i1 %cmp22.i, i1 %cmp25.i, i1 false
  br i1 %or.cond.i144, label %if.then27.i, label %land.lhs.true33.critedge.i

if.then27.i:                                      ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_pc() #13
  %gen28.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %46 = ptrtoint ptr %gen28.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 5, ptr %gen28.i, align 4
  br label %cleanup.sink.split.i148

land.lhs.true33.critedge.i:                       ; preds = %land.lhs.true.i145
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %45)
  %cmp36.i = icmp eq i8 %45, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %39)
  %cmp39.i = icmp eq i16 %39, -512
  %or.cond1.i146 = select i1 %cmp36.i, i1 %cmp39.i, i1 false
  br i1 %or.cond1.i146, label %if.then41.i, label %land.lhs.true33.critedge.i.cleanup.sink.split.i148_crit_edge

land.lhs.true33.critedge.i.cleanup.sink.split.i148_crit_edge: ; preds = %land.lhs.true33.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i148

if.then41.i:                                      ; preds = %land.lhs.true33.critedge.i
  call void @__sanitizer_cov_trace_pc() #13
  %gen42.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %47 = ptrtoint ptr %gen42.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %gen42.i, align 4
  br label %cleanup.sink.split.i148

cleanup.sink.split.i148:                          ; preds = %if.then41.i, %land.lhs.true33.critedge.i.cleanup.sink.split.i148_crit_edge, %if.then27.i, %if.then8.i, %if.end.i142.cleanup.sink.split.i148_crit_edge
  %.sink.i147 = phi i32 [ 6, %if.then41.i ], [ 5, %if.then27.i ], [ %..i, %if.then8.i ], [ 0, %if.end.i142.cleanup.sink.split.i148_crit_edge ], [ 0, %land.lhs.true33.critedge.i.cleanup.sink.split.i148_crit_edge ]
  %48 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i147, ptr %cyapa, align 4
  br label %gen5_hid_description_header_parse.exit

gen5_hid_description_header_parse.exit:           ; preds = %cleanup.sink.split.i148, %if.then19.gen5_hid_description_header_parse.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %resp_data.i138) #11
  br label %if.end89

land.lhs.true27:                                  ; preds = %if.end.land.lhs.true27_crit_edge, %if.end.land.lhs.true27_crit_edge164
  %arrayidx28 = getelementptr i8, ptr %reg_data, i32 2
  %49 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -10, i8 %50)
  %cmp30 = icmp eq i8 %50, -10
  br i1 %cmp30, label %if.then32, label %land.lhs.true27.if.else45_crit_edge

land.lhs.true27.if.else45_crit_edge:              ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else45

if.then32:                                        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #13
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %51 = ptrtoint ptr %gen to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 5, ptr %gen, align 4
  %52 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %cyapa, align 4
  br label %if.end89

land.lhs.true37:                                  ; preds = %if.end
  %arrayidx38 = getelementptr i8, ptr %reg_data, i32 2
  %53 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx38, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %54)
  %cmp40 = icmp eq i8 %54, -2
  br i1 %cmp40, label %if.then42, label %land.lhs.true37.if.else45_crit_edge

land.lhs.true37.if.else45_crit_edge:              ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else45

if.then42:                                        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #13
  %gen43 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %55 = ptrtoint ptr %gen43 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 5, ptr %gen43, align 4
  %56 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %cyapa, align 4
  br label %if.end89

if.else45:                                        ; preds = %land.lhs.true37.if.else45_crit_edge, %land.lhs.true27.if.else45_crit_edge, %land.lhs.true.if.else45_crit_edge, %if.end.if.else45_crit_edge
  %arrayidx46 = getelementptr i8, ptr %reg_data, i32 2
  %57 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx46, align 1
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %58, label %if.else45.if.end89_crit_edge [
    i8 31, label %if.else45.if.then82_crit_edge
    i8 48, label %if.else45.if.then82_crit_edge168
    i8 1, label %sw.bb.i
    i8 3, label %if.else45.sw.bb6.i_crit_edge
    i8 5, label %if.else45.sw.bb6.i_crit_edge169
    i8 6, label %if.else45.sw.bb6.i_crit_edge170
    i8 4, label %sw.bb14.i
  ]

if.else45.sw.bb6.i_crit_edge170:                  ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

if.else45.sw.bb6.i_crit_edge169:                  ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

if.else45.sw.bb6.i_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

if.else45.if.then82_crit_edge168:                 ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.else45.if.then82_crit_edge:                    ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then82

if.else45.if.end89_crit_edge:                     ; preds = %if.else45
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

sw.bb.i:                                          ; preds = %if.else45
  %60 = add i16 %3, -128
  call void @__sanitizer_cov_trace_const_cmp2(i16 -121, i16 %60)
  %61 = icmp ult i16 %60, -121
  br i1 %61, label %sw.bb.i.if.end89_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i.if.end89_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

sw.bb6.i:                                         ; preds = %if.else45.sw.bb6.i_crit_edge, %if.else45.sw.bb6.i_crit_edge169, %if.else45.sw.bb6.i_crit_edge170
  %62 = add i16 %3, -15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -9, i16 %62)
  %63 = icmp ult i16 %62, -9
  br i1 %63, label %sw.bb6.i.if.end89_crit_edge, label %sw.bb6.i.sw.epilog.i_crit_edge

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i.if.end89_crit_edge:                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

sw.bb14.i:                                        ; preds = %if.else45
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %2)
  %cmp15.not.i = icmp eq i16 %2, 1024
  br i1 %cmp15.not.i, label %sw.bb14.i.sw.epilog.i_crit_edge, label %sw.bb14.i.if.end89_crit_edge

sw.bb14.i.if.end89_crit_edge:                     ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb14.i.sw.epilog.i_crit_edge, %sw.bb6.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge
  %gen.i149 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %64 = ptrtoint ptr %gen.i149 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 5, ptr %gen.i149, align 4
  %65 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 6, ptr %cyapa, align 4
  br label %if.end89

if.then82:                                        ; preds = %if.else45.if.then82_crit_edge, %if.else45.if.then82_crit_edge168
  %conv.i = zext i16 %3 to i32
  %empty_buf.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp.i.i = icmp eq i16 %2, 0
  br i1 %cmp.i.i, label %if.then82.cyapa_i2c_pip_read.exit.i_crit_edge, label %if.end.i.i

if.then82.cyapa_i2c_pip_read.exit.i_crit_edge:    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_i2c_pip_read.exit.i

if.end.i.i:                                       ; preds = %if.then82
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %3)
  %cmp1.i.i = icmp ugt i16 %3, 256
  br i1 %cmp1.i.i, label %if.end.i.i.if.end89_crit_edge, label %if.end3.i.i

if.end.i.i.if.end89_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

if.end3.i.i:                                      ; preds = %if.end.i.i
  %client.i.i150 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %66 = ptrtoint ptr %client.i.i150 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client.i.i150, align 4
  %call.i.i.i151 = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %67, ptr noundef nonnull %empty_buf.i, i32 noundef %conv.i, i16 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i.i151, i32 %conv.i)
  %cmp4.not.i.i152 = icmp eq i32 %call.i.i.i151, %conv.i
  br i1 %cmp4.not.i.i152, label %if.end3.i.i.if.end.i154_crit_edge, label %if.then5.i.i

if.end3.i.i.if.end.i154_crit_edge:                ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i154

if.then5.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i151)
  %cmp6.i.i = icmp slt i32 %call.i.i.i151, 0
  %spec.select.i.i = select i1 %cmp6.i.i, i32 %call.i.i.i151, i32 -5
  br label %cyapa_i2c_pip_read.exit.i

cyapa_i2c_pip_read.exit.i:                        ; preds = %if.then5.i.i, %if.then82.cyapa_i2c_pip_read.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %spec.select.i.i, %if.then5.i.i ], [ 0, %if.then82.cyapa_i2c_pip_read.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %conv.i)
  %cmp.not.i = icmp eq i32 %retval.0.i.i, %conv.i
  br i1 %cmp.not.i, label %cyapa_i2c_pip_read.exit.i.if.end.i154_crit_edge, label %cyapa_i2c_pip_read.exit.i.if.end89_crit_edge

cyapa_i2c_pip_read.exit.i.if.end89_crit_edge:     ; preds = %cyapa_i2c_pip_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

cyapa_i2c_pip_read.exit.i.if.end.i154_crit_edge:  ; preds = %cyapa_i2c_pip_read.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i154

if.end.i154:                                      ; preds = %cyapa_i2c_pip_read.exit.i.if.end.i154_crit_edge, %if.end3.i.i.if.end.i154_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %2)
  %cmp5.i153 = icmp eq i16 %2, 512
  br i1 %cmp5.i153, label %if.then7.i157, label %if.else16.i

if.then7.i157:                                    ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx46, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %69)
  %cmp10.i = icmp eq i8 %69, 48
  %gen.i155 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %70 = ptrtoint ptr %gen.i155 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 5, ptr %gen.i155, align 4
  %..i156 = select i1 %cmp10.i, i32 5, i32 6
  br label %cleanup.sink.split.i162

if.else16.i:                                      ; preds = %if.end.i154
  %arrayidx18.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11, i32 2
  %71 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx18.i, align 2
  %73 = zext i8 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %72, label %if.else16.i.cleanup.sink.split.i162_crit_edge [
    i8 48, label %land.lhs.true.i159
    i8 31, label %land.lhs.true48.i
  ]

if.else16.i.cleanup.sink.split.i162_crit_edge:    ; preds = %if.else16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i162

land.lhs.true.i159:                               ; preds = %if.else16.i
  %arrayidx23.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11, i32 3
  %74 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp25.i158 = icmp eq i8 %75, 0
  br i1 %cmp25.i158, label %land.lhs.true27.i, label %land.lhs.true.i159.cleanup.sink.split.i162_crit_edge

land.lhs.true.i159.cleanup.sink.split.i162_crit_edge: ; preds = %land.lhs.true.i159
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i162

land.lhs.true27.i:                                ; preds = %land.lhs.true.i159
  %arrayidx29.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11, i32 4
  %76 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %77)
  %cmp31.i160 = icmp eq i8 %77, 1
  br i1 %cmp31.i160, label %land.lhs.true33.i, label %land.lhs.true27.i.cleanup.sink.split.i162_crit_edge

land.lhs.true27.i.cleanup.sink.split.i162_crit_edge: ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i162

land.lhs.true33.i:                                ; preds = %land.lhs.true27.i
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx35.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11, i32 %sub.i
  %78 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx35.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 23, i8 %79)
  %cmp37.i = icmp eq i8 %79, 23
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true33.i.cleanup.sink.split.i162_crit_edge

land.lhs.true33.i.cleanup.sink.split.i162_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i162

if.then39.i:                                      ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  %gen40.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %80 = ptrtoint ptr %gen40.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 5, ptr %gen40.i, align 4
  br label %cleanup.sink.split.i162

land.lhs.true48.i:                                ; preds = %if.else16.i
  %arrayidx50.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 11, i32 3
  %81 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %cmp52.i = icmp eq i8 %82, 0
  br i1 %cmp52.i, label %if.then54.i, label %land.lhs.true48.i.cleanup.sink.split.i162_crit_edge

land.lhs.true48.i.cleanup.sink.split.i162_crit_edge: ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.i162

if.then54.i:                                      ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #13
  %gen55.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %83 = ptrtoint ptr %gen55.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 5, ptr %gen55.i, align 4
  br label %cleanup.sink.split.i162

cleanup.sink.split.i162:                          ; preds = %if.then54.i, %land.lhs.true48.i.cleanup.sink.split.i162_crit_edge, %if.then39.i, %land.lhs.true33.i.cleanup.sink.split.i162_crit_edge, %land.lhs.true27.i.cleanup.sink.split.i162_crit_edge, %land.lhs.true.i159.cleanup.sink.split.i162_crit_edge, %if.else16.i.cleanup.sink.split.i162_crit_edge, %if.then7.i157
  %.sink.i161 = phi i32 [ 6, %if.then54.i ], [ 5, %if.then39.i ], [ %..i156, %if.then7.i157 ], [ 0, %if.else16.i.cleanup.sink.split.i162_crit_edge ], [ 0, %land.lhs.true.i159.cleanup.sink.split.i162_crit_edge ], [ 0, %land.lhs.true27.i.cleanup.sink.split.i162_crit_edge ], [ 0, %land.lhs.true33.i.cleanup.sink.split.i162_crit_edge ], [ 0, %land.lhs.true48.i.cleanup.sink.split.i162_crit_edge ]
  %84 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %.sink.i161, ptr %cyapa, align 4
  br label %if.end89

if.end89:                                         ; preds = %cleanup.sink.split.i162, %cyapa_i2c_pip_read.exit.i.if.end89_crit_edge, %if.end.i.i.if.end89_crit_edge, %sw.epilog.i, %sw.bb14.i.if.end89_crit_edge, %sw.bb6.i.if.end89_crit_edge, %sw.bb.i.if.end89_crit_edge, %if.else45.if.end89_crit_edge, %if.then42, %if.then32, %gen5_hid_description_header_parse.exit, %gen5_idle_state_parse.exit
  %gen90 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %85 = ptrtoint ptr %gen90 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %gen90, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %86)
  %cmp92 = icmp eq i8 %86, 5
  br i1 %cmp92, label %if.then94, label %if.end89.if.end105_crit_edge

if.end89.if.end105_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then94:                                        ; preds = %if.end89
  %call95 = call i32 @cyapa_empty_pip_output_data(ptr noundef %cyapa, ptr noundef null, ptr noundef null, ptr noundef null)
  %87 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cyapa, align 4
  %.off = add i32 %88, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then94.cleanup_crit_edge, label %if.then94.if.end105_crit_edge

if.then94.if.end105_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end105

if.then94.cleanup_crit_edge:                      ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end105:                                        ; preds = %if.then94.if.end105_crit_edge, %if.end89.if.end105_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end105, %if.then94.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end105 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then94.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_do_operational_check(ptr noundef %cyapa) #0 align 64 {
entry:
  %resp_data.i72 = alloca [71 x i8], align 1
  %resp_len.i73 = alloca i32, align 4
  %cmd.i = alloca [8 x i8], align 1
  %resp_data.i65 = alloca [6 x i8], align 1
  %resp_len.i66 = alloca i32, align 4
  %resp_data.i57 = alloca [30 x i8], align 1
  %resp_len.i58 = alloca i32, align 4
  %bl_gen5_bl_exit.i = alloca [13 x i8], align 1
  %resp_data.i = alloca [11 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %gen = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 21
  %2 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp.not = icmp eq i8 %3, 5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cyapa, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %if.end.sw.bb7_crit_edge
  ]

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %bl_gen5_bl_exit.i) #11
  %7 = call ptr @memcpy(ptr %bl_gen5_bl_exit.i, ptr @__const.cyapa_pip_bl_exit.bl_gen5_bl_exit, i32 13)
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data.i) #11
  %8 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 1
  %9 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 2
  %10 = call ptr @memset(ptr %resp_data.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #11
  %11 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 11, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %bl_gen5_bl_exit.i, i32 noundef 13, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 5000, ptr noundef nonnull @cyapa_sort_pip_bl_exit_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.if.then3_crit_edge

sw.bb.if.then3_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end.i:                                         ; preds = %sw.bb
  %12 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %resp_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %13)
  %cmp.i = icmp eq i32 %13, 11
  br i1 %cmp.i, label %if.end.i.if.then3_crit_edge, label %lor.lhs.false.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

lor.lhs.false.i:                                  ; preds = %if.end.i
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %9, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %15)
  %cmp2.i = icmp eq i8 %15, 48
  br i1 %cmp2.i, label %lor.lhs.false.i.if.then3_crit_edge, label %if.end5.i

lor.lhs.false.i.if.then3_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.end5.i:                                        ; preds = %lor.lhs.false.i
  %16 = ptrtoint ptr %resp_data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %resp_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp8.i = icmp eq i8 %17, 0
  br i1 %cmp8.i, label %land.lhs.true.i, label %if.end5.i.if.then3_crit_edge

if.end5.i.if.then3_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

land.lhs.true.i:                                  ; preds = %if.end5.i
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp12.i = icmp eq i8 %19, 0
  br i1 %cmp12.i, label %if.end5, label %land.lhs.true.i.if.then3_crit_edge

land.lhs.true.i.if.then3_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %land.lhs.true.i.if.then3_crit_edge, %if.end5.i.if.then3_crit_edge, %lor.lhs.false.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %sw.bb.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %if.end.i.if.then3_crit_edge ], [ -11, %lor.lhs.false.i.if.then3_crit_edge ], [ %call.i, %sw.bb.if.then3_crit_edge ], [ -19, %land.lhs.true.i.if.then3_crit_edge ], [ -19, %if.end5.i.if.then3_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %bl_gen5_bl_exit.i) #11
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %resp_data.i57) #11
  %20 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 5
  %21 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 8
  %22 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 13
  %23 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 19
  %24 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 22
  %25 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 23
  %26 = getelementptr inbounds [30 x i8], ptr %resp_data.i57, i32 0, i32 26
  %27 = call ptr @memset(ptr %resp_data.i57, i32 255, i32 30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i58) #11
  %28 = ptrtoint ptr %resp_len.i58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 30, ptr %resp_len.i58, align 4
  %call.i59 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_bl_read_app_info, i32 noundef 13, ptr noundef nonnull %resp_data.i57, ptr noundef nonnull %resp_len.i58, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_bl_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %lor.lhs.false.i62, label %if.then3.cyapa_gen5_bl_query_data.exit_crit_edge

if.then3.cyapa_gen5_bl_query_data.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_bl_query_data.exit

lor.lhs.false.i62:                                ; preds = %if.then3
  %29 = ptrtoint ptr %resp_len.i58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %resp_len.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %30)
  %cmp.i61 = icmp slt i32 %30, 30
  br i1 %cmp.i61, label %lor.lhs.false.i62.cyapa_gen5_bl_query_data.exit_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i62.cyapa_gen5_bl_query_data.exit_crit_edge: ; preds = %lor.lhs.false.i62
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_bl_query_data.exit

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i62
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp2.i63 = icmp eq i8 %32, 0
  br i1 %cmp2.i63, label %if.end.i64, label %lor.lhs.false1.i.cyapa_gen5_bl_query_data.exit_crit_edge

lor.lhs.false1.i.cyapa_gen5_bl_query_data.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_bl_query_data.exit

if.end.i64:                                       ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #13
  %product_id.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 16
  %33 = call ptr @memcpy(ptr %product_id.i, ptr %21, i32 5)
  %arrayidx8.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 5
  %34 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 45, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 6
  %35 = call ptr @memcpy(ptr %arrayidx10.i, ptr %22, i32 6)
  %arrayidx13.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 12
  %36 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 45, ptr %arrayidx13.i, align 4
  %arrayidx15.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 13
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 2)
  %38 = load i16, ptr %23, align 1
  %39 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 2)
  store i16 %38, ptr %arrayidx15.i, align 1
  %arrayidx18.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 15
  %40 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx18.i, align 1
  %41 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %24, align 1
  %fw_maj_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %43 = ptrtoint ptr %fw_maj_ver.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %fw_maj_ver.i, align 1
  %44 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %25, align 1
  %fw_min_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %46 = ptrtoint ptr %fw_min_ver.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %fw_min_ver.i, align 2
  %47 = ptrtoint ptr %26 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %26, align 1
  %49 = lshr i8 %48, 4
  %platform_ver.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 17
  %50 = ptrtoint ptr %platform_ver.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %platform_ver.i, align 4
  br label %cyapa_gen5_bl_query_data.exit

cyapa_gen5_bl_query_data.exit:                    ; preds = %if.end.i64, %lor.lhs.false1.i.cyapa_gen5_bl_query_data.exit_crit_edge, %lor.lhs.false.i62.cyapa_gen5_bl_query_data.exit_crit_edge, %if.then3.cyapa_gen5_bl_query_data.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i58) #11
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %resp_data.i57) #11
  br label %cleanup

if.end5:                                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %bl_gen5_bl_exit.i) #11
  %51 = ptrtoint ptr %cyapa to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %cyapa, align 4
  br label %sw.bb7

sw.bb7:                                           ; preds = %if.end5, %if.end.sw.bb7_crit_edge
  %call8 = call i32 @cyapa_gen5_set_power_mode(ptr noundef %cyapa, i8 noundef zeroext -4, i16 noundef zeroext 0, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %sw.bb7.if.end11_crit_edge, label %do.end

sw.bb7.if.end11_crit_edge:                        ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end11

do.end:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #14
  br label %if.end11

if.end11:                                         ; preds = %do.end, %sw.bb7.if.end11_crit_edge
  %platform_ver = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 17
  %52 = ptrtoint ptr %platform_ver to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %platform_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %53)
  %cmp13 = icmp ugt i8 %53, 1
  br i1 %cmp13, label %if.then15, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then15:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i) #11
  %54 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 1
  %55 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 2
  %56 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 3
  %57 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 4
  %58 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 5
  %59 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 6
  %60 = getelementptr inbounds [8 x i8], ptr %cmd.i, i32 0, i32 7
  %61 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 4, ptr %cmd.i, align 1
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %54, align 1
  %63 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 6, ptr %55, align 1
  %64 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %56, align 1
  %65 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 47, ptr %57, align 1
  %66 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %58, align 1
  %67 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 73, ptr %59, align 1
  %68 = ptrtoint ptr %60 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %60, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i65) #11
  %69 = getelementptr inbounds [6 x i8], ptr %resp_data.i65, i32 0, i32 3
  %70 = getelementptr inbounds [6 x i8], ptr %resp_data.i65, i32 0, i32 4
  %71 = getelementptr inbounds [6 x i8], ptr %resp_data.i65, i32 0, i32 5
  %72 = call ptr @memset(ptr %resp_data.i65, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i66) #11
  %73 = ptrtoint ptr %resp_len.i66 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %resp_len.i66, align 4
  %call.i67 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 8, ptr noundef nonnull %resp_data.i65, ptr noundef nonnull %resp_len.i66, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cond = icmp eq i32 %call.i67, 0
  br i1 %cond, label %lor.lhs.false.i69, label %if.then15.do.end21_crit_edge

if.then15.do.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

lor.lhs.false.i69:                                ; preds = %if.then15
  %74 = getelementptr inbounds [6 x i8], ptr %resp_data.i65, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %76)
  %cmp.i68 = icmp eq i8 %76, 31
  br i1 %cmp.i68, label %land.lhs.true.i70, label %lor.lhs.false.i69.do.end21_crit_edge

lor.lhs.false.i69.do.end21_crit_edge:             ; preds = %lor.lhs.false.i69
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

land.lhs.true.i70:                                ; preds = %lor.lhs.false.i69
  %77 = ptrtoint ptr %69 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %cmp14.i = icmp eq i8 %78, 0
  br i1 %cmp14.i, label %land.lhs.true16.i, label %land.lhs.true.i70.do.end21_crit_edge

land.lhs.true.i70.do.end21_crit_edge:             ; preds = %land.lhs.true.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

land.lhs.true16.i:                                ; preds = %land.lhs.true.i70
  %79 = ptrtoint ptr %70 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %70, align 1
  %81 = and i8 %80, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 73, i8 %81)
  %cmp19.i = icmp eq i8 %81, 73
  br i1 %cmp19.i, label %lor.lhs.false21.i, label %land.lhs.true16.i.do.end21_crit_edge

land.lhs.true16.i.do.end21_crit_edge:             ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

lor.lhs.false21.i:                                ; preds = %land.lhs.true16.i
  %82 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %cmp24.i = icmp eq i8 %83, 0
  br i1 %cmp24.i, label %cyapa_pip_set_proximity.exit, label %lor.lhs.false21.i.do.end21_crit_edge

lor.lhs.false21.i.do.end21_crit_edge:             ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end21

cyapa_pip_set_proximity.exit:                     ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i66) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i65) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #11
  br label %if.end23

do.end21:                                         ; preds = %lor.lhs.false21.i.do.end21_crit_edge, %land.lhs.true16.i.do.end21_crit_edge, %land.lhs.true.i70.do.end21_crit_edge, %lor.lhs.false.i69.do.end21_crit_edge, %if.then15.do.end21_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i66) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i65) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.48) #14
  br label %if.end23

if.end23:                                         ; preds = %do.end21, %cyapa_pip_set_proximity.exit, %if.end11.if.end23_crit_edge
  call void @llvm.lifetime.start.p0(i64 71, ptr nonnull %resp_data.i72) #11
  %84 = call ptr @memset(ptr %resp_data.i72, i32 255, i32 71)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i73) #11
  %85 = ptrtoint ptr %resp_len.i73 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 71, ptr %resp_len.i73, align 4
  %call.i74 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull @pip_read_sys_info, i32 noundef 7, ptr noundef nonnull %resp_data.i72, ptr noundef nonnull %resp_len.i73, i32 noundef 2000, ptr noundef nonnull @cyapa_pip_sort_system_info_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %lor.lhs.false.i77, label %if.end23.cyapa_gen5_get_query_data.exit.thread_crit_edge

if.end23.cyapa_gen5_get_query_data.exit.thread_crit_edge: ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_get_query_data.exit.thread

lor.lhs.false.i77:                                ; preds = %if.end23
  %86 = ptrtoint ptr %resp_len.i73 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %resp_len.i73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 71, i32 %87)
  %cmp.i76 = icmp ult i32 %87, 71
  br i1 %cmp.i76, label %lor.lhs.false.i77.cyapa_gen5_get_query_data.exit.thread_crit_edge, label %if.end.i78

lor.lhs.false.i77.cyapa_gen5_get_query_data.exit.thread_crit_edge: ; preds = %lor.lhs.false.i77
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_get_query_data.exit.thread

if.end.i78:                                       ; preds = %lor.lhs.false.i77
  %arrayidx.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 7
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %arrayidx.i, align 1
  %90 = and i16 %89, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %90)
  %cmp3.not.i = icmp eq i16 %90, 16
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i78.cyapa_gen5_get_query_data.exit.thread_crit_edge

if.end.i78.cyapa_gen5_get_query_data.exit.thread_crit_edge: ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_get_query_data.exit.thread

if.end6.i:                                        ; preds = %if.end.i78
  %arrayidx7.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 49
  %91 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx7.i, align 1
  %93 = lshr i8 %92, 4
  %94 = ptrtoint ptr %platform_ver to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %platform_ver, align 4
  %95 = ptrtoint ptr %gen to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %gen, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %96)
  %cmp12.i80 = icmp eq i8 %96, 5
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %92)
  %cmp16.i = icmp ult i8 %92, 32
  %or.cond.i = select i1 %cmp12.i80, i1 %cmp16.i, i1 false
  %..i = select i1 %or.cond.i, i32 15, i32 9
  %.137.i = select i1 %or.cond.i, i32 16, i32 10
  %arrayidx21.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 %..i
  %97 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx21.i, align 1
  %arrayidx23.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 %.137.i
  %99 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx23.i, align 1
  %101 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 18
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %98, ptr %101, align 1
  %103 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 19
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %100, ptr %103, align 2
  %arrayidx26.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 52
  %105 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx26.i, align 1
  %conv27.i = zext i8 %106 to i32
  %electrodes_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 28
  %107 = ptrtoint ptr %electrodes_x.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv27.i, ptr %electrodes_x.i, align 4
  %arrayidx28.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 53
  %108 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx28.i, align 1
  %conv29.i = zext i8 %109 to i32
  %electrodes_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %110 = ptrtoint ptr %electrodes_y.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %conv29.i, ptr %electrodes_y.i, align 4
  %arrayidx30.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 54
  %111 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 2)
  %112 = load i16, ptr %arrayidx30.i, align 1
  %113 = call i16 @llvm.bswap.i16(i16 %112) #11
  %114 = udiv i16 %113, 100
  %div.i = zext i16 %114 to i32
  %physical_size_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 24
  %115 = ptrtoint ptr %physical_size_x.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div.i, ptr %physical_size_x.i, align 4
  %arrayidx33.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 56
  %116 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_loadN_noabort(i32 %116, i32 2)
  %117 = load i16, ptr %arrayidx33.i, align 1
  %118 = call i16 @llvm.bswap.i16(i16 %117) #11
  %119 = udiv i16 %118, 100
  %div36.i = zext i16 %119 to i32
  %physical_size_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 25
  %120 = ptrtoint ptr %physical_size_y.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %div36.i, ptr %physical_size_y.i, align 4
  %arrayidx37.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 58
  %121 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_loadN_noabort(i32 %121, i32 2)
  %122 = load i16, ptr %arrayidx37.i, align 1
  %123 = call i16 @llvm.bswap.i16(i16 %122) #11
  %conv39.i = zext i16 %123 to i32
  %max_abs_x.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 22
  %124 = ptrtoint ptr %max_abs_x.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %conv39.i, ptr %max_abs_x.i, align 4
  %arrayidx40.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 60
  %125 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_loadN_noabort(i32 %125, i32 2)
  %126 = load i16, ptr %arrayidx40.i, align 1
  %127 = call i16 @llvm.bswap.i16(i16 %126) #11
  %conv42.i = zext i16 %127 to i32
  %max_abs_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 23
  %128 = ptrtoint ptr %max_abs_y.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %conv42.i, ptr %max_abs_y.i, align 4
  %arrayidx43.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 62
  %129 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 2)
  %130 = load i16, ptr %arrayidx43.i, align 1
  %131 = call i16 @llvm.bswap.i16(i16 %130) #11
  %conv45.i = zext i16 %131 to i32
  %max_z.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 32
  %132 = ptrtoint ptr %max_z.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %conv45.i, ptr %max_z.i, align 4
  %arrayidx46.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 64
  %133 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %arrayidx46.i, align 1
  %135 = and i8 %134, 1
  %x_origin.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 26
  %136 = ptrtoint ptr %x_origin.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %135, ptr %x_origin.i, align 4
  %arrayidx50.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 65
  %137 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %arrayidx50.i, align 1
  %139 = and i8 %138, 1
  %y_origin.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 27
  %140 = ptrtoint ptr %y_origin.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %y_origin.i, align 1
  %arrayidx54.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 70
  %141 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx54.i, align 1
  %shl.i = shl i8 %142, 3
  %and56.i = and i8 %shl.i, 56
  %btn_capability.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 20
  %143 = ptrtoint ptr %btn_capability.i to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 %and56.i, ptr %btn_capability.i, align 1
  %product_id.i81 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 16
  %arrayidx59.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 33
  %144 = call ptr @memcpy(ptr %product_id.i81, ptr %arrayidx59.i, i32 5)
  %arrayidx61.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 5
  %145 = ptrtoint ptr %arrayidx61.i to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 45, ptr %arrayidx61.i, align 1
  %arrayidx63.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 6
  %arrayidx64.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 38
  %146 = call ptr @memcpy(ptr %arrayidx63.i, ptr %arrayidx64.i, i32 6)
  %arrayidx66.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 12
  %147 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 45, ptr %arrayidx66.i, align 4
  %arrayidx68.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 13
  %arrayidx69.i = getelementptr inbounds [71 x i8], ptr %resp_data.i72, i32 0, i32 44
  %148 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_loadN_noabort(i32 %148, i32 2)
  %149 = load i16, ptr %arrayidx69.i, align 1
  %150 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_storeN_noabort(i32 %150, i32 2)
  store i16 %149, ptr %arrayidx68.i, align 1
  %arrayidx71.i = getelementptr %struct.cyapa, ptr %cyapa, i32 0, i32 16, i32 15
  %151 = ptrtoint ptr %arrayidx71.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %arrayidx71.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool73.not.i = icmp eq i8 %106, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool76.not.i = icmp eq i8 %109, 0
  %or.cond130.i = select i1 %tobool73.not.i, i1 true, i1 %tobool76.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %113)
  %152 = icmp ult i16 %113, 100
  %or.cond131.i = select i1 %or.cond130.i, i1 true, i1 %152
  call void @__sanitizer_cov_trace_const_cmp2(i16 100, i16 %118)
  %153 = icmp ult i16 %118, 100
  %or.cond132.i = select i1 %or.cond131.i, i1 true, i1 %153
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %122)
  %tobool85.not.i = icmp eq i16 %122, 0
  %or.cond133.i = select i1 %or.cond132.i, i1 true, i1 %tobool85.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %126)
  %tobool88.not.i = icmp eq i16 %126, 0
  %or.cond134.i = select i1 %or.cond133.i, i1 true, i1 %tobool88.not.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %130)
  %tobool91.not.i = icmp eq i16 %130, 0
  %or.cond = select i1 %or.cond134.i, i1 true, i1 %tobool91.not.i
  br i1 %or.cond, label %if.end6.i.cyapa_gen5_get_query_data.exit.thread_crit_edge, label %if.end27

if.end6.i.cyapa_gen5_get_query_data.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_get_query_data.exit.thread

cyapa_gen5_get_query_data.exit.thread:            ; preds = %if.end6.i.cyapa_gen5_get_query_data.exit.thread_crit_edge, %if.end.i78.cyapa_gen5_get_query_data.exit.thread_crit_edge, %lor.lhs.false.i77.cyapa_gen5_get_query_data.exit.thread_crit_edge, %if.end23.cyapa_gen5_get_query_data.exit.thread_crit_edge
  %retval.0.i82.ph = phi i32 [ %call.i74, %if.end23.cyapa_gen5_get_query_data.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i77.cyapa_gen5_get_query_data.exit.thread_crit_edge ], [ -22, %if.end6.i.cyapa_gen5_get_query_data.exit.thread_crit_edge ], [ -22, %if.end.i78.cyapa_gen5_get_query_data.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i73) #11
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i72) #11
  br label %cleanup

if.end27:                                         ; preds = %if.end6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i73) #11
  call void @llvm.lifetime.end.p0(i64 71, ptr nonnull %resp_data.i72) #11
  %call28 = call i32 @strlen(ptr noundef nonnull @product_id) #15
  %bcmp = call i32 @bcmp(ptr %product_id.i81, ptr nonnull @product_id, i32 %call28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp30.not = icmp eq i32 %bcmp, 0
  br i1 %cmp30.not, label %if.end27.cleanup_crit_edge, label %do.end35

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.48, ptr noundef %product_id.i81) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end27.cleanup_crit_edge, %cyapa_gen5_get_query_data.exit.thread, %cyapa_gen5_bl_query_data.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -22, %do.end35 ], [ 0, %if.end27.cleanup_crit_edge ], [ %retval.0.i.ph, %cyapa_gen5_bl_query_data.exit ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i82.ph, %cyapa_gen5_get_query_data.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cyapa_gen5_set_power_mode(ptr noundef %cyapa, i8 noundef zeroext %power_mode, i16 noundef zeroext %sleep_time, i32 noundef %pm_stage) #0 align 64 {
entry:
  %cmd.i278 = alloca [10 x i8], align 2
  %resp_data.i279 = alloca [7 x i8], align 1
  %resp_len.i280 = alloca i32, align 4
  %cmd.i259 = alloca [8 x i8], align 8
  %resp_data.i260 = alloca [6 x i8], align 1
  %resp_len.i261 = alloca i32, align 4
  %cmd.i243 = alloca [256 x i8], align 2
  %resp_data.i244 = alloca [7 x i8], align 1
  %resp_len.i245 = alloca i32, align 4
  %cmd.i224 = alloca [8 x i8], align 8
  %resp_data.i225 = alloca [6 x i8], align 1
  %resp_len.i226 = alloca i32, align 4
  %cmd.i211 = alloca [8 x i8], align 8
  %resp_data.i212 = alloca [6 x i8], align 1
  %resp_len.i213 = alloca i32, align 4
  %cmd.i200 = alloca [4 x i8], align 4
  %resp_data.i201 = alloca [5 x i8], align 1
  %resp_len.i202 = alloca i32, align 4
  %cmd.i191 = alloca [4 x i8], align 4
  %resp_data.i192 = alloca [5 x i8], align 1
  %resp_len.i193 = alloca i32, align 4
  %cmd.i = alloca [256 x i8], align 2
  %resp_data.i = alloca [11 x i8], align 1
  %resp_len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 4
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %cyapa to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cyapa, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pm_stage_lock.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %pm_stage_lock.i, i32 noundef 0) #11
  %pm_stage1.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 35, i32 0, i32 8
  %4 = ptrtoint ptr %pm_stage1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %pm_stage, ptr %pm_stage1.i, align 4
  tail call void @mutex_unlock(ptr noundef %pm_stage_lock.i) #11
  %dev_pwr_mode = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 13
  %5 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %dev_pwr_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %6)
  %cmp2 = icmp eq i8 %6, -1
  br i1 %cmp2, label %if.then4, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %dev_pwr_mode, align 2
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %dev_sleep_time = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 14
  %8 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dev_sleep_time, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %9)
  %cmp8 = icmp eq i16 %9, -1
  br i1 %cmp8, label %land.lhs.true, label %if.end6.if.end21thread-pre-split_crit_edge

if.end6.if.end21thread-pre-split_crit_edge:       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21thread-pre-split

land.lhs.true:                                    ; preds = %if.end6
  %10 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dev_pwr_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp12.not = icmp eq i8 %11, 0
  br i1 %cmp12.not, label %land.lhs.true.if.end21_crit_edge, label %if.then14

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then14:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i) #11
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %resp_data.i) #11
  %12 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 2
  %13 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 3
  %14 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 4
  %15 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 6
  %16 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 7
  %17 = call ptr @memset(ptr %resp_data.i, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i) #11
  %18 = getelementptr inbounds i8, ptr %cmd.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 252)
  %parameter_data2.i = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 5
  %20 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %dev_sleep_time, align 2
  %21 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 1024, ptr %cmd.i, align 2
  %length.i = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 1
  %22 = ptrtoint ptr %length.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1536, ptr %length.i, align 2
  %23 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 47, ptr %18, align 2
  %cmd_code.i = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i, i32 0, i32 4
  %24 = ptrtoint ptr %cmd_code.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 5, ptr %cmd_code.i, align 2
  %25 = ptrtoint ptr %parameter_data2.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 76, ptr %parameter_data2.i, align 1
  %26 = ptrtoint ptr %resp_len.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 11, ptr %resp_len.i, align 4
  %call.i = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i, i32 noundef 8, ptr noundef nonnull %resp_data.i, ptr noundef nonnull %resp_len.i, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then14.if.then18_crit_edge

if.then14.if.then18_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false.i:                                  ; preds = %if.then14
  %27 = getelementptr inbounds [11 x i8], ptr %resp_data.i, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %29)
  %cmp.not.i = icmp eq i8 %29, 76
  br i1 %cmp.not.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.if.then18_crit_edge

lor.lhs.false.i.if.then18_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp16.i = icmp eq i8 %31, 0
  br i1 %cmp16.i, label %lor.lhs.false13.i.if.then18_crit_edge, label %lor.lhs.false18.i

lor.lhs.false13.i.if.then18_crit_edge:            ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

lor.lhs.false18.i:                                ; preds = %lor.lhs.false13.i
  %32 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %33)
  %cmp21.i = icmp eq i8 %33, 31
  br i1 %cmp21.i, label %land.lhs.true.i, label %lor.lhs.false18.i.if.then18_crit_edge

lor.lhs.false18.i.if.then18_crit_edge:            ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

land.lhs.true.i:                                  ; preds = %lor.lhs.false18.i
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %cmp25.i = icmp eq i8 %35, 0
  br i1 %cmp25.i, label %land.lhs.true27.i, label %land.lhs.true.i.if.then18_crit_edge

land.lhs.true.i.if.then18_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

land.lhs.true27.i:                                ; preds = %land.lhs.true.i
  %36 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %14, align 1
  %38 = and i8 %37, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %38)
  %cmp30.i = icmp eq i8 %38, 5
  br i1 %cmp30.i, label %cyapa_gen5_get_interval_time.exit, label %land.lhs.true27.i.if.then18_crit_edge

land.lhs.true27.i.if.then18_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then18

cyapa_gen5_get_interval_time.exit:                ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %16 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 2)
  %40 = load i16, ptr %16, align 1
  %41 = call i16 @llvm.bswap.i16(i16 %40) #11
  %42 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %dev_sleep_time, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #11
  br label %if.end21thread-pre-split

if.then18:                                        ; preds = %land.lhs.true27.i.if.then18_crit_edge, %land.lhs.true.i.if.then18_crit_edge, %lor.lhs.false18.i.if.then18_crit_edge, %lor.lhs.false13.i.if.then18_crit_edge, %lor.lhs.false.i.if.then18_crit_edge, %if.then14.if.then18_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i) #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %resp_data.i) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i) #11
  %43 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %dev_sleep_time, align 4
  br label %if.end21thread-pre-split

if.end21thread-pre-split:                         ; preds = %if.then18, %cyapa_gen5_get_interval_time.exit, %if.end6.if.end21thread-pre-split_crit_edge
  %44 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr = load i8, ptr %dev_pwr_mode, align 2
  br label %if.end21

if.end21:                                         ; preds = %if.end21thread-pre-split, %land.lhs.true.if.end21_crit_edge
  %45 = phi i8 [ %.pr, %if.end21thread-pre-split ], [ 0, %land.lhs.true.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %power_mode)
  %cmp25 = icmp eq i8 %45, %power_mode
  br i1 %cmp25, label %if.then27, label %if.end21.if.end46_crit_edge

if.end21.if.end46_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then27:                                        ; preds = %if.end21
  %46 = zext i8 %power_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %power_mode, label %lor.lhs.false38 [
    i8 0, label %if.then27.out_crit_edge
    i8 -4, label %if.then27.out_crit_edge315
    i8 4, label %if.then27.out_crit_edge316
  ]

if.then27.out_crit_edge316:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27.out_crit_edge315:                       ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then27.out_crit_edge:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

lor.lhs.false38:                                  ; preds = %if.then27
  %47 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %dev_sleep_time, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %48, i16 %sleep_time)
  %cmp42 = icmp eq i16 %48, %sleep_time
  br i1 %cmp42, label %lor.lhs.false38.out_crit_edge, label %lor.lhs.false38.if.end46_crit_edge

lor.lhs.false38.if.end46_crit_edge:               ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

lor.lhs.false38.out_crit_edge:                    ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end46:                                         ; preds = %lor.lhs.false38.if.end46_crit_edge, %if.end21.if.end46_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %power_mode)
  %cmp48 = icmp eq i8 %power_mode, 0
  br i1 %cmp48, label %if.then50, label %if.end55

if.then50:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i191) #11
  %49 = ptrtoint ptr %cmd.i191 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 83886344, ptr %cmd.i191, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %resp_data.i192) #11
  %50 = call ptr @memset(ptr %resp_data.i192, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i193) #11
  %51 = ptrtoint ptr %resp_len.i193 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 5, ptr %resp_len.i193, align 4
  %call.i194 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i191, i32 noundef 4, ptr noundef nonnull %resp_data.i192, ptr noundef nonnull %resp_len.i193, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool.not.i195 = icmp eq i32 %call.i194, 0
  br i1 %tobool.not.i195, label %lor.lhs.false.i198, label %if.then50.do.end_crit_edge

if.then50.do.end_crit_edge:                       ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i198:                               ; preds = %if.then50
  %52 = getelementptr inbounds [5 x i8], ptr %resp_data.i192, i32 0, i32 3
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %55 = and i8 %54, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %55)
  %cmp.not.i196 = icmp eq i8 %55, 1
  br i1 %cmp.not.i196, label %if.end53, label %lor.lhs.false.i198.do.end_crit_edge

lor.lhs.false.i198.do.end_crit_edge:              ; preds = %lor.lhs.false.i198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.i198.do.end_crit_edge, %if.then50.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i193) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %resp_data.i192) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i191) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.56, i32 noundef -22) #14
  br label %out

if.end53:                                         ; preds = %lor.lhs.false.i198
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i193) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %resp_data.i192) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i191) #11
  %56 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %dev_pwr_mode, align 2
  br label %out

if.end55:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %cmp58 = icmp eq i8 %45, 0
  br i1 %cmp58, label %if.then60, label %if.end55.if.end68_crit_edge

if.end55.if.end68_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then60:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cmd.i200) #11
  %57 = ptrtoint ptr %cmd.i200 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 83886088, ptr %cmd.i200, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %resp_data.i201) #11
  %58 = call ptr @memset(ptr %resp_data.i201, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i202) #11
  %59 = ptrtoint ptr %resp_len.i202 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 5, ptr %resp_len.i202, align 4
  %call.i204 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i200, i32 noundef 4, ptr noundef nonnull %resp_data.i201, ptr noundef nonnull %resp_len.i202, i32 noundef 500, ptr noundef nonnull @cyapa_sort_pip_deep_sleep_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204)
  %tobool.not.i205 = icmp eq i32 %call.i204, 0
  br i1 %tobool.not.i205, label %lor.lhs.false.i208, label %if.then60.do.end66_crit_edge

if.then60.do.end66_crit_edge:                     ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

lor.lhs.false.i208:                               ; preds = %if.then60
  %60 = getelementptr inbounds [5 x i8], ptr %resp_data.i201, i32 0, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1
  %63 = and i8 %62, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %cmp.not.i206 = icmp eq i8 %63, 0
  br i1 %cmp.not.i206, label %cyapa_pip_deep_sleep.exit210, label %lor.lhs.false.i208.do.end66_crit_edge

lor.lhs.false.i208.do.end66_crit_edge:            ; preds = %lor.lhs.false.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

cyapa_pip_deep_sleep.exit210:                     ; preds = %lor.lhs.false.i208
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i202) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %resp_data.i201) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i200) #11
  br label %if.end68

do.end66:                                         ; preds = %lor.lhs.false.i208.do.end66_crit_edge, %if.then60.do.end66_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i202) #11
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %resp_data.i201) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cmd.i200) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59, i32 noundef -22) #14
  br label %out

if.end68:                                         ; preds = %cyapa_pip_deep_sleep.exit210, %if.end55.if.end68_crit_edge
  %64 = zext i8 %power_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %power_mode, label %if.else93 [
    i8 -4, label %if.then72
    i8 4, label %if.then84
  ]

if.then72:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i211) #11
  %65 = ptrtoint ptr %cmd.i211 to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 288236974010009601, ptr %cmd.i211, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i212) #11
  %66 = getelementptr inbounds [6 x i8], ptr %resp_data.i212, i32 0, i32 3
  %67 = getelementptr inbounds [6 x i8], ptr %resp_data.i212, i32 0, i32 4
  %68 = getelementptr inbounds [6 x i8], ptr %resp_data.i212, i32 0, i32 5
  %69 = call ptr @memset(ptr %resp_data.i212, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i213) #11
  %70 = ptrtoint ptr %resp_len.i213 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %resp_len.i213, align 4
  %call.i215 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i211, i32 noundef 8, ptr noundef nonnull %resp_data.i212, ptr noundef nonnull %resp_len.i213, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool.not.i216 = icmp eq i32 %call.i215, 0
  br i1 %tobool.not.i216, label %lor.lhs.false.i217, label %if.then.i222

lor.lhs.false.i217:                               ; preds = %if.then72
  %71 = getelementptr inbounds [6 x i8], ptr %resp_data.i212, i32 0, i32 2
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %71, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %73)
  %cmp.i = icmp eq i8 %73, 31
  br i1 %cmp.i, label %land.lhs.true.i218, label %lor.lhs.false.i217.do.end78_crit_edge

lor.lhs.false.i217.do.end78_crit_edge:            ; preds = %lor.lhs.false.i217
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

land.lhs.true.i218:                               ; preds = %lor.lhs.false.i217
  %74 = ptrtoint ptr %66 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %66, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %cmp6.i = icmp eq i8 %75, 0
  br i1 %cmp6.i, label %land.lhs.true8.i, label %land.lhs.true.i218.do.end78_crit_edge

land.lhs.true.i218.do.end78_crit_edge:            ; preds = %land.lhs.true.i218
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i218
  %76 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %67, align 1
  %78 = and i8 %77, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %78)
  %cmp11.i = icmp eq i8 %78, 8
  br i1 %cmp11.i, label %lor.lhs.false13.i220, label %land.lhs.true8.i.do.end78_crit_edge

land.lhs.true8.i.do.end78_crit_edge:              ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

lor.lhs.false13.i220:                             ; preds = %land.lhs.true8.i
  %79 = ptrtoint ptr %68 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %68, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %cmp16.i219 = icmp eq i8 %80, 0
  br i1 %cmp16.i219, label %if.end79, label %lor.lhs.false13.i220.do.end78_crit_edge

lor.lhs.false13.i220.do.end78_crit_edge:          ; preds = %lor.lhs.false13.i220
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end78

if.then.i222:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp18.i = icmp slt i32 %call.i215, 0
  %spec.select = select i1 %cmp18.i, i32 %call.i215, i32 -22
  br label %do.end78

do.end78:                                         ; preds = %if.then.i222, %lor.lhs.false13.i220.do.end78_crit_edge, %land.lhs.true8.i.do.end78_crit_edge, %land.lhs.true.i218.do.end78_crit_edge, %lor.lhs.false.i217.do.end78_crit_edge
  %retval.0.i223.ph = phi i32 [ -22, %lor.lhs.false13.i220.do.end78_crit_edge ], [ -22, %land.lhs.true8.i.do.end78_crit_edge ], [ -22, %land.lhs.true.i218.do.end78_crit_edge ], [ -22, %lor.lhs.false.i217.do.end78_crit_edge ], [ %spec.select, %if.then.i222 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i213) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i212) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i211) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i223.ph) #14
  br label %out

if.end79:                                         ; preds = %lor.lhs.false13.i220
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i213) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i212) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i211) #11
  %81 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -4, ptr %dev_pwr_mode, align 2
  br label %out

if.then84:                                        ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i224) #11
  %82 = ptrtoint ptr %cmd.i224 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 288236974010009605, ptr %cmd.i224, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i225) #11
  %83 = getelementptr inbounds [6 x i8], ptr %resp_data.i225, i32 0, i32 3
  %84 = getelementptr inbounds [6 x i8], ptr %resp_data.i225, i32 0, i32 4
  %85 = getelementptr inbounds [6 x i8], ptr %resp_data.i225, i32 0, i32 5
  %86 = call ptr @memset(ptr %resp_data.i225, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i226) #11
  %87 = ptrtoint ptr %resp_len.i226 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 6, ptr %resp_len.i226, align 4
  %call.i228 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i224, i32 noundef 8, ptr noundef nonnull %resp_data.i225, ptr noundef nonnull %resp_len.i226, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %tobool.not.i229 = icmp eq i32 %call.i228, 0
  br i1 %tobool.not.i229, label %lor.lhs.false.i231, label %if.then.i240

lor.lhs.false.i231:                               ; preds = %if.then84
  %88 = getelementptr inbounds [6 x i8], ptr %resp_data.i225, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %88, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %90)
  %cmp.i230 = icmp eq i8 %90, 31
  br i1 %cmp.i230, label %land.lhs.true.i233, label %lor.lhs.false.i231.do.end90_crit_edge

lor.lhs.false.i231.do.end90_crit_edge:            ; preds = %lor.lhs.false.i231
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end90

land.lhs.true.i233:                               ; preds = %lor.lhs.false.i231
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %83, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %cmp6.i232 = icmp eq i8 %92, 0
  br i1 %cmp6.i232, label %land.lhs.true8.i235, label %land.lhs.true.i233.do.end90_crit_edge

land.lhs.true.i233.do.end90_crit_edge:            ; preds = %land.lhs.true.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end90

land.lhs.true8.i235:                              ; preds = %land.lhs.true.i233
  %93 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %84, align 1
  %95 = and i8 %94, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %95)
  %cmp11.i234 = icmp eq i8 %95, 8
  br i1 %cmp11.i234, label %lor.lhs.false13.i237, label %land.lhs.true8.i235.do.end90_crit_edge

land.lhs.true8.i235.do.end90_crit_edge:           ; preds = %land.lhs.true8.i235
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end90

lor.lhs.false13.i237:                             ; preds = %land.lhs.true8.i235
  %96 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %85, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp16.i236 = icmp eq i8 %97, 0
  br i1 %cmp16.i236, label %if.end91, label %lor.lhs.false13.i237.do.end90_crit_edge

lor.lhs.false13.i237.do.end90_crit_edge:          ; preds = %lor.lhs.false13.i237
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end90

if.then.i240:                                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i228)
  %cmp18.i238 = icmp slt i32 %call.i228, 0
  %spec.select313 = select i1 %cmp18.i238, i32 %call.i228, i32 -22
  br label %do.end90

do.end90:                                         ; preds = %if.then.i240, %lor.lhs.false13.i237.do.end90_crit_edge, %land.lhs.true8.i235.do.end90_crit_edge, %land.lhs.true.i233.do.end90_crit_edge, %lor.lhs.false.i231.do.end90_crit_edge
  %retval.0.i241.ph = phi i32 [ -22, %lor.lhs.false13.i237.do.end90_crit_edge ], [ -22, %land.lhs.true8.i235.do.end90_crit_edge ], [ -22, %land.lhs.true.i233.do.end90_crit_edge ], [ -22, %lor.lhs.false.i231.do.end90_crit_edge ], [ %spec.select313, %if.then.i240 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i226) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i225) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i224) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.65, i32 noundef %retval.0.i241.ph) #14
  br label %out

if.end91:                                         ; preds = %lor.lhs.false13.i237
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i226) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i225) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i224) #11
  %98 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %dev_pwr_mode, align 2
  br label %out

if.else93:                                        ; preds = %if.end68
  %99 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %dev_sleep_time, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %100)
  %cmp96 = icmp ne i16 %100, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %100, i16 %sleep_time)
  %cmp102.not = icmp eq i16 %100, %sleep_time
  %or.cond = and i1 %cmp96, %cmp102.not
  br i1 %or.cond, label %if.else93.if.end111_crit_edge, label %if.then104

if.else93.if.end111_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end111

if.then104:                                       ; preds = %if.else93
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %cmd.i243) #11
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %resp_data.i244) #11
  %101 = getelementptr inbounds [7 x i8], ptr %resp_data.i244, i32 0, i32 2
  %102 = getelementptr inbounds [7 x i8], ptr %resp_data.i244, i32 0, i32 3
  %103 = getelementptr inbounds [7 x i8], ptr %resp_data.i244, i32 0, i32 4
  %104 = getelementptr inbounds [7 x i8], ptr %resp_data.i244, i32 0, i32 6
  %105 = call ptr @memset(ptr %resp_data.i244, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i245) #11
  %106 = getelementptr inbounds i8, ptr %cmd.i243, i32 4
  %107 = call ptr @memset(ptr %106, i32 0, i32 252)
  %parameter_data2.i246 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i243, i32 0, i32 5
  %108 = ptrtoint ptr %cmd.i243 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 1024, ptr %cmd.i243, align 2
  %length.i247 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i243, i32 0, i32 1
  %109 = ptrtoint ptr %length.i247 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2304, ptr %length.i247, align 2
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 47, ptr %106, align 2
  %cmd_code.i249 = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i243, i32 0, i32 4
  %111 = ptrtoint ptr %cmd_code.i249 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 6, ptr %cmd_code.i249, align 2
  %112 = ptrtoint ptr %parameter_data2.i246 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 76, ptr %parameter_data2.i246, align 1
  %parameter_size11.i = getelementptr inbounds %struct.gen5_app_set_parameter_data, ptr %parameter_data2.i246, i32 0, i32 1
  %113 = ptrtoint ptr %parameter_size11.i to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 2, ptr %parameter_size11.i, align 2
  %conv12.i = zext i16 %sleep_time to i32
  %value.i = getelementptr inbounds %struct.pip_app_cmd_head, ptr %cmd.i243, i32 1, i32 1
  %114 = call i32 @llvm.bswap.i32(i32 %conv12.i) #11
  %115 = ptrtoint ptr %value.i to i32
  call void @__asan_storeN_noabort(i32 %115, i32 4)
  store i32 %114, ptr %value.i, align 1
  %116 = ptrtoint ptr %resp_len.i245 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 7, ptr %resp_len.i245, align 4
  %call.i250 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i243, i32 noundef 13, ptr noundef nonnull %resp_data.i244, ptr noundef nonnull %resp_len.i245, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool.not.i251 = icmp eq i32 %call.i250, 0
  br i1 %tobool.not.i251, label %lor.lhs.false.i253, label %if.then104.cyapa_gen5_set_interval_time.exit.thread_crit_edge

if.then104.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

lor.lhs.false.i253:                               ; preds = %if.then104
  %117 = getelementptr inbounds [7 x i8], ptr %resp_data.i244, i32 0, i32 5
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 76, i8 %119)
  %cmp.not.i252 = icmp eq i8 %119, 76
  br i1 %cmp.not.i252, label %lor.lhs.false18.i254, label %lor.lhs.false.i253.cyapa_gen5_set_interval_time.exit.thread_crit_edge

lor.lhs.false.i253.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %lor.lhs.false.i253
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

lor.lhs.false18.i254:                             ; preds = %lor.lhs.false.i253
  %120 = ptrtoint ptr %104 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %104, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %121)
  %cmp22.not.i = icmp eq i8 %121, 2
  br i1 %cmp22.not.i, label %lor.lhs.false24.i, label %lor.lhs.false18.i254.cyapa_gen5_set_interval_time.exit.thread_crit_edge

lor.lhs.false18.i254.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %lor.lhs.false18.i254
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

lor.lhs.false24.i:                                ; preds = %lor.lhs.false18.i254
  %122 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %101, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %123)
  %cmp27.i = icmp eq i8 %123, 31
  br i1 %cmp27.i, label %land.lhs.true.i255, label %lor.lhs.false24.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge

lor.lhs.false24.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %lor.lhs.false24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

land.lhs.true.i255:                               ; preds = %lor.lhs.false24.i
  %124 = ptrtoint ptr %102 to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %cmp31.i = icmp eq i8 %125, 0
  br i1 %cmp31.i, label %land.lhs.true33.i, label %land.lhs.true.i255.cyapa_gen5_set_interval_time.exit.thread_crit_edge

land.lhs.true.i255.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %land.lhs.true.i255
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

land.lhs.true33.i:                                ; preds = %land.lhs.true.i255
  %126 = ptrtoint ptr %103 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %103, align 1
  %128 = and i8 %127, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %128)
  %cmp36.i = icmp eq i8 %128, 6
  br i1 %cmp36.i, label %if.then108, label %land.lhs.true33.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge

land.lhs.true33.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge: ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_set_interval_time.exit.thread

cyapa_gen5_set_interval_time.exit.thread:         ; preds = %land.lhs.true33.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge, %land.lhs.true.i255.cyapa_gen5_set_interval_time.exit.thread_crit_edge, %lor.lhs.false24.i.cyapa_gen5_set_interval_time.exit.thread_crit_edge, %lor.lhs.false18.i254.cyapa_gen5_set_interval_time.exit.thread_crit_edge, %lor.lhs.false.i253.cyapa_gen5_set_interval_time.exit.thread_crit_edge, %if.then104.cyapa_gen5_set_interval_time.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i245) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %resp_data.i244) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i243) #11
  br label %if.end111

if.then108:                                       ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i245) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %resp_data.i244) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %cmd.i243) #11
  %129 = ptrtoint ptr %dev_sleep_time to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %sleep_time, ptr %dev_sleep_time, align 4
  br label %if.end111

if.end111:                                        ; preds = %if.then108, %cyapa_gen5_set_interval_time.exit.thread, %if.else93.if.end111_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 51, i16 %sleep_time)
  %cmp113 = icmp ult i16 %sleep_time, 51
  %. = select i1 %cmp113, i8 3, i8 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd.i259) #11
  %130 = ptrtoint ptr %cmd.i259 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 288236974010009601, ptr %cmd.i259, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %resp_data.i260) #11
  %131 = getelementptr inbounds [6 x i8], ptr %resp_data.i260, i32 0, i32 3
  %132 = getelementptr inbounds [6 x i8], ptr %resp_data.i260, i32 0, i32 4
  %133 = getelementptr inbounds [6 x i8], ptr %resp_data.i260, i32 0, i32 5
  %134 = call ptr @memset(ptr %resp_data.i260, i32 255, i32 6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i261) #11
  %arrayidx.i262 = getelementptr inbounds [8 x i8], ptr %cmd.i259, i32 0, i32 7
  %135 = ptrtoint ptr %arrayidx.i262 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 %., ptr %arrayidx.i262, align 1
  %136 = ptrtoint ptr %resp_len.i261 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 6, ptr %resp_len.i261, align 4
  %call.i263 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i259, i32 noundef 8, ptr noundef nonnull %resp_data.i260, ptr noundef nonnull %resp_len.i261, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %tobool.not.i264 = icmp eq i32 %call.i263, 0
  br i1 %tobool.not.i264, label %lor.lhs.false.i266, label %if.then.i275

lor.lhs.false.i266:                               ; preds = %if.end111
  %137 = getelementptr inbounds [6 x i8], ptr %resp_data.i260, i32 0, i32 2
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %139)
  %cmp.i265 = icmp eq i8 %139, 31
  br i1 %cmp.i265, label %land.lhs.true.i268, label %lor.lhs.false.i266.do.end123_crit_edge

lor.lhs.false.i266.do.end123_crit_edge:           ; preds = %lor.lhs.false.i266
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

land.lhs.true.i268:                               ; preds = %lor.lhs.false.i266
  %140 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %131, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %cmp6.i267 = icmp eq i8 %141, 0
  br i1 %cmp6.i267, label %land.lhs.true8.i270, label %land.lhs.true.i268.do.end123_crit_edge

land.lhs.true.i268.do.end123_crit_edge:           ; preds = %land.lhs.true.i268
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

land.lhs.true8.i270:                              ; preds = %land.lhs.true.i268
  %142 = ptrtoint ptr %132 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %132, align 1
  %144 = and i8 %143, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %144)
  %cmp11.i269 = icmp eq i8 %144, 8
  br i1 %cmp11.i269, label %lor.lhs.false13.i272, label %land.lhs.true8.i270.do.end123_crit_edge

land.lhs.true8.i270.do.end123_crit_edge:          ; preds = %land.lhs.true8.i270
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

lor.lhs.false13.i272:                             ; preds = %land.lhs.true8.i270
  %145 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %133, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp16.i271 = icmp eq i8 %146, 0
  br i1 %cmp16.i271, label %if.end125, label %lor.lhs.false13.i272.do.end123_crit_edge

lor.lhs.false13.i272.do.end123_crit_edge:         ; preds = %lor.lhs.false13.i272
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end123

if.then.i275:                                     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263)
  %cmp18.i273 = icmp slt i32 %call.i263, 0
  %spec.select314 = select i1 %cmp18.i273, i32 %call.i263, i32 -22
  br label %do.end123

do.end123:                                        ; preds = %if.then.i275, %lor.lhs.false13.i272.do.end123_crit_edge, %land.lhs.true8.i270.do.end123_crit_edge, %land.lhs.true.i268.do.end123_crit_edge, %lor.lhs.false.i266.do.end123_crit_edge
  %retval.0.i276.ph = phi i32 [ -22, %lor.lhs.false13.i272.do.end123_crit_edge ], [ -22, %land.lhs.true8.i270.do.end123_crit_edge ], [ -22, %land.lhs.true.i268.do.end123_crit_edge ], [ -22, %lor.lhs.false.i266.do.end123_crit_edge ], [ %spec.select314, %if.then.i275 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i261) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i260) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i259) #11
  %conv124 = zext i8 %. to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68, i32 noundef %conv124, i32 noundef %retval.0.i276.ph) #14
  br label %out

if.end125:                                        ; preds = %lor.lhs.false13.i272
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i261) #11
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %resp_data.i260) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd.i259) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %pm_stage)
  %cmp126 = icmp eq i32 %pm_stage, 2
  br i1 %cmp126, label %if.then128, label %if.end125.if.end130_crit_edge

if.end125.if.end130_crit_edge:                    ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.then128:                                       ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %cmd.i278) #11
  %147 = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 2
  %148 = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 4
  %149 = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 6
  %150 = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 7
  %151 = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %resp_data.i279) #11
  %152 = call ptr @memset(ptr %resp_data.i279, i32 255, i32 7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len.i280) #11
  %153 = ptrtoint ptr %148 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 12032, ptr %148, align 2
  %154 = ptrtoint ptr %cmd.i278 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 1024, ptr %cmd.i278, align 2
  %155 = ptrtoint ptr %147 to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 2048, ptr %147, align 2
  %156 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 6, ptr %149, align 2
  %157 = ptrtoint ptr %150 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 8, ptr %150, align 1
  %arrayidx3.i = getelementptr inbounds [10 x i8], ptr %cmd.i278, i32 0, i32 8
  %158 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %arrayidx3.i, align 2
  %159 = ptrtoint ptr %151 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 1, ptr %151, align 1
  %160 = ptrtoint ptr %resp_len.i280 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 7, ptr %resp_len.i280, align 4
  %call.i281 = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd.i278, i32 noundef 10, ptr noundef nonnull %resp_data.i279, ptr noundef nonnull %resp_len.i280, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext false) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len.i280) #11
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %resp_data.i279) #11
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %cmd.i278) #11
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end125.if.end130_crit_edge
  %call131 = call zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext %sleep_time) #11
  %161 = ptrtoint ptr %dev_pwr_mode to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 %call131, ptr %dev_pwr_mode, align 2
  br label %out

out:                                              ; preds = %if.end130, %do.end123, %if.end91, %do.end90, %if.end79, %do.end78, %do.end66, %if.end53, %do.end, %lor.lhs.false38.out_crit_edge, %if.then27.out_crit_edge, %if.then27.out_crit_edge315, %if.then27.out_crit_edge316
  %error.0 = phi i32 [ 0, %if.then27.out_crit_edge ], [ 0, %lor.lhs.false38.out_crit_edge ], [ -22, %do.end ], [ 0, %if.end53 ], [ -22, %do.end66 ], [ %retval.0.i223.ph, %do.end78 ], [ 0, %if.end79 ], [ %retval.0.i241.ph, %do.end90 ], [ 0, %if.end91 ], [ %retval.0.i276.ph, %do.end123 ], [ 0, %if.end130 ], [ 0, %if.then27.out_crit_edge315 ], [ 0, %if.then27.out_crit_edge316 ]
  call void @mutex_lock_nested(ptr noundef %pm_stage_lock.i, i32 noundef 0) #11
  %162 = ptrtoint ptr %pm_stage1.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 0, ptr %pm_stage1.i, align 4
  call void @mutex_unlock(ptr noundef %pm_stage_lock.i) #11
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_mt_sync_frame(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_mt_report_slot_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen5_read_panel_scan_raw_data(ptr noundef %cyapa, i8 noundef zeroext %raw_data_type, i32 noundef %raw_data_max_num, ptr noundef %raw_data_max, ptr noundef %raw_data_min, ptr noundef writeonly %raw_data_ave) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [12 x i8], align 2
  %resp_data = alloca [256 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 7
  %1 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 9
  %2 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 11
  %3 = getelementptr inbounds i8, ptr %cmd, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %3, align 2
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %resp_data) #11
  %5 = call ptr @memset(ptr %resp_data, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %tobool.not = icmp eq ptr %raw_data_max, null
  %tobool7.not = icmp eq ptr %raw_data_min, null
  %or.cond = or i1 %tobool.not, %tobool7.not
  %tobool9.not = icmp eq ptr %raw_data_ave, null
  %or.cond1 = or i1 %or.cond, %tobool9.not
  br i1 %or.cond1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 6
  %7 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 4
  %8 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %9 = ptrtoint ptr %raw_data_max to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %raw_data_max, align 4
  %10 = ptrtoint ptr %raw_data_min to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2147483647, ptr %raw_data_min, align 4
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1024, ptr %cmd, align 2
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2560, ptr %8, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 47, ptr %7, align 2
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 43, ptr %6, align 2
  %arrayidx = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 2
  %arrayidx24 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 3
  %arrayidx29 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 4
  %arrayidx35 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 5
  %arrayidx40 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 6
  %arrayidx48 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 7
  %arrayidx55 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %if.end93, %if.end
  %read_elements.0 = phi i32 [ 61, %if.end ], [ %div, %if.end93 ]
  %read_len.0 = phi i32 [ 244, %if.end ], [ %mul94, %if.end93 ]
  %offset.0 = phi i16 [ 0, %if.end ], [ %add59, %if.end93 ]
  %sum.0 = phi i32 [ 0, %if.end ], [ %sum.1.lcssa, %if.end93 ]
  %count.0 = phi i32 [ 0, %if.end ], [ %count.1.lcssa, %if.end93 ]
  %15 = call i16 @llvm.bswap.i16(i16 %offset.0) #11
  %16 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 2)
  store i16 %15, ptr %0, align 1
  %conv12 = trunc i32 %read_elements.0 to i16
  %17 = shl nuw i16 %conv12, 8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 %17, ptr %1, align 1
  %19 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %raw_data_type, ptr %2, align 1
  %add = add nuw nsw i32 %read_len.0, 10
  %20 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool16.not = icmp eq i32 %call, 0
  br i1 %tobool16.not, label %lor.lhs.false17, label %do.body.cleanup_crit_edge

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false17:                                  ; preds = %do.body
  %21 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %22)
  %cmp18 = icmp slt i32 %22, 10
  br i1 %cmp18, label %lor.lhs.false17.cleanup_crit_edge, label %lor.lhs.false20

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false20:                                  ; preds = %lor.lhs.false17
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %24)
  %cmp22 = icmp eq i8 %24, 31
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false20.cleanup_crit_edge

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %lor.lhs.false20
  %25 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp26 = icmp eq i8 %26, 0
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true28:                                  ; preds = %land.lhs.true
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29, align 1
  %29 = and i8 %28, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 43, i8 %29)
  %cmp32 = icmp eq i8 %29, 43
  br i1 %cmp32, label %lor.lhs.false34, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false34:                                  ; preds = %land.lhs.true28
  %30 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp37 = icmp eq i8 %31, 0
  br i1 %cmp37, label %lor.lhs.false39, label %lor.lhs.false34.cleanup_crit_edge

lor.lhs.false34.cleanup_crit_edge:                ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false39:                                  ; preds = %lor.lhs.false34
  %32 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %raw_data_type)
  %cmp43.not = icmp eq i8 %33, %raw_data_type
  br i1 %cmp43.not, label %if.end47, label %lor.lhs.false39.cleanup_crit_edge

lor.lhs.false39.cleanup_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false39
  %34 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %cmp51 = icmp eq i16 %35, 0
  br i1 %cmp51, label %if.end47.do.end_crit_edge, label %if.end54

if.end47.do.end_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end54:                                         ; preds = %if.end47
  %36 = call i16 @llvm.bswap.i16(i16 %35) #11
  %conv50 = zext i16 %36 to i32
  %37 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx55, align 1
  %39 = and i8 %38, 7
  %and57 = zext i8 %39 to i32
  %add59 = add i16 %36, %offset.0
  %mul63 = mul nuw nsw i32 %and57, %conv50
  %add64 = add nuw nsw i32 %mul63, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul63)
  %cmp652.not = icmp eq i32 %mul63, 0
  br i1 %cmp652.not, label %if.end54.if.end89_crit_edge, label %for.body.lr.ph

if.end54.if.end89_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

for.body.lr.ph:                                   ; preds = %if.end54
  %conv.i = zext i8 %38 to i32
  %and.i = and i32 %conv.i, 7
  %and2.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 0
  %and5.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and57)
  %cmp9.i = icmp ugt i32 %and.i, %and57
  %mul.i = shl nuw nsw i32 %and.i, 3
  %sub.i.i = add nsw i32 %mul.i, -1
  %shl.i.i = shl nsw i32 -1, %mul.i
  br label %for.body

for.body:                                         ; preds = %cyapa_parse_structure_data.exit.for.body_crit_edge, %for.body.lr.ph
  %i.05 = phi i32 [ 10, %for.body.lr.ph ], [ %add88, %cyapa_parse_structure_data.exit.for.body_crit_edge ]
  %count.14 = phi i32 [ %count.0, %for.body.lr.ph ], [ %inc, %cyapa_parse_structure_data.exit.for.body_crit_edge ]
  %sum.13 = phi i32 [ %sum.0, %for.body.lr.ph ], [ %add87, %cyapa_parse_structure_data.exit.for.body_crit_edge ]
  %arrayidx68 = getelementptr [256 x i8], ptr %resp_data, i32 0, i32 %i.05
  br i1 %cmp9.i, label %for.body.cyapa_parse_structure_data.exit_crit_edge, label %if.end.i

for.body.cyapa_parse_structure_data.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_parse_structure_data.exit

if.end.i:                                         ; preds = %for.body
  %40 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %and.i, label %if.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 4, label %sw.bb18.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %41 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx68, align 1
  %conv11.i = zext i8 %42 to i32
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  %43 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %arrayidx68, align 1
  br i1 %cmp.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv14.i = zext i16 %44 to i32
  br label %sw.epilog.i

if.else.i:                                        ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = call i16 @llvm.bswap.i16(i16 %44) #11
  %conv16.i = zext i16 %45 to i32
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 4)
  %47 = load i32, ptr %arrayidx68, align 1
  %48 = call i32 @llvm.bswap.i32(i32 %47) #11
  %spec.select.i = select i1 %cmp.i, i32 %47, i32 %48
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %if.else.i, %if.then13.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %value.0.i = phi i32 [ %conv14.i, %if.then13.i ], [ %conv16.i, %if.else.i ], [ %conv11.i, %sw.bb.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.bb18.i ]
  br i1 %cmp6.i, label %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge, label %if.then26.i

sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_parse_structure_data.exit

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = ashr i32 %value.0.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool.not.i.i = icmp eq i32 %shr.i.i, 0
  %or.i.i = select i1 %tobool.not.i.i, i32 0, i32 %shl.i.i
  %value.addr.0.i.i = or i32 %or.i.i, %value.0.i
  br label %cyapa_parse_structure_data.exit

cyapa_parse_structure_data.exit:                  ; preds = %if.then26.i, %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge, %for.body.cyapa_parse_structure_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.cyapa_parse_structure_data.exit_crit_edge ], [ %value.0.i, %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge ], [ %value.addr.0.i.i, %if.then26.i ]
  %49 = ptrtoint ptr %raw_data_min to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %raw_data_min, align 4
  %51 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %50)
  %52 = ptrtoint ptr %raw_data_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %raw_data_min, align 4
  %53 = ptrtoint ptr %raw_data_max to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %raw_data_max, align 4
  %55 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 %54)
  %56 = ptrtoint ptr %raw_data_max to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %raw_data_max, align 4
  %add87 = add i32 %retval.0.i, %sum.13
  %inc = add i32 %count.14, 1
  %add88 = add i32 %i.05, %and57
  %cmp65 = icmp slt i32 %add88, %add64
  br i1 %cmp65, label %cyapa_parse_structure_data.exit.for.body_crit_edge, label %cyapa_parse_structure_data.exit.if.end89_crit_edge

cyapa_parse_structure_data.exit.if.end89_crit_edge: ; preds = %cyapa_parse_structure_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end89

cyapa_parse_structure_data.exit.for.body_crit_edge: ; preds = %cyapa_parse_structure_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end89:                                         ; preds = %cyapa_parse_structure_data.exit.if.end89_crit_edge, %if.end54.if.end89_crit_edge
  %sum.1.lcssa = phi i32 [ %sum.0, %if.end54.if.end89_crit_edge ], [ %add87, %cyapa_parse_structure_data.exit.if.end89_crit_edge ]
  %count.1.lcssa = phi i32 [ %count.0, %if.end54.if.end89_crit_edge ], [ %inc, %cyapa_parse_structure_data.exit.if.end89_crit_edge ]
  %cmp90.not = icmp slt i32 %count.1.lcssa, %raw_data_max_num
  br i1 %cmp90.not, label %if.end93, label %if.end89.do.end_crit_edge

if.end89.do.end_crit_edge:                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end93:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #13
  %div = udiv i32 246, %and57
  %mul94 = mul nuw nsw i32 %div, %and57
  br label %do.body

do.end:                                           ; preds = %if.end89.do.end_crit_edge, %if.end47.do.end_crit_edge
  %sum.3 = phi i32 [ %sum.0, %if.end47.do.end_crit_edge ], [ %sum.1.lcssa, %if.end89.do.end_crit_edge ]
  %count.3 = phi i32 [ %count.0, %if.end47.do.end_crit_edge ], [ %count.1.lcssa, %if.end89.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.3)
  %tobool95.not = icmp eq i32 %count.3, 0
  br i1 %tobool95.not, label %do.end.cond.end99_crit_edge, label %cond.true96

do.end.cond.end99_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end99

cond.true96:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %div97 = sdiv i32 %sum.3, %count.3
  br label %cond.end99

cond.end99:                                       ; preds = %cond.true96, %do.end.cond.end99_crit_edge
  %cond100 = phi i32 [ %div97, %cond.true96 ], [ 0, %do.end.cond.end99_crit_edge ]
  %57 = ptrtoint ptr %raw_data_ave to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond100, ptr %raw_data_ave, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end99, %lor.lhs.false39.cleanup_crit_edge, %lor.lhs.false34.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %lor.lhs.false17.cleanup_crit_edge, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end99 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ], [ -11, %lor.lhs.false17.cleanup_crit_edge ], [ -11, %lor.lhs.false20.cleanup_crit_edge ], [ -11, %land.lhs.true.cleanup_crit_edge ], [ -11, %land.lhs.true28.cleanup_crit_edge ], [ -11, %lor.lhs.false34.cleanup_crit_edge ], [ -11, %lor.lhs.false39.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cyapa_gen5_read_idac_data(ptr noundef %cyapa, i8 noundef zeroext %idac_data_type, ptr noundef %data_size, ptr noundef %idac_max, ptr noundef %idac_min, ptr noundef writeonly %idac_ave) unnamed_addr #0 align 64 {
entry:
  %cmd = alloca [12 x i8], align 2
  %resp_data = alloca [256 x i8], align 1
  %resp_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cmd) #11
  %0 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 2
  %1 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 4
  %2 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 6
  %3 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 7
  %4 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 9
  %5 = getelementptr inbounds [12 x i8], ptr %cmd, i32 0, i32 11
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %resp_data) #11
  %6 = call ptr @memset(ptr %resp_data, i32 255, i32 256)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resp_len) #11
  %tobool.not = icmp eq ptr %data_size, null
  %tobool10.not = icmp eq ptr %idac_max, null
  %or.cond = or i1 %tobool.not, %tobool10.not
  %tobool12.not = icmp eq ptr %idac_min, null
  %or.cond1 = or i1 %or.cond, %tobool12.not
  %tobool14.not = icmp eq ptr %idac_ave, null
  %or.cond2 = or i1 %or.cond1, %tobool14.not
  br i1 %or.cond2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %idac_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2147483648, ptr %idac_max, align 4
  %8 = ptrtoint ptr %idac_min to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2147483647, ptr %idac_min, align 4
  %9 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp eq i32 %10, 0
  br i1 %cmp15, label %if.then17, label %if.else31

if.then17:                                        ; preds = %if.end
  %11 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idac_data_type)
  %cmp19 = icmp eq i8 %idac_data_type, 0
  br i1 %cmp19, label %if.then21, label %if.then17.if.end60_crit_edge

if.then17.if.end60_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then21:                                        ; preds = %if.then17
  %aligned_electrodes_rx = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 31
  %12 = ptrtoint ptr %aligned_electrodes_rx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aligned_electrodes_rx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp22 = icmp eq i32 %13, 0
  br i1 %cmp22, label %if.then24, label %if.then21.if.end26_crit_edge

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  %electrodes_rx1.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 30
  %14 = ptrtoint ptr %electrodes_rx1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %electrodes_rx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.not.i = icmp eq i32 %15, 0
  %electrodes_x5.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 28
  %16 = ptrtoint ptr %electrodes_x5.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %electrodes_x5.i, align 4
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp3.i = icmp eq i32 %17, %15
  br i1 %cmp3.i, label %cond.true.i, label %if.then.i.cyapa_gen5_guess_electrodes.exit_crit_edge

if.then.i.cyapa_gen5_guess_electrodes.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_gen5_guess_electrodes.exit

cond.true.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %electrodes_y.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %18 = ptrtoint ptr %electrodes_y.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %electrodes_y.i, align 4
  br label %cyapa_gen5_guess_electrodes.exit

if.else.i:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %electrodes_y6.i = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %20 = ptrtoint ptr %electrodes_y6.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %electrodes_y6.i, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %17, i32 %21) #11
  %23 = tail call i32 @llvm.smax.i32(i32 %17, i32 %21) #11
  br label %cyapa_gen5_guess_electrodes.exit

cyapa_gen5_guess_electrodes.exit:                 ; preds = %if.else.i, %cond.true.i, %if.then.i.cyapa_gen5_guess_electrodes.exit_crit_edge
  %electrodes_rx.0 = phi i32 [ %23, %if.else.i ], [ %15, %cond.true.i ], [ %15, %if.then.i.cyapa_gen5_guess_electrodes.exit_crit_edge ]
  %electrodes_tx.0 = phi i32 [ %22, %if.else.i ], [ %19, %cond.true.i ], [ %17, %if.then.i.cyapa_gen5_guess_electrodes.exit_crit_edge ]
  %add = add i32 %electrodes_rx.0, 3
  %and = and i32 %add, -4
  %24 = ptrtoint ptr %aligned_electrodes_rx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and, ptr %aligned_electrodes_rx, align 4
  br label %if.end26

if.end26:                                         ; preds = %cyapa_gen5_guess_electrodes.exit, %if.then21.if.end26_crit_edge
  %electrodes_rx.1 = phi i32 [ %electrodes_rx.0, %cyapa_gen5_guess_electrodes.exit ], [ 0, %if.then21.if.end26_crit_edge ]
  %electrodes_tx.1 = phi i32 [ %electrodes_tx.0, %cyapa_gen5_guess_electrodes.exit ], [ 0, %if.then21.if.end26_crit_edge ]
  %25 = ptrtoint ptr %aligned_electrodes_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %aligned_electrodes_rx, align 4
  %add28 = add i32 %26, 7
  %and29 = and i32 %add28, -8
  br label %if.end60

if.else31:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp32 = icmp sgt i32 %10, 4
  br i1 %cmp32, label %if.then34, label %if.else31.if.end35_crit_edge

if.else31.if.end35_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %data_size, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %if.else31.if.end35_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idac_data_type)
  %cmp37 = icmp eq i8 %idac_data_type, 0
  br i1 %cmp37, label %if.then39, label %if.else53

if.then39:                                        ; preds = %if.end35
  %aligned_electrodes_rx40 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 31
  %28 = ptrtoint ptr %aligned_electrodes_rx40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %aligned_electrodes_rx40, align 4
  %30 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_size, align 4
  %mul = mul i32 %31, %29
  %conv41 = trunc i32 %mul to i16
  %electrodes_rx42 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 30
  %32 = ptrtoint ptr %electrodes_rx42 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %electrodes_rx42, align 4
  %electrodes_x = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 28
  %34 = ptrtoint ptr %electrodes_x to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %electrodes_x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp43 = icmp eq i32 %33, %35
  br i1 %cmp43, label %if.then45, label %if.then39.if.end48_crit_edge

if.then39.if.end48_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #13
  %electrodes_y = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %36 = ptrtoint ptr %electrodes_y to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %electrodes_y, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %if.then39.if.end48_crit_edge
  %storemerge = phi i32 [ %37, %if.then45 ], [ %35, %if.then39.if.end48_crit_edge ]
  %add50 = add i32 %29, 7
  %and51 = and i32 %add50, -8
  %mul52 = mul i32 %storemerge, %and51
  br label %if.end60

if.else53:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  %electrodes_x54 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 28
  %38 = ptrtoint ptr %electrodes_x54 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %electrodes_x54, align 4
  %electrodes_y55 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 29
  %40 = ptrtoint ptr %electrodes_y55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %electrodes_y55, align 4
  %add56 = add i32 %39, 3
  %add57 = add i32 %add56, %41
  %and58 = and i32 %add57, -4
  br label %if.end60

if.end60:                                         ; preds = %if.else53, %if.end48, %if.end26, %if.then17.if.end60_crit_edge
  %electrodes_rx.2 = phi i32 [ %electrodes_rx.1, %if.end26 ], [ 0, %if.then17.if.end60_crit_edge ], [ 0, %if.end48 ], [ 0, %if.else53 ]
  %electrodes_tx.2 = phi i32 [ %electrodes_tx.1, %if.end26 ], [ 0, %if.then17.if.end60_crit_edge ], [ %storemerge, %if.end48 ], [ 0, %if.else53 ]
  %max_element_cnt.0 = phi i32 [ %and29, %if.end26 ], [ 2, %if.then17.if.end60_crit_edge ], [ %mul52, %if.end48 ], [ %and58, %if.else53 ]
  %tmp_max.0 = phi i32 [ -2147483648, %if.end26 ], [ -2147483648, %if.then17.if.end60_crit_edge ], [ -1, %if.end48 ], [ -1, %if.else53 ]
  %tmp_min.0 = phi i32 [ 2147483647, %if.end26 ], [ 2147483647, %if.then17.if.end60_crit_edge ], [ -1, %if.end48 ], [ -1, %if.else53 ]
  %tmp_sum.0 = phi i32 [ 0, %if.end26 ], [ 0, %if.then17.if.end60_crit_edge ], [ -1, %if.end48 ], [ -1, %if.else53 ]
  %offset.0 = phi i16 [ 0, %if.end26 ], [ 0, %if.then17.if.end60_crit_edge ], [ %conv41, %if.end48 ], [ 2, %if.else53 ]
  %42 = getelementptr inbounds i8, ptr %cmd, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 0, ptr %42, align 2
  %44 = ptrtoint ptr %cmd to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 1024, ptr %cmd, align 2
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 2560, ptr %0, align 2
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 47, ptr %1, align 2
  %47 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 36, ptr %2, align 2
  %arrayidx79 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 2
  %arrayidx84 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 3
  %arrayidx89 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 4
  %arrayidx96 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 5
  %arrayidx101 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 6
  %arrayidx114 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 7
  %arrayidx121 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %idac_data_type)
  %cmp132 = icmp eq i8 %idac_data_type, 1
  %or.cond3 = and i1 %cmp132, %cmp15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %idac_data_type)
  %cmp167 = icmp eq i8 %idac_data_type, 0
  %aligned_electrodes_rx170 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 31
  br label %do.body

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %if.end60
  %sum.0 = phi i32 [ 0, %if.end60 ], [ %add201, %for.inc.do.body_crit_edge ]
  %count.0 = phi i32 [ 0, %if.end60 ], [ %inc202, %for.inc.do.body_crit_edge ]
  %tmp_max.1 = phi i32 [ %tmp_max.0, %if.end60 ], [ %tmp_max.3, %for.inc.do.body_crit_edge ]
  %tmp_min.1 = phi i32 [ %tmp_min.0, %if.end60 ], [ %tmp_min.3, %for.inc.do.body_crit_edge ]
  %tmp_ave.1 = phi i32 [ %tmp_sum.0, %if.end60 ], [ %tmp_ave.3, %for.inc.do.body_crit_edge ]
  %tmp_sum.1 = phi i32 [ %tmp_sum.0, %if.end60 ], [ %tmp_sum.3, %for.inc.do.body_crit_edge ]
  %tmp_count.1 = phi i32 [ 0, %if.end60 ], [ %tmp_count.3, %for.inc.do.body_crit_edge ]
  %offset.1 = phi i16 [ %offset.0, %if.end60 ], [ %add144, %for.inc.do.body_crit_edge ]
  %48 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_size, align 4
  %div = sdiv i32 246, %49
  %sub = sub i32 %max_element_cnt.0, %count.0
  %50 = call i32 @llvm.smin.i32(i32 %div, i32 %sub)
  %mul65 = mul i32 %50, %49
  %51 = call i16 @llvm.bswap.i16(i16 %offset.1) #11
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 2)
  store i16 %51, ptr %3, align 1
  %conv66 = trunc i32 %mul65 to i16
  %53 = call i16 @llvm.bswap.i16(i16 %conv66) #11
  %54 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %54, i32 2)
  store i16 %53, ptr %4, align 1
  %55 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %idac_data_type, ptr %5, align 1
  %add71 = add i32 %mul65, 10
  %56 = ptrtoint ptr %resp_len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add71, ptr %resp_len, align 4
  %call = call i32 @cyapa_i2c_pip_cmd_irq_sync(ptr noundef %cyapa, ptr noundef nonnull %cmd, i32 noundef 12, ptr noundef nonnull %resp_data, ptr noundef nonnull %resp_len, i32 noundef 500, ptr noundef nonnull @cyapa_sort_tsg_pip_app_resp_data, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool74.not = icmp eq i32 %call, 0
  br i1 %tobool74.not, label %lor.lhs.false75, label %if.then106

lor.lhs.false75:                                  ; preds = %do.body
  %57 = ptrtoint ptr %resp_len to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %resp_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %58)
  %cmp76 = icmp slt i32 %58, 10
  br i1 %cmp76, label %lor.lhs.false75.cleanup_crit_edge, label %lor.lhs.false78

lor.lhs.false75.cleanup_crit_edge:                ; preds = %lor.lhs.false75
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false78:                                  ; preds = %lor.lhs.false75
  %59 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx79, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %60)
  %cmp81 = icmp eq i8 %60, 31
  br i1 %cmp81, label %land.lhs.true83, label %lor.lhs.false78.cleanup_crit_edge

lor.lhs.false78.cleanup_crit_edge:                ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true83:                                  ; preds = %lor.lhs.false78
  %61 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx84, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp86 = icmp eq i8 %62, 0
  br i1 %cmp86, label %land.lhs.true88, label %land.lhs.true83.cleanup_crit_edge

land.lhs.true83.cleanup_crit_edge:                ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true88:                                  ; preds = %land.lhs.true83
  %63 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx89, align 1
  %65 = and i8 %64, 127
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %65)
  %cmp93 = icmp eq i8 %65, 36
  br i1 %cmp93, label %lor.lhs.false95, label %land.lhs.true88.cleanup_crit_edge

land.lhs.true88.cleanup_crit_edge:                ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false95:                                  ; preds = %land.lhs.true88
  %66 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx96, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp98 = icmp eq i8 %67, 0
  br i1 %cmp98, label %lor.lhs.false100, label %lor.lhs.false95.cleanup_crit_edge

lor.lhs.false95.cleanup_crit_edge:                ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false100:                                 ; preds = %lor.lhs.false95
  %68 = ptrtoint ptr %arrayidx101 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx101, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %69, i8 %idac_data_type)
  %cmp104.not = icmp eq i8 %69, %idac_data_type
  br i1 %cmp104.not, label %if.end113, label %lor.lhs.false100.cleanup_crit_edge

lor.lhs.false100.cleanup_crit_edge:               ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then106:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp107 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp107, i32 %call, i32 -11
  br label %cleanup

if.end113:                                        ; preds = %lor.lhs.false100
  %70 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %arrayidx114, align 1
  %72 = call i16 @llvm.bswap.i16(i16 %71) #11
  %conv116 = zext i16 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp117 = icmp eq i16 %71, 0
  br i1 %cmp117, label %if.end113.out_crit_edge, label %if.end120

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end120:                                        ; preds = %if.end113
  %73 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx121, align 1
  %75 = and i8 %74, 7
  %and123 = zext i8 %75 to i32
  %76 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %and123, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv116, i32 %and123)
  %cmp124 = icmp ult i32 %conv116, %and123
  br i1 %cmp124, label %if.end120.cleanup_crit_edge, label %if.end127

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end127:                                        ; preds = %if.end120
  br i1 %or.cond3, label %cond.end212.thread, label %for.body.lr.ph

cond.end212.thread:                               ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx136 = getelementptr inbounds [256 x i8], ptr %resp_data, i32 0, i32 10
  %call137 = call fastcc i32 @cyapa_parse_structure_data(i8 noundef zeroext %74, ptr noundef %arrayidx136, i32 noundef %and123)
  %77 = ptrtoint ptr %idac_max to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %call137, ptr %idac_max, align 4
  %78 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %data_size, align 4
  %add139 = add i32 %79, 10
  %arrayidx140 = getelementptr [256 x i8], ptr %resp_data, i32 0, i32 %add139
  %call141 = call fastcc i32 @cyapa_parse_structure_data(i8 noundef zeroext %74, ptr noundef %arrayidx140, i32 noundef %79)
  %80 = ptrtoint ptr %idac_min to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %call141, ptr %idac_min, align 4
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end127
  %add144 = add i16 %72, %offset.1
  %add146 = add nuw nsw i32 %conv116, 10
  %conv.i = zext i8 %74 to i32
  %and.i = and i32 %conv.i, 7
  %and2.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %cmp.i = icmp eq i32 %and2.i, 0
  %and5.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %cmp6.i = icmp eq i32 %and5.i, 0
  %mul.i = shl nuw nsw i32 %and.i, 3
  %sub.i.i = add nsw i32 %mul.i, -1
  %shl.i.i = shl nsw i32 -1, %mul.i
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 10, %for.body.lr.ph ], [ %add207, %for.inc.for.body_crit_edge ]
  %tmp_count.260 = phi i32 [ %tmp_count.1, %for.body.lr.ph ], [ %tmp_count.3, %for.inc.for.body_crit_edge ]
  %tmp_sum.259 = phi i32 [ %tmp_sum.1, %for.body.lr.ph ], [ %tmp_sum.3, %for.inc.for.body_crit_edge ]
  %tmp_ave.258 = phi i32 [ %tmp_ave.1, %for.body.lr.ph ], [ %tmp_ave.3, %for.inc.for.body_crit_edge ]
  %tmp_min.257 = phi i32 [ %tmp_min.1, %for.body.lr.ph ], [ %tmp_min.3, %for.inc.for.body_crit_edge ]
  %tmp_max.256 = phi i32 [ %tmp_max.1, %for.body.lr.ph ], [ %tmp_max.3, %for.inc.for.body_crit_edge ]
  %count.155 = phi i32 [ %count.0, %for.body.lr.ph ], [ %inc202, %for.inc.for.body_crit_edge ]
  %sum.154 = phi i32 [ %sum.0, %for.body.lr.ph ], [ %add201, %for.inc.for.body_crit_edge ]
  %arrayidx150 = getelementptr [256 x i8], ptr %resp_data, i32 0, i32 %i.061
  %81 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %data_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %82)
  %cmp9.i = icmp sgt i32 %and.i, %82
  br i1 %cmp9.i, label %for.body.cyapa_parse_structure_data.exit_crit_edge, label %if.end.i

for.body.cyapa_parse_structure_data.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_parse_structure_data.exit

if.end.i:                                         ; preds = %for.body
  %83 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %83, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %and.i, label %if.end.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb12.i
    i32 4, label %sw.bb18.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %84 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx150, align 1
  %conv11.i = zext i8 %85 to i32
  br label %sw.epilog.i

sw.bb12.i:                                        ; preds = %if.end.i
  %86 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 2)
  %87 = load i16, ptr %arrayidx150, align 1
  br i1 %cmp.i, label %if.then13.i, label %if.else.i7

if.then13.i:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv14.i = zext i16 %87 to i32
  br label %sw.epilog.i

if.else.i7:                                       ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #13
  %88 = call i16 @llvm.bswap.i16(i16 %87) #11
  %conv16.i = zext i16 %88 to i32
  br label %sw.epilog.i

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_loadN_noabort(i32 %89, i32 4)
  %90 = load i32, ptr %arrayidx150, align 1
  %91 = call i32 @llvm.bswap.i32(i32 %90) #11
  %spec.select.i = select i1 %cmp.i, i32 %90, i32 %91
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb18.i, %if.else.i7, %if.then13.i, %sw.bb.i, %if.end.i.sw.epilog.i_crit_edge
  %value.0.i = phi i32 [ %conv14.i, %if.then13.i ], [ %conv16.i, %if.else.i7 ], [ %conv11.i, %sw.bb.i ], [ 0, %if.end.i.sw.epilog.i_crit_edge ], [ %spec.select.i, %sw.bb18.i ]
  br i1 %cmp6.i, label %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge, label %if.then26.i

sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cyapa_parse_structure_data.exit

if.then26.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr.i.i = ashr i32 %value.0.i, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i.i)
  %tobool.not.i.i = icmp eq i32 %shr.i.i, 0
  %or.i.i = select i1 %tobool.not.i.i, i32 0, i32 %shl.i.i
  %value.addr.0.i.i = or i32 %or.i.i, %value.0.i
  br label %cyapa_parse_structure_data.exit

cyapa_parse_structure_data.exit:                  ; preds = %if.then26.i, %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge, %for.body.cyapa_parse_structure_data.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body.cyapa_parse_structure_data.exit_crit_edge ], [ %value.0.i, %sw.epilog.i.cyapa_parse_structure_data.exit_crit_edge ], [ %value.addr.0.i.i, %if.then26.i ]
  %92 = ptrtoint ptr %idac_min to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %idac_min, align 4
  %94 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %93)
  %95 = ptrtoint ptr %idac_min to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %idac_min, align 4
  %96 = ptrtoint ptr %idac_max to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %idac_max, align 4
  %98 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 %97)
  %99 = ptrtoint ptr %idac_max to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %idac_max, align 4
  br i1 %cmp167, label %land.lhs.true169, label %cyapa_parse_structure_data.exit.if.end200_crit_edge

cyapa_parse_structure_data.exit.if.end200_crit_edge: ; preds = %cyapa_parse_structure_data.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

land.lhs.true169:                                 ; preds = %cyapa_parse_structure_data.exit
  %100 = ptrtoint ptr %aligned_electrodes_rx170 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %aligned_electrodes_rx170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_count.260, i32 %101)
  %cmp171 = icmp slt i32 %tmp_count.260, %101
  br i1 %cmp171, label %land.lhs.true173, label %land.lhs.true169.if.end200_crit_edge

land.lhs.true169.if.end200_crit_edge:             ; preds = %land.lhs.true169
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

land.lhs.true173:                                 ; preds = %land.lhs.true169
  br i1 %cmp15, label %if.then176, label %land.lhs.true173.if.end200_crit_edge

land.lhs.true173.if.end200_crit_edge:             ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then176:                                       ; preds = %land.lhs.true173
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_ave.258)
  %tobool177.not = icmp eq i32 %tmp_ave.258, 0
  %div179 = sdiv i32 %tmp_ave.258, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %div179)
  %cmp180 = icmp sgt i32 %retval.0.i, %div179
  %or.cond4 = select i1 %tobool177.not, i1 true, i1 %cmp180
  br i1 %or.cond4, label %if.then182, label %if.then176.if.end200_crit_edge

if.then176.if.end200_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then182:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #13
  %102 = call i32 @llvm.smin.i32(i32 %retval.0.i, i32 %tmp_min.257)
  %103 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 %tmp_max.256)
  %add197 = add i32 %retval.0.i, %tmp_sum.259
  %inc = add nsw i32 %tmp_count.260, 1
  %div198 = sdiv i32 %add197, %inc
  br label %if.end200

if.end200:                                        ; preds = %if.then182, %if.then176.if.end200_crit_edge, %land.lhs.true173.if.end200_crit_edge, %land.lhs.true169.if.end200_crit_edge, %cyapa_parse_structure_data.exit.if.end200_crit_edge
  %tmp_max.3 = phi i32 [ %103, %if.then182 ], [ %tmp_max.256, %land.lhs.true173.if.end200_crit_edge ], [ %tmp_max.256, %land.lhs.true169.if.end200_crit_edge ], [ %tmp_max.256, %cyapa_parse_structure_data.exit.if.end200_crit_edge ], [ %tmp_max.256, %if.then176.if.end200_crit_edge ]
  %tmp_min.3 = phi i32 [ %102, %if.then182 ], [ %tmp_min.257, %land.lhs.true173.if.end200_crit_edge ], [ %tmp_min.257, %land.lhs.true169.if.end200_crit_edge ], [ %tmp_min.257, %cyapa_parse_structure_data.exit.if.end200_crit_edge ], [ %tmp_min.257, %if.then176.if.end200_crit_edge ]
  %tmp_ave.3 = phi i32 [ %div198, %if.then182 ], [ %tmp_ave.258, %land.lhs.true173.if.end200_crit_edge ], [ %tmp_ave.258, %land.lhs.true169.if.end200_crit_edge ], [ %tmp_ave.258, %cyapa_parse_structure_data.exit.if.end200_crit_edge ], [ %tmp_ave.258, %if.then176.if.end200_crit_edge ]
  %tmp_sum.3 = phi i32 [ %add197, %if.then182 ], [ %tmp_sum.259, %land.lhs.true173.if.end200_crit_edge ], [ %tmp_sum.259, %land.lhs.true169.if.end200_crit_edge ], [ %tmp_sum.259, %cyapa_parse_structure_data.exit.if.end200_crit_edge ], [ %tmp_sum.259, %if.then176.if.end200_crit_edge ]
  %tmp_count.3 = phi i32 [ %inc, %if.then182 ], [ %tmp_count.260, %land.lhs.true173.if.end200_crit_edge ], [ %tmp_count.260, %land.lhs.true169.if.end200_crit_edge ], [ %tmp_count.260, %cyapa_parse_structure_data.exit.if.end200_crit_edge ], [ %tmp_count.260, %if.then176.if.end200_crit_edge ]
  %add201 = add i32 %retval.0.i, %sum.154
  %inc202 = add i32 %count.155, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc202, i32 %max_element_cnt.0)
  %cmp203.not = icmp slt i32 %inc202, %max_element_cnt.0
  br i1 %cmp203.not, label %for.inc, label %out.loopexit

for.inc:                                          ; preds = %if.end200
  %104 = ptrtoint ptr %data_size to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %data_size, align 4
  %add207 = add i32 %105, %i.061
  %cmp147 = icmp slt i32 %add207, %add146
  br i1 %cmp147, label %for.inc.for.body_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

out.loopexit:                                     ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %106 = add nsw i32 %count.0, 1
  %smax.le = call i32 @llvm.smax.i32(i32 %max_element_cnt.0, i32 %106)
  br label %out

out:                                              ; preds = %out.loopexit, %if.end113.out_crit_edge
  %sum.2 = phi i32 [ %add201, %out.loopexit ], [ %sum.0, %if.end113.out_crit_edge ]
  %count.2 = phi i32 [ %smax.le, %out.loopexit ], [ %count.0, %if.end113.out_crit_edge ]
  %tmp_max.4 = phi i32 [ %tmp_max.3, %out.loopexit ], [ %tmp_max.1, %if.end113.out_crit_edge ]
  %tmp_min.4 = phi i32 [ %tmp_min.3, %out.loopexit ], [ %tmp_min.1, %if.end113.out_crit_edge ]
  %tmp_ave.4 = phi i32 [ %tmp_ave.3, %out.loopexit ], [ %tmp_ave.1, %if.end113.out_crit_edge ]
  %tmp_count.4 = phi i32 [ %tmp_count.3, %out.loopexit ], [ %tmp_count.1, %if.end113.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.2)
  %tobool208.not = icmp eq i32 %count.2, 0
  br i1 %tobool208.not, label %out.cond.end212_crit_edge, label %cond.true209

out.cond.end212_crit_edge:                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end212

cond.true209:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %div210 = sdiv i32 %sum.2, %count.2
  br label %cond.end212

cond.end212:                                      ; preds = %cond.true209, %out.cond.end212_crit_edge
  %cond213 = phi i32 [ %div210, %cond.true209 ], [ 0, %out.cond.end212_crit_edge ]
  %107 = ptrtoint ptr %idac_ave to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %cond213, ptr %idac_ave, align 4
  %or.cond5 = and i1 %cmp167, %cmp15
  %or.cond5.not = xor i1 %or.cond5, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp_count.4)
  %cmp221 = icmp eq i32 %tmp_count.4, 0
  %or.cond6 = select i1 %or.cond5.not, i1 true, i1 %cmp221
  br i1 %or.cond6, label %cond.end212.cleanup_crit_edge, label %if.end224

cond.end212.cleanup_crit_edge:                    ; preds = %cond.end212
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end224:                                        ; preds = %cond.end212
  %108 = ptrtoint ptr %aligned_electrodes_rx170 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %aligned_electrodes_rx170, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_count.4, i32 %109)
  %cmp226 = icmp eq i32 %tmp_count.4, %109
  br i1 %cmp226, label %if.then228, label %if.else237

if.then228:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #13
  %electrodes_rx229 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 30
  %110 = ptrtoint ptr %electrodes_rx229 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %electrodes_rx229, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool230.not = icmp eq i32 %111, 0
  %spec.select11 = select i1 %tobool230.not, i32 %electrodes_rx.2, i32 %111
  %112 = ptrtoint ptr %electrodes_rx229 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %spec.select11, ptr %electrodes_rx229, align 4
  br label %if.end261

if.else237:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_count.4, i32 %electrodes_rx.2)
  %cmp238 = icmp eq i32 %tmp_count.4, %electrodes_rx.2
  %electrodes_rx241 = getelementptr inbounds %struct.cyapa, ptr %cyapa, i32 0, i32 30
  %113 = ptrtoint ptr %electrodes_rx241 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %electrodes_rx241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool242.not = icmp eq i32 %114, 0
  br i1 %cmp238, label %if.then240, label %if.else250

if.then240:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #13
  %. = select i1 %tobool242.not, i32 %electrodes_rx.2, i32 %114
  %115 = ptrtoint ptr %electrodes_rx241 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %., ptr %electrodes_rx241, align 4
  %116 = ptrtoint ptr %aligned_electrodes_rx170 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %electrodes_rx.2, ptr %aligned_electrodes_rx170, align 4
  br label %if.end261

if.else250:                                       ; preds = %if.else237
  call void @__sanitizer_cov_trace_pc() #13
  %spec.select12 = select i1 %tobool242.not, i32 %electrodes_tx.2, i32 %114
  %117 = ptrtoint ptr %electrodes_rx241 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %spec.select12, ptr %electrodes_rx241, align 4
  %118 = ptrtoint ptr %aligned_electrodes_rx170 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %tmp_count.4, ptr %aligned_electrodes_rx170, align 4
  br label %if.end261

if.end261:                                        ; preds = %if.else250, %if.then240, %if.then228
  %119 = ptrtoint ptr %idac_min to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %tmp_min.4, ptr %idac_min, align 4
  %120 = ptrtoint ptr %idac_max to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %tmp_max.4, ptr %idac_max, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end261, %cond.end212.thread
  %.sink = phi i32 [ 0, %cond.end212.thread ], [ %tmp_ave.4, %if.end261 ]
  %121 = ptrtoint ptr %idac_ave to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %.sink, ptr %idac_ave, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end212.cleanup_crit_edge, %if.end120.cleanup_crit_edge, %if.then106, %lor.lhs.false100.cleanup_crit_edge, %lor.lhs.false95.cleanup_crit_edge, %land.lhs.true88.cleanup_crit_edge, %land.lhs.true83.cleanup_crit_edge, %lor.lhs.false78.cleanup_crit_edge, %lor.lhs.false75.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cond.end212.cleanup_crit_edge ], [ %spec.select, %if.then106 ], [ 0, %cleanup.sink.split ], [ -11, %lor.lhs.false75.cleanup_crit_edge ], [ -11, %lor.lhs.false78.cleanup_crit_edge ], [ -11, %land.lhs.true83.cleanup_crit_edge ], [ -11, %land.lhs.true88.cleanup_crit_edge ], [ -11, %lor.lhs.false95.cleanup_crit_edge ], [ -11, %lor.lhs.false100.cleanup_crit_edge ], [ -22, %if.end120.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resp_len) #11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %resp_data) #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cmd) #11
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @cyapa_parse_structure_data(i8 noundef zeroext %data_format, ptr nocapture noundef readonly %buf, i32 noundef %buf_len) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data_format to i32
  %and = and i32 %conv, 7
  %and2 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp = icmp eq i32 %and2, 0
  %and5 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %cmp6 = icmp eq i32 %and5, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %buf_len)
  %cmp9 = icmp sgt i32 %and, %buf_len
  br i1 %cmp9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %and, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %sw.bb18
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf, align 1
  %conv11 = zext i8 %2 to i32
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %3, i32 2)
  %4 = load i16, ptr %buf, align 1
  br i1 %cmp, label %if.then13, label %if.else

if.then13:                                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %conv14 = zext i16 %4 to i32
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #11
  %conv16 = zext i16 %5 to i32
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %buf, align 1
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #11
  %spec.select = select i1 %cmp, i32 %7, i32 %8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %if.else, %if.then13, %sw.bb, %if.end.sw.epilog_crit_edge
  %value.0 = phi i32 [ %conv14, %if.then13 ], [ %conv16, %if.else ], [ %conv11, %sw.bb ], [ 0, %if.end.sw.epilog_crit_edge ], [ %spec.select, %sw.bb18 ]
  br i1 %cmp6, label %sw.epilog.cleanup_crit_edge, label %if.then26

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %mul = shl nuw nsw i32 %and, 3
  %sub.i = add nsw i32 %mul, -1
  %shr.i = ashr i32 %value.0, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i)
  %tobool.not.i = icmp eq i32 %shr.i, 0
  %shl.i = shl nsw i32 -1, %mul
  %or.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  %value.addr.0.i = or i32 %or.i, %value.0
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %value.0, %sw.epilog.cleanup_crit_edge ], [ %value.addr.0.i, %if.then26 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @cyapa_sort_gen5_hid_descriptor_data(ptr nocapture noundef readnone %cyapa, ptr nocapture noundef readonly %buf, i32 noundef %len) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp.not = icmp eq i32 %len, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %0, i32 2)
  %1 = load i16, ptr %buf, align 1
  %arrayidx1 = getelementptr i8, ptr %buf, i32 16
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %1)
  %cmp4 = icmp eq i16 %1, 8192
  br i1 %cmp4, label %if.then6, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %arrayidx7 = getelementptr i8, ptr %buf, i32 2
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp9 = icmp eq i8 %5, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp11 = icmp eq i16 %3, 1
  %or.cond = select i1 %cmp9, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then6.cleanup_crit_edge, label %if.else

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -9, i8 %5)
  %cmp16 = icmp eq i8 %5, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -512, i16 %3)
  %cmp19 = icmp eq i16 %3, -512
  %or.cond30 = select i1 %cmp16, i1 %cmp19, i1 false
  br i1 %or.cond30, label %if.else.cleanup_crit_edge, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.else.if.end24_crit_edge, %if.end.if.end24_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end24 ], [ false, %entry.cleanup_crit_edge ], [ true, %if.then6.cleanup_crit_edge ], [ true, %if.else.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @cyapa_sleep_time_to_pwr_cmd(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !13, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118}
!llvm.module.flags = !{!119, !120, !121, !122, !123, !124, !125, !126}
!llvm.ident = !{!127}

!0 = !{ptr @pip_read_sys_info, !1, !"pip_read_sys_info", i1 false, i1 false}
!1 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 337, i32 4}
!2 = !{ptr @pip_bl_read_app_info, !3, !"pip_bl_read_app_info", i1 false, i1 false}
!3 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 338, i32 4}
!4 = !{ptr @cyapa_pip_cmd_state_initialize.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 354, i32 2}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @cyapa_pip_cmd_state_initialize.__key.1, !8, !"__key", i1 false, i1 false}
!8 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 356, i32 2}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1255, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cyapa_pip_check_fw._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cyapa_pip_check_fw._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1271, i32 3}
!20 = !{ptr @cyapa_pip_check_fw._entry.8, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @cyapa_pip_check_fw._entry_ptr.10, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1281, i32 3}
!24 = !{ptr @cyapa_pip_check_fw._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cyapa_pip_check_fw._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1294, i32 3}
!28 = !{ptr @cyapa_pip_check_fw._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cyapa_pip_check_fw._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1307, i32 3}
!32 = !{ptr @cyapa_pip_check_fw._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @cyapa_pip_check_fw._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1402, i32 4}
!36 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cyapa_pip_do_fw_update._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @cyapa_pip_do_fw_update._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2773, i32 3}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @cyapa_pip_irq_handler._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @cyapa_pip_irq_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2781, i32 3}
!46 = !{ptr @cyapa_pip_irq_handler._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @cyapa_pip_irq_handler._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2789, i32 3}
!50 = !{ptr @cyapa_pip_irq_handler._entry.27, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @cyapa_pip_irq_handler._entry_ptr.29, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2801, i32 3}
!54 = !{ptr @cyapa_pip_irq_handler._entry.30, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @cyapa_pip_irq_handler._entry_ptr.32, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @cyapa_gen5_ops, !57, !"cyapa_gen5_ops", i1 false, i1 false}
!57 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2888, i32 28}
!58 = !{ptr @init_completion.__key, !59, !"__key", i1 false, i1 false}
!59 = !{!"../include/linux/completion.h", i32 87, i32 2}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = distinct !{null, !62, !"cyapa_pip_bl_cmd_key", i1 false, i1 false}
!62 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 342, i32 11}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2845, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cyapa_pip_event_process._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cyapa_pip_event_process._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2853, i32 3}
!70 = !{ptr @cyapa_pip_event_process._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cyapa_pip_event_process._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2863, i32 3}
!74 = !{ptr @cyapa_pip_event_process._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cyapa_pip_event_process._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2870, i32 3}
!78 = !{ptr @cyapa_pip_event_process._entry.42, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @cyapa_pip_event_process._entry_ptr.44, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2421, i32 35}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2427, i32 3}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2570, i32 4}
!86 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.49, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cyapa_gen5_do_operational_check._entry, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @cyapa_gen5_do_operational_check._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2577, i32 5}
!92 = !{ptr @cyapa_gen5_do_operational_check._entry.50, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @cyapa_gen5_do_operational_check._entry_ptr.52, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.54, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 2589, i32 4}
!96 = !{ptr @cyapa_gen5_do_operational_check._entry.53, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @cyapa_gen5_do_operational_check._entry_ptr.55, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.56, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1656, i32 4}
!100 = !{ptr @.str.57, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @cyapa_gen5_set_power_mode._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @cyapa_gen5_set_power_mode._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.59, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1672, i32 4}
!105 = !{ptr @cyapa_gen5_set_power_mode._entry.58, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cyapa_gen5_set_power_mode._entry_ptr.60, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.62, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1681, i32 4}
!109 = !{ptr @cyapa_gen5_set_power_mode._entry.61, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cyapa_gen5_set_power_mode._entry_ptr.63, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.65, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1690, i32 4}
!113 = !{ptr @cyapa_gen5_set_power_mode._entry.64, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @cyapa_gen5_set_power_mode._entry_ptr.66, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.68, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/input/mouse/cyapa_gen5.c", i32 1714, i32 4}
!117 = !{ptr @cyapa_gen5_set_power_mode._entry.67, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @cyapa_gen5_set_power_mode._entry_ptr.69, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{i32 1, !"wchar_size", i32 2}
!120 = !{i32 1, !"min_enum_size", i32 4}
!121 = !{i32 8, !"branch-target-enforcement", i32 0}
!122 = !{i32 8, !"sign-return-address", i32 0}
!123 = !{i32 8, !"sign-return-address-all", i32 0}
!124 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!125 = !{i32 7, !"uwtable", i32 1}
!126 = !{i32 7, !"frame-pointer", i32 2}
!127 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!128 = !{i8 0, i8 2}
!129 = !{i64 2148272266, i64 2148272292, i64 2148272321, i64 2148272355, i64 2148272386, i64 2148272409}
!130 = !{i64 2148274731, i64 2148274757, i64 2148274786, i64 2148274820, i64 2148274851, i64 2148274874}
!131 = !{!"auto-init"}
