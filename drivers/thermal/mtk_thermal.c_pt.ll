; ModuleID = '/llk/IR_all_yes/drivers/thermal/mtk_thermal.c_pt.bc'
source_filename = "../drivers/thermal/mtk_thermal.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thermal_zone_of_device_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mtk_thermal_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, ptr, i8, [8 x %struct.thermal_bank_cfg], i32 }
%struct.thermal_bank_cfg = type { i32, ptr }
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
%struct.mtk_thermal = type { ptr, ptr, ptr, ptr, %struct.mutex, i32, i32, i32, i32, i32, [6 x i32], ptr, [8 x %struct.mtk_thermal_bank] }
%struct.mtk_thermal_bank = type { ptr, i32 }

@__initcall__kmod_mtk_thermal__189_1125_mtk_thermal_driver_init6 = internal global ptr @mtk_thermal_driver_init, section ".initcall6.init", align 4
@mtk_thermal_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_thermal_probe, ptr @mtk_thermal_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_thermal_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_thermal_driver_exit = internal global ptr @mtk_thermal_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author190 = internal constant [58 x i8] c"mtk_thermal.author=Michael Kao <michael.kao@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author191 = internal constant [52 x i8] c"mtk_thermal.author=Louis Yu <louis.yu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author192 = internal constant [58 x i8] c"mtk_thermal.author=Dawei Chien <dawei.chien@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [57 x i8] c"mtk_thermal.author=Sascha Hauer <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author194 = internal constant [52 x i8] c"mtk_thermal.author=Hanyi Wu <hanyi.wu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [48 x i8] c"mtk_thermal.description=Mediatek thermal driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file196 = internal constant [45 x i8] c"mtk_thermal.file=drivers/thermal/mtk_thermal\00", section ".modinfo", align 1
@__UNIQUE_ID_license197 = internal constant [27 x i8] c"mtk_thermal.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mtk-thermal\00", [20 x i8] zeroinitializer }, align 32
@mtk_thermal_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8173_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2701_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_thermal_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-thermal\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_thermal_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"therm\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"auxadc\00", [25 x i8] zeroinitializer }, align 32
@mtk_thermal_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&mt->lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mediatek,auxadc\00", [16 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1027, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing auxadc node\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_thermal_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/thermal/mtk_thermal.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr = internal global ptr @mtk_thermal_probe._entry, section ".printk_index", align 4
@mtk_thermal_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1037, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't get auxadc phys address\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.12 = internal global ptr @mtk_thermal_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,apmixedsys\00", [44 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.7, i32 1043, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"missing apmixedsys node\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.16 = internal global ptr @mtk_thermal_probe._entry.14, section ".printk_index", align 4
@mtk_thermal_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 1053, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.18 = internal global ptr @mtk_thermal_probe._entry.17, section ".printk_index", align 4
@mtk_thermal_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.7, i32 1063, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't enable auxadc clk: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.21 = internal global ptr @mtk_thermal_probe._entry.19, section ".printk_index", align 4
@mtk_thermal_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.6, ptr @.str.7, i32 1069, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't enable peri clk: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.24 = internal global ptr @mtk_thermal_probe._entry.22, section ".printk_index", align 4
@mtk_thermal_ops = internal constant { %struct.thermal_zone_of_device_ops, [44 x i8] } { %struct.thermal_zone_of_device_ops { ptr @mtk_read_temp, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.6, ptr @.str.7, i32 1094, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error in thermal_add_hwmon_sysfs\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mtk_thermal_probe._entry_ptr.28 = internal global ptr @mtk_thermal_probe._entry.25, section ".printk_index", align 4
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"calibration-data\00", [47 x i8] zeroinitializer }, align 32
@mtk_thermal_get_calibration_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.7, i32 920, ptr @.str.27, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid calibration data\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mtk_thermal_get_calibration_data\00", [63 x i8] zeroinitializer }, align 32
@mtk_thermal_get_calibration_data._entry_ptr = internal global ptr @mtk_thermal_get_calibration_data._entry, section ".printk_index", align 4
@mtk_thermal_get_calibration_data._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.7, i32 931, ptr @.str.34, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Device not calibrated, using default calibration values\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_thermal_get_calibration_data._entry_ptr.35 = internal global ptr @mtk_thermal_get_calibration_data._entry.32, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mt8173_thermal_data = internal constant { %struct.mtk_thermal_data, [48 x i8] } { %struct.mtk_thermal_data { i32 4, i32 5, i32 11, ptr @mt8173_vts_index, ptr @mt8173_mux_values, ptr @mt8173_msr, ptr @mt8173_adcpnp, i32 165, i32 1, ptr @mt8173_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 2, ptr @mt8173_bank_data }, %struct.thermal_bank_cfg { i32 2, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 12) }, %struct.thermal_bank_cfg { i32 3, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 24) }, %struct.thermal_bank_cfg { i32 1, ptr getelementptr (i8, ptr @mt8173_bank_data, i64 36) }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, [48 x i8] zeroinitializer }, align 32
@mt2701_thermal_data = internal constant { %struct.mtk_thermal_data, [48 x i8] } { %struct.mtk_thermal_data { i32 1, i32 3, i32 11, ptr @mt2701_vts_index, ptr @mt2701_mux_values, ptr @mt2701_msr, ptr @mt2701_adcpnp, i32 165, i32 1, ptr @mt2701_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 3, ptr @mt2701_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, [48 x i8] zeroinitializer }, align 32
@mt2712_thermal_data = internal constant { %struct.mtk_thermal_data, [48 x i8] } { %struct.mtk_thermal_data { i32 1, i32 4, i32 11, ptr @mt2712_vts_index, ptr @mt2712_mux_values, ptr @mt2712_msr, ptr @mt2712_adcpnp, i32 165, i32 1, ptr @mt2712_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 4, ptr @mt2712_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, [48 x i8] zeroinitializer }, align 32
@mt7622_thermal_data = internal constant { %struct.mtk_thermal_data, [48 x i8] } { %struct.mtk_thermal_data { i32 1, i32 1, i32 11, ptr @mt7622_vts_index, ptr @mt7622_mux_values, ptr @mt7622_msr, ptr @mt7622_adcpnp, i32 165, i32 1, ptr @mt7622_tc_offset, i8 1, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 1, ptr @mt7622_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 2 }, [48 x i8] zeroinitializer }, align 32
@mt8183_thermal_data = internal constant { %struct.mtk_thermal_data, [48 x i8] } { %struct.mtk_thermal_data { i32 1, i32 6, i32 11, ptr @mt8183_vts_index, ptr @mt8183_mux_values, ptr @mt8183_msr, ptr @mt8183_adcpnp, i32 153, i32 2, ptr @mt8183_tc_offset, i8 0, [8 x %struct.thermal_bank_cfg] [%struct.thermal_bank_cfg { i32 6, ptr @mt8183_bank_data }, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer, %struct.thermal_bank_cfg zeroinitializer], i32 1 }, [48 x i8] zeroinitializer }, align 32
@mt8173_vts_index = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5], [44 x i8] zeroinitializer }, align 32
@mt8173_mux_values = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 16], [44 x i8] zeroinitializer }, align 32
@mt8173_msr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 144, i32 148, i32 152, i32 184], [16 x i8] zeroinitializer }, align 32
@mt8173_adcpnp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 72, i32 76, i32 80, i32 180], [16 x i8] zeroinitializer }, align 32
@mt8173_tc_offset = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt8173_bank_data = internal constant { [4 x [3 x i32]], [48 x i8] } { [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 1, i32 3, i32 0], [3 x i32] [i32 0, i32 1, i32 4], [3 x i32] [i32 1, i32 0, i32 0]], [48 x i8] zeroinitializer }, align 32
@mt2701_vts_index = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@mt2701_mux_values = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 16], [20 x i8] zeroinitializer }, align 32
@mt2701_msr = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 144, i32 148, i32 152], [20 x i8] zeroinitializer }, align 32
@mt2701_adcpnp = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 72, i32 76, i32 80], [20 x i8] zeroinitializer }, align 32
@mt2701_tc_offset = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt2701_bank_data = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@mt2712_vts_index = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@mt2712_mux_values = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@mt2712_msr = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 144, i32 148, i32 152, i32 184], [16 x i8] zeroinitializer }, align 32
@mt2712_adcpnp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 72, i32 76, i32 80, i32 180], [16 x i8] zeroinitializer }, align 32
@mt2712_tc_offset = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt2712_bank_data = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@mt7622_vts_index = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt7622_mux_values = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt7622_msr = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 144], [28 x i8] zeroinitializer }, align 32
@mt7622_adcpnp = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 72], [28 x i8] zeroinitializer }, align 32
@mt7622_tc_offset = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt7622_bank_data = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@mt8183_vts_index = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@mt8183_mux_values = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0], [40 x i8] zeroinitializer }, align 32
@mt8183_msr = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 400, i32 404, i32 408, i32 148, i32 144, i32 440], [40 x i8] zeroinitializer }, align 32
@mt8183_adcpnp = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 328, i32 332, i32 336, i32 76, i32 72, i32 436], [40 x i8] zeroinitializer }, align 32
@mt8183_tc_offset = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 256], [24 x i8] zeroinitializer }, align 32
@mt8183_bank_data = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.36 = private unnamed_addr constant [19 x i8] c"mtk_thermal_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1116, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1120, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [21 x i8] c"mtk_thermal_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 941, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1004, i32 48 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1008, i32 44 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1021, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1025, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1027, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1037, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1041, i32 36 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1043, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1053, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1063, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1069, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"mtk_thermal_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 703, i32 48 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 1094, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 905, i32 29 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 920, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 931, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"mt8173_thermal_data\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 402, i32 38 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"mt2701_thermal_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 442, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"mt2712_thermal_data\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 473, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"mt7622_thermal_data\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 498, i32 38 }
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c"mt8183_thermal_data\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 530, i32 38 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"mt8173_vts_index\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 337, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant [18 x i8] c"mt8173_mux_values\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 334, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"mt8173_msr\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 326, i32 18 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"mt8173_adcpnp\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 330, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"mt8173_tc_offset\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 335, i32 18 }
@___asan_gen_.171 = private unnamed_addr constant [17 x i8] c"mt8173_bank_data\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 319, i32 18 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"mt2701_vts_index\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 357, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"mt2701_mux_values\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 354, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant [11 x i8] c"mt2701_msr\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 346, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant [14 x i8] c"mt2701_adcpnp\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 350, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"mt2701_tc_offset\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 355, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"mt2701_bank_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 342, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant [17 x i8] c"mt2712_vts_index\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 377, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"mt2712_mux_values\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 374, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant [11 x i8] c"mt2712_msr\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 366, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant [14 x i8] c"mt2712_adcpnp\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 370, i32 18 }
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"mt2712_tc_offset\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 375, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"mt2712_bank_data\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 362, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"mt7622_vts_index\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 386, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [18 x i8] c"mt7622_mux_values\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 385, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant [11 x i8] c"mt7622_msr\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 383, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant [14 x i8] c"mt7622_adcpnp\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 384, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"mt7622_tc_offset\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 387, i32 18 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"mt7622_bank_data\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 382, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant [17 x i8] c"mt8183_vts_index\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 314, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant [18 x i8] c"mt8183_mux_values\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 311, i32 18 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"mt8183_msr\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 302, i32 18 }
@___asan_gen_.237 = private unnamed_addr constant [14 x i8] c"mt8183_adcpnp\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 306, i32 18 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"mt8183_tc_offset\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 312, i32 18 }
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"mt8183_bank_data\00", align 1
@___asan_gen_.244 = private constant [33 x i8] c"../drivers/thermal/mtk_thermal.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 298, i32 18 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_author192, ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_file196, ptr @__UNIQUE_ID_license197, ptr @__exitcall_mtk_thermal_driver_exit, ptr @__initcall__kmod_mtk_thermal__189_1125_mtk_thermal_driver_init6, ptr @mtk_thermal_driver_exit, ptr @mtk_thermal_get_calibration_data._entry, ptr @mtk_thermal_get_calibration_data._entry.32, ptr @mtk_thermal_get_calibration_data._entry_ptr, ptr @mtk_thermal_get_calibration_data._entry_ptr.35, ptr @mtk_thermal_probe._entry, ptr @mtk_thermal_probe._entry.10, ptr @mtk_thermal_probe._entry.14, ptr @mtk_thermal_probe._entry.17, ptr @mtk_thermal_probe._entry.19, ptr @mtk_thermal_probe._entry.22, ptr @mtk_thermal_probe._entry.25, ptr @mtk_thermal_probe._entry_ptr, ptr @mtk_thermal_probe._entry_ptr.12, ptr @mtk_thermal_probe._entry_ptr.16, ptr @mtk_thermal_probe._entry_ptr.18, ptr @mtk_thermal_probe._entry_ptr.21, ptr @mtk_thermal_probe._entry_ptr.24, ptr @mtk_thermal_probe._entry_ptr.28, ptr @mtk_thermal_driver, ptr @.str, ptr @mtk_thermal_of_match, ptr @.str.1, ptr @.str.2, ptr @mtk_thermal_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @mtk_thermal_ops, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @mt8173_thermal_data, ptr @mt2701_thermal_data, ptr @mt2712_thermal_data, ptr @mt7622_thermal_data, ptr @mt8183_thermal_data, ptr @mt8173_vts_index, ptr @mt8173_mux_values, ptr @mt8173_msr, ptr @mt8173_adcpnp, ptr @mt8173_tc_offset, ptr @mt8173_bank_data, ptr @mt2701_vts_index, ptr @mt2701_mux_values, ptr @mt2701_msr, ptr @mt2701_adcpnp, ptr @mt2701_tc_offset, ptr @mt2701_bank_data, ptr @mt2712_vts_index, ptr @mt2712_mux_values, ptr @mt2712_msr, ptr @mt2712_adcpnp, ptr @mt2712_tc_offset, ptr @mt2712_bank_data, ptr @mt7622_vts_index, ptr @mt7622_mux_values, ptr @mt7622_msr, ptr @mt7622_adcpnp, ptr @mt7622_tc_offset, ptr @mt7622_bank_data, ptr @mt8183_vts_index, ptr @mt8183_mux_values, ptr @mt8183_msr, ptr @mt8183_adcpnp, ptr @mt8183_tc_offset, ptr @mt8183_bank_data], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_get_calibration_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_thermal_get_calibration_data._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_thermal_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_thermal_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_thermal_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_thermal_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_thermal_data to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_vts_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_mux_values to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_msr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_adcpnp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_tc_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8173_bank_data to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_vts_index to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_mux_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_msr to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_adcpnp to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_tc_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_bank_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_vts_index to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_mux_values to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_msr to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_adcpnp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_tc_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_bank_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_vts_index to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_mux_values to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_msr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_adcpnp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_tc_offset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_bank_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_vts_index to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_mux_values to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_msr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_adcpnp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_tc_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_bank_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_thermal_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_thermal_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_thermal_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_thermal_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_thermal_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %size64.i216 = alloca i64, align 8
  %args.i210 = alloca %struct.of_phandle_args, align 4
  %size64.i = alloca i64, align 8
  %args.i = alloca %struct.of_phandle_args, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 220, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #7
  %conf = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 11
  %2 = ptrtoint ptr %conf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %conf, align 4
  %call5 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %clk_peri_therm = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk_peri_therm to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %clk_peri_therm, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %clk_auxadc = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %clk_auxadc to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call13, ptr %clk_auxadc, align 4
  %cmp.i201 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i201, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %call20 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call20) #7
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %thermal_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %thermal_base, align 4
  %cmp.i202 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i202, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #7
  %9 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %len.i, align 4, !annotation !160
  %adc_ge.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %adc_ge.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 512, ptr %adc_ge.i, align 4
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conf, align 4
  %num_sensors64.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %num_sensors64.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_sensors64.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp65.i = icmp sgt i32 %14, 0
  br i1 %cmp65.i, label %if.end28.for.body.i_crit_edge, label %if.end28.for.end.i_crit_edge

if.end28.for.end.i_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end28.for.body.i_crit_edge:                    ; preds = %if.end28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end28.for.body.i_crit_edge
  %i.066.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end28.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 %i.066.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 260, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.066.i, 1
  %16 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %conf, align 4
  %num_sensors.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %num_sensors.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_sensors.i, align 4
  %cmp.i203 = icmp slt i32 %inc.i, %19
  br i1 %cmp.i203, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end28.for.end.i_crit_edge
  %degc_cali.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 7
  %20 = ptrtoint ptr %degc_cali.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40, ptr %degc_cali.i, align 4
  %o_slope.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %o_slope.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %o_slope.i, align 4
  %call.i204 = tail call ptr @nvmem_cell_get(ptr noundef %dev, ptr noundef nonnull @.str.29) #7
  %cmp.i.i = icmp ugt ptr %call.i204, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end6.i

if.then.i:                                        ; preds = %for.end.i
  %cmp3.i = icmp eq ptr %call.i204, inttoptr (i32 -517 to ptr)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  br i1 %cmp3.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.do.body_crit_edge

if.then.i.do.body_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %for.end.i
  %call7.i = call ptr @nvmem_cell_read(ptr noundef %call.i204, ptr noundef nonnull %len.i) #7
  call void @nvmem_cell_put(ptr noundef %call.i204) #7
  %cmp.i50.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %if.then9.i, label %if.end11.i

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call7.i to i32
  br label %mtk_thermal_get_calibration_data.exit

if.end11.i:                                       ; preds = %if.end6.i
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %24)
  %cmp12.i = icmp ult i32 %24, 12
  br i1 %cmp12.i, label %do.end.i, label %if.end14.i

do.end.i:                                         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  br label %out.i

if.end14.i:                                       ; preds = %if.end11.i
  %25 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %conf, align 4
  %version.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %26, i32 0, i32 12
  %27 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp16.i = icmp eq i32 %28, 1
  br i1 %cmp16.i, label %if.then17.i, label %if.else.i

if.then17.i:                                      ; preds = %if.end14.i
  %29 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i, align 4
  %and.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then17.i.do.end24.i_crit_edge, label %if.end.i.i

if.then17.i.do.end24.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

if.end.i.i:                                       ; preds = %if.then17.i
  %arrayidx1.i.i = getelementptr i32, ptr %call7.i, i32 1
  %31 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx1.i.i, align 4
  %shr.i.i = lshr i32 %32, 22
  %33 = ptrtoint ptr %adc_ge.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr.i.i, ptr %adc_ge.i, align 4
  %num_sensors.i.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %26, i32 0, i32 1
  %34 = ptrtoint ptr %num_sensors.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_sensors.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp84.i.i = icmp sgt i32 %35, 0
  br i1 %cmp84.i.i, label %for.body.lr.ph.i.i, label %if.end.i.i.for.end.i.i_crit_edge

if.end.i.i.for.end.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i.i
  %vts_index.i.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %26, i32 0, i32 3
  %arrayidx34.i.i = getelementptr i32, ptr %call7.i, i32 2
  %arrayidx38.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 5
  %arrayidx32.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 4
  %arrayidx26.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 3
  %arrayidx20.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 2
  %arrayidx14.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 1
  %vts.i.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.085.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %36 = ptrtoint ptr %vts_index.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vts_index.i.i, align 4
  %arrayidx4.i.i = getelementptr i32, ptr %37, i32 %i.085.i.i
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx4.i.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values)
  switch i32 %39, label %for.body.i.i.for.inc.i.i_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb9.i.i
    i32 2, label %sw.bb15.i.i
    i32 3, label %sw.bb21.i.i
    i32 4, label %sw.bb27.i.i
    i32 5, label %sw.bb33.i.i
  ]

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

sw.bb.i.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call7.i, align 4
  %shr6.i.i = lshr i32 %42, 17
  %and7.i.i = and i32 %shr6.i.i, 511
  %43 = ptrtoint ptr %vts.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %and7.i.i, ptr %vts.i.i, align 4
  br label %for.inc.i.i

sw.bb9.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %call7.i, align 4
  %shr11.i.i = lshr i32 %45, 8
  %and12.i.i = and i32 %shr11.i.i, 511
  %46 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and12.i.i, ptr %arrayidx14.i.i, align 4
  br label %for.inc.i.i

sw.bb15.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx1.i.i, align 4
  %and18.i.i = and i32 %48, 511
  %49 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and18.i.i, ptr %arrayidx20.i.i, align 4
  br label %for.inc.i.i

sw.bb21.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx34.i.i, align 4
  %shr23.i.i = lshr i32 %51, 23
  %52 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr23.i.i, ptr %arrayidx26.i.i, align 4
  br label %for.inc.i.i

sw.bb27.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx34.i.i, align 4
  %shr29.i.i = lshr i32 %54, 5
  %and30.i.i = and i32 %shr29.i.i, 511
  %55 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %and30.i.i, ptr %arrayidx32.i.i, align 4
  br label %for.inc.i.i

sw.bb33.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx34.i.i, align 4
  %shr35.i.i = lshr i32 %57, 14
  %and36.i.i = and i32 %shr35.i.i, 511
  %58 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %and36.i.i, ptr %arrayidx38.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.bb33.i.i, %sw.bb27.i.i, %sw.bb21.i.i, %sw.bb15.i.i, %sw.bb9.i.i, %sw.bb.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.085.i.i, 1
  %59 = ptrtoint ptr %num_sensors.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %num_sensors.i.i, align 4
  %cmp.i51.i = icmp slt i32 %inc.i.i, %60
  br i1 %cmp.i51.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.end.i.i.for.end.i.i_crit_edge
  %61 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call7.i, align 4
  %shr40.i.i = lshr i32 %62, 1
  %and41.i.i = and i32 %shr40.i.i, 63
  %63 = ptrtoint ptr %degc_cali.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %and41.i.i, ptr %degc_cali.i, align 4
  %64 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx1.i.i, align 4
  %shr43.i.i = lshr i32 %65, 9
  %66 = load i32, ptr %call7.i, align 4
  %shr46.i.i = lshr i32 %66, 7
  %and47.i.i = and i32 %shr43.i.i, 1
  %and48.i.i = and i32 %and47.i.i, %shr46.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i.i)
  %tobool49.not.i.i = icmp eq i32 %and48.i.i, 0
  %shr55.i.i = lshr i32 %66, 26
  %sub.i.i = sub nsw i32 0, %shr55.i.i
  %sub.sink.i.i = select i1 %tobool49.not.i.i, i32 %shr55.i.i, i32 %sub.i.i
  %67 = ptrtoint ptr %o_slope.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %sub.sink.i.i, ptr %o_slope.i, align 4
  br label %out.i

if.else.i:                                        ; preds = %if.end14.i
  %arrayidx.i.i = getelementptr i32, ptr %call7.i, i32 1
  %68 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i, align 4
  %70 = and i32 %69, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i52.i = icmp eq i32 %70, 0
  br i1 %tobool.not.i52.i, label %if.else.i.do.end24.i_crit_edge, label %if.end.i60.i

if.else.i.do.end24.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end24.i

if.end.i60.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %call7.i, align 4
  %shr2.i.i = lshr i32 %72, 22
  %adc_oe.i.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 6
  %73 = ptrtoint ptr %adc_oe.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %shr2.i.i, ptr %adc_oe.i.i, align 4
  %74 = load i32, ptr %call7.i, align 4
  %shr5.i.i = lshr i32 %74, 12
  %and6.i.i = and i32 %shr5.i.i, 1023
  %75 = ptrtoint ptr %adc_ge.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %and6.i.i, ptr %adc_ge.i, align 4
  %76 = load i32, ptr %call7.i, align 4
  %shr8.i.i = lshr i32 %76, 6
  %and9.i.i = and i32 %shr8.i.i, 63
  %77 = ptrtoint ptr %degc_cali.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %and9.i.i, ptr %degc_cali.i, align 4
  %78 = load i32, ptr %call7.i, align 4
  %and12.i55.i = and i32 %78, 63
  %79 = ptrtoint ptr %o_slope.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %and12.i55.i, ptr %o_slope.i, align 4
  %80 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i, align 4
  %shr14.i.i = lshr i32 %81, 23
  %vts.i57.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 10
  %82 = ptrtoint ptr %vts.i57.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %shr14.i.i, ptr %vts.i57.i, align 4
  %83 = load i32, ptr %arrayidx.i.i, align 4
  %shr18.i.i = lshr i32 %83, 14
  %and19.i.i = and i32 %shr18.i.i, 511
  %arrayidx21.i.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 1
  %84 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %and19.i.i, ptr %arrayidx21.i.i, align 4
  %85 = load i32, ptr %arrayidx.i.i, align 4
  %shr23.i58.i = lshr i32 %85, 5
  %and24.i.i = and i32 %shr23.i58.i, 511
  %arrayidx26.i59.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 10, i32 5
  %86 = ptrtoint ptr %arrayidx26.i59.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and24.i.i, ptr %arrayidx26.i59.i, align 4
  %87 = load i32, ptr %arrayidx.i.i, align 4
  %shr28.i.i = lshr i32 %87, 3
  %and29.i.i = and i32 %shr28.i.i, 1
  %o_slope_sign.i.i = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 9
  %88 = ptrtoint ptr %o_slope_sign.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %and29.i.i, ptr %o_slope_sign.i.i, align 4
  br label %out.i

do.end24.i:                                       ; preds = %if.else.i.do.end24.i_crit_edge, %if.then17.i.do.end24.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %out.i

out.i:                                            ; preds = %do.end24.i, %if.end.i60.i, %for.end.i.i, %do.end.i
  %ret.1.i = phi i32 [ -22, %do.end.i ], [ 0, %do.end24.i ], [ 0, %for.end.i.i ], [ 0, %if.end.i60.i ]
  call void @kfree(ptr noundef %call7.i) #7
  br label %mtk_thermal_get_calibration_data.exit

mtk_thermal_get_calibration_data.exit:            ; preds = %out.i, %if.then9.i
  %retval.0.i = phi i32 [ %22, %if.then9.i ], [ %ret.1.i, %out.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool31.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool31.not, label %mtk_thermal_get_calibration_data.exit.do.body_crit_edge, label %mtk_thermal_get_calibration_data.exit.cleanup_crit_edge

mtk_thermal_get_calibration_data.exit.cleanup_crit_edge: ; preds = %mtk_thermal_get_calibration_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

mtk_thermal_get_calibration_data.exit.do.body_crit_edge: ; preds = %mtk_thermal_get_calibration_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %mtk_thermal_get_calibration_data.exit.do.body_crit_edge, %if.then.i.do.body_crit_edge
  %lock = getelementptr inbounds %struct.mtk_thermal, ptr %call.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtk_thermal_probe.__key) #7
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %dev, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %90 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i205 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %tobool.not.i = icmp eq i32 %call.i205, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %do.end41

of_parse_phandle.exit:                            ; preds = %do.body
  %91 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool37.not = icmp eq ptr %92, null
  br i1 %tobool37.not, label %of_parse_phandle.exit.do.end41_crit_edge, label %if.end43

of_parse_phandle.exit.do.end41_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end41

do.end41:                                         ; preds = %of_parse_phandle.exit.do.end41_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end43:                                         ; preds = %of_parse_phandle.exit
  %call44 = call ptr @of_iomap(ptr noundef nonnull %92, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size64.i) #7
  %93 = ptrtoint ptr %size64.i to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 -1, ptr %size64.i, align 8, !annotation !160
  %call.i.i = call ptr @__of_get_address(ptr noundef nonnull %92, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size64.i, ptr noundef null) #7
  %tobool.not.i207 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i207, label %of_get_phys_base.exit.thread, label %of_get_phys_base.exit

of_get_phys_base.exit.thread:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size64.i) #7
  call void @of_node_put(ptr noundef nonnull %92) #7
  br label %do.end49

of_get_phys_base.exit:                            ; preds = %if.end43
  %call1.i = call i64 @of_translate_address(ptr noundef nonnull %92, ptr noundef nonnull %call.i.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size64.i) #7
  call void @of_node_put(ptr noundef nonnull %92) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i)
  %cmp = icmp eq i64 %call1.i, -1
  br i1 %cmp, label %of_get_phys_base.exit.do.end49_crit_edge, label %if.end51

of_get_phys_base.exit.do.end49_crit_edge:         ; preds = %of_get_phys_base.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.end49:                                         ; preds = %of_get_phys_base.exit.do.end49_crit_edge, %of_get_phys_base.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end51:                                         ; preds = %of_get_phys_base.exit
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i210) #7
  %94 = call ptr @memset(ptr %args.i210, i32 255, i32 72)
  %call.i211 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i210) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %tobool.not.i212 = icmp eq i32 %call.i211, 0
  br i1 %tobool.not.i212, label %of_parse_phandle.exit215, label %of_parse_phandle.exit215.thread

of_parse_phandle.exit215.thread:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i210) #7
  br label %do.end57

of_parse_phandle.exit215:                         ; preds = %if.end51
  %95 = ptrtoint ptr %args.i210 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %args.i210, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i210) #7
  %tobool53.not = icmp eq ptr %96, null
  br i1 %tobool53.not, label %of_parse_phandle.exit215.do.end57_crit_edge, label %if.end59

of_parse_phandle.exit215.do.end57_crit_edge:      ; preds = %of_parse_phandle.exit215
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

do.end57:                                         ; preds = %of_parse_phandle.exit215.do.end57_crit_edge, %of_parse_phandle.exit215.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #10
  br label %cleanup

if.end59:                                         ; preds = %of_parse_phandle.exit215
  %call60 = call ptr @of_iomap(ptr noundef nonnull %96, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %size64.i216) #7
  %97 = ptrtoint ptr %size64.i216 to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 -1, ptr %size64.i216, align 8, !annotation !160
  %call.i.i217 = call ptr @__of_get_address(ptr noundef nonnull %96, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %size64.i216, ptr noundef null) #7
  %tobool.not.i218 = icmp eq ptr %call.i.i217, null
  br i1 %tobool.not.i218, label %of_get_phys_base.exit222.thread, label %of_get_phys_base.exit222

of_get_phys_base.exit222.thread:                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size64.i216) #7
  call void @of_node_put(ptr noundef nonnull %96) #7
  br label %do.end66

of_get_phys_base.exit222:                         ; preds = %if.end59
  %call1.i219 = call i64 @of_translate_address(ptr noundef nonnull %96, ptr noundef nonnull %call.i.i217) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %size64.i216) #7
  call void @of_node_put(ptr noundef nonnull %96) #7
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %call1.i219)
  %cmp62 = icmp eq i64 %call1.i219, -1
  br i1 %cmp62, label %of_get_phys_base.exit222.do.end66_crit_edge, label %if.end68

of_get_phys_base.exit222.do.end66_crit_edge:      ; preds = %of_get_phys_base.exit222
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end66

do.end66:                                         ; preds = %of_get_phys_base.exit222.do.end66_crit_edge, %of_get_phys_base.exit222.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #10
  br label %cleanup

if.end68:                                         ; preds = %of_get_phys_base.exit222
  %call.i223 = call i32 @__device_reset(ptr noundef %dev, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %tobool71.not = icmp eq i32 %call.i223, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %98 = ptrtoint ptr %clk_auxadc to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %clk_auxadc, align 4
  %call75 = call fastcc i32 @clk_prepare_enable(ptr noundef %99)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end82, label %do.end80

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call75) #10
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %100 = ptrtoint ptr %clk_peri_therm to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk_peri_therm, align 4
  %call84 = call fastcc i32 @clk_prepare_enable(ptr noundef %101)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call84) #10
  br label %err_disable_clk_auxadc

if.end91:                                         ; preds = %if.end82
  %102 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %conf, align 4
  %version = getelementptr inbounds %struct.mtk_thermal_data, ptr %103, i32 0, i32 12
  %104 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %105)
  %cmp93 = icmp eq i32 %105, 2
  br i1 %cmp93, label %if.then94, label %if.end91.if.end95_crit_edge

if.end91.if.end95_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @mtk_thermal_turn_on_buffer(ptr noundef %call60)
  call fastcc void @mtk_thermal_release_periodic_ts(ptr noundef nonnull %call.i, ptr noundef %call44)
  br label %if.end95

if.end95:                                         ; preds = %if.then94, %if.end91.if.end95_crit_edge
  %106 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %conf, align 4
  %num_controller246 = getelementptr inbounds %struct.mtk_thermal_data, ptr %107, i32 0, i32 8
  %108 = ptrtoint ptr %num_controller246 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_controller246, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp97247 = icmp sgt i32 %109, 0
  br i1 %cmp97247, label %for.cond98.preheader.lr.ph, label %if.end95.for.end105_crit_edge

if.end95.for.end105_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105

for.cond98.preheader.lr.ph:                       ; preds = %if.end95
  %conv = trunc i64 %call1.i219 to i32
  %conv102 = trunc i64 %call1.i to i32
  %add.i = add i32 %conv102, 12
  %110 = call i32 @llvm.bswap.i32(i32 %add.i) #7
  %add42.i = add i32 %conv, 1540
  %111 = call i32 @llvm.bswap.i32(i32 %add42.i) #7
  %add53.i = add i32 %conv102, 8
  %112 = call i32 @llvm.bswap.i32(i32 %add53.i) #7
  %add59.i = add i32 %conv102, 20
  br label %for.cond98.preheader

for.cond98.preheader:                             ; preds = %for.inc103.for.cond98.preheader_crit_edge, %for.cond98.preheader.lr.ph
  %ctrl_id.0248 = phi i32 [ 0, %for.cond98.preheader.lr.ph ], [ %inc104, %for.inc103.for.cond98.preheader_crit_edge ]
  %113 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %conf, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp100243 = icmp sgt i32 %116, 0
  br i1 %cmp100243, label %for.cond98.preheader.for.body101_crit_edge, label %for.cond98.preheader.for.inc103_crit_edge

for.cond98.preheader.for.inc103_crit_edge:        ; preds = %for.cond98.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103

for.cond98.preheader.for.body101_crit_edge:       ; preds = %for.cond98.preheader
  br label %for.body101

for.body101:                                      ; preds = %mtk_thermal_init_bank.exit.for.body101_crit_edge, %for.cond98.preheader.for.body101_crit_edge
  %117 = phi ptr [ %185, %mtk_thermal_init_bank.exit.for.body101_crit_edge ], [ %114, %for.cond98.preheader.for.body101_crit_edge ]
  %i.0244 = phi i32 [ %inc, %mtk_thermal_init_bank.exit.for.body101_crit_edge ], [ 0, %for.cond98.preheader.for.body101_crit_edge ]
  %arrayidx.i224 = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 12, i32 %i.0244
  %controller_offset.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %117, i32 0, i32 9
  %118 = ptrtoint ptr %controller_offset.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %controller_offset.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %119, i32 %ctrl_id.0248
  %120 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx3.i, align 4
  %122 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %thermal_base, align 4
  %add.ptr.i = getelementptr i8, ptr %123, i32 %121
  %id.i = getelementptr %struct.mtk_thermal, ptr %call.i, i32 0, i32 12, i32 %i.0244, i32 1
  %124 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %i.0244, ptr %id.i, align 4
  %125 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i, ptr %arrayidx.i224, align 4
  %126 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %conf, align 4
  %need_switch_bank.i.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %127, i32 0, i32 10
  %128 = ptrtoint ptr %need_switch_bank.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %need_switch_bank.i.i, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool.not.i.i225 = icmp eq i8 %129, 0
  br i1 %tobool.not.i.i225, label %for.body101.mtk_thermal_get_bank.exit.i_crit_edge, label %if.then.i.i

for.body101.mtk_thermal_get_bank.exit.i_crit_edge: ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_get_bank.exit.i

if.then.i.i:                                      ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %130 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %thermal_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %131, i32 1024
  %132 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !162
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %133 = and i32 %132, -251658241
  %134 = call i32 @llvm.bswap.i32(i32 %133) #7
  %135 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %id.i, align 4
  %or.i.i = or i32 %134, %136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  call void @arm_heavy_mb() #7
  %137 = call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  %138 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %thermal_base, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %139, i32 1024
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %137) #7, !srcloc !165
  br label %mtk_thermal_get_bank.exit.i

mtk_thermal_get_bank.exit.i:                      ; preds = %if.then.i.i, %for.body101.mtk_thermal_get_bank.exit.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  call void @arm_heavy_mb() #7
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 201326592) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  call void @arm_heavy_mb() #7
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 -1392443136) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  call void @arm_heavy_mb() #7
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 196608) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !169
  call void @arm_heavy_mb() #7
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17.i, i32 0) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !170
  call void @arm_heavy_mb() #7
  %add.ptr21.i = getelementptr i8, ptr %add.ptr.i, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 -1) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !171
  call void @arm_heavy_mb() #7
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 0) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !172
  call void @arm_heavy_mb() #7
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29.i, i32 0) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !173
  call void @arm_heavy_mb() #7
  %auxadc_channel.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %117, i32 0, i32 2
  %140 = ptrtoint ptr %auxadc_channel.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %auxadc_channel.i, align 4
  %shl.i = shl nuw i32 1, %141
  %142 = call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %add.ptr33.i = getelementptr i8, ptr %add.ptr.i, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %142) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !174
  call void @arm_heavy_mb() #7
  %add.ptr37.i = getelementptr i8, ptr %add.ptr.i, i32 104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %110) #7, !srcloc !165
  %143 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %conf, align 4
  %version.i226 = getelementptr inbounds %struct.mtk_thermal_data, ptr %144, i32 0, i32 12
  %145 = ptrtoint ptr %version.i226 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %version.i226, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %146)
  %cmp.i227 = icmp eq i32 %146, 1
  br i1 %cmp.i227, label %do.body39.i, label %mtk_thermal_get_bank.exit.i.do.body44.i_crit_edge

mtk_thermal_get_bank.exit.i.do.body44.i_crit_edge: ; preds = %mtk_thermal_get_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44.i

do.body39.i:                                      ; preds = %mtk_thermal_get_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !175
  call void @arm_heavy_mb() #7
  %add.ptr43.i = getelementptr i8, ptr %add.ptr.i, i32 100
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43.i, i32 %111) #7, !srcloc !165
  br label %do.body44.i

do.body44.i:                                      ; preds = %do.body39.i, %mtk_thermal_get_bank.exit.i.do.body44.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !176
  call void @arm_heavy_mb() #7
  %147 = ptrtoint ptr %auxadc_channel.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %auxadc_channel.i, align 4
  %shl48.i = shl nuw i32 1, %148
  %149 = call i32 @llvm.bswap.i32(i32 %shl48.i) #7
  %add.ptr49.i = getelementptr i8, ptr %add.ptr.i, i32 96
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %149) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !177
  call void @arm_heavy_mb() #7
  %add.ptr54.i = getelementptr i8, ptr %add.ptr.i, i32 116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr54.i, i32 %112) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !178
  call void @arm_heavy_mb() #7
  %150 = ptrtoint ptr %auxadc_channel.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %auxadc_channel.i, align 4
  %mul.i = shl i32 %151, 2
  %add60.i = add i32 %mul.i, %add59.i
  %152 = call i32 @llvm.bswap.i32(i32 %add60.i) #7
  %add.ptr61.i = getelementptr i8, ptr %add.ptr.i, i32 120
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %152) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !179
  call void @arm_heavy_mb() #7
  %153 = ptrtoint ptr %auxadc_channel.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %auxadc_channel.i, align 4
  %mul66.i = shl i32 %154, 2
  %add68.i = add i32 %mul66.i, %add59.i
  %155 = call i32 @llvm.bswap.i32(i32 %add68.i) #7
  %add.ptr69.i = getelementptr i8, ptr %add.ptr.i, i32 124
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %155) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !180
  call void @arm_heavy_mb() #7
  %add.ptr73.i = getelementptr i8, ptr %add.ptr.i, i32 128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73.i, i32 0) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !181
  call void @arm_heavy_mb() #7
  %add.ptr77.i = getelementptr i8, ptr %add.ptr.i, i32 132
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 738197504) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !182
  call void @arm_heavy_mb() #7
  %add.ptr81.i = getelementptr i8, ptr %add.ptr.i, i32 136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 0) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !183
  call void @arm_heavy_mb() #7
  %add.ptr85.i = getelementptr i8, ptr %add.ptr.i, i32 140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 33554432) #7, !srcloc !165
  %arrayidx86.i = getelementptr %struct.mtk_thermal_data, ptr %117, i32 0, i32 11, i32 %i.0244
  %156 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx86.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %cmp87161.not.i = icmp eq i32 %157, 0
  br i1 %cmp87161.not.i, label %do.body44.i.do.body98.i_crit_edge, label %do.body88.lr.ph.i

do.body44.i.do.body98.i_crit_edge:                ; preds = %do.body44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98.i

do.body88.lr.ph.i:                                ; preds = %do.body44.i
  %sensor_mux_values.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %117, i32 0, i32 4
  %sensors.i = getelementptr %struct.mtk_thermal_data, ptr %117, i32 0, i32 11, i32 %i.0244, i32 1
  %adcpnp.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %117, i32 0, i32 6
  br label %do.body88.i

do.body88.i:                                      ; preds = %do.body88.i.do.body88.i_crit_edge, %do.body88.lr.ph.i
  %i.0162.i = phi i32 [ 0, %do.body88.lr.ph.i ], [ %inc.i228, %do.body88.i.do.body88.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !184
  call void @arm_heavy_mb() #7
  %158 = ptrtoint ptr %sensor_mux_values.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sensor_mux_values.i, align 4
  %160 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %sensors.i, align 4
  %arrayidx93.i = getelementptr i32, ptr %161, i32 %i.0162.i
  %162 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx93.i, align 4
  %arrayidx94.i = getelementptr i32, ptr %159, i32 %163
  %164 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx94.i, align 4
  %166 = call i32 @llvm.bswap.i32(i32 %165) #7
  %167 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %thermal_base, align 4
  %169 = ptrtoint ptr %adcpnp.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %adcpnp.i, align 4
  %arrayidx96.i = getelementptr i32, ptr %170, i32 %i.0162.i
  %171 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %arrayidx96.i, align 4
  %add.ptr97.i = getelementptr i8, ptr %168, i32 %172
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 %166) #7, !srcloc !165
  %inc.i228 = add nuw i32 %i.0162.i, 1
  %173 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx86.i, align 4
  %cmp87.i = icmp ult i32 %inc.i228, %174
  br i1 %cmp87.i, label %do.body88.i.do.body88.i_crit_edge, label %do.body88.i.do.body98.i_crit_edge

do.body88.i.do.body98.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body98.i

do.body88.i.do.body88.i_crit_edge:                ; preds = %do.body88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body88.i

do.body98.i:                                      ; preds = %do.body88.i.do.body98.i_crit_edge, %do.body44.i.do.body98.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !185
  call void @arm_heavy_mb() #7
  %175 = ptrtoint ptr %arrayidx86.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %arrayidx86.i, align 4
  %notmask.i = shl nsw i32 -1, %176
  %sub.i = xor i32 %notmask.i, -1
  %177 = call i32 @llvm.bswap.i32(i32 %sub.i) #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %177) #7, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !186
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 50331648) #7, !srcloc !165
  %178 = ptrtoint ptr %arrayidx.i224 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i224, align 4
  %conf.i156.i = getelementptr inbounds %struct.mtk_thermal, ptr %179, i32 0, i32 11
  %180 = ptrtoint ptr %conf.i156.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %conf.i156.i, align 4
  %need_switch_bank.i157.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %181, i32 0, i32 10
  %182 = ptrtoint ptr %need_switch_bank.i157.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %need_switch_bank.i157.i, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool.not.i158.i = icmp eq i8 %183, 0
  br i1 %tobool.not.i158.i, label %do.body98.i.mtk_thermal_init_bank.exit_crit_edge, label %if.then.i160.i

do.body98.i.mtk_thermal_init_bank.exit_crit_edge: ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_init_bank.exit

if.then.i160.i:                                   ; preds = %do.body98.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i159.i = getelementptr inbounds %struct.mtk_thermal, ptr %179, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %lock.i159.i) #7
  br label %mtk_thermal_init_bank.exit

mtk_thermal_init_bank.exit:                       ; preds = %if.then.i160.i, %do.body98.i.mtk_thermal_init_bank.exit_crit_edge
  %inc = add nuw nsw i32 %i.0244, 1
  %184 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %conf, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %185, align 4
  %cmp100 = icmp slt i32 %inc, %187
  br i1 %cmp100, label %mtk_thermal_init_bank.exit.for.body101_crit_edge, label %mtk_thermal_init_bank.exit.for.inc103_crit_edge

mtk_thermal_init_bank.exit.for.inc103_crit_edge:  ; preds = %mtk_thermal_init_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc103

mtk_thermal_init_bank.exit.for.body101_crit_edge: ; preds = %mtk_thermal_init_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body101

for.inc103:                                       ; preds = %mtk_thermal_init_bank.exit.for.inc103_crit_edge, %for.cond98.preheader.for.inc103_crit_edge
  %inc104 = add nuw nsw i32 %ctrl_id.0248, 1
  %188 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %conf, align 4
  %num_controller = getelementptr inbounds %struct.mtk_thermal_data, ptr %189, i32 0, i32 8
  %190 = ptrtoint ptr %num_controller to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %num_controller, align 4
  %cmp97 = icmp slt i32 %inc104, %191
  br i1 %cmp97, label %for.inc103.for.cond98.preheader_crit_edge, label %for.inc103.for.end105_crit_edge

for.inc103.for.end105_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end105

for.inc103.for.cond98.preheader_crit_edge:        ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond98.preheader

for.end105:                                       ; preds = %for.inc103.for.end105_crit_edge, %if.end95.for.end105_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %192 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call107 = call ptr @devm_thermal_zone_of_sensor_register(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %call.i, ptr noundef nonnull @mtk_thermal_ops) #7
  %cmp.i229 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i229, label %if.then109, label %if.end111

if.then109:                                       ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %call107 to i32
  %194 = ptrtoint ptr %clk_peri_therm to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %clk_peri_therm, align 4
  call void @clk_disable(ptr noundef %195) #7
  call void @clk_unprepare(ptr noundef %195) #7
  br label %err_disable_clk_auxadc

if.end111:                                        ; preds = %for.end105
  %call112 = call i32 @devm_thermal_add_hwmon_sysfs(ptr noundef %call107) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end111.cleanup_crit_edge, label %do.end117

if.end111.cleanup_crit_edge:                      ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end117:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.26) #10
  br label %cleanup

err_disable_clk_auxadc:                           ; preds = %if.then109, %do.end89
  %ret.0 = phi i32 [ %call84, %do.end89 ], [ %193, %if.then109 ]
  %196 = ptrtoint ptr %clk_auxadc to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %clk_auxadc, align 4
  call void @clk_disable(ptr noundef %197) #7
  call void @clk_unprepare(ptr noundef %197) #7
  br label %cleanup

cleanup:                                          ; preds = %err_disable_clk_auxadc, %do.end117, %if.end111.cleanup_crit_edge, %do.end80, %if.end68.cleanup_crit_edge, %do.end66, %do.end57, %do.end49, %do.end41, %mtk_thermal_get_calibration_data.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then25, %if.then16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then8 ], [ %6, %if.then16 ], [ %8, %if.then25 ], [ -22, %do.end49 ], [ -22, %do.end66 ], [ %call75, %do.end80 ], [ %ret.0, %err_disable_clk_auxadc ], [ -19, %do.end57 ], [ -19, %do.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %mtk_thermal_get_calibration_data.exit.cleanup_crit_edge ], [ %call.i223, %if.end68.cleanup_crit_edge ], [ 0, %do.end117 ], [ 0, %if.end111.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_thermal_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %clk_peri_therm = getelementptr inbounds %struct.mtk_thermal, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk_peri_therm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_peri_therm, align 4
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  %clk_auxadc = getelementptr inbounds %struct.mtk_thermal, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clk_auxadc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_auxadc, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_thermal_turn_on_buffer(ptr noundef %apmixed_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %apmixed_base, i32 1540
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !187
  %1 = and i32 %0, -922746881
  %2 = or i32 %1, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !188
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #7, !srcloc !165
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 42949600) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_thermal_release_periodic_ts(ptr nocapture noundef readonly %mt, ptr noundef %auxadc_base) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !189
  tail call void @arm_heavy_mb() #7
  %add.ptr = getelementptr i8, ptr %auxadc_base, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 524288) #7, !srcloc !165
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !190
  tail call void @arm_heavy_mb() #7
  %thermal_base = getelementptr inbounds %struct.mtk_thermal, ptr %mt, i32 0, i32 1
  %0 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %thermal_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 16777216) #7, !srcloc !165
  %2 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %thermal_base, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 60
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !191
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !192
  tail call void @arm_heavy_mb() #7
  %5 = and i32 %4, -234946561
  %6 = ptrtoint ptr %thermal_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %thermal_base, align 4
  %add.ptr13 = getelementptr i8, ptr %7, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %5) #7, !srcloc !165
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_thermal_zone_of_sensor_register(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_thermal_add_hwmon_sysfs(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvmem_cell_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvmem_cell_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_get_address(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__device_reset(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_read_temp(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %temperature) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conf = getelementptr inbounds %struct.mtk_thermal, ptr %data, i32 0, i32 11
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21 = icmp sgt i32 %3, 0
  br i1 %cmp21, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %mtk_thermal_put_bank.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %tempmax.023 = phi i32 [ %78, %mtk_thermal_put_bank.exit.for.body_crit_edge ], [ -2147483648, %entry.for.body_crit_edge ]
  %i.022 = phi i32 [ %inc, %mtk_thermal_put_bank.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mtk_thermal, ptr %data, i32 0, i32 12, i32 %i.022
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %conf.i = getelementptr inbounds %struct.mtk_thermal, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %conf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conf.i, align 4
  %need_switch_bank.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %need_switch_bank.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %need_switch_bank.i, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.mtk_thermal_get_bank.exit_crit_edge, label %if.then.i

for.body.mtk_thermal_get_bank.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_get_bank.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.mtk_thermal, ptr %5, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %thermal_base.i = getelementptr inbounds %struct.mtk_thermal, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %thermal_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %thermal_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 1024
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !162
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %13 = and i32 %12, -251658241
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  %id.i = getelementptr %struct.mtk_thermal, ptr %data, i32 0, i32 12, i32 %i.022, i32 1
  %15 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id.i, align 4
  %or.i = or i32 %14, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %18 = ptrtoint ptr %thermal_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %thermal_base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %17) #7, !srcloc !165
  br label %mtk_thermal_get_bank.exit

mtk_thermal_get_bank.exit:                        ; preds = %if.then.i, %for.body.mtk_thermal_get_bank.exit_crit_edge
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %conf2.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %conf2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %conf2.i, align 4
  %id.i10 = getelementptr %struct.mtk_thermal, ptr %data, i32 0, i32 12, i32 %i.022, i32 1
  %24 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id.i10, align 4
  %arrayidx56.i = getelementptr %struct.mtk_thermal_data, ptr %23, i32 0, i32 11, i32 %25
  %26 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp57.not.i = icmp eq i32 %27, 0
  br i1 %cmp57.not.i, label %mtk_thermal_get_bank.exit.mtk_thermal_bank_temperature.exit_crit_edge, label %for.body.lr.ph.i

mtk_thermal_get_bank.exit.mtk_thermal_bank_temperature.exit_crit_edge: ; preds = %mtk_thermal_get_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_bank_temperature.exit

for.body.lr.ph.i:                                 ; preds = %mtk_thermal_get_bank.exit
  %thermal_base.i11 = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 1
  %msr.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %23, i32 0, i32 5
  %adc_ge.i43.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 5
  %adc_oe.i.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 6
  %arrayidx.i47.i = getelementptr %struct.mtk_thermal, ptr %21, i32 0, i32 10, i32 1
  %degc_cali.i48.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 7
  %o_slope_sign.i.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 9
  %o_slope.i51.i = getelementptr inbounds %struct.mtk_thermal, ptr %21, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.thread.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.059.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.thread.i.for.body.i_crit_edge ]
  %max.058.i = phi i32 [ -2147483648, %for.body.lr.ph.i ], [ %73, %if.end.thread.i.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %thermal_base.i11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %thermal_base.i11, align 4
  %30 = ptrtoint ptr %msr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %msr.i, align 4
  %arrayidx3.i = getelementptr i32, ptr %31, i32 %i.059.i
  %32 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx3.i, align 4
  %add.ptr.i12 = getelementptr i8, ptr %29, i32 %33
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12) #7, !srcloc !162
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !193
  %36 = ptrtoint ptr %conf2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %conf2.i, align 4
  %version.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %37, i32 0, i32 12
  %38 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp6.i = icmp eq i32 %39, 1
  br i1 %cmp6.i, label %if.then.i13, label %if.else.i

if.then.i13:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id.i10, align 4
  %sensors.i = getelementptr %struct.mtk_thermal_data, ptr %23, i32 0, i32 11, i32 %41, i32 1
  %42 = ptrtoint ptr %sensors.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sensors.i, align 4
  %arrayidx10.i = getelementptr i32, ptr %43, i32 %i.059.i
  %44 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx10.i, align 4
  %and.i.i = and i32 %35, 4095
  %cali_val.i.i = getelementptr inbounds %struct.mtk_thermal_data, ptr %37, i32 0, i32 7
  %46 = ptrtoint ptr %cali_val.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cali_val.i.i, align 4
  %48 = ptrtoint ptr %o_slope.i51.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %o_slope.i51.i, align 4
  %add.i.i = add i32 %49, %47
  %div.i.i = sdiv i32 1627604160, %add.i.i
  %50 = ptrtoint ptr %adc_ge.i43.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %adc_ge.i43.i, align 4
  %add1.i.i = add i32 %51, 10000
  %div2.i.i = sdiv i32 %div.i.i, %add1.i.i
  %arrayidx.i.i = getelementptr %struct.mtk_thermal, ptr %21, i32 0, i32 10, i32 %45
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %sub.i.i = add nsw i32 %and.i.i, -3350
  %sub3.i.i = sub i32 %sub.i.i, %53
  %mul.i.i = mul i32 %sub3.i.i, %div2.i.i
  %shr.i.i = ashr i32 %mul.i.i, 3
  %54 = ptrtoint ptr %degc_cali.i48.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %degc_cali.i48.i, align 4
  %mul4.i.i = mul i32 %55, 500
  %sub5.i.i = sub i32 %mul4.i.i, %shr.i.i
  br label %if.end.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i.i = icmp eq i32 %34, 0
  br i1 %cmp.i.i, label %if.else.i.if.end.thread.i_crit_edge, label %if.end.i.i

if.else.i.if.end.thread.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i42.i = and i32 %35, 4095
  %56 = ptrtoint ptr %adc_ge.i43.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %adc_ge.i43.i, align 4
  %58 = mul i32 %57, 10000
  %mul.i44.i = add i32 %58, -5120000
  %shr.i45.i = ashr i32 %mul.i44.i, 12
  %add.i46.i = add nsw i32 %shr.i45.i, 10000
  %59 = ptrtoint ptr %adc_oe.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %adc_oe.i.i, align 4
  %61 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i47.i, align 4
  %63 = sub i32 %62, %60
  %64 = ptrtoint ptr %degc_cali.i48.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %degc_cali.i48.i, align 4
  %mul4.i49.i = mul i32 %65, 10
  %shr5.i.i = ashr exact i32 %mul4.i49.i, 1
  %66 = mul i32 %63, 10000
  %mul6.i.i = add i32 %66, 36170000
  %shr7.i.i = ashr i32 %mul6.i.i, 12
  %mul8.i.i = mul i32 %shr7.i.i, 10000
  %div.i50.i = sdiv i32 %mul8.i.i, %add.i46.i
  %sub1.i.neg.i = add nuw nsw i32 %and.i42.i, 512
  %sub9.i.i = sub i32 %sub1.i.neg.i, %60
  %mul10.i.i = mul i32 %sub9.i.i, 10000
  %shr11.i.i = ashr i32 %mul10.i.i, 12
  %mul12.i.i = mul i32 %shr11.i.i, 10000
  %div13.i.i = sdiv i32 %mul12.i.i, %add.i46.i
  %sub14.i.i = sub i32 %div13.i.i, %div.i50.i
  %mul16.i.i = mul i32 %sub14.i.i, 1000
  %div17.i.i = sdiv i32 %mul16.i.i, 11
  %67 = ptrtoint ptr %o_slope_sign.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %o_slope_sign.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp18.i.i = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %o_slope.i51.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %o_slope.i51.i, align 4
  %71 = sub i32 0, %70
  %sub20.pn.p.i.i = select i1 %cmp18.i.i, i32 %71, i32 %70
  %sub20.pn.i.i = add i32 %sub20.pn.p.i.i, 165
  %tmp.0.i.i = sdiv i32 %div17.i.i, %sub20.pn.i.i
  %sub26.i.i = sub nsw i32 %shr5.i.i, %tmp.0.i.i
  %mul27.i.i = mul i32 %sub26.i.i, 100
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.i.i, %if.then.i13
  %temp.0.i = phi i32 [ %sub5.i.i, %if.then.i13 ], [ %mul27.i.i, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %temp.0.i)
  %cmp18.i = icmp sgt i32 %temp.0.i, 200000
  %spec.select54.i = select i1 %cmp18.i, i32 0, i32 %temp.0.i
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i, %if.else.i.if.end.thread.i_crit_edge
  %72 = phi i32 [ 0, %if.else.i.if.end.thread.i_crit_edge ], [ %spec.select54.i, %if.end.i ]
  %73 = tail call i32 @llvm.smax.i32(i32 %72, i32 %max.058.i) #7
  %inc.i = add nuw i32 %i.059.i, 1
  %74 = ptrtoint ptr %id.i10 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id.i10, align 4
  %arrayidx.i = getelementptr %struct.mtk_thermal_data, ptr %23, i32 0, i32 11, i32 %75
  %76 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %77
  br i1 %cmp.i, label %if.end.thread.i.for.body.i_crit_edge, label %if.end.thread.i.mtk_thermal_bank_temperature.exit_crit_edge

if.end.thread.i.mtk_thermal_bank_temperature.exit_crit_edge: ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_bank_temperature.exit

if.end.thread.i.for.body.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

mtk_thermal_bank_temperature.exit:                ; preds = %if.end.thread.i.mtk_thermal_bank_temperature.exit_crit_edge, %mtk_thermal_get_bank.exit.mtk_thermal_bank_temperature.exit_crit_edge
  %max.0.lcssa.i = phi i32 [ -2147483648, %mtk_thermal_get_bank.exit.mtk_thermal_bank_temperature.exit_crit_edge ], [ %73, %if.end.thread.i.mtk_thermal_bank_temperature.exit_crit_edge ]
  %78 = tail call i32 @llvm.smax.i32(i32 %tempmax.023, i32 %max.0.lcssa.i)
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx, align 4
  %conf.i14 = getelementptr inbounds %struct.mtk_thermal, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %conf.i14 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %conf.i14, align 4
  %need_switch_bank.i15 = getelementptr inbounds %struct.mtk_thermal_data, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %need_switch_bank.i15 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %need_switch_bank.i15, align 4, !range !161
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i16 = icmp eq i8 %84, 0
  br i1 %tobool.not.i16, label %mtk_thermal_bank_temperature.exit.mtk_thermal_put_bank.exit_crit_edge, label %if.then.i18

mtk_thermal_bank_temperature.exit.mtk_thermal_put_bank.exit_crit_edge: ; preds = %mtk_thermal_bank_temperature.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mtk_thermal_put_bank.exit

if.then.i18:                                      ; preds = %mtk_thermal_bank_temperature.exit
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i17 = getelementptr inbounds %struct.mtk_thermal, ptr %80, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %lock.i17) #7
  br label %mtk_thermal_put_bank.exit

mtk_thermal_put_bank.exit:                        ; preds = %if.then.i18, %mtk_thermal_bank_temperature.exit.mtk_thermal_put_bank.exit_crit_edge
  %inc = add nuw nsw i32 %i.022, 1
  %85 = ptrtoint ptr %conf to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %conf, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  %cmp = icmp slt i32 %inc, %88
  br i1 %cmp, label %mtk_thermal_put_bank.exit.for.body_crit_edge, label %mtk_thermal_put_bank.exit.for.end_crit_edge

mtk_thermal_put_bank.exit.for.end_crit_edge:      ; preds = %mtk_thermal_put_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

mtk_thermal_put_bank.exit.for.body_crit_edge:     ; preds = %mtk_thermal_put_bank.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %mtk_thermal_put_bank.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %tempmax.0.lcssa = phi i32 [ -2147483648, %entry.for.end_crit_edge ], [ %78, %mtk_thermal_put_bank.exit.for.end_crit_edge ]
  %89 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %tempmax.0.lcssa, ptr %temperature, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !34, !35, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_mtk_thermal__189_1125_mtk_thermal_driver_init6, !1, !"__initcall__kmod_mtk_thermal__189_1125_mtk_thermal_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/thermal/mtk_thermal.c", i32 1125, i32 1}
!2 = !{ptr @__exitcall_mtk_thermal_driver_exit, !1, !"__exitcall_mtk_thermal_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author190, !4, !"__UNIQUE_ID_author190", i1 false, i1 false}
!4 = !{!"../drivers/thermal/mtk_thermal.c", i32 1127, i32 1}
!5 = !{ptr @__UNIQUE_ID_author191, !6, !"__UNIQUE_ID_author191", i1 false, i1 false}
!6 = !{!"../drivers/thermal/mtk_thermal.c", i32 1128, i32 1}
!7 = !{ptr @__UNIQUE_ID_author192, !8, !"__UNIQUE_ID_author192", i1 false, i1 false}
!8 = !{!"../drivers/thermal/mtk_thermal.c", i32 1129, i32 1}
!9 = !{ptr @__UNIQUE_ID_author193, !10, !"__UNIQUE_ID_author193", i1 false, i1 false}
!10 = !{!"../drivers/thermal/mtk_thermal.c", i32 1130, i32 1}
!11 = !{ptr @__UNIQUE_ID_author194, !12, !"__UNIQUE_ID_author194", i1 false, i1 false}
!12 = !{!"../drivers/thermal/mtk_thermal.c", i32 1131, i32 1}
!13 = !{ptr @__UNIQUE_ID_description195, !14, !"__UNIQUE_ID_description195", i1 false, i1 false}
!14 = !{!"../drivers/thermal/mtk_thermal.c", i32 1132, i32 1}
!15 = !{ptr @__UNIQUE_ID_file196, !16, !"__UNIQUE_ID_file196", i1 false, i1 false}
!16 = !{!"../drivers/thermal/mtk_thermal.c", i32 1133, i32 1}
!17 = !{ptr @__UNIQUE_ID_license197, !16, !"__UNIQUE_ID_license197", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/thermal/mtk_thermal.c", i32 1120, i32 11}
!20 = !{ptr @mtk_thermal_driver, !21, !"mtk_thermal_driver", i1 false, i1 false}
!21 = !{!"../drivers/thermal/mtk_thermal.c", i32 1116, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/thermal/mtk_thermal.c", i32 1004, i32 48}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/thermal/mtk_thermal.c", i32 1008, i32 44}
!26 = !{ptr @mtk_thermal_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/thermal/mtk_thermal.c", i32 1021, i32 2}
!28 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thermal/mtk_thermal.c", i32 1025, i32 32}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/thermal/mtk_thermal.c", i32 1027, i32 3}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @mtk_thermal_probe._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @mtk_thermal_probe._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/thermal/mtk_thermal.c", i32 1037, i32 3}
!41 = !{ptr @mtk_thermal_probe._entry.10, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_thermal_probe._entry_ptr.12, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/thermal/mtk_thermal.c", i32 1041, i32 36}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thermal/mtk_thermal.c", i32 1043, i32 3}
!47 = !{ptr @mtk_thermal_probe._entry.14, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mtk_thermal_probe._entry_ptr.16, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mtk_thermal_probe._entry.17, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/thermal/mtk_thermal.c", i32 1053, i32 3}
!51 = !{ptr @mtk_thermal_probe._entry_ptr.18, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thermal/mtk_thermal.c", i32 1063, i32 3}
!54 = !{ptr @mtk_thermal_probe._entry.19, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_thermal_probe._entry_ptr.21, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/thermal/mtk_thermal.c", i32 1069, i32 3}
!58 = !{ptr @mtk_thermal_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_thermal_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/thermal/mtk_thermal.c", i32 1094, i32 3}
!62 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mtk_thermal_probe._entry.25, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtk_thermal_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thermal/mtk_thermal.c", i32 905, i32 29}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thermal/mtk_thermal.c", i32 920, i32 3}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mtk_thermal_get_calibration_data._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_thermal_get_calibration_data._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/thermal/mtk_thermal.c", i32 931, i32 3}
!74 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mtk_thermal_get_calibration_data._entry.32, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mtk_thermal_get_calibration_data._entry_ptr.35, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @mtk_thermal_ops, !78, !"mtk_thermal_ops", i1 false, i1 false}
!78 = !{!"../drivers/thermal/mtk_thermal.c", i32 703, i32 48}
!79 = !{ptr @mtk_thermal_of_match, !80, !"mtk_thermal_of_match", i1 false, i1 false}
!80 = !{!"../drivers/thermal/mtk_thermal.c", i32 941, i32 34}
!81 = !{ptr @mt8173_thermal_data, !82, !"mt8173_thermal_data", i1 false, i1 false}
!82 = !{!"../drivers/thermal/mtk_thermal.c", i32 402, i32 38}
!83 = !{ptr @mt8173_vts_index, !84, !"mt8173_vts_index", i1 false, i1 false}
!84 = !{!"../drivers/thermal/mtk_thermal.c", i32 337, i32 18}
!85 = !{ptr @mt8173_mux_values, !86, !"mt8173_mux_values", i1 false, i1 false}
!86 = !{!"../drivers/thermal/mtk_thermal.c", i32 334, i32 18}
!87 = !{ptr @mt8173_msr, !88, !"mt8173_msr", i1 false, i1 false}
!88 = !{!"../drivers/thermal/mtk_thermal.c", i32 326, i32 18}
!89 = !{ptr @mt8173_adcpnp, !90, !"mt8173_adcpnp", i1 false, i1 false}
!90 = !{!"../drivers/thermal/mtk_thermal.c", i32 330, i32 18}
!91 = !{ptr @mt8173_tc_offset, !92, !"mt8173_tc_offset", i1 false, i1 false}
!92 = !{!"../drivers/thermal/mtk_thermal.c", i32 335, i32 18}
!93 = !{ptr @mt8173_bank_data, !94, !"mt8173_bank_data", i1 false, i1 false}
!94 = !{!"../drivers/thermal/mtk_thermal.c", i32 319, i32 18}
!95 = !{ptr @mt2701_thermal_data, !96, !"mt2701_thermal_data", i1 false, i1 false}
!96 = !{!"../drivers/thermal/mtk_thermal.c", i32 442, i32 38}
!97 = !{ptr @mt2701_vts_index, !98, !"mt2701_vts_index", i1 false, i1 false}
!98 = !{!"../drivers/thermal/mtk_thermal.c", i32 357, i32 18}
!99 = !{ptr @mt2701_mux_values, !100, !"mt2701_mux_values", i1 false, i1 false}
!100 = !{!"../drivers/thermal/mtk_thermal.c", i32 354, i32 18}
!101 = !{ptr @mt2701_msr, !102, !"mt2701_msr", i1 false, i1 false}
!102 = !{!"../drivers/thermal/mtk_thermal.c", i32 346, i32 18}
!103 = !{ptr @mt2701_adcpnp, !104, !"mt2701_adcpnp", i1 false, i1 false}
!104 = !{!"../drivers/thermal/mtk_thermal.c", i32 350, i32 18}
!105 = !{ptr @mt2701_tc_offset, !106, !"mt2701_tc_offset", i1 false, i1 false}
!106 = !{!"../drivers/thermal/mtk_thermal.c", i32 355, i32 18}
!107 = !{ptr @mt2701_bank_data, !108, !"mt2701_bank_data", i1 false, i1 false}
!108 = !{!"../drivers/thermal/mtk_thermal.c", i32 342, i32 18}
!109 = !{ptr @mt2712_thermal_data, !110, !"mt2712_thermal_data", i1 false, i1 false}
!110 = !{!"../drivers/thermal/mtk_thermal.c", i32 473, i32 38}
!111 = !{ptr @mt2712_vts_index, !112, !"mt2712_vts_index", i1 false, i1 false}
!112 = !{!"../drivers/thermal/mtk_thermal.c", i32 377, i32 18}
!113 = !{ptr @mt2712_mux_values, !114, !"mt2712_mux_values", i1 false, i1 false}
!114 = !{!"../drivers/thermal/mtk_thermal.c", i32 374, i32 18}
!115 = !{ptr @mt2712_msr, !116, !"mt2712_msr", i1 false, i1 false}
!116 = !{!"../drivers/thermal/mtk_thermal.c", i32 366, i32 18}
!117 = !{ptr @mt2712_adcpnp, !118, !"mt2712_adcpnp", i1 false, i1 false}
!118 = !{!"../drivers/thermal/mtk_thermal.c", i32 370, i32 18}
!119 = !{ptr @mt2712_tc_offset, !120, !"mt2712_tc_offset", i1 false, i1 false}
!120 = !{!"../drivers/thermal/mtk_thermal.c", i32 375, i32 18}
!121 = !{ptr @mt2712_bank_data, !122, !"mt2712_bank_data", i1 false, i1 false}
!122 = !{!"../drivers/thermal/mtk_thermal.c", i32 362, i32 18}
!123 = !{ptr @mt7622_thermal_data, !124, !"mt7622_thermal_data", i1 false, i1 false}
!124 = !{!"../drivers/thermal/mtk_thermal.c", i32 498, i32 38}
!125 = !{ptr @mt7622_vts_index, !126, !"mt7622_vts_index", i1 false, i1 false}
!126 = !{!"../drivers/thermal/mtk_thermal.c", i32 386, i32 18}
!127 = !{ptr @mt7622_mux_values, !128, !"mt7622_mux_values", i1 false, i1 false}
!128 = !{!"../drivers/thermal/mtk_thermal.c", i32 385, i32 18}
!129 = !{ptr @mt7622_msr, !130, !"mt7622_msr", i1 false, i1 false}
!130 = !{!"../drivers/thermal/mtk_thermal.c", i32 383, i32 18}
!131 = !{ptr @mt7622_adcpnp, !132, !"mt7622_adcpnp", i1 false, i1 false}
!132 = !{!"../drivers/thermal/mtk_thermal.c", i32 384, i32 18}
!133 = !{ptr @mt7622_tc_offset, !134, !"mt7622_tc_offset", i1 false, i1 false}
!134 = !{!"../drivers/thermal/mtk_thermal.c", i32 387, i32 18}
!135 = !{ptr @mt7622_bank_data, !136, !"mt7622_bank_data", i1 false, i1 false}
!136 = !{!"../drivers/thermal/mtk_thermal.c", i32 382, i32 18}
!137 = !{ptr @mt8183_thermal_data, !138, !"mt8183_thermal_data", i1 false, i1 false}
!138 = !{!"../drivers/thermal/mtk_thermal.c", i32 530, i32 38}
!139 = !{ptr @mt8183_vts_index, !140, !"mt8183_vts_index", i1 false, i1 false}
!140 = !{!"../drivers/thermal/mtk_thermal.c", i32 314, i32 18}
!141 = !{ptr @mt8183_mux_values, !142, !"mt8183_mux_values", i1 false, i1 false}
!142 = !{!"../drivers/thermal/mtk_thermal.c", i32 311, i32 18}
!143 = !{ptr @mt8183_msr, !144, !"mt8183_msr", i1 false, i1 false}
!144 = !{!"../drivers/thermal/mtk_thermal.c", i32 302, i32 18}
!145 = !{ptr @mt8183_adcpnp, !146, !"mt8183_adcpnp", i1 false, i1 false}
!146 = !{!"../drivers/thermal/mtk_thermal.c", i32 306, i32 18}
!147 = !{ptr @mt8183_tc_offset, !148, !"mt8183_tc_offset", i1 false, i1 false}
!148 = !{!"../drivers/thermal/mtk_thermal.c", i32 312, i32 18}
!149 = !{ptr @mt8183_bank_data, !150, !"mt8183_bank_data", i1 false, i1 false}
!150 = !{!"../drivers/thermal/mtk_thermal.c", i32 298, i32 18}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{!"auto-init"}
!161 = !{i8 0, i8 2}
!162 = !{i64 4266384}
!163 = !{i64 2153264780}
!164 = !{i64 2153265007}
!165 = !{i64 4265966}
!166 = !{i64 2153267795}
!167 = !{i64 2153268323}
!168 = !{i64 2153268862}
!169 = !{i64 2153269281}
!170 = !{i64 2153269695}
!171 = !{i64 2153270123}
!172 = !{i64 2153270530}
!173 = !{i64 2153271074}
!174 = !{i64 2153271637}
!175 = !{i64 2153272135}
!176 = !{i64 2153272745}
!177 = !{i64 2153273308}
!178 = !{i64 2153273875}
!179 = !{i64 2153274538}
!180 = !{i64 2153275104}
!181 = !{i64 2153275635}
!182 = !{i64 2153276141}
!183 = !{i64 2153276654}
!184 = !{i64 2153277191}
!185 = !{i64 2153277808}
!186 = !{i64 2153278553}
!187 = !{i64 2153283592}
!188 = !{i64 2153283815}
!189 = !{i64 2153284765}
!190 = !{i64 2153285175}
!191 = !{i64 2153285877}
!192 = !{i64 2153286117}
!193 = !{i64 2153265797}
