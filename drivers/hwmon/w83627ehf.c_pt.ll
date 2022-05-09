; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83627ehf.c_pt.bc'
source_filename = "../drivers/hwmon/w83627ehf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.41 }
%union.anon.41 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.w83627ehf_sio_data = type { i32, i32 }
%struct.w83627ehf_data = type { i32, ptr, %struct.mutex, [4 x i16], [4 x i16], [4 x i16], [4 x i16], [4 x i8], ptr, ptr, ptr, ptr, %struct.mutex, i8, i32, i8, i8, [10 x i8], [10 x i8], [10 x i8], [5 x i32], [5 x i16], [5 x i8], i8, i8, [3 x i8], [3 x i8], [9 x i16], [9 x i16], [9 x i16], i32, i8, [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], [4 x i8], i8, i8, i16, i16, i8, i8, i8, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__param_str_force_id = internal constant [19 x i8] c"w83627ehf.force_id\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@force_id = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__param_force_id = internal constant %struct.kernel_param { ptr @__param_str_force_id, ptr null, ptr @param_ops_ushort, i16 0, i8 -1, i8 0, %union.anon.41 { ptr @force_id } }, section "__param", align 4
@__UNIQUE_ID_force_idtype187 = internal constant [35 x i8] c"w83627ehf.parmtype=force_id:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_force_id188 = internal constant [56 x i8] c"w83627ehf.parm=force_id:Override the detected device ID\00", section ".modinfo", align 1
@pdev = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@w83627ehf_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @w83627ehf_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author232 = internal constant [49 x i8] c"w83627ehf.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [39 x i8] c"w83627ehf.description=W83627EHF driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [39 x i8] c"w83627ehf.file=drivers/hwmon/w83627ehf\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [22 x i8] c"w83627ehf.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_w83627ehf__236_2159_sensors_w83627ehf_init6 = internal global ptr @sensors_w83627ehf_init, section ".initcall6.init", align 4
@__exitcall_sensors_w83627ehf_exit = internal global ptr @sensors_w83627ehf_exit, section ".exitcall.exit", align 4
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83627ehf\00", [22 x i8] zeroinitializer }, align 32
@w83627ehf_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @w83627ehf_suspend, ptr @w83627ehf_resume, ptr @w83627ehf_suspend, ptr @w83627ehf_resume, ptr @w83627ehf_suspend, ptr @w83627ehf_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@W83627EHF_REG_FAN = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 40, i16 41, i16 42, i16 63, i16 1363], [22 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_MIN = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 59, i16 60, i16 61, i16 62, i16 1372], [22 x i8] zeroinitializer }, align 32
@w83627ehf_update_device.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"w83627ehf_update_device\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hwmon/w83627ehf.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Increasing fan%d clock divider from %u to %u\0A\00", [50 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_START_OUTPUT = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 10, i16 11, i16 22, i16 101], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_STOP_OUTPUT = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 8, i16 9, i16 21, i16 100], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_STOP_TIME = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 12, i16 13, i16 23, i16 102], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TARGET = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 5, i16 6, i16 19, i16 99], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TEMP_OFFSET = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 1108, i16 1109, i16 1110], [26 x i8] zeroinitializer }, align 32
@W83627EHF_REG_PWM_ENABLE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\04\04\12b", [28 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TOLERANCE = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\07\07\14b", [28 x i8] zeroinitializer }, align 32
@W83627EHF_PWM_MODE_SHIFT = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00\01\00\06", [28 x i8] zeroinitializer }, align 32
@W83627EHF_PWM_ENABLE_SHIFT = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\04\01\04", [28 x i8] zeroinitializer }, align 32
@W83627EHF_REG_PWM = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 1, i16 3, i16 17, i16 97], [24 x i8] zeroinitializer }, align 32
@__const.sensors_w83627ehf_init.res = private unnamed_addr constant %struct.resource { i32 0, i32 0, ptr @.str, i32 256, i32 0, ptr null, ptr null, ptr null }, align 4
@w83627ehf_find.sio_name_W83627EHF = internal constant [10 x i8] c"W83627EHF\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83627EHG = internal constant [10 x i8] c"W83627EHG\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83627DHG = internal constant [10 x i8] c"W83627DHG\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83627DHG_P = internal constant [12 x i8] c"W83627DHG-P\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83627UHG = internal constant [10 x i8] c"W83627UHG\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83667HG = internal constant [9 x i8] c"W83667HG\00", section ".init.rodata", align 1
@w83627ehf_find.sio_name_W83667HG_B = internal constant [11 x i8] c"W83667HG-B\00", section ".init.rodata", align 1
@w83627ehf_find.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 2, i8 7, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w83627ehf_find\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unsupported chip ID: 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"w83627ehf: unsupported chip ID: 0x%04x\0A\00", [56 x i8] zeroinitializer }, align 32
@w83627ehf_find._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.2, i32 2089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\013w83627ehf: Refusing to enable a Super-I/O device with a base I/O port 0\0A\00", [53 x i8] zeroinitializer }, align 32
@w83627ehf_find._entry_ptr = internal global ptr @w83627ehf_find._entry, section ".printk_index", align 4
@w83627ehf_find._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 2097, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014w83627ehf: Forcibly enabling Super-I/O. Sensor is probably unusable.\0A\00", [56 x i8] zeroinitializer }, align 32
@w83627ehf_find._entry_ptr.10 = internal global ptr @w83627ehf_find._entry.8, section ".printk_index", align 4
@w83627ehf_find._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 2102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016w83627ehf: Found %s chip at %#x\0A\00", [61 x i8] zeroinitializer }, align 32
@w83627ehf_find._entry_ptr.13 = internal global ptr @w83627ehf_find._entry.11, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@w83627ehf_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@w83627ehf_probe.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83627ehf_device_names = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str, ptr @.str.28, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TEMP_CONFIG = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 0, i16 338, i16 594, i16 0], [24 x i8] zeroinitializer }, align 32
@w83667hg_b_temp_label = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 103, i16 105, i16 107], [26 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 104, i16 106, i16 108], [26 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_MAX_OUTPUT_COMMON = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 255, i16 103, i16 255, i16 105], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_FAN_STEP_OUTPUT_COMMON = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 255, i16 104, i16 255, i16 106], [24 x i8] zeroinitializer }, align 32
@scale_in_w83627uhg = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 800, i16 800, i16 3328, i16 3424, i16 800, i16 800, i16 0, i16 3328, i16 3400], [46 x i8] zeroinitializer }, align 32
@scale_in_common = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 800, i16 800, i16 1600, i16 1600, i16 800, i16 800, i16 800, i16 1600, i16 1600, i16 800], [44 x i8] zeroinitializer }, align 32
@w83627ehf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1902, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Setting VID input voltage to TTL\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"w83627ehf_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w83627ehf_probe._entry_ptr = internal global ptr @w83627ehf_probe._entry, section ".printk_index", align 4
@w83627ehf_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.18, ptr @.str.2, i32 1909, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Setting VID input voltage to VRM10\0A\00", [60 x i8] zeroinitializer }, align 32
@w83627ehf_probe._entry_ptr.23 = internal global ptr @w83627ehf_probe._entry.21, section ".printk_index", align 4
@w83627ehf_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.2, i32 1923, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"VID pins in output mode, CPU VID not available\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@w83627ehf_probe._entry_ptr.27 = internal global ptr @w83627ehf_probe._entry.24, section ".printk_index", align 4
@w83627ehf_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @w83627ehf_ops, ptr @w83627ehf_info }, [24 x i8] zeroinitializer }, align 32
@w83627ehf_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w83627ehf_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83627dhg\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83627uhg\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"w83667hg\00", [23 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TEMP = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 39, i16 336, i16 592, i16 126], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TEMP_OVER = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 57, i16 341, i16 597, i16 0], [24 x i8] zeroinitializer }, align 32
@W83627EHF_REG_TEMP_HYST = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 58, i16 339, i16 595, i16 0], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SYSTIN\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CPUTIN\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUXTIN\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AMDTSI\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PECI Agent 1\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PECI Agent 2\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PECI Agent 3\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PECI Agent 4\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PECI\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AMD\00", [28 x i8] zeroinitializer }, align 32
@w83627ehf_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @w83627ehf_is_visible, ptr @w83627ehf_read, ptr @w83627ehf_read_string, ptr @w83627ehf_write }, [16 x i8] zeroinitializer }, align 32
@w83627ehf_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.50, ptr @.compoundliteral.52, ptr @.compoundliteral.54, ptr @.compoundliteral.56, ptr @.compoundliteral.58, ptr null], [40 x i8] zeroinitializer }, align 32
@__const.w83627ehf_do_read_fan.bit = private unnamed_addr constant [5 x i32] [i32 6, i32 7, i32 11, i32 10, i32 23], align 4
@__const.w83627ehf_do_read_in.bit = private unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 8, i32 21, i32 20, i32 16, i32 17, i32 19], align 4
@__const.w83627ehf_do_read_temp.bit = private unnamed_addr constant [3 x i32] [i32 4, i32 5, i32 13], align 4
@store_fan_min._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 732, ptr @.str.26, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fan%u low limit and alarm disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"store_fan_min\00", [18 x i8] zeroinitializer }, align 32
@store_fan_min._entry_ptr = internal global ptr @store_fan_min._entry, section ".printk_index", align 4
@store_fan_min._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 742, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fan%u low limit %lu below minimum %u, set to minimum\0A\00", [42 x i8] zeroinitializer }, align 32
@store_fan_min._entry_ptr.45 = internal global ptr @store_fan_min._entry.43, section ".printk_index", align 4
@store_fan_min._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 752, ptr @.str.19, ptr @.str.20 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"fan%u low limit %lu above maximum %u, set to maximum\0A\00", [42 x i8] zeroinitializer }, align 32
@store_fan_min._entry_ptr.48 = internal global ptr @store_fan_min._entry.46, section ".printk_index", align 4
@store_fan_min.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.49, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"fan%u clock divider changed from %u to %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 298, i32 298, i32 298, i32 298, i32 298, i32 0], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 0], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.51 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 7, i32 7, i32 7, i32 7, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 8, ptr @.compoundliteral.53 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 3154310, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.55 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 9, ptr @.compoundliteral.57 }, [24 x i8] zeroinitializer }, align 32
@w83627ehf_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @w83627ehf_attrs_visible, ptr null, ptr @w83627ehf_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83627ehf_attrs = internal global { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @sensor_dev_attr_pwm1_stop_time, ptr @sensor_dev_attr_pwm1_start_output, ptr @sensor_dev_attr_pwm1_stop_output, ptr @sensor_dev_attr_pwm1_max_output, ptr @sensor_dev_attr_pwm1_step_output, ptr @sensor_dev_attr_pwm1_target, ptr @sensor_dev_attr_pwm1_tolerance, ptr @sensor_dev_attr_pwm2_stop_time, ptr @sensor_dev_attr_pwm2_start_output, ptr @sensor_dev_attr_pwm2_stop_output, ptr @sensor_dev_attr_pwm2_max_output, ptr @sensor_dev_attr_pwm2_step_output, ptr @sensor_dev_attr_pwm2_target, ptr @sensor_dev_attr_pwm2_tolerance, ptr @sensor_dev_attr_pwm3_stop_time, ptr @sensor_dev_attr_pwm3_start_output, ptr @sensor_dev_attr_pwm3_stop_output, ptr @sensor_dev_attr_pwm3_max_output, ptr @sensor_dev_attr_pwm3_step_output, ptr @sensor_dev_attr_pwm3_target, ptr @sensor_dev_attr_pwm3_tolerance, ptr @sensor_dev_attr_pwm4_stop_time, ptr @sensor_dev_attr_pwm4_start_output, ptr @sensor_dev_attr_pwm4_stop_output, ptr @sensor_dev_attr_pwm4_max_output, ptr @sensor_dev_attr_pwm4_step_output, ptr @sensor_dev_attr_pwm4_target, ptr @sensor_dev_attr_pwm4_tolerance, ptr @dev_attr_cpu0_vid, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_stop_time = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_time, ptr @store_fan_stop_time }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_start_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_start_output, ptr @store_fan_start_output }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_stop_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_output, ptr @store_fan_stop_output }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_max_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max_output, ptr @store_fan_max_output }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_step_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_step_output, ptr @store_fan_step_output }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_target_temp, ptr @store_target_temp }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_tolerance = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_stop_time = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_time, ptr @store_fan_stop_time }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_start_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_start_output, ptr @store_fan_start_output }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_stop_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_output, ptr @store_fan_stop_output }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_max_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max_output, ptr @store_fan_max_output }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_step_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_step_output, ptr @store_fan_step_output }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_target_temp, ptr @store_target_temp }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_tolerance = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_stop_time = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_time, ptr @store_fan_stop_time }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_start_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_start_output, ptr @store_fan_start_output }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_stop_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_output, ptr @store_fan_stop_output }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_max_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max_output, ptr @store_fan_max_output }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_step_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_step_output, ptr @store_fan_step_output }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_target_temp, ptr @store_target_temp }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_tolerance = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_stop_time = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_time, ptr @store_fan_stop_time }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_start_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_start_output, ptr @store_fan_start_output }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_stop_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_stop_output, ptr @store_fan_stop_output }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_max_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max_output, ptr @store_fan_max_output }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_step_output = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_step_output, ptr @store_fan_step_output }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_target_temp, ptr @store_target_temp }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_tolerance = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm1_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm1_start_output\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm1_stop_output\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm1_max_output\00", [16 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm1_step_output\00", [47 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm1_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm2_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm2_start_output\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm2_stop_output\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm2_max_output\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm2_step_output\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_target\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm2_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm3_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm3_start_output\00", [46 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm3_stop_output\00", [47 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm3_max_output\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm3_step_output\00", [47 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_target\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm3_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm4_stop_time\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm4_start_output\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm4_stop_output\00", [47 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pwm4_max_output\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwm4_step_output\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm4_target\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm4_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 16, i64 0, i64 1, i64 255]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.108 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.112 = internal global [9 x i64] [i64 7, i64 16, i64 34896, i64 34912, i64 40992, i64 41520, i64 42256, i64 45168, i64 45904]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 3, i64 0, i64 1]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 21]
@__sancov_gen_cov_switch_values.120 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 13, i64 20]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.123 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.124 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 255]
@__sancov_gen_cov_switch_values.127 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.129 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 7, i64 8, i64 13, i64 20]
@__sancov_gen_cov_switch_values.130 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 16, i64 256, i64 512]
@__sancov_gen_cov_switch_values.134 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 83, i64 85]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 16, i64 115, i64 117]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"force_id\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 64, i32 23 }
@___asan_gen_.140 = private unnamed_addr constant [5 x i8] c"pdev\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2113, i32 32 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"w83627ehf_driver\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2015, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2017, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"w83627ehf_dev_pm_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2013, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"W83627EHF_REG_FAN\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 157, i32 18 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"W83627EHF_REG_FAN_MIN\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 158, i32 18 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 608, i32 5 }
@___asan_gen_.167 = private unnamed_addr constant [31 x i8] c"W83627EHF_REG_FAN_START_OUTPUT\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 208, i32 18 }
@___asan_gen_.170 = private unnamed_addr constant [30 x i8] c"W83627EHF_REG_FAN_STOP_OUTPUT\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 209, i32 18 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"W83627EHF_REG_FAN_STOP_TIME\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 210, i32 18 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"W83627EHF_REG_TARGET\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 204, i32 18 }
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"W83627EHF_REG_TEMP_OFFSET\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 221, i32 18 }
@___asan_gen_.182 = private unnamed_addr constant [25 x i8] c"W83627EHF_REG_PWM_ENABLE\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 192, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"W83627EHF_REG_TOLERANCE\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 205, i32 17 }
@___asan_gen_.188 = private unnamed_addr constant [25 x i8] c"W83627EHF_PWM_MODE_SHIFT\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 199, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant [27 x i8] c"W83627EHF_PWM_ENABLE_SHIFT\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 200, i32 17 }
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"W83627EHF_REG_PWM\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 203, i32 18 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2078, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2089, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2097, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 2102, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1714, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1715, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant [23 x i8] c"w83627ehf_device_names\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 55, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant [26 x i8] c"W83627EHF_REG_TEMP_CONFIG\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 171, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant [22 x i8] c"w83667hg_b_temp_label\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 223, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant [38 x i8] c"W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 217, i32 18 }
@___asan_gen_.248 = private unnamed_addr constant [39 x i8] c"W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 218, i32 18 }
@___asan_gen_.251 = private unnamed_addr constant [36 x i8] c"W83627EHF_REG_FAN_MAX_OUTPUT_COMMON\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 212, i32 18 }
@___asan_gen_.254 = private unnamed_addr constant [37 x i8] c"W83627EHF_REG_FAN_STEP_OUTPUT_COMMON\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 214, i32 18 }
@___asan_gen_.257 = private unnamed_addr constant [19 x i8] c"scale_in_w83627uhg\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 287, i32 18 }
@___asan_gen_.260 = private unnamed_addr constant [16 x i8] c"scale_in_common\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 284, i32 18 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1901, i32 6 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1908, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1922, i32 4 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"w83627ehf_chip_info\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1690, i32 37 }
@___asan_gen_.296 = private unnamed_addr constant [17 x i8] c"w83627ehf_groups\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1207, i32 38 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 57, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 59, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 60, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [19 x i8] c"W83627EHF_REG_TEMP\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 168, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant [24 x i8] c"W83627EHF_REG_TEMP_OVER\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 170, i32 18 }
@___asan_gen_.314 = private unnamed_addr constant [24 x i8] c"W83627EHF_REG_TEMP_HYST\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 169, i32 18 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 224, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 225, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 226, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 227, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 228, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 229, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 230, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 231, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1266, i32 31 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1268, i32 36 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"w83627ehf_ops\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1636, i32 31 }
@___asan_gen_.350 = private unnamed_addr constant [15 x i8] c"w83627ehf_info\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1643, i32 41 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 731, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 740, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 750, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 772, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [16 x i8] c"w83627ehf_group\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1202, i32 37 }
@___asan_gen_.390 = private unnamed_addr constant [16 x i8] c"w83627ehf_attrs\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1164, i32 26 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1082, i32 22 }
@___asan_gen_.396 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm1_stop_time\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm1_start_output\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm1_stop_output\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm1_max_output\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm1_step_output\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_target\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm1_tolerance\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm2_stop_time\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm2_start_output\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm2_stop_output\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm2_max_output\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm2_step_output\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_target\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm2_tolerance\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm3_stop_time\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm3_start_output\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm3_stop_output\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm3_max_output\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm3_step_output\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_target\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm3_tolerance\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm4_stop_time\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_pwm4_start_output\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm4_stop_output\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_pwm4_max_output\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_pwm4_step_output\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm4_target\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_pwm4_tolerance\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1047, i32 8 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1051, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1055, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1065, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1067, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 937, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 946, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1049, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1053, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1057, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1069, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1071, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 939, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 948, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1040, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1042, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1044, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1073, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1075, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 941, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 950, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1029, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1031, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1033, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1035, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1037, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 943, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 952, i32 8 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.568 = private constant [29 x i8] c"../drivers/hwmon/w83627ehf.c\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.568, i32 1084, i32 8 }
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_force_id188, ptr @__UNIQUE_ID_force_idtype187, ptr @__UNIQUE_ID_license235, ptr @__exitcall_sensors_w83627ehf_exit, ptr @__initcall__kmod_w83627ehf__236_2159_sensors_w83627ehf_init6, ptr @__param_force_id, ptr @sensors_w83627ehf_exit, ptr @store_fan_min._entry, ptr @store_fan_min._entry.43, ptr @store_fan_min._entry.46, ptr @store_fan_min._entry_ptr, ptr @store_fan_min._entry_ptr.45, ptr @store_fan_min._entry_ptr.48, ptr @w83627ehf_find._entry, ptr @w83627ehf_find._entry.11, ptr @w83627ehf_find._entry.8, ptr @w83627ehf_find._entry_ptr, ptr @w83627ehf_find._entry_ptr.10, ptr @w83627ehf_find._entry_ptr.13, ptr @w83627ehf_probe._entry, ptr @w83627ehf_probe._entry.21, ptr @w83627ehf_probe._entry.24, ptr @w83627ehf_probe._entry_ptr, ptr @w83627ehf_probe._entry_ptr.23, ptr @w83627ehf_probe._entry_ptr.27, ptr @force_id, ptr @pdev, ptr @w83627ehf_driver, ptr @.str, ptr @w83627ehf_dev_pm_ops, ptr @W83627EHF_REG_FAN, ptr @W83627EHF_REG_FAN_MIN, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @W83627EHF_REG_FAN_START_OUTPUT, ptr @W83627EHF_REG_FAN_STOP_OUTPUT, ptr @W83627EHF_REG_FAN_STOP_TIME, ptr @W83627EHF_REG_TARGET, ptr @W83627EHF_REG_TEMP_OFFSET, ptr @W83627EHF_REG_PWM_ENABLE, ptr @W83627EHF_REG_TOLERANCE, ptr @W83627EHF_PWM_MODE_SHIFT, ptr @W83627EHF_PWM_ENABLE_SHIFT, ptr @W83627EHF_REG_PWM, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @w83627ehf_probe.__key, ptr @.str.14, ptr @w83627ehf_probe.__key.15, ptr @.str.16, ptr @w83627ehf_device_names, ptr @W83627EHF_REG_TEMP_CONFIG, ptr @w83667hg_b_temp_label, ptr @W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B, ptr @W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B, ptr @W83627EHF_REG_FAN_MAX_OUTPUT_COMMON, ptr @W83627EHF_REG_FAN_STEP_OUTPUT_COMMON, ptr @scale_in_w83627uhg, ptr @scale_in_common, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @w83627ehf_chip_info, ptr @w83627ehf_groups, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @W83627EHF_REG_TEMP, ptr @W83627EHF_REG_TEMP_OVER, ptr @W83627EHF_REG_TEMP_HYST, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @w83627ehf_ops, ptr @w83627ehf_info, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.compoundliteral, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @w83627ehf_group, ptr @w83627ehf_attrs, ptr @.str.59, ptr @sensor_dev_attr_pwm1_stop_time, ptr @sensor_dev_attr_pwm1_start_output, ptr @sensor_dev_attr_pwm1_stop_output, ptr @sensor_dev_attr_pwm1_max_output, ptr @sensor_dev_attr_pwm1_step_output, ptr @sensor_dev_attr_pwm1_target, ptr @sensor_dev_attr_pwm1_tolerance, ptr @sensor_dev_attr_pwm2_stop_time, ptr @sensor_dev_attr_pwm2_start_output, ptr @sensor_dev_attr_pwm2_stop_output, ptr @sensor_dev_attr_pwm2_max_output, ptr @sensor_dev_attr_pwm2_step_output, ptr @sensor_dev_attr_pwm2_target, ptr @sensor_dev_attr_pwm2_tolerance, ptr @sensor_dev_attr_pwm3_stop_time, ptr @sensor_dev_attr_pwm3_start_output, ptr @sensor_dev_attr_pwm3_stop_output, ptr @sensor_dev_attr_pwm3_max_output, ptr @sensor_dev_attr_pwm3_step_output, ptr @sensor_dev_attr_pwm3_target, ptr @sensor_dev_attr_pwm3_tolerance, ptr @sensor_dev_attr_pwm4_stop_time, ptr @sensor_dev_attr_pwm4_start_output, ptr @sensor_dev_attr_pwm4_stop_output, ptr @sensor_dev_attr_pwm4_max_output, ptr @sensor_dev_attr_pwm4_step_output, ptr @sensor_dev_attr_pwm4_target, ptr @sensor_dev_attr_pwm4_tolerance, ptr @dev_attr_cpu0_vid, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_id to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pdev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_MIN to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_START_OUTPUT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_STOP_OUTPUT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_STOP_TIME to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TARGET to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TEMP_OFFSET to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_PWM_ENABLE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TOLERANCE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_PWM_MODE_SHIFT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_PWM_ENABLE_SHIFT to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_PWM to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_find._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_find._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_find._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_probe.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_device_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TEMP_CONFIG to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83667hg_b_temp_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_MAX_OUTPUT_COMMON to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_FAN_STEP_OUTPUT_COMMON to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_in_w83627uhg to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scale_in_common to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TEMP to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TEMP_OVER to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83627EHF_REG_TEMP_HYST to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_fan_min._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_fan_min._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_fan_min._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83627ehf_attrs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_stop_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_start_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_stop_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_max_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_step_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_tolerance to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_stop_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_start_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_stop_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_max_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_step_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_tolerance to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_stop_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_start_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_stop_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_max_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_step_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_tolerance to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_stop_time to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_start_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_stop_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_max_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_step_output to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_tolerance to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sensors_w83627ehf_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = load ptr, ptr @pdev, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @w83627ehf_driver) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sensors_w83627ehf_init() #0 section ".init.text" align 64 {
entry:
  %address = alloca i16, align 2
  %res = alloca %struct.resource, align 4
  %sio_data = alloca %struct.w83627ehf_sio_data, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %address) #13
  %0 = ptrtoint ptr %address to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %address, align 2, !annotation !285
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #13
  %1 = call ptr @memcpy(ptr %res, ptr @__const.sensors_w83627ehf_init.res, i32 32)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sio_data) #13
  %2 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %sio_data, align 4, !annotation !285
  %3 = getelementptr inbounds %struct.w83627ehf_sio_data, ptr %sio_data, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !285
  %call = call fastcc i32 @w83627ehf_find(i32 noundef 46, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call1 = call fastcc i32 @w83627ehf_find(i32 noundef 78, ptr noundef nonnull %address, ptr noundef nonnull %sio_data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %address to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %address, align 2
  %conv = zext i16 %6 to i32
  %add = add nuw nsw i32 %conv, 5
  %7 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %res, align 4
  %sub = add nuw nsw i32 %conv, 6
  %end = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %8 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %end, align 4
  %call10 = call ptr @__platform_create_bundle(ptr noundef nonnull @w83627ehf_driver, ptr noundef nonnull @w83627ehf_probe, ptr noundef nonnull %res, i32 noundef 1, ptr noundef nonnull %sio_data, i32 noundef 8, ptr noundef null) #13
  store ptr %call10, ptr @pdev, align 4
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call10 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -19, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sio_data) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #13
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %address) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627ehf_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %dev)
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %call1 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call, i16 noundef zeroext 93)
  %conv = trunc i16 %call1 to i8
  %vbat = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 49
  %0 = ptrtoint ptr %vbat to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %vbat, align 1
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627ehf_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %bank = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %bank, align 4
  %in_num = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %in_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp160.not = icmp eq i8 %4, 0
  br i1 %cmp160.not, label %entry.for.cond27.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond27.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond27.preheader

for.body.lr.ph:                                   ; preds = %entry
  %in6_skip = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 48
  br label %for.body

for.cond27.preheader:                             ; preds = %for.inc.for.cond27.preheader_crit_edge, %entry.for.cond27.preheader_crit_edge
  %has_fan_min = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_fan_min, align 4
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool32.not = icmp eq i8 %7, 0
  br i1 %tobool32.not, label %for.cond27.preheader.for.inc38_crit_edge, label %if.end34

for.cond27.preheader.for.inc38_crit_edge:         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0161)
  %cmp2 = icmp eq i32 %i.0161, 6
  br i1 %cmp2, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = ptrtoint ptr %in6_skip to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %in6_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0161)
  %cmp5 = icmp ult i32 %i.0161, 7
  %mul = shl nuw i32 %i.0161, 1
  %cond.v = select i1 %cmp5, i32 44, i32 1351
  %cond = add i32 %cond.v, %mul
  %conv9 = trunc i32 %cond to i16
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 19, i32 %i.0161
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %10 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %conv9, i16 noundef zeroext %conv10)
  %cond22.v = select i1 %cmp5, i32 43, i32 1350
  %cond22 = add i32 %cond22.v, %mul
  %conv23 = trunc i32 %cond22 to i16
  %arrayidx24 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 18, i32 %i.0161
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %12 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %conv23, i16 noundef zeroext %conv25)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0161, 1
  %13 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_num, align 1
  %conv = zext i8 %14 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond27.preheader_crit_edge

for.inc.for.cond27.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond27.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end34:                                         ; preds = %for.cond27.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 0
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx36, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 59, i16 noundef zeroext %16)
  br label %for.inc38

for.inc38:                                        ; preds = %if.end34, %for.cond27.preheader.for.inc38_crit_edge
  %17 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %has_fan_min, align 4
  %19 = and i8 %18, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool32.not.1 = icmp eq i8 %19, 0
  br i1 %tobool32.not.1, label %for.inc38.for.inc38.1_crit_edge, label %if.end34.1

for.inc38.for.inc38.1_crit_edge:                  ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.1

if.end34.1:                                       ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36.1 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 1
  %20 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx36.1, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 60, i16 noundef zeroext %21)
  br label %for.inc38.1

for.inc38.1:                                      ; preds = %if.end34.1, %for.inc38.for.inc38.1_crit_edge
  %22 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_fan_min, align 4
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool32.not.2 = icmp eq i8 %24, 0
  br i1 %tobool32.not.2, label %for.inc38.1.for.inc38.2_crit_edge, label %if.end34.2

for.inc38.1.for.inc38.2_crit_edge:                ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.2

if.end34.2:                                       ; preds = %for.inc38.1
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36.2 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 2
  %25 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx36.2, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 61, i16 noundef zeroext %26)
  br label %for.inc38.2

for.inc38.2:                                      ; preds = %if.end34.2, %for.inc38.1.for.inc38.2_crit_edge
  %27 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %has_fan_min, align 4
  %29 = and i8 %28, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool32.not.3 = icmp eq i8 %29, 0
  br i1 %tobool32.not.3, label %for.inc38.2.for.inc38.3_crit_edge, label %if.end34.3

for.inc38.2.for.inc38.3_crit_edge:                ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.3

if.end34.3:                                       ; preds = %for.inc38.2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36.3 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 3
  %30 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx36.3, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 62, i16 noundef zeroext %31)
  br label %for.inc38.3

for.inc38.3:                                      ; preds = %if.end34.3, %for.inc38.2.for.inc38.3_crit_edge
  %32 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_fan_min, align 4
  %34 = and i8 %33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool32.not.4 = icmp eq i8 %34, 0
  br i1 %tobool32.not.4, label %for.inc38.3.for.inc38.4_crit_edge, label %if.end34.4

for.inc38.3.for.inc38.4_crit_edge:                ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc38.4

if.end34.4:                                       ; preds = %for.inc38.3
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36.4 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 4
  %35 = ptrtoint ptr %arrayidx36.4 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx36.4, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 1372, i16 noundef zeroext %36)
  br label %for.inc38.4

for.inc38.4:                                      ; preds = %if.end34.4, %for.inc38.3.for.inc38.4_crit_edge
  %have_temp = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 46
  %have_temp_offset = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 47
  br label %for.body44

for.body44:                                       ; preds = %for.inc81.for.body44_crit_edge, %for.inc38.4
  %i.2165 = phi i32 [ 0, %for.inc38.4 ], [ %inc82, %for.inc81.for.body44_crit_edge ]
  %37 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %have_temp, align 4
  %conv45 = zext i16 %38 to i32
  %shl46 = shl nuw nsw i32 1, %i.2165
  %and47 = and i32 %shl46, %conv45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47)
  %tobool48.not = icmp eq i32 %and47, 0
  br i1 %tobool48.not, label %for.body44.for.inc81_crit_edge, label %if.end50

for.body44.for.inc81_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc81

if.end50:                                         ; preds = %for.body44
  %arrayidx51 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 4, i32 %i.2165
  %39 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx51, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool52.not = icmp eq i16 %40, 0
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %if.then53

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end58

if.then53:                                        ; preds = %if.end50
  %arrayidx56 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 28, i32 %i.2165
  %41 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx56, align 2
  %conv.i.i = zext i16 %40 to i32
  %and.i.i = and i16 %40, -256
  %43 = zext i16 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i16 %and.i.i, label %if.then53.lor.lhs.false20.i.i_crit_edge [
    i16 256, label %if.then53.land.lhs.true.i.i_crit_edge
    i16 512, label %if.then53.land.lhs.true.i.i_crit_edge169
  ]

if.then53.land.lhs.true.i.i_crit_edge169:         ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.then53.land.lhs.true.i.i_crit_edge:            ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.then53.lor.lhs.false20.i.i_crit_edge:          ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i

land.lhs.true.i.i:                                ; preds = %if.then53.land.lhs.true.i.i_crit_edge, %if.then53.land.lhs.true.i.i_crit_edge169
  %trunc.i.i = trunc i16 %40 to i8
  %44 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %trunc.i.i, label %land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge [
    i8 80, label %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge
    i8 83, label %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge170
    i8 85, label %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge171
  ]

land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge171: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge170: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i

lor.lhs.false20.i.i:                              ; preds = %land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge, %if.then53.lor.lhs.false20.i.i_crit_edge
  %and22.i.i = and i32 %conv.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i)
  %cmp23.i.i = icmp eq i32 %and22.i.i, 1584
  %45 = and i16 %40, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %45)
  %46 = icmp eq i16 %45, 1600
  %47 = or i1 %46, %cmp23.i.i
  br i1 %47, label %lor.lhs.false20.i.i.w83627ehf_write_temp.exit_crit_edge, label %lor.lhs.false33.i.i

lor.lhs.false20.i.i.w83627ehf_write_temp.exit_crit_edge: ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

lor.lhs.false33.i.i:                              ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i)
  %cmp36.i.i = icmp eq i32 %and22.i.i, 1616
  %and40.i.i = and i32 %conv.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i)
  %cmp41.i.i = icmp ugt i32 %and40.i.i, 5
  %or.cond67.i.i = and i1 %cmp36.i.i, %cmp41.i.i
  br i1 %or.cond67.i.i, label %lor.lhs.false33.i.i.w83627ehf_write_temp.exit_crit_edge, label %switch.early.test.i.i

lor.lhs.false33.i.i.w83627ehf_write_temp.exit_crit_edge: ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

switch.early.test.i.i:                            ; preds = %lor.lhs.false33.i.i
  %48 = zext i16 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %40, label %is_word_sized.exit.i [
    i16 117, label %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge
    i16 115, label %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge172
  ]

switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge172: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit

is_word_sized.exit.i:                             ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %40)
  %cmp52.i.not.i = icmp eq i16 %40, 119
  %49 = lshr i16 %42, 8
  %spec.select.i = select i1 %cmp52.i.not.i, i16 %42, i16 %49
  br label %w83627ehf_write_temp.exit

w83627ehf_write_temp.exit:                        ; preds = %is_word_sized.exit.i, %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge, %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge172, %lor.lhs.false33.i.i.w83627ehf_write_temp.exit_crit_edge, %lor.lhs.false20.i.i.w83627ehf_write_temp.exit_crit_edge, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge170, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge171
  %50 = phi i16 [ %42, %lor.lhs.false20.i.i.w83627ehf_write_temp.exit_crit_edge ], [ %42, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge ], [ %42, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge170 ], [ %42, %land.lhs.true.i.i.w83627ehf_write_temp.exit_crit_edge171 ], [ %42, %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge ], [ %42, %switch.early.test.i.i.w83627ehf_write_temp.exit_crit_edge172 ], [ %42, %lor.lhs.false33.i.i.w83627ehf_write_temp.exit_crit_edge ], [ %spec.select.i, %is_word_sized.exit.i ]
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %40, i16 noundef zeroext %50) #13
  br label %if.end58

if.end58:                                         ; preds = %w83627ehf_write_temp.exit, %if.end50.if.end58_crit_edge
  %arrayidx59 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 5, i32 %i.2165
  %51 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool60.not = icmp eq i16 %52, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  %arrayidx64 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 29, i32 %i.2165
  %53 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx64, align 2
  %conv.i.i142 = zext i16 %52 to i32
  %and.i.i143 = and i16 %52, -256
  %55 = zext i16 %and.i.i143 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.91)
  switch i16 %and.i.i143, label %if.then61.lor.lhs.false20.i.i148_crit_edge [
    i16 256, label %if.then61.land.lhs.true.i.i145_crit_edge
    i16 512, label %if.then61.land.lhs.true.i.i145_crit_edge173
  ]

if.then61.land.lhs.true.i.i145_crit_edge173:      ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i145

if.then61.land.lhs.true.i.i145_crit_edge:         ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i145

if.then61.lor.lhs.false20.i.i148_crit_edge:       ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i148

land.lhs.true.i.i145:                             ; preds = %if.then61.land.lhs.true.i.i145_crit_edge, %if.then61.land.lhs.true.i.i145_crit_edge173
  %trunc.i.i144 = trunc i16 %52 to i8
  %56 = zext i8 %trunc.i.i144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %trunc.i.i144, label %land.lhs.true.i.i145.lor.lhs.false20.i.i148_crit_edge [
    i8 80, label %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge
    i8 83, label %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge174
    i8 85, label %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge175
  ]

land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge175: ; preds = %land.lhs.true.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge174: ; preds = %land.lhs.true.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge: ; preds = %land.lhs.true.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

land.lhs.true.i.i145.lor.lhs.false20.i.i148_crit_edge: ; preds = %land.lhs.true.i.i145
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i148

lor.lhs.false20.i.i148:                           ; preds = %land.lhs.true.i.i145.lor.lhs.false20.i.i148_crit_edge, %if.then61.lor.lhs.false20.i.i148_crit_edge
  %and22.i.i146 = and i32 %conv.i.i142, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i146)
  %cmp23.i.i147 = icmp eq i32 %and22.i.i146, 1584
  %57 = and i16 %52, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %57)
  %58 = icmp eq i16 %57, 1600
  %59 = or i1 %58, %cmp23.i.i147
  br i1 %59, label %lor.lhs.false20.i.i148.w83627ehf_write_temp.exit158_crit_edge, label %lor.lhs.false33.i.i153

lor.lhs.false20.i.i148.w83627ehf_write_temp.exit158_crit_edge: ; preds = %lor.lhs.false20.i.i148
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

lor.lhs.false33.i.i153:                           ; preds = %lor.lhs.false20.i.i148
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i146)
  %cmp36.i.i149 = icmp eq i32 %and22.i.i146, 1616
  %and40.i.i150 = and i32 %conv.i.i142, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i150)
  %cmp41.i.i151 = icmp ugt i32 %and40.i.i150, 5
  %or.cond67.i.i152 = and i1 %cmp36.i.i149, %cmp41.i.i151
  br i1 %or.cond67.i.i152, label %lor.lhs.false33.i.i153.w83627ehf_write_temp.exit158_crit_edge, label %switch.early.test.i.i154

lor.lhs.false33.i.i153.w83627ehf_write_temp.exit158_crit_edge: ; preds = %lor.lhs.false33.i.i153
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

switch.early.test.i.i154:                         ; preds = %lor.lhs.false33.i.i153
  %60 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %52, label %is_word_sized.exit.i157 [
    i16 117, label %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge
    i16 115, label %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge176
  ]

switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge176: ; preds = %switch.early.test.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge: ; preds = %switch.early.test.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_write_temp.exit158

is_word_sized.exit.i157:                          ; preds = %switch.early.test.i.i154
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %52)
  %cmp52.i.not.i155 = icmp eq i16 %52, 119
  %61 = lshr i16 %54, 8
  %spec.select.i156 = select i1 %cmp52.i.not.i155, i16 %54, i16 %61
  br label %w83627ehf_write_temp.exit158

w83627ehf_write_temp.exit158:                     ; preds = %is_word_sized.exit.i157, %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge, %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge176, %lor.lhs.false33.i.i153.w83627ehf_write_temp.exit158_crit_edge, %lor.lhs.false20.i.i148.w83627ehf_write_temp.exit158_crit_edge, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge174, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge175
  %62 = phi i16 [ %54, %lor.lhs.false20.i.i148.w83627ehf_write_temp.exit158_crit_edge ], [ %54, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge ], [ %54, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge174 ], [ %54, %land.lhs.true.i.i145.w83627ehf_write_temp.exit158_crit_edge175 ], [ %54, %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge ], [ %54, %switch.early.test.i.i154.w83627ehf_write_temp.exit158_crit_edge176 ], [ %54, %lor.lhs.false33.i.i153.w83627ehf_write_temp.exit158_crit_edge ], [ %spec.select.i156, %is_word_sized.exit.i157 ]
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %52, i16 noundef zeroext %62) #13
  br label %if.end66

if.end66:                                         ; preds = %w83627ehf_write_temp.exit158, %if.end58.if.end66_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.2165)
  %cmp67 = icmp ugt i32 %i.2165, 2
  br i1 %cmp67, label %if.end66.for.inc81_crit_edge, label %if.end70

if.end66.for.inc81_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc81

if.end70:                                         ; preds = %if.end66
  %63 = ptrtoint ptr %have_temp_offset to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %have_temp_offset, align 2
  %conv71 = zext i16 %64 to i32
  %and73 = and i32 %shl46, %conv71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end70.for.inc81_crit_edge, label %if.then75

if.end70.for.inc81_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc81

if.then75:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx76 = getelementptr [3 x i16], ptr @W83627EHF_REG_TEMP_OFFSET, i32 0, i32 %i.2165
  %65 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %arrayidx76, align 2
  %arrayidx77 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 26, i32 %i.2165
  %67 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx77, align 1
  %conv78 = sext i8 %68 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %66, i16 noundef zeroext %conv78)
  br label %for.inc81

for.inc81:                                        ; preds = %if.then75, %if.end70.for.inc81_crit_edge, %if.end66.for.inc81_crit_edge, %for.body44.for.inc81_crit_edge
  %inc82 = add nuw nsw i32 %i.2165, 1
  %exitcond.not = icmp eq i32 %inc82, 4
  br i1 %exitcond.not, label %for.end83, label %for.inc81.for.body44_crit_edge

for.inc81.for.body44_crit_edge:                   ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body44

for.end83:                                        ; preds = %for.inc81
  call void @__sanitizer_cov_trace_pc() #15
  %vbat = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 49
  %69 = ptrtoint ptr %vbat to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %vbat, align 1
  %conv84 = zext i8 %70 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext 93, i16 noundef zeroext %conv84)
  %valid = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 13
  %71 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83627ehf_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %last_updated = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add1 = add i32 %3, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add1, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !286
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end253_crit_edge

lor.lhs.false.if.end253_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end253

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call fastcc void @w83627ehf_update_fan_div(ptr noundef %1)
  %in_num = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 16
  %7 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp2450.not = icmp eq i8 %8, 0
  br i1 %cmp2450.not, label %if.then.for.cond46.preheader_crit_edge, label %for.body.lr.ph

if.then.for.cond46.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond46.preheader

for.body.lr.ph:                                   ; preds = %if.then
  %in6_skip = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 48
  br label %for.body

for.cond46.preheader:                             ; preds = %for.inc.for.cond46.preheader_crit_edge, %if.then.for.cond46.preheader_crit_edge
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 23
  %has_fan_min = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 24
  br label %for.body49

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0451 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0451)
  %cmp4 = icmp eq i32 %i.0451, 6
  br i1 %cmp4, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = ptrtoint ptr %in6_skip to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load = load i8, ptr %in6_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0451)
  %cmp9 = icmp ult i32 %i.0451, 7
  %cond.v = select i1 %cmp9, i32 32, i32 1353
  %cond = add nuw nsw i32 %cond.v, %i.0451
  %conv14 = trunc i32 %cond to i16
  %call15 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %conv14)
  %conv16 = trunc i16 %call15 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 17, i32 %i.0451
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv16, ptr %arrayidx, align 1
  %mul = shl nuw i32 %i.0451, 1
  %cond26.v = select i1 %cmp9, i32 44, i32 1351
  %cond26 = add i32 %cond26.v, %mul
  %conv27 = trunc i32 %cond26 to i16
  %call28 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %conv27)
  %conv29 = trunc i16 %call28 to i8
  %arrayidx30 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 19, i32 %i.0451
  %11 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv29, ptr %arrayidx30, align 1
  %cond41.v = select i1 %cmp9, i32 43, i32 1350
  %cond41 = add i32 %cond41.v, %mul
  %conv42 = trunc i32 %cond41 to i16
  %call43 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %conv42)
  %conv44 = trunc i16 %call43 to i8
  %arrayidx45 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 18, i32 %i.0451
  %12 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv44, ptr %arrayidx45, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %land.lhs.true.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0451, 1
  %13 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %in_num, align 1
  %conv = zext i8 %14 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.inc.for.cond46.preheader_crit_edge

for.inc.for.cond46.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond46.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body49:                                       ; preds = %cleanup.for.body49_crit_edge, %for.cond46.preheader
  %i.1453 = phi i32 [ 0, %for.cond46.preheader ], [ %inc126, %cleanup.for.body49_crit_edge ]
  %15 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %has_fan, align 1
  %conv50 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 1, %i.1453
  %and = and i32 %shl, %conv50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %for.body49.cleanup_crit_edge, label %if.end53

for.body49.cleanup_crit_edge:                     ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end53:                                         ; preds = %for.body49
  %arrayidx54 = getelementptr [5 x i16], ptr @W83627EHF_REG_FAN, i32 0, i32 %i.1453
  %17 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx54, align 2
  %call55 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %18)
  %arrayidx56 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 22, i32 %i.1453
  %19 = zext i16 %call55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %call55, label %if.end.i [
    i16 0, label %if.end53.fan_from_reg8.exit_crit_edge
    i16 255, label %if.end53.fan_from_reg8.exit_crit_edge467
  ]

if.end53.fan_from_reg8.exit_crit_edge467:         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %fan_from_reg8.exit

if.end53.fan_from_reg8.exit_crit_edge:            ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  br label %fan_from_reg8.exit

if.end.i:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #15
  %20 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %21 to i32
  %conv.i = zext i16 %call55 to i32
  %shl.i = shl i32 %conv.i, %conv57
  %div.i = udiv i32 1350000, %shl.i
  br label %fan_from_reg8.exit

fan_from_reg8.exit:                               ; preds = %if.end.i, %if.end53.fan_from_reg8.exit_crit_edge, %if.end53.fan_from_reg8.exit_crit_edge467
  %retval.0.i404 = phi i32 [ %div.i, %if.end.i ], [ 0, %if.end53.fan_from_reg8.exit_crit_edge ], [ 0, %if.end53.fan_from_reg8.exit_crit_edge467 ]
  %arrayidx59 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 20, i32 %i.1453
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i404, ptr %arrayidx59, align 4
  %23 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_fan_min, align 4
  %conv60 = zext i8 %24 to i32
  %and62 = and i32 %shl, %conv60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %fan_from_reg8.exit.if.end68_crit_edge, label %if.then64

fan_from_reg8.exit.if.end68_crit_edge:            ; preds = %fan_from_reg8.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then64:                                        ; preds = %fan_from_reg8.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx65 = getelementptr [5 x i16], ptr @W83627EHF_REG_FAN_MIN, i32 0, i32 %i.1453
  %25 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx65, align 2
  %call66 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %26)
  %arrayidx67 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 %i.1453
  %27 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %call66, ptr %arrayidx67, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then64, %fan_from_reg8.exit.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %call55)
  %cmp70 = icmp ugt i16 %call55, 254
  br i1 %cmp70, label %land.lhs.true72, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true72:                                  ; preds = %if.end68
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx56, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp76 = icmp ult i8 %29, 7
  br i1 %cmp76, label %do.body, label %land.lhs.true72.cleanup_crit_edge

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %land.lhs.true72
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83627ehf_update_device.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83627ehf_update_device, %do.end)) #13
          to label %if.then84 [label %do.end], !srcloc !287

if.then84:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %add85 = add nuw nsw i32 %i.1453, 1
  %30 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx56, align 1
  %conv.i405 = zext i8 %31 to i32
  %shl.i406 = shl nuw i32 1, %conv.i405
  %add92 = add i8 %31, 1
  %conv.i407 = zext i8 %add92 to i32
  %shl.i408 = shl nuw i32 1, %conv.i407
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83627ehf_update_device.__UNIQUE_ID_ddebug197, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %add85, i32 noundef %shl.i406, i32 noundef %shl.i408) #13
  br label %do.end

do.end:                                           ; preds = %if.then84, %do.body
  %32 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx56, align 1
  %inc98 = add i8 %33, 1
  store i8 %inc98, ptr %arrayidx56, align 1
  tail call fastcc void @w83627ehf_write_fan_div(ptr noundef %1, i32 noundef %i.1453)
  %34 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %has_fan_min, align 4
  %conv100 = zext i8 %35 to i32
  %and102 = and i32 %shl, %conv100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %do.end.cleanup_crit_edge, label %land.lhs.true104

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true104:                                 ; preds = %do.end
  %arrayidx106 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 21, i32 %i.1453
  %36 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx106, align 2
  %38 = zext i16 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %37, label %if.then116 [
    i16 255, label %land.lhs.true104.cleanup_crit_edge
    i16 1, label %land.lhs.true104.cleanup_crit_edge468
    i16 0, label %land.lhs.true104.cleanup_crit_edge469
  ]

land.lhs.true104.cleanup_crit_edge469:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true104.cleanup_crit_edge468:            ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true104.cleanup_crit_edge:               ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then116:                                       ; preds = %land.lhs.true104
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx117 = getelementptr [5 x i16], ptr @W83627EHF_REG_FAN_MIN, i32 0, i32 %i.1453
  %39 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx117, align 2
  %41 = lshr i16 %37, 1
  %42 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %arrayidx106, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %40, i16 noundef zeroext %41)
  br label %cleanup

cleanup:                                          ; preds = %if.then116, %land.lhs.true104.cleanup_crit_edge, %land.lhs.true104.cleanup_crit_edge468, %land.lhs.true104.cleanup_crit_edge469, %do.end.cleanup_crit_edge, %land.lhs.true72.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %for.body49.cleanup_crit_edge
  %inc126 = add nuw nsw i32 %i.1453, 1
  %exitcond.not = icmp eq i32 %inc126, 5
  br i1 %exitcond.not, label %for.end127, label %cleanup.for.body49_crit_edge

cleanup.for.body49_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

for.end127:                                       ; preds = %cleanup
  tail call fastcc void @w83627ehf_update_pwm(ptr noundef %1)
  %pwm_num = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 35
  %43 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pwm_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %cmp130457.not = icmp eq i8 %44, 0
  br i1 %cmp130457.not, label %for.end127.for.cond194.preheader_crit_edge, label %for.body132.lr.ph

for.end127.for.cond194.preheader_crit_edge:       ; preds = %for.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond194.preheader

for.body132.lr.ph:                                ; preds = %for.end127
  %REG_FAN_MAX_OUTPUT = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 9
  %REG_FAN_STEP_OUTPUT = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 10
  br label %for.body132

for.cond194.preheader:                            ; preds = %for.inc191.for.cond194.preheader_crit_edge, %for.end127.for.cond194.preheader_crit_edge
  %have_temp = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 46
  %have_temp_offset = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 47
  br label %for.body197

for.body132:                                      ; preds = %for.inc191.for.body132_crit_edge, %for.body132.lr.ph
  %i.2458 = phi i32 [ 0, %for.body132.lr.ph ], [ %inc192, %for.inc191.for.body132_crit_edge ]
  %45 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %has_fan, align 1
  %conv134 = zext i8 %46 to i32
  %shl135 = shl nuw i32 1, %i.2458
  %and136 = and i32 %shl135, %conv134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136)
  %tobool137.not = icmp eq i32 %and136, 0
  br i1 %tobool137.not, label %for.body132.for.inc191_crit_edge, label %if.end139

for.body132.for.inc191_crit_edge:                 ; preds = %for.body132
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc191

if.end139:                                        ; preds = %for.body132
  %arrayidx140 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_START_OUTPUT, i32 0, i32 %i.2458
  %47 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx140, align 2
  %call141 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %48)
  %conv142 = trunc i16 %call141 to i8
  %arrayidx143 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 39, i32 %i.2458
  %49 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv142, ptr %arrayidx143, align 1
  %arrayidx144 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_STOP_OUTPUT, i32 0, i32 %i.2458
  %50 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx144, align 2
  %call145 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %51)
  %conv146 = trunc i16 %call145 to i8
  %arrayidx147 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 40, i32 %i.2458
  %52 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv146, ptr %arrayidx147, align 1
  %arrayidx148 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_STOP_TIME, i32 0, i32 %i.2458
  %53 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx148, align 2
  %call149 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %54)
  %conv150 = trunc i16 %call149 to i8
  %arrayidx151 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 41, i32 %i.2458
  %55 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv150, ptr %arrayidx151, align 1
  %56 = ptrtoint ptr %REG_FAN_MAX_OUTPUT to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %REG_FAN_MAX_OUTPUT, align 4
  %tobool152.not = icmp eq ptr %57, null
  br i1 %tobool152.not, label %if.end139.if.end165_crit_edge, label %land.lhs.true153

if.end139.if.end165_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

land.lhs.true153:                                 ; preds = %if.end139
  %arrayidx155 = getelementptr i16, ptr %57, i32 %i.2458
  %58 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %arrayidx155, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %59)
  %cmp157.not = icmp eq i16 %59, 255
  br i1 %cmp157.not, label %land.lhs.true153.if.end165_crit_edge, label %if.then159

land.lhs.true153.if.end165_crit_edge:             ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end165

if.then159:                                       ; preds = %land.lhs.true153
  call void @__sanitizer_cov_trace_pc() #15
  %call162 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %59)
  %conv163 = trunc i16 %call162 to i8
  %arrayidx164 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 42, i32 %i.2458
  %60 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv163, ptr %arrayidx164, align 1
  br label %if.end165

if.end165:                                        ; preds = %if.then159, %land.lhs.true153.if.end165_crit_edge, %if.end139.if.end165_crit_edge
  %61 = ptrtoint ptr %REG_FAN_STEP_OUTPUT to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %REG_FAN_STEP_OUTPUT, align 4
  %tobool166.not = icmp eq ptr %62, null
  br i1 %tobool166.not, label %if.end165.if.end179_crit_edge, label %land.lhs.true167

if.end165.if.end179_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

land.lhs.true167:                                 ; preds = %if.end165
  %arrayidx169 = getelementptr i16, ptr %62, i32 %i.2458
  %63 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx169, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %64)
  %cmp171.not = icmp eq i16 %64, 255
  br i1 %cmp171.not, label %land.lhs.true167.if.end179_crit_edge, label %if.then173

land.lhs.true167.if.end179_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end179

if.then173:                                       ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #15
  %call176 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %64)
  %conv177 = trunc i16 %call176 to i8
  %arrayidx178 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 43, i32 %i.2458
  %65 = ptrtoint ptr %arrayidx178 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv177, ptr %arrayidx178, align 1
  br label %if.end179

if.end179:                                        ; preds = %if.then173, %land.lhs.true167.if.end179_crit_edge, %if.end165.if.end179_crit_edge
  %arrayidx180 = getelementptr [4 x i16], ptr @W83627EHF_REG_TARGET, i32 0, i32 %i.2458
  %66 = ptrtoint ptr %arrayidx180 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %arrayidx180, align 2
  %call181 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %67)
  %conv182 = trunc i16 %call181 to i8
  %arrayidx183 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 32, i32 %i.2458
  %68 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %arrayidx183, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %69)
  %cmp185 = icmp eq i8 %69, 1
  %cond187 = select i1 %cmp185, i8 127, i8 -1
  %and188 = and i8 %cond187, %conv182
  %arrayidx190 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 37, i32 %i.2458
  %70 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %and188, ptr %arrayidx190, align 1
  br label %for.inc191

for.inc191:                                       ; preds = %if.end179, %for.body132.for.inc191_crit_edge
  %inc192 = add nuw nsw i32 %i.2458, 1
  %71 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %pwm_num, align 1
  %conv129 = zext i8 %72 to i32
  %cmp130 = icmp ult i32 %inc192, %conv129
  br i1 %cmp130, label %for.inc191.for.body132_crit_edge, label %for.inc191.for.cond194.preheader_crit_edge

for.inc191.for.cond194.preheader_crit_edge:       ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond194.preheader

for.inc191.for.body132_crit_edge:                 ; preds = %for.inc191
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body132

for.body197:                                      ; preds = %for.inc237.for.body197_crit_edge, %for.cond194.preheader
  %i.3462 = phi i32 [ 0, %for.cond194.preheader ], [ %inc238, %for.inc237.for.body197_crit_edge ]
  %73 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %have_temp, align 4
  %conv198 = zext i16 %74 to i32
  %shl199 = shl nuw nsw i32 1, %i.3462
  %and200 = and i32 %shl199, %conv198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and200)
  %tobool201.not = icmp eq i32 %and200, 0
  br i1 %tobool201.not, label %for.body197.for.inc237_crit_edge, label %if.end203

for.body197.for.inc237_crit_edge:                 ; preds = %for.body197
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc237

if.end203:                                        ; preds = %for.body197
  %arrayidx204 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 3, i32 %i.3462
  %75 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx204, align 2
  %call.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %76) #13
  %conv.i.i = zext i16 %76 to i32
  %and.i.i = and i16 %76, -256
  %77 = zext i16 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %and.i.i, label %if.end203.lor.lhs.false20.i.i_crit_edge [
    i16 256, label %if.end203.land.lhs.true.i.i_crit_edge
    i16 512, label %if.end203.land.lhs.true.i.i_crit_edge470
  ]

if.end203.land.lhs.true.i.i_crit_edge470:         ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.end203.land.lhs.true.i.i_crit_edge:            ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i

if.end203.lor.lhs.false20.i.i_crit_edge:          ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i

land.lhs.true.i.i:                                ; preds = %if.end203.land.lhs.true.i.i_crit_edge, %if.end203.land.lhs.true.i.i_crit_edge470
  %trunc.i.i = trunc i16 %76 to i8
  %78 = zext i8 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %trunc.i.i, label %land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge [
    i8 80, label %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge
    i8 83, label %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge471
    i8 85, label %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge472
  ]

land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge472: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge471: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge:  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i

lor.lhs.false20.i.i:                              ; preds = %land.lhs.true.i.i.lor.lhs.false20.i.i_crit_edge, %if.end203.lor.lhs.false20.i.i_crit_edge
  %and22.i.i = and i32 %conv.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i)
  %cmp23.i.i = icmp eq i32 %and22.i.i, 1584
  %79 = and i16 %76, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %79)
  %80 = icmp eq i16 %79, 1600
  %81 = or i1 %80, %cmp23.i.i
  br i1 %81, label %lor.lhs.false20.i.i.w83627ehf_read_temp.exit_crit_edge, label %lor.lhs.false33.i.i

lor.lhs.false20.i.i.w83627ehf_read_temp.exit_crit_edge: ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

lor.lhs.false33.i.i:                              ; preds = %lor.lhs.false20.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i)
  %cmp36.i.i = icmp eq i32 %and22.i.i, 1616
  %and40.i.i = and i32 %conv.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i)
  %cmp41.i.i = icmp ugt i32 %and40.i.i, 5
  %or.cond67.i.i = and i1 %cmp36.i.i, %cmp41.i.i
  br i1 %or.cond67.i.i, label %lor.lhs.false33.i.i.w83627ehf_read_temp.exit_crit_edge, label %switch.early.test.i.i

lor.lhs.false33.i.i.w83627ehf_read_temp.exit_crit_edge: ; preds = %lor.lhs.false33.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

switch.early.test.i.i:                            ; preds = %lor.lhs.false33.i.i
  %82 = zext i16 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %82, ptr @__sancov_gen_cov_switch_values.98)
  switch i16 %76, label %is_word_sized.exit.i [
    i16 117, label %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge
    i16 115, label %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge473
  ]

switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge473: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge: ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit

is_word_sized.exit.i:                             ; preds = %switch.early.test.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %76)
  %cmp52.i.not.i = icmp eq i16 %76, 119
  %shl.i409 = shl i16 %call.i, 8
  %spec.select.i = select i1 %cmp52.i.not.i, i16 %call.i, i16 %shl.i409
  br label %w83627ehf_read_temp.exit

w83627ehf_read_temp.exit:                         ; preds = %is_word_sized.exit.i, %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge, %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge473, %lor.lhs.false33.i.i.w83627ehf_read_temp.exit_crit_edge, %lor.lhs.false20.i.i.w83627ehf_read_temp.exit_crit_edge, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge471, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge472
  %83 = phi i16 [ %call.i, %lor.lhs.false20.i.i.w83627ehf_read_temp.exit_crit_edge ], [ %call.i, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge ], [ %call.i, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge471 ], [ %call.i, %land.lhs.true.i.i.w83627ehf_read_temp.exit_crit_edge472 ], [ %call.i, %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge ], [ %call.i, %switch.early.test.i.i.w83627ehf_read_temp.exit_crit_edge473 ], [ %call.i, %lor.lhs.false33.i.i.w83627ehf_read_temp.exit_crit_edge ], [ %spec.select.i, %is_word_sized.exit.i ]
  %arrayidx206 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 27, i32 %i.3462
  %84 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %83, ptr %arrayidx206, align 2
  %arrayidx207 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 4, i32 %i.3462
  %85 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx207, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %86)
  %tobool208.not = icmp eq i16 %86, 0
  br i1 %tobool208.not, label %w83627ehf_read_temp.exit.if.end214_crit_edge, label %if.then209

w83627ehf_read_temp.exit.if.end214_crit_edge:     ; preds = %w83627ehf_read_temp.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end214

if.then209:                                       ; preds = %w83627ehf_read_temp.exit
  %call.i410 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %86) #13
  %conv.i.i411 = zext i16 %86 to i32
  %and.i.i412 = and i16 %86, -256
  %87 = zext i16 %and.i.i412 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.99)
  switch i16 %and.i.i412, label %if.then209.lor.lhs.false20.i.i417_crit_edge [
    i16 256, label %if.then209.land.lhs.true.i.i414_crit_edge
    i16 512, label %if.then209.land.lhs.true.i.i414_crit_edge474
  ]

if.then209.land.lhs.true.i.i414_crit_edge474:     ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i414

if.then209.land.lhs.true.i.i414_crit_edge:        ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i414

if.then209.lor.lhs.false20.i.i417_crit_edge:      ; preds = %if.then209
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i417

land.lhs.true.i.i414:                             ; preds = %if.then209.land.lhs.true.i.i414_crit_edge, %if.then209.land.lhs.true.i.i414_crit_edge474
  %trunc.i.i413 = trunc i16 %86 to i8
  %88 = zext i8 %trunc.i.i413 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %trunc.i.i413, label %land.lhs.true.i.i414.lor.lhs.false20.i.i417_crit_edge [
    i8 80, label %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge
    i8 83, label %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge475
    i8 85, label %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge476
  ]

land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge476: ; preds = %land.lhs.true.i.i414
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge475: ; preds = %land.lhs.true.i.i414
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge: ; preds = %land.lhs.true.i.i414
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

land.lhs.true.i.i414.lor.lhs.false20.i.i417_crit_edge: ; preds = %land.lhs.true.i.i414
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i417

lor.lhs.false20.i.i417:                           ; preds = %land.lhs.true.i.i414.lor.lhs.false20.i.i417_crit_edge, %if.then209.lor.lhs.false20.i.i417_crit_edge
  %and22.i.i415 = and i32 %conv.i.i411, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i415)
  %cmp23.i.i416 = icmp eq i32 %and22.i.i415, 1584
  %89 = and i16 %86, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %89)
  %90 = icmp eq i16 %89, 1600
  %91 = or i1 %90, %cmp23.i.i416
  br i1 %91, label %lor.lhs.false20.i.i417.w83627ehf_read_temp.exit428_crit_edge, label %lor.lhs.false33.i.i422

lor.lhs.false20.i.i417.w83627ehf_read_temp.exit428_crit_edge: ; preds = %lor.lhs.false20.i.i417
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

lor.lhs.false33.i.i422:                           ; preds = %lor.lhs.false20.i.i417
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i415)
  %cmp36.i.i418 = icmp eq i32 %and22.i.i415, 1616
  %and40.i.i419 = and i32 %conv.i.i411, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i419)
  %cmp41.i.i420 = icmp ugt i32 %and40.i.i419, 5
  %or.cond67.i.i421 = and i1 %cmp36.i.i418, %cmp41.i.i420
  br i1 %or.cond67.i.i421, label %lor.lhs.false33.i.i422.w83627ehf_read_temp.exit428_crit_edge, label %switch.early.test.i.i423

lor.lhs.false33.i.i422.w83627ehf_read_temp.exit428_crit_edge: ; preds = %lor.lhs.false33.i.i422
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

switch.early.test.i.i423:                         ; preds = %lor.lhs.false33.i.i422
  %92 = zext i16 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.101)
  switch i16 %86, label %is_word_sized.exit.i427 [
    i16 117, label %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge
    i16 115, label %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge477
  ]

switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge477: ; preds = %switch.early.test.i.i423
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge: ; preds = %switch.early.test.i.i423
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit428

is_word_sized.exit.i427:                          ; preds = %switch.early.test.i.i423
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %86)
  %cmp52.i.not.i424 = icmp eq i16 %86, 119
  %shl.i425 = shl i16 %call.i410, 8
  %spec.select.i426 = select i1 %cmp52.i.not.i424, i16 %call.i410, i16 %shl.i425
  br label %w83627ehf_read_temp.exit428

w83627ehf_read_temp.exit428:                      ; preds = %is_word_sized.exit.i427, %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge, %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge477, %lor.lhs.false33.i.i422.w83627ehf_read_temp.exit428_crit_edge, %lor.lhs.false20.i.i417.w83627ehf_read_temp.exit428_crit_edge, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge475, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge476
  %93 = phi i16 [ %call.i410, %lor.lhs.false20.i.i417.w83627ehf_read_temp.exit428_crit_edge ], [ %call.i410, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge ], [ %call.i410, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge475 ], [ %call.i410, %land.lhs.true.i.i414.w83627ehf_read_temp.exit428_crit_edge476 ], [ %call.i410, %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge ], [ %call.i410, %switch.early.test.i.i423.w83627ehf_read_temp.exit428_crit_edge477 ], [ %call.i410, %lor.lhs.false33.i.i422.w83627ehf_read_temp.exit428_crit_edge ], [ %spec.select.i426, %is_word_sized.exit.i427 ]
  %arrayidx213 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 28, i32 %i.3462
  %94 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 %93, ptr %arrayidx213, align 2
  br label %if.end214

if.end214:                                        ; preds = %w83627ehf_read_temp.exit428, %w83627ehf_read_temp.exit.if.end214_crit_edge
  %arrayidx215 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 5, i32 %i.3462
  %95 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %arrayidx215, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool216.not = icmp eq i16 %96, 0
  br i1 %tobool216.not, label %if.end214.if.end222_crit_edge, label %if.then217

if.end214.if.end222_crit_edge:                    ; preds = %if.end214
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end222

if.then217:                                       ; preds = %if.end214
  %call.i429 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %96) #13
  %conv.i.i430 = zext i16 %96 to i32
  %and.i.i431 = and i16 %96, -256
  %97 = zext i16 %and.i.i431 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.102)
  switch i16 %and.i.i431, label %if.then217.lor.lhs.false20.i.i436_crit_edge [
    i16 256, label %if.then217.land.lhs.true.i.i433_crit_edge
    i16 512, label %if.then217.land.lhs.true.i.i433_crit_edge478
  ]

if.then217.land.lhs.true.i.i433_crit_edge478:     ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i433

if.then217.land.lhs.true.i.i433_crit_edge:        ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i433

if.then217.lor.lhs.false20.i.i436_crit_edge:      ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i436

land.lhs.true.i.i433:                             ; preds = %if.then217.land.lhs.true.i.i433_crit_edge, %if.then217.land.lhs.true.i.i433_crit_edge478
  %trunc.i.i432 = trunc i16 %96 to i8
  %98 = zext i8 %trunc.i.i432 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %trunc.i.i432, label %land.lhs.true.i.i433.lor.lhs.false20.i.i436_crit_edge [
    i8 80, label %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge
    i8 83, label %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge479
    i8 85, label %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge480
  ]

land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge480: ; preds = %land.lhs.true.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge479: ; preds = %land.lhs.true.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge: ; preds = %land.lhs.true.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

land.lhs.true.i.i433.lor.lhs.false20.i.i436_crit_edge: ; preds = %land.lhs.true.i.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i436

lor.lhs.false20.i.i436:                           ; preds = %land.lhs.true.i.i433.lor.lhs.false20.i.i436_crit_edge, %if.then217.lor.lhs.false20.i.i436_crit_edge
  %and22.i.i434 = and i32 %conv.i.i430, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i434)
  %cmp23.i.i435 = icmp eq i32 %and22.i.i434, 1584
  %99 = and i16 %96, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %99)
  %100 = icmp eq i16 %99, 1600
  %101 = or i1 %100, %cmp23.i.i435
  br i1 %101, label %lor.lhs.false20.i.i436.w83627ehf_read_temp.exit447_crit_edge, label %lor.lhs.false33.i.i441

lor.lhs.false20.i.i436.w83627ehf_read_temp.exit447_crit_edge: ; preds = %lor.lhs.false20.i.i436
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

lor.lhs.false33.i.i441:                           ; preds = %lor.lhs.false20.i.i436
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i434)
  %cmp36.i.i437 = icmp eq i32 %and22.i.i434, 1616
  %and40.i.i438 = and i32 %conv.i.i430, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i438)
  %cmp41.i.i439 = icmp ugt i32 %and40.i.i438, 5
  %or.cond67.i.i440 = and i1 %cmp36.i.i437, %cmp41.i.i439
  br i1 %or.cond67.i.i440, label %lor.lhs.false33.i.i441.w83627ehf_read_temp.exit447_crit_edge, label %switch.early.test.i.i442

lor.lhs.false33.i.i441.w83627ehf_read_temp.exit447_crit_edge: ; preds = %lor.lhs.false33.i.i441
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

switch.early.test.i.i442:                         ; preds = %lor.lhs.false33.i.i441
  %102 = zext i16 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.104)
  switch i16 %96, label %is_word_sized.exit.i446 [
    i16 117, label %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge
    i16 115, label %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge481
  ]

switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge481: ; preds = %switch.early.test.i.i442
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge: ; preds = %switch.early.test.i.i442
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_read_temp.exit447

is_word_sized.exit.i446:                          ; preds = %switch.early.test.i.i442
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %96)
  %cmp52.i.not.i443 = icmp eq i16 %96, 119
  %shl.i444 = shl i16 %call.i429, 8
  %spec.select.i445 = select i1 %cmp52.i.not.i443, i16 %call.i429, i16 %shl.i444
  br label %w83627ehf_read_temp.exit447

w83627ehf_read_temp.exit447:                      ; preds = %is_word_sized.exit.i446, %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge, %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge481, %lor.lhs.false33.i.i441.w83627ehf_read_temp.exit447_crit_edge, %lor.lhs.false20.i.i436.w83627ehf_read_temp.exit447_crit_edge, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge479, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge480
  %103 = phi i16 [ %call.i429, %lor.lhs.false20.i.i436.w83627ehf_read_temp.exit447_crit_edge ], [ %call.i429, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge ], [ %call.i429, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge479 ], [ %call.i429, %land.lhs.true.i.i433.w83627ehf_read_temp.exit447_crit_edge480 ], [ %call.i429, %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge ], [ %call.i429, %switch.early.test.i.i442.w83627ehf_read_temp.exit447_crit_edge481 ], [ %call.i429, %lor.lhs.false33.i.i441.w83627ehf_read_temp.exit447_crit_edge ], [ %spec.select.i445, %is_word_sized.exit.i446 ]
  %arrayidx221 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 29, i32 %i.3462
  %104 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %103, ptr %arrayidx221, align 2
  br label %if.end222

if.end222:                                        ; preds = %w83627ehf_read_temp.exit447, %if.end214.if.end222_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %i.3462)
  %cmp223 = icmp ugt i32 %i.3462, 2
  br i1 %cmp223, label %if.end222.for.inc237_crit_edge, label %if.end226

if.end222.for.inc237_crit_edge:                   ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc237

if.end226:                                        ; preds = %if.end222
  %105 = ptrtoint ptr %have_temp_offset to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %have_temp_offset, align 2
  %conv227 = zext i16 %106 to i32
  %and229 = and i32 %shl199, %conv227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229)
  %tobool230.not = icmp eq i32 %and229, 0
  br i1 %tobool230.not, label %if.end226.for.inc237_crit_edge, label %if.then231

if.end226.for.inc237_crit_edge:                   ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc237

if.then231:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx232 = getelementptr [3 x i16], ptr @W83627EHF_REG_TEMP_OFFSET, i32 0, i32 %i.3462
  %107 = ptrtoint ptr %arrayidx232 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %arrayidx232, align 2
  %call233 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %108)
  %conv234 = trunc i16 %call233 to i8
  %arrayidx235 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 26, i32 %i.3462
  %109 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv234, ptr %arrayidx235, align 1
  br label %for.inc237

for.inc237:                                       ; preds = %if.then231, %if.end226.for.inc237_crit_edge, %if.end222.for.inc237_crit_edge, %for.body197.for.inc237_crit_edge
  %inc238 = add nuw nsw i32 %i.3462, 1
  %exitcond466.not = icmp eq i32 %inc238, 4
  br i1 %exitcond466.not, label %for.end239, label %for.inc237.for.body197_crit_edge

for.inc237.for.body197_crit_edge:                 ; preds = %for.inc237
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body197

for.end239:                                       ; preds = %for.inc237
  call void @__sanitizer_cov_trace_pc() #15
  %call240 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext 1113)
  %conv241 = zext i16 %call240 to i32
  %call242 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext 1114)
  %conv243 = zext i16 %call242 to i32
  %shl244 = shl nuw nsw i32 %conv243, 8
  %or = or i32 %shl244, %conv241
  %call245 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext 1115)
  %conv246 = zext i16 %call245 to i32
  %shl247 = shl nuw i32 %conv246, 16
  %or248 = or i32 %or, %shl247
  %alarms = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 30
  %110 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %or248, ptr %alarms, align 4
  %call249 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext 66)
  %conv250 = trunc i16 %call249 to i8
  %caseopen = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 31
  %111 = ptrtoint ptr %caseopen to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv250, ptr %caseopen, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %112 = load volatile i32, ptr @jiffies, align 128
  %113 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %last_updated, align 4
  %valid252 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 13
  %114 = ptrtoint ptr %valid252 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %valid252, align 4
  br label %if.end253

if.end253:                                        ; preds = %for.end239, %lor.lhs.false.if.end253_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %reg to i32
  %and.i = and i16 %reg, -256
  %0 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.105)
  switch i16 %and.i, label %entry.lor.lhs.false20.i_crit_edge [
    i16 256, label %entry.land.lhs.true.i_crit_edge
    i16 512, label %entry.land.lhs.true.i_crit_edge36
  ]

entry.land.lhs.true.i_crit_edge36:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

entry.lor.lhs.false20.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i

land.lhs.true.i:                                  ; preds = %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge36
  %trunc.i = trunc i16 %reg to i8
  %1 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %trunc.i, label %land.lhs.true.i.lor.lhs.false20.i_crit_edge [
    i8 80, label %land.lhs.true.i.is_word_sized.exit_crit_edge
    i8 83, label %land.lhs.true.i.is_word_sized.exit_crit_edge37
    i8 85, label %land.lhs.true.i.is_word_sized.exit_crit_edge38
  ]

land.lhs.true.i.is_word_sized.exit_crit_edge38:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.is_word_sized.exit_crit_edge37:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.is_word_sized.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.lor.lhs.false20.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i

lor.lhs.false20.i:                                ; preds = %land.lhs.true.i.lor.lhs.false20.i_crit_edge, %entry.lor.lhs.false20.i_crit_edge
  %and22.i = and i32 %conv.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 1584
  %2 = and i16 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %2)
  %3 = icmp eq i16 %2, 1600
  %4 = or i1 %3, %cmp23.i
  br i1 %4, label %lor.lhs.false20.i.is_word_sized.exit_crit_edge, label %lor.lhs.false33.i

lor.lhs.false20.i.is_word_sized.exit_crit_edge:   ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

lor.lhs.false33.i:                                ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i)
  %cmp36.i = icmp eq i32 %and22.i, 1616
  %and40.i = and i32 %conv.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i)
  %cmp41.i = icmp ugt i32 %and40.i, 5
  %or.cond67.i = and i1 %cmp36.i, %cmp41.i
  br i1 %or.cond67.i, label %lor.lhs.false33.i.is_word_sized.exit_crit_edge, label %switch.early.test.i

lor.lhs.false33.i.is_word_sized.exit_crit_edge:   ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

switch.early.test.i:                              ; preds = %lor.lhs.false33.i
  %5 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.107)
  switch i16 %reg, label %lor.rhs.i [
    i16 117, label %switch.early.test.i.is_word_sized.exit_crit_edge
    i16 115, label %switch.early.test.i.is_word_sized.exit_crit_edge39
  ]

switch.early.test.i.is_word_sized.exit_crit_edge39: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

switch.early.test.i.is_word_sized.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

lor.rhs.i:                                        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %reg)
  %cmp52.i = icmp eq i16 %reg, 119
  %phi.cast.i = zext i1 %cmp52.i to i32
  br label %is_word_sized.exit

is_word_sized.exit:                               ; preds = %lor.rhs.i, %switch.early.test.i.is_word_sized.exit_crit_edge, %switch.early.test.i.is_word_sized.exit_crit_edge39, %lor.lhs.false33.i.is_word_sized.exit_crit_edge, %lor.lhs.false20.i.is_word_sized.exit_crit_edge, %land.lhs.true.i.is_word_sized.exit_crit_edge, %land.lhs.true.i.is_word_sized.exit_crit_edge37, %land.lhs.true.i.is_word_sized.exit_crit_edge38
  %6 = phi i32 [ 1, %lor.lhs.false20.i.is_word_sized.exit_crit_edge ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge37 ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge38 ], [ 1, %switch.early.test.i.is_word_sized.exit_crit_edge ], [ 1, %lor.lhs.false33.i.is_word_sized.exit_crit_edge ], [ 1, %switch.early.test.i.is_word_sized.exit_crit_edge39 ]
  %lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %7 = lshr i16 %reg, 8
  %bank2.i = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank2.i, align 4
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp.not.i = icmp eq i16 %7, %10
  br i1 %cmp.not.i, label %is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge, label %if.then.i

is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge: ; preds = %is_word_sized.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_set_bank.exit

if.then.i:                                        ; preds = %is_word_sized.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i = trunc i16 %7 to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i.i = and i32 %12, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 78) #13, !srcloc !289
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %add7.i = add i32 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i14.i = and i32 %add7.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %16 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv1.i) #13, !srcloc !289
  %17 = ptrtoint ptr %bank2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i, ptr %bank2.i, align 4
  br label %w83627ehf_set_bank.exit

w83627ehf_set_bank.exit:                          ; preds = %if.then.i, %is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge
  %conv1 = trunc i16 %reg to i8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i29 = and i32 %19, 1048575
  %add.i = or i32 %and.i29, -18874368
  %20 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv1) #13, !srcloc !289
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data, align 4
  %add3 = add i32 %22, 1
  %and.i30 = and i32 %add3, 1048575
  %add.i31 = or i32 %and.i30, -18874368
  %23 = inttoptr i32 %add.i31 to ptr
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %23) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  %conv5 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %w83627ehf_set_bank.exit.if.end_crit_edge, label %if.then

w83627ehf_set_bank.exit.if.end_crit_edge:         ; preds = %w83627ehf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %w83627ehf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv9 = add i8 %conv1, 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i32 = and i32 %26, 1048575
  %add.i33 = or i32 %and.i32, -18874368
  %27 = inttoptr i32 %add.i33 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv9) #13, !srcloc !289
  %shl = shl nuw nsw i32 %conv5, 8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %add13 = add i32 %29, 1
  %and.i34 = and i32 %add13, 1048575
  %add.i35 = or i32 %and.i34, -18874368
  %30 = inttoptr i32 %add.i35 to ptr
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %30) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !291
  %conv15 = zext i8 %31 to i32
  %add16 = or i32 %shl, %conv15
  br label %if.end

if.end:                                           ; preds = %if.then, %w83627ehf_set_bank.exit.if.end_crit_edge
  %res.0 = phi i32 [ %add16, %if.then ], [ %conv5, %w83627ehf_set_bank.exit.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #13
  %conv18 = trunc i32 %res.0 to i16
  ret i16 %conv18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627ehf_update_fan_div(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 71)
  %0 = trunc i16 %call to i8
  %1 = lshr i8 %0, 4
  %conv1 = and i8 %1, 3
  %fan_div = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 22
  %2 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %fan_div, align 2
  %3 = lshr i8 %0, 6
  %arrayidx6 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 1
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %arrayidx6, align 1
  %call7 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 75)
  %5 = trunc i16 %call7 to i8
  %6 = lshr i8 %5, 6
  %arrayidx13 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 2
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %arrayidx13, align 2
  %call14 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 93)
  %8 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %fan_div, align 2
  %10 = trunc i16 %call14 to i8
  %11 = lshr i8 %10, 3
  %12 = and i8 %11, 4
  %conv21 = or i8 %12, %9
  store i8 %conv21, ptr %fan_div, align 2
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %15 = lshr i8 %10, 4
  %16 = and i8 %15, 4
  %conv28 = or i8 %16, %14
  store i8 %conv28, ptr %arrayidx6, align 1
  %17 = lshr i8 %10, 5
  %and30 = and i8 %17, 4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx13, align 2
  %or34 = or i8 %19, %and30
  store i8 %or34, ptr %arrayidx13, align 2
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 23
  %20 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %has_fan, align 1
  %22 = and i8 %21, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not = icmp eq i8 %22, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call38 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 89)
  %23 = trunc i16 %call38 to i8
  %conv41 = and i8 %23, 3
  %arrayidx43 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 3
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv41, ptr %arrayidx43, align 1
  %25 = lshr i16 %call38, 2
  %and45 = and i16 %25, 3
  %26 = lshr i16 %call38, 5
  %and47 = and i16 %26, 4
  %or48 = or i16 %and45, %and47
  %conv49 = trunc i16 %or48 to i8
  %arrayidx51 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 4
  %27 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv49, ptr %arrayidx51, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %has_fan, align 1
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool55.not = icmp eq i8 %30, 0
  br i1 %tobool55.not, label %if.end.if.end66_crit_edge, label %if.then56

if.end.if.end66_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end66

if.then56:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 76)
  %31 = trunc i16 %call57 to i8
  %32 = lshr i8 %31, 5
  %and60 = and i8 %32, 4
  %arrayidx62 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 3
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx62, align 1
  %or64 = or i8 %and60, %34
  store i8 %or64, ptr %arrayidx62, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then56, %if.end.if.end66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627ehf_write_fan_div(ptr noundef %data, i32 noundef %nr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %nr to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %nr, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb23
    i32 2, label %sw.bb56
    i32 3, label %sw.bb81
    i32 4, label %sw.bb105
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 71)
  %1 = trunc i16 %call to i8
  %and = and i8 %1, -49
  %fan_div = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 22
  %2 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_div, align 2
  %4 = shl i8 %3, 4
  %5 = and i8 %4, 48
  %or = or i8 %5, %and
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 23
  %6 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %has_fan, align 1
  %8 = lshr i8 %7, 4
  %.lobit164 = and i8 %8, 1
  %or7165 = or i8 %or, %.lobit164
  %conv9 = zext i8 %or7165 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 71, i16 noundef zeroext %conv9)
  %call11 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 93)
  %9 = trunc i16 %call11 to i8
  %and13 = and i8 %9, -33
  %10 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %fan_div, align 2
  %12 = shl i8 %11, 3
  %13 = and i8 %12, 32
  %or19 = or i8 %13, %and13
  br label %sw.epilog.sink.split

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call24 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 71)
  %14 = trunc i16 %call24 to i8
  %and26 = and i8 %14, 63
  %arrayidx28 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 1
  %15 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx28, align 1
  %17 = shl i8 %16, 6
  %or32 = or i8 %and26, %17
  %has_fan34 = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 23
  %18 = ptrtoint ptr %has_fan34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_fan34, align 1
  %20 = lshr i8 %19, 4
  %.lobit = and i8 %20, 1
  %or40163 = or i8 %.lobit, %or32
  %conv42 = zext i8 %or40163 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 71, i16 noundef zeroext %conv42)
  %call44 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 93)
  %21 = trunc i16 %call44 to i8
  %and46 = and i8 %21, -65
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx28, align 1
  %24 = shl i8 %23, 4
  %25 = and i8 %24, 64
  %or52 = or i8 %25, %and46
  br label %sw.epilog.sink.split

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call57 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 75)
  %26 = trunc i16 %call57 to i8
  %and59 = and i8 %26, 63
  %arrayidx61 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 2
  %27 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx61, align 2
  %29 = shl i8 %28, 6
  %or65 = or i8 %and59, %29
  %conv67 = zext i8 %or65 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 75, i16 noundef zeroext %conv67)
  %call69 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 93)
  %30 = trunc i16 %call69 to i8
  %and71 = and i8 %30, 127
  %31 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx61, align 2
  %33 = shl i8 %32, 5
  %34 = and i8 %33, -128
  %or77 = or i8 %34, %and71
  br label %sw.epilog.sink.split

sw.bb81:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call82 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 89)
  %35 = trunc i16 %call82 to i8
  %and84 = and i8 %35, -4
  %arrayidx86 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 3
  %36 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx86, align 1
  %38 = and i8 %37, 3
  %or89 = or i8 %and84, %38
  %conv91 = zext i8 %or89 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 89, i16 noundef zeroext %conv91)
  %call93 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 76)
  %39 = trunc i16 %call93 to i8
  %and95 = and i8 %39, 127
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx86, align 1
  %42 = shl i8 %41, 5
  %43 = and i8 %42, -128
  %or101 = or i8 %43, %and95
  br label %sw.epilog.sink.split

sw.bb105:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call106 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 89)
  %44 = trunc i16 %call106 to i8
  %and108 = and i8 %44, 115
  %arrayidx110 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 4
  %45 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx110, align 2
  %and112 = shl i8 %46, 2
  %shl113 = and i8 %and112, 12
  %or114 = or i8 %shl113, %and108
  %and118 = shl i8 %46, 5
  %shl119 = and i8 %and118, -128
  %or120 = or i8 %or114, %shl119
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb105, %sw.bb81, %sw.bb56, %sw.bb23, %sw.bb
  %or120.sink = phi i8 [ %or120, %sw.bb105 ], [ %or101, %sw.bb81 ], [ %or77, %sw.bb56 ], [ %or52, %sw.bb23 ], [ %or19, %sw.bb ]
  %.sink = phi i16 [ 89, %sw.bb105 ], [ 76, %sw.bb81 ], [ 93, %sw.bb56 ], [ 93, %sw.bb23 ], [ 93, %sw.bb ]
  %conv122 = zext i8 %or120.sink to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %.sink, i16 noundef zeroext %conv122)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %conv.i = zext i16 %reg to i32
  %and.i = and i16 %reg, -256
  %0 = zext i16 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i16 %and.i, label %entry.lor.lhs.false20.i_crit_edge [
    i16 256, label %entry.land.lhs.true.i_crit_edge
    i16 512, label %entry.land.lhs.true.i_crit_edge8
  ]

entry.land.lhs.true.i_crit_edge8:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

entry.land.lhs.true.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i

entry.lor.lhs.false20.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i

land.lhs.true.i:                                  ; preds = %entry.land.lhs.true.i_crit_edge, %entry.land.lhs.true.i_crit_edge8
  %trunc.i = trunc i16 %reg to i8
  %1 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %trunc.i, label %land.lhs.true.i.lor.lhs.false20.i_crit_edge [
    i8 80, label %land.lhs.true.i.is_word_sized.exit_crit_edge
    i8 83, label %land.lhs.true.i.is_word_sized.exit_crit_edge9
    i8 85, label %land.lhs.true.i.is_word_sized.exit_crit_edge10
  ]

land.lhs.true.i.is_word_sized.exit_crit_edge10:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.is_word_sized.exit_crit_edge9:    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.is_word_sized.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

land.lhs.true.i.lor.lhs.false20.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i

lor.lhs.false20.i:                                ; preds = %land.lhs.true.i.lor.lhs.false20.i_crit_edge, %entry.lor.lhs.false20.i_crit_edge
  %and22.i = and i32 %conv.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i)
  %cmp23.i = icmp eq i32 %and22.i, 1584
  %2 = and i16 %reg, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %2)
  %3 = icmp eq i16 %2, 1600
  %4 = or i1 %3, %cmp23.i
  br i1 %4, label %lor.lhs.false20.i.is_word_sized.exit_crit_edge, label %lor.lhs.false33.i

lor.lhs.false20.i.is_word_sized.exit_crit_edge:   ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

lor.lhs.false33.i:                                ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i)
  %cmp36.i = icmp eq i32 %and22.i, 1616
  %and40.i = and i32 %conv.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i)
  %cmp41.i = icmp ugt i32 %and40.i, 5
  %or.cond67.i = and i1 %cmp36.i, %cmp41.i
  br i1 %or.cond67.i, label %lor.lhs.false33.i.is_word_sized.exit_crit_edge, label %switch.early.test.i

lor.lhs.false33.i.is_word_sized.exit_crit_edge:   ; preds = %lor.lhs.false33.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

switch.early.test.i:                              ; preds = %lor.lhs.false33.i
  %5 = zext i16 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.111)
  switch i16 %reg, label %lor.rhs.i [
    i16 117, label %switch.early.test.i.is_word_sized.exit_crit_edge
    i16 115, label %switch.early.test.i.is_word_sized.exit_crit_edge11
  ]

switch.early.test.i.is_word_sized.exit_crit_edge11: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

switch.early.test.i.is_word_sized.exit_crit_edge: ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_word_sized.exit

lor.rhs.i:                                        ; preds = %switch.early.test.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %reg)
  %cmp52.i = icmp eq i16 %reg, 119
  %phi.cast.i = zext i1 %cmp52.i to i32
  br label %is_word_sized.exit

is_word_sized.exit:                               ; preds = %lor.rhs.i, %switch.early.test.i.is_word_sized.exit_crit_edge, %switch.early.test.i.is_word_sized.exit_crit_edge11, %lor.lhs.false33.i.is_word_sized.exit_crit_edge, %lor.lhs.false20.i.is_word_sized.exit_crit_edge, %land.lhs.true.i.is_word_sized.exit_crit_edge, %land.lhs.true.i.is_word_sized.exit_crit_edge9, %land.lhs.true.i.is_word_sized.exit_crit_edge10
  %6 = phi i32 [ 1, %lor.lhs.false20.i.is_word_sized.exit_crit_edge ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge ], [ %phi.cast.i, %lor.rhs.i ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge9 ], [ 1, %land.lhs.true.i.is_word_sized.exit_crit_edge10 ], [ 1, %switch.early.test.i.is_word_sized.exit_crit_edge ], [ 1, %lor.lhs.false33.i.is_word_sized.exit_crit_edge ], [ 1, %switch.early.test.i.is_word_sized.exit_crit_edge11 ]
  %lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #13
  %7 = lshr i16 %reg, 8
  %bank2.i = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %bank2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bank2.i, align 4
  %10 = zext i8 %9 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp.not.i = icmp eq i16 %7, %10
  br i1 %cmp.not.i, label %is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge, label %if.then.i

is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge: ; preds = %is_word_sized.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_set_bank.exit

if.then.i:                                        ; preds = %is_word_sized.exit
  call void @__sanitizer_cov_trace_pc() #15
  %conv1.i = trunc i16 %7 to i8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i.i = and i32 %12, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %13 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 78) #13, !srcloc !289
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 4
  %add7.i = add i32 %15, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i14.i = and i32 %add7.i, 1048575
  %add.i15.i = or i32 %and.i14.i, -18874368
  %16 = inttoptr i32 %add.i15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 %conv1.i) #13, !srcloc !289
  %17 = ptrtoint ptr %bank2.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i, ptr %bank2.i, align 4
  br label %w83627ehf_set_bank.exit

w83627ehf_set_bank.exit:                          ; preds = %if.then.i, %is_word_sized.exit.w83627ehf_set_bank.exit_crit_edge
  %conv1 = trunc i16 %reg to i8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i1 = and i32 %19, 1048575
  %add.i = or i32 %and.i1, -18874368
  %20 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv1) #13, !srcloc !289
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %w83627ehf_set_bank.exit.if.end_crit_edge, label %if.then

w83627ehf_set_bank.exit.if.end_crit_edge:         ; preds = %w83627ehf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %w83627ehf_set_bank.exit
  call void @__sanitizer_cov_trace_pc() #15
  %21 = lshr i16 %value, 8
  %conv3 = trunc i16 %21 to i8
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data, align 4
  %add5 = add i32 %23, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i2 = and i32 %add5, 1048575
  %add.i3 = or i32 %and.i2, -18874368
  %24 = inttoptr i32 %add.i3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv3) #13, !srcloc !289
  %conv9 = add i8 %conv1, 1
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i4 = and i32 %26, 1048575
  %add.i5 = or i32 %and.i4, -18874368
  %27 = inttoptr i32 %add.i5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %27, i8 %conv9) #13, !srcloc !289
  br label %if.end

if.end:                                           ; preds = %if.then, %w83627ehf_set_bank.exit.if.end_crit_edge
  %conv14 = trunc i16 %value to i8
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %add16 = add i32 %29, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !288
  tail call void @arm_heavy_mb() #13
  %and.i6 = and i32 %add16, 1048575
  %add.i7 = or i32 %and.i6, -18874368
  %30 = inttoptr i32 %add.i7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %30, i8 %conv14) #13, !srcloc !289
  tail call void @mutex_unlock(ptr noundef %lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83627ehf_update_pwm(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_num = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 35
  %0 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp61.not = icmp eq i8 %1, 0
  br i1 %cmp61.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %tolerance.065 = phi i32 [ 0, %for.body.lr.ph ], [ %tolerance.2, %for.inc.for.body_crit_edge ]
  %pwmcfg.064 = phi i32 [ 0, %for.body.lr.ph ], [ %pwmcfg.2, %for.inc.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %has_fan, align 1
  %conv2 = zext i8 %3 to i32
  %shl = shl nuw i32 1, %i.062
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.062)
  %cmp3.not = icmp eq i32 %i.062, 1
  br i1 %cmp3.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end12

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr [4 x i8], ptr @W83627EHF_REG_PWM_ENABLE, i32 0, i32 %i.062
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %5 to i16
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %conv6)
  %conv7 = zext i16 %call to i32
  %arrayidx8 = getelementptr [4 x i8], ptr @W83627EHF_REG_TOLERANCE, i32 0, i32 %i.062
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %7 to i16
  %call10 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %conv9)
  %conv11 = zext i16 %call10 to i32
  br label %if.end12

if.end12:                                         ; preds = %if.then5, %if.end.if.end12_crit_edge
  %cond31 = phi i32 [ 0, %if.then5 ], [ 4, %if.end.if.end12_crit_edge ]
  %pwmcfg.1 = phi i32 [ %conv7, %if.then5 ], [ %pwmcfg.064, %if.end.if.end12_crit_edge ]
  %tolerance.1 = phi i32 [ %conv11, %if.then5 ], [ %tolerance.065, %if.end.if.end12_crit_edge ]
  %arrayidx13 = getelementptr [4 x i8], ptr @W83627EHF_PWM_MODE_SHIFT, i32 0, i32 %i.062
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %9 to i32
  %10 = shl nuw i32 1, %conv14
  %11 = and i32 %10, %pwmcfg.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  %conv17 = zext i1 %tobool16.not to i8
  %arrayidx18 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 32, i32 %i.062
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv17, ptr %arrayidx18, align 1
  %arrayidx19 = getelementptr [4 x i8], ptr @W83627EHF_PWM_ENABLE_SHIFT, i32 0, i32 %i.062
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %14 to i32
  %shr21 = ashr i32 %pwmcfg.1, %conv20
  %15 = trunc i32 %shr21 to i8
  %16 = and i8 %15, 3
  %conv23 = add nuw nsw i8 %16, 1
  %arrayidx24 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 33, i32 %i.062
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr [4 x i16], ptr @W83627EHF_REG_PWM, i32 0, i32 %i.062
  %18 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx25, align 2
  %call26 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %19)
  %conv27 = trunc i16 %call26 to i8
  %arrayidx28 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 36, i32 %i.062
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv27, ptr %arrayidx28, align 1
  %shr32 = ashr i32 %tolerance.1, %cond31
  %21 = trunc i32 %shr32 to i8
  %conv34 = and i8 %21, 15
  %arrayidx36 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 38, i32 %i.062
  %22 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv34, ptr %arrayidx36, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %pwmcfg.2 = phi i32 [ %pwmcfg.1, %if.end12 ], [ %pwmcfg.064, %for.body.for.inc_crit_edge ]
  %tolerance.2 = phi i32 [ %tolerance.1, %if.end12 ], [ %tolerance.065, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.062, 1
  %23 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pwm_num, align 1
  %conv = zext i8 %24 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83627ehf_find(i32 noundef %sioaddr, ptr nocapture noundef %addr, ptr nocapture noundef writeonly %sio_data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #13
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !292
  tail call void @arm_heavy_mb() #13
  %and.i = and i32 %sioaddr, 1048575
  %add.i = or i32 %and.i, -18874368
  %0 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !293
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -121) #13, !srcloc !289
  %1 = load i16, ptr @force_id, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 32) #13, !srcloc !289
  %add1.i = add i32 %sioaddr, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %2 = inttoptr i32 %add3.i to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %conv6.i = zext i8 %3 to i16
  %shl = shl nuw i16 %conv6.i, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 33) #13, !srcloc !289
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %conv6.i105 = zext i8 %4 to i16
  %or = or i16 %shl, %conv6.i105
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.if.end5_crit_edge
  %val.0 = phi i16 [ %or, %if.else ], [ %1, %if.end.if.end5_crit_edge ]
  %conv6 = zext i16 %val.0 to i32
  %and = and i16 %val.0, -16
  %5 = zext i16 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.112)
  switch i16 %and, label %sw.default [
    i16 -30640, label %if.end5.sw.epilog_crit_edge
    i16 -30624, label %sw.bb7
    i16 -24544, label %sw.bb9
    i16 -20368, label %sw.bb11
    i16 -24016, label %sw.bb13
    i16 -23280, label %sw.bb15
    i16 -19632, label %sw.bb17
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

sw.default:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %val.0)
  %cmp.not = icmp eq i16 %val.0, -1
  br i1 %cmp.not, label %sw.default.if.end30_crit_edge, label %do.body

sw.default.if.end30_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

do.body:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83627ehf_find.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83627ehf_find, %if.end30)) #13
          to label %if.then27 [label %if.end30], !srcloc !287

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @w83627ehf_find.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.6, i32 noundef %conv6) #13
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %do.body, %sw.default.if.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  tail call void @arm_heavy_mb() #13
  %add8.i = add i32 %sioaddr, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %6 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 2) #13, !srcloc !289
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #13
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %if.end5.sw.epilog_crit_edge
  %.sink = phi i32 [ 5, %sw.bb17 ], [ 4, %sw.bb15 ], [ 3, %sw.bb13 ], [ 2, %sw.bb11 ], [ 1, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %if.end5.sw.epilog_crit_edge ]
  %sio_name.0 = phi ptr [ @w83627ehf_find.sio_name_W83667HG_B, %sw.bb17 ], [ @w83627ehf_find.sio_name_W83667HG, %sw.bb15 ], [ @w83627ehf_find.sio_name_W83627UHG, %sw.bb13 ], [ @w83627ehf_find.sio_name_W83627DHG_P, %sw.bb11 ], [ @w83627ehf_find.sio_name_W83627DHG, %sw.bb9 ], [ @w83627ehf_find.sio_name_W83627EHG, %sw.bb7 ], [ @w83627ehf_find.sio_name_W83627EHF, %if.end5.sw.epilog_crit_edge ]
  %kind18 = getelementptr inbounds %struct.w83627ehf_sio_data, ptr %sio_data, i32 0, i32 1
  %7 = ptrtoint ptr %kind18 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %kind18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 7) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void @arm_heavy_mb() #13
  %add3.i110 = add i32 %sioaddr, 1
  %and4.i = and i32 %add3.i110, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %8 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 11) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 96) #13, !srcloc !289
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %conv6.i116 = zext i8 %9 to i16
  %shl32 = shl nuw i16 %conv6.i116, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 97) #13, !srcloc !289
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %11 = and i8 %10, -8
  %conv6.i122.masked = zext i8 %11 to i16
  %conv38 = or i16 %shl32, %conv6.i122.masked
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv38, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv38)
  %cmp40 = icmp eq i16 %conv38, 0
  br i1 %cmp40, label %do.end45, label %if.end48

do.end45:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #15
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 2) #13, !srcloc !289
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #13
  br label %cleanup

if.end48:                                         ; preds = %sw.epilog
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #13, !srcloc !289
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %14 = and i8 %13, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool53.not = icmp eq i8 %14, 0
  br i1 %tobool53.not, label %do.end57, label %if.end48.if.end62_crit_edge

if.end48.if.end62_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end62

do.end57:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #17
  %or61 = or i8 %13, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !301
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 48) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !302
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %or61) #13, !srcloc !289
  br label %if.end62

if.end62:                                         ; preds = %do.end57, %if.end48.if.end62_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 -86) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 2) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 2) #13, !srcloc !289
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %sioaddr, i32 noundef 2) #13
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv67 = zext i16 %16 to i32
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull %sio_name.0, i32 noundef %conv67) #17
  %17 = ptrtoint ptr %sio_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sioaddr, ptr %sio_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end45, %if.end30, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.end30 ], [ -19, %do.end45 ], [ 0, %if.end62 ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__platform_create_bundle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627ehf_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 256, i32 noundef 0) #13
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %call3 = tail call ptr @__devm_request_region(ptr noundef %dev1, ptr noundef nonnull @ioport_resource, i32 noundef %3, i32 noundef 2, ptr noundef nonnull @.str) #13
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 444, i32 noundef 3520) #13
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call2, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @w83627ehf_probe.__key) #13
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @w83627ehf_probe.__key.15) #13
  %kind = getelementptr inbounds %struct.w83627ehf_sio_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %kind, align 4
  %arrayidx = getelementptr [6 x ptr], ptr @w83627ehf_device_names, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %name = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %name, align 4
  %bank = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 15
  %12 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %bank, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %14 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp = icmp eq i32 %14, 0
  %conv = select i1 %cmp, i8 10, i8 9
  %in_num = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 16
  %15 = ptrtoint ptr %in_num to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %in_num, align 1
  %16 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kind, align 4
  %switch.tableidx = add i32 %17, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 3
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 197378, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %.sink = select i1 %18, i8 %switch.masked, i8 4
  %pwm_num16 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 35
  %19 = ptrtoint ptr %pwm_num16 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %.sink, ptr %pwm_num16, align 1
  %have_temp = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 46
  %20 = ptrtoint ptr %have_temp to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 7, ptr %have_temp, align 4
  %21 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %kind, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %22, label %if.else243 [
    i32 5, label %if.then20
    i32 3, label %if.then128
  ]

if.then20:                                        ; preds = %if.end7
  tail call fastcc void @w83627ehf_set_temp_reg_ehf(ptr noundef nonnull %call.i, i32 noundef 4)
  %call21 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 74)
  %24 = trunc i16 %call21 to i8
  %25 = lshr i8 %24, 5
  %temp_src = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %temp_src to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %temp_src, align 4
  %call26 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 73)
  %27 = trunc i16 %call26 to i8
  %conv29 = and i8 %27, 7
  %arrayidx31 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv29, ptr %arrayidx31, align 1
  %29 = lshr i8 %27, 4
  %conv35 = and i8 %29, 7
  %arrayidx37 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 2
  %30 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv35, ptr %arrayidx37, align 2
  %call38 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 125)
  %31 = trunc i16 %call38 to i8
  %conv42 = and i8 %31, 7
  %32 = ptrtoint ptr %temp_src to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %temp_src, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %conv42, i8 %33)
  %cmp47.not = icmp eq i8 %conv42, %33
  br i1 %cmp47.not, label %if.then20.if.end68_crit_edge, label %land.lhs.true

if.then20.if.end68_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true:                                    ; preds = %if.then20
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx31, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %conv42, i8 %35)
  %cmp53.not = icmp eq i8 %conv42, %35
  br i1 %cmp53.not, label %land.lhs.true.if.end68_crit_edge, label %land.lhs.true55

land.lhs.true.if.end68_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

land.lhs.true55:                                  ; preds = %land.lhs.true
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx37, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %conv42, i8 %37)
  %cmp60.not = icmp eq i8 %conv42, %37
  br i1 %cmp60.not, label %land.lhs.true55.if.end68_crit_edge, label %if.then62

land.lhs.true55.if.end68_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then62:                                        ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx64 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 3
  %38 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv42, ptr %arrayidx64, align 1
  %39 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %have_temp, align 4
  %41 = or i16 %40, 8
  store i16 %41, ptr %have_temp, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then62, %land.lhs.true55.if.end68_crit_edge, %land.lhs.true.if.end68_crit_edge, %if.then20.if.end68_crit_edge
  %call69 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 594)
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx37, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %43)
  %cmp74 = icmp ne i8 %43, 2
  %44 = and i16 %call69, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool79.not = icmp eq i16 %44, 0
  %or.cond = select i1 %cmp74, i1 true, i1 %tobool79.not
  br i1 %or.cond, label %if.end68.if.end85_crit_edge, label %if.then80

if.end68.if.end85_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end85

if.then80:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %45 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %have_temp, align 4
  %47 = and i16 %46, -5
  store i16 %47, ptr %have_temp, align 4
  %48 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr = load i8, ptr %arrayidx37, align 2
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end68.if.end85_crit_edge
  %49 = phi i8 [ %.pr, %if.then80 ], [ %43, %if.end68.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %49)
  %cmp89 = icmp eq i8 %49, 2
  br i1 %cmp89, label %land.lhs.true91, label %if.end85.lor.lhs.false_crit_edge

if.end85.lor.lhs.false_crit_edge:                 ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

land.lhs.true91:                                  ; preds = %if.end85
  %50 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %have_temp, align 4
  %52 = and i16 %51, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool95.not = icmp eq i16 %52, 0
  br i1 %tobool95.not, label %land.lhs.true91.lor.lhs.false_crit_edge, label %land.lhs.true91.if.then106_crit_edge

land.lhs.true91.if.then106_crit_edge:             ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

land.lhs.true91.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true91.lor.lhs.false_crit_edge, %if.end85.lor.lhs.false_crit_edge
  %arrayidx97 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 3
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx97, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp99 = icmp eq i8 %54, 2
  br i1 %cmp99, label %land.lhs.true101, label %lor.lhs.false.if.end107_crit_edge

lor.lhs.false.if.end107_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

land.lhs.true101:                                 ; preds = %lor.lhs.false
  %55 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %have_temp, align 4
  %57 = and i16 %56, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool105.not = icmp eq i16 %57, 0
  br i1 %tobool105.not, label %land.lhs.true101.if.end107_crit_edge, label %land.lhs.true101.if.then106_crit_edge

land.lhs.true101.if.then106_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

land.lhs.true101.if.end107_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end107

if.then106:                                       ; preds = %land.lhs.true101.if.then106_crit_edge, %land.lhs.true91.if.then106_crit_edge
  %in6_skip = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %58 = ptrtoint ptr %in6_skip to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load = load i8, ptr %in6_skip, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %in6_skip, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %land.lhs.true101.if.end107_crit_edge, %lor.lhs.false.if.end107_crit_edge
  %temp_label = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 8
  %59 = ptrtoint ptr %temp_label to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @w83667hg_b_temp_label, ptr %temp_label, align 4
  %60 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %have_temp, align 4
  %62 = and i16 %61, 7
  %have_temp_offset = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 47
  %63 = ptrtoint ptr %have_temp_offset to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %have_temp_offset, align 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end107
  %i.0593 = phi i32 [ 0, %if.end107 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx115 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 %i.0593
  %64 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx115, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp117 = icmp ugt i8 %65, 2
  br i1 %cmp117, label %if.then119, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then119:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %shl = shl nuw nsw i32 1, %i.0593
  %66 = ptrtoint ptr %have_temp_offset to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %have_temp_offset, align 2
  %68 = trunc i32 %shl to i16
  %69 = xor i16 %68, -1
  %conv123 = and i16 %67, %69
  store i16 %conv123, ptr %have_temp_offset, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.then119, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0593, 1
  %exitcond599.not = icmp eq i32 %inc, 3
  br i1 %exitcond599.not, label %for.inc.if.end272_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.if.end272_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end272

if.then128:                                       ; preds = %if.end7
  tail call fastcc void @w83627ehf_set_temp_reg_ehf(ptr noundef nonnull %call.i, i32 noundef 3)
  %temp_src130 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7
  %70 = ptrtoint ptr %temp_src130 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %temp_src130, align 4
  %call132 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 73)
  %71 = and i16 %call132, 7
  %trunc = trunc i16 %call132 to i3
  %72 = zext i3 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.114)
  switch i3 %trunc, label %land.lhs.true146 [
    i3 0, label %if.then139
    i3 1, label %if.then128.if.else155_crit_edge
  ]

if.then128.if.else155_crit_edge:                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else155

if.then139:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx141 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %arrayidx141, align 1
  br label %if.end161

land.lhs.true146:                                 ; preds = %if.then128
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %71)
  %cmp148 = icmp ult i16 %71, 6
  br i1 %cmp148, label %if.then150, label %land.lhs.true146.if.else155_crit_edge

land.lhs.true146.if.else155_crit_edge:            ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else155

if.then150:                                       ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #15
  %74 = trunc i16 %71 to i8
  %conv152 = add nuw nsw i8 %74, 2
  %arrayidx154 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 1
  %75 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv152, ptr %arrayidx154, align 1
  br label %if.end161

if.else155:                                       ; preds = %land.lhs.true146.if.else155_crit_edge, %if.then128.if.else155_crit_edge
  %76 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %have_temp, align 4
  %78 = and i16 %77, -3
  store i16 %78, ptr %have_temp, align 4
  br label %if.end161

if.end161:                                        ; preds = %if.else155, %if.then150, %if.then139
  %call162 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 74)
  %79 = trunc i16 %call162 to i8
  %80 = lshr i8 %79, 5
  %arrayidx168 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 2
  %81 = ptrtoint ptr %arrayidx168 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx168, align 2
  %82 = and i8 %79, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %82)
  %switch = icmp eq i8 %82, 64
  br i1 %switch, label %if.end161.if.then203_crit_edge, label %lor.lhs.false180

if.end161.if.then203_crit_edge:                   ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then203

lor.lhs.false180:                                 ; preds = %if.end161
  %83 = ptrtoint ptr %temp_src130 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %temp_src130, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %84)
  %cmp187 = icmp eq i8 %80, %84
  br i1 %cmp187, label %lor.lhs.false180.if.then203_crit_edge, label %lor.lhs.false189

lor.lhs.false180.if.then203_crit_edge:            ; preds = %lor.lhs.false180
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then203

lor.lhs.false189:                                 ; preds = %lor.lhs.false180
  %85 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %have_temp, align 4
  %87 = and i16 %86, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool193.not = icmp eq i16 %87, 0
  br i1 %tobool193.not, label %lor.lhs.false189.if.else208_crit_edge, label %land.lhs.true194

lor.lhs.false189.if.else208_crit_edge:            ; preds = %lor.lhs.false189
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else208

land.lhs.true194:                                 ; preds = %lor.lhs.false189
  %arrayidx199 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 1
  %88 = ptrtoint ptr %arrayidx199 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %arrayidx199, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %80, i8 %89)
  %cmp201 = icmp eq i8 %80, %89
  br i1 %cmp201, label %land.lhs.true194.if.then203_crit_edge, label %land.lhs.true194.if.else208_crit_edge

land.lhs.true194.if.else208_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else208

land.lhs.true194.if.then203_crit_edge:            ; preds = %land.lhs.true194
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then203

if.then203:                                       ; preds = %land.lhs.true194.if.then203_crit_edge, %lor.lhs.false180.if.then203_crit_edge, %if.end161.if.then203_crit_edge
  %90 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %have_temp, align 4
  %92 = and i16 %91, -5
  store i16 %92, ptr %have_temp, align 4
  br label %if.end212

if.else208:                                       ; preds = %land.lhs.true194.if.else208_crit_edge, %lor.lhs.false189.if.else208_crit_edge
  %temp3_val_only = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %93 = ptrtoint ptr %temp3_val_only to i32
  call void @__asan_load1_noabort(i32 %93)
  %bf.load209 = load i8, ptr %temp3_val_only, align 4
  %bf.set211 = or i8 %bf.load209, 64
  store i8 %bf.set211, ptr %temp3_val_only, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.else208, %if.then203
  %in6_skip213 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %94 = ptrtoint ptr %in6_skip213 to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load214 = load i8, ptr %in6_skip213, align 4
  %bf.set216 = or i8 %bf.load214, -128
  store i8 %bf.set216, ptr %in6_skip213, align 4
  %temp_label217 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 8
  %95 = ptrtoint ptr %temp_label217 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr @w83667hg_b_temp_label, ptr %temp_label217, align 4
  %96 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %have_temp, align 4
  %98 = and i16 %97, 3
  %have_temp_offset222 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 47
  %99 = ptrtoint ptr %have_temp_offset222 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %have_temp_offset222, align 2
  br label %for.body226

for.body226:                                      ; preds = %for.inc240.for.body226_crit_edge, %if.end212
  %i.1591 = phi i32 [ 0, %if.end212 ], [ %inc241, %for.inc240.for.body226_crit_edge ]
  %arrayidx228 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 %i.1591
  %100 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx228, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %101)
  %cmp230 = icmp ugt i8 %101, 1
  br i1 %cmp230, label %if.then232, label %for.body226.for.inc240_crit_edge

for.body226.for.inc240_crit_edge:                 ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc240

if.then232:                                       ; preds = %for.body226
  call void @__sanitizer_cov_trace_pc() #15
  %shl233 = shl nuw nsw i32 1, %i.1591
  %102 = ptrtoint ptr %have_temp_offset222 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %have_temp_offset222, align 2
  %104 = trunc i32 %shl233 to i16
  %105 = xor i16 %104, -1
  %conv238 = and i16 %103, %105
  store i16 %conv238, ptr %have_temp_offset222, align 2
  br label %for.inc240

for.inc240:                                       ; preds = %if.then232, %for.body226.for.inc240_crit_edge
  %inc241 = add nuw nsw i32 %i.1591, 1
  %exitcond.not = icmp eq i32 %inc241, 3
  br i1 %exitcond.not, label %for.inc240.if.end272_crit_edge, label %for.inc240.for.body226_crit_edge

for.inc240.for.body226_crit_edge:                 ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body226

for.inc240.if.end272_crit_edge:                   ; preds = %for.inc240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end272

if.else243:                                       ; preds = %if.end7
  tail call fastcc void @w83627ehf_set_temp_reg_ehf(ptr noundef nonnull %call.i, i32 noundef 3)
  %106 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %107)
  %cmp245 = icmp eq i32 %107, 4
  br i1 %cmp245, label %if.then247, label %if.else243.if.end265_crit_edge

if.else243.if.end265_crit_edge:                   ; preds = %if.else243
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end265

if.then247:                                       ; preds = %if.else243
  %call249 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef nonnull %call.i, i16 noundef zeroext 594)
  %108 = and i16 %call249, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %108)
  %tobool253.not = icmp eq i16 %108, 0
  br i1 %tobool253.not, label %if.else259, label %if.then254

if.then254:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #15
  %109 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %have_temp, align 4
  %111 = and i16 %110, -5
  store i16 %111, ptr %have_temp, align 4
  br label %if.end265

if.else259:                                       ; preds = %if.then247
  call void @__sanitizer_cov_trace_pc() #15
  %in6_skip260 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %112 = ptrtoint ptr %in6_skip260 to i32
  call void @__asan_load1_noabort(i32 %112)
  %bf.load261 = load i8, ptr %in6_skip260, align 4
  %bf.set263 = or i8 %bf.load261, -128
  store i8 %bf.set263, ptr %in6_skip260, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.else259, %if.then254, %if.else243.if.end265_crit_edge
  %113 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %have_temp, align 4
  %115 = and i16 %114, 7
  %have_temp_offset270 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 47
  %116 = ptrtoint ptr %have_temp_offset270 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %have_temp_offset270, align 2
  br label %if.end272

if.end272:                                        ; preds = %if.end265, %for.inc240.if.end272_crit_edge, %for.inc.if.end272_crit_edge
  %117 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %118)
  %cmp274 = icmp eq i32 %118, 5
  %spec.select = select i1 %cmp274, ptr @W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B, ptr @W83627EHF_REG_FAN_MAX_OUTPUT_COMMON
  %spec.select601 = select i1 %cmp274, ptr @W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B, ptr @W83627EHF_REG_FAN_STEP_OUTPUT_COMMON
  %119 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 9
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %spec.select, ptr %119, align 4
  %121 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 10
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %spec.select601, ptr %121, align 4
  %123 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %124)
  %cmp282 = icmp eq i32 %124, 3
  %scale_in_common.sink = select i1 %cmp282, ptr @scale_in_w83627uhg, ptr @scale_in_common
  %125 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 11
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %scale_in_common.sink, ptr %125, align 4
  %127 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %kind, align 4
  %call.i557 = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext 64) #13
  %129 = and i16 %call.i557, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %129)
  %tobool.not.i = icmp eq i16 %129, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end272.if.end.i_crit_edge

if.end272.if.end.i_crit_edge:                     ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.then.i:                                        ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #15
  %130 = and i16 %call.i557, 254
  %or.i = or i16 %130, 1
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext 64, i16 noundef zeroext %or.i) #13
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end272.if.end.i_crit_edge
  %131 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %have_temp, align 4
  %133 = and i16 %132, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool8.not.i = icmp eq i16 %133, 0
  br i1 %tobool8.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 6, i32 0
  %134 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %135)
  %tobool11.not.i = icmp eq i16 %135, 0
  br i1 %tobool11.not.i, label %if.end10.i.for.inc.i_crit_edge, label %if.end13.i

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.end13.i:                                       ; preds = %if.end10.i
  %call16.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext %135) #13
  %136 = and i16 %call16.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %136)
  %tobool20.not.i = icmp eq i16 %136, 0
  br i1 %tobool20.not.i, label %if.end13.i.for.inc.i_crit_edge, label %if.then21.i

if.end13.i.for.inc.i_crit_edge:                   ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #15
  %137 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %arrayidx.i, align 2
  %and25.i = and i16 %call16.i, 254
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext %138, i16 noundef zeroext %and25.i) #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %if.end13.i.for.inc.i_crit_edge, %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %139 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %have_temp, align 4
  %141 = and i16 %140, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %141)
  %tobool8.not.1.i = icmp eq i16 %141, 0
  br i1 %tobool8.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end10.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end10.1.i:                                     ; preds = %for.inc.i
  %arrayidx.1.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 6, i32 1
  %142 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %arrayidx.1.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %143)
  %tobool11.not.1.i = icmp eq i16 %143, 0
  br i1 %tobool11.not.1.i, label %if.end10.1.i.for.inc.1.i_crit_edge, label %if.end13.1.i

if.end10.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.end13.1.i:                                     ; preds = %if.end10.1.i
  %call16.1.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext %143) #13
  %144 = and i16 %call16.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %144)
  %tobool20.not.1.i = icmp eq i16 %144, 0
  br i1 %tobool20.not.1.i, label %if.end13.1.i.for.inc.1.i_crit_edge, label %if.then21.1.i

if.end13.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.1.i

if.then21.1.i:                                    ; preds = %if.end13.1.i
  call void @__sanitizer_cov_trace_pc() #15
  %145 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %arrayidx.1.i, align 2
  %and25.1.i = and i16 %call16.1.i, 254
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext %146, i16 noundef zeroext %and25.1.i) #13
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then21.1.i, %if.end13.1.i.for.inc.1.i_crit_edge, %if.end10.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %147 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %have_temp, align 4
  %149 = and i16 %148, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %149)
  %tobool8.not.2.i = icmp eq i16 %149, 0
  br i1 %tobool8.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end10.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end10.2.i:                                     ; preds = %for.inc.1.i
  %arrayidx.2.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 6, i32 2
  %150 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %arrayidx.2.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %151)
  %tobool11.not.2.i = icmp eq i16 %151, 0
  br i1 %tobool11.not.2.i, label %if.end10.2.i.for.inc.2.i_crit_edge, label %if.end13.2.i

if.end10.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end10.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.end13.2.i:                                     ; preds = %if.end10.2.i
  %call16.2.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext %151) #13
  %152 = and i16 %call16.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool20.not.2.i = icmp eq i16 %152, 0
  br i1 %tobool20.not.2.i, label %if.end13.2.i.for.inc.2.i_crit_edge, label %if.then21.2.i

if.end13.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.2.i

if.then21.2.i:                                    ; preds = %if.end13.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %153 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %arrayidx.2.i, align 2
  %and25.2.i = and i16 %call16.2.i, 254
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext %154, i16 noundef zeroext %and25.2.i) #13
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then21.2.i, %if.end13.2.i.for.inc.2.i_crit_edge, %if.end10.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %155 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %have_temp, align 4
  %157 = and i16 %156, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %157)
  %tobool8.not.3.i = icmp eq i16 %157, 0
  br i1 %tobool8.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end10.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.end10.3.i:                                     ; preds = %for.inc.2.i
  %arrayidx.3.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 6, i32 3
  %158 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx.3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %159)
  %tobool11.not.3.i = icmp eq i16 %159, 0
  br i1 %tobool11.not.3.i, label %if.end10.3.i.for.inc.3.i_crit_edge, label %if.end13.3.i

if.end10.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end10.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.end13.3.i:                                     ; preds = %if.end10.3.i
  %call16.3.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext %159) #13
  %160 = and i16 %call16.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %160)
  %tobool20.not.3.i = icmp eq i16 %160, 0
  br i1 %tobool20.not.3.i, label %if.end13.3.i.for.inc.3.i_crit_edge, label %if.then21.3.i

if.end13.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.3.i

if.then21.3.i:                                    ; preds = %if.end13.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %161 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %arrayidx.3.i, align 2
  %and25.3.i = and i16 %call16.3.i, 254
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext %162, i16 noundef zeroext %and25.3.i) #13
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then21.3.i, %if.end13.3.i.for.inc.3.i_crit_edge, %if.end10.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %call29.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext 93) #13
  %163 = and i16 %call29.i, 255
  %conv31.i = zext i16 %163 to i32
  %and32.i = and i32 %conv31.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %for.inc.3.i.if.end39.i_crit_edge

for.inc.3.i.if.end39.i_crit_edge:                 ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39.i

if.then34.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #15
  %or36.i = or i16 %163, 1
  tail call fastcc void @w83627ehf_write_value(ptr noundef %call.i, i16 noundef zeroext 93, i16 noundef zeroext %or36.i) #13
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then34.i, %for.inc.3.i.if.end39.i_crit_edge
  %164 = zext i32 %128 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %128, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 3, label %if.end39.i.sw.epilog.i_crit_edge
  ]

if.end39.i.sw.epilog.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  %call40.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext 89) #13
  %165 = and i16 %call40.i, 255
  %phi.cast.i = zext i16 %165 to i32
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb.i, %if.end39.i.sw.epilog.i_crit_edge
  %diode.0.i = phi i32 [ 112, %sw.default.i ], [ %phi.cast.i, %sw.bb.i ], [ 0, %if.end39.i.sw.epilog.i_crit_edge ]
  %temp_label.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 8
  %166 = ptrtoint ptr %temp_label.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %temp_label.i, align 4
  %tobool47.not.i = icmp eq ptr %167, null
  br i1 %tobool47.not.i, label %if.else67.1.critedge.i, label %if.end52.i

if.end52.i:                                       ; preds = %sw.epilog.i
  %arrayidx50.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 0
  %168 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %arrayidx50.i, align 1
  %idxprom.i = zext i8 %169 to i32
  %arrayidx51.i = getelementptr ptr, ptr %167, i32 %idxprom.i
  %170 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %arrayidx51.i, align 4
  %tobool53.not.i = icmp eq ptr %171, null
  br i1 %tobool53.not.i, label %if.end52.1.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end52.i
  %call54.i = tail call i32 @strncmp(ptr noundef nonnull %171, ptr noundef nonnull dereferenceable(5) @.str.39, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp eq i32 %call54.i, 0
  br i1 %cmp55.i, label %land.lhs.true.i.if.end52.1.i_crit_edge, label %land.lhs.true60.critedge.i

land.lhs.true.i.if.end52.1.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.1.i

land.lhs.true60.critedge.i:                       ; preds = %land.lhs.true.i
  %call61.i = tail call i32 @strncmp(ptr noundef nonnull %171, ptr noundef nonnull dereferenceable(4) @.str.40, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp eq i32 %call61.i, 0
  br i1 %cmp62.i, label %land.lhs.true60.critedge.i.if.end52.1.i_crit_edge, label %if.end52.1.critedge148.i

land.lhs.true60.critedge.i.if.end52.1.i_crit_edge: ; preds = %land.lhs.true60.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.1.i

if.end52.1.critedge.i:                            ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  %and70.c141.i = and i32 %conv31.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.c141.i)
  %tobool71.not.c142.i = icmp eq i32 %and70.c141.i, 0
  %and75.c143.i = and i32 %diode.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.c143.i)
  %tobool76.not.c144.i = icmp eq i32 %and75.c143.i, 0
  %conv77.c145.i = select i1 %tobool76.not.c144.i, i8 3, i8 1
  %.sink.c146.i = select i1 %tobool71.not.c142.i, i8 4, i8 %conv77.c145.i
  br label %if.end52.1.i

if.end52.1.critedge148.i:                         ; preds = %land.lhs.true60.critedge.i
  call void @__sanitizer_cov_trace_pc() #15
  %and70.c149.i = and i32 %conv31.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.c149.i)
  %tobool71.not.c150.i = icmp eq i32 %and70.c149.i, 0
  %and75.c151.i = and i32 %diode.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.c151.i)
  %tobool76.not.c152.i = icmp eq i32 %and75.c151.i, 0
  %conv77.c153.i = select i1 %tobool76.not.c152.i, i8 3, i8 1
  %.sink.c154.i = select i1 %tobool71.not.c150.i, i8 4, i8 %conv77.c153.i
  br label %if.end52.1.i

if.end52.1.i:                                     ; preds = %if.end52.1.critedge148.i, %if.end52.1.critedge.i, %land.lhs.true60.critedge.i.if.end52.1.i_crit_edge, %land.lhs.true.i.if.end52.1.i_crit_edge
  %.sink.c154.sink.i = phi i8 [ %.sink.c154.i, %if.end52.1.critedge148.i ], [ %.sink.c146.i, %if.end52.1.critedge.i ], [ 6, %land.lhs.true.i.if.end52.1.i_crit_edge ], [ 5, %land.lhs.true60.critedge.i.if.end52.1.i_crit_edge ]
  %arrayidx82.c155.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 25, i32 0
  %172 = ptrtoint ptr %arrayidx82.c155.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %.sink.c154.sink.i, ptr %arrayidx82.c155.i, align 1
  %arrayidx50.1.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 1
  %173 = ptrtoint ptr %arrayidx50.1.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %arrayidx50.1.i, align 1
  %idxprom.1.i = zext i8 %174 to i32
  %arrayidx51.1.i = getelementptr ptr, ptr %167, i32 %idxprom.1.i
  %175 = ptrtoint ptr %arrayidx51.1.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx51.1.i, align 4
  %tobool53.not.1.i = icmp eq ptr %176, null
  br i1 %tobool53.not.1.i, label %if.end52.1.i.if.else67.1.i_crit_edge, label %land.lhs.true.1.i

if.end52.1.i.if.else67.1.i_crit_edge:             ; preds = %if.end52.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67.1.i

land.lhs.true.1.i:                                ; preds = %if.end52.1.i
  %call54.1.i = tail call i32 @strncmp(ptr noundef nonnull %176, ptr noundef nonnull dereferenceable(5) @.str.39, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.1.i)
  %cmp55.1.i = icmp eq i32 %call54.1.i, 0
  br i1 %cmp55.1.i, label %land.lhs.true.1.i.if.end52.2.i_crit_edge, label %land.lhs.true60.critedge.1.i

land.lhs.true.1.i.if.end52.2.i_crit_edge:         ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.2.i

land.lhs.true60.critedge.1.i:                     ; preds = %land.lhs.true.1.i
  %call61.1.i = tail call i32 @strncmp(ptr noundef nonnull %176, ptr noundef nonnull dereferenceable(4) @.str.40, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.1.i)
  %cmp62.1.i = icmp eq i32 %call61.1.i, 0
  br i1 %cmp62.1.i, label %land.lhs.true60.critedge.1.i.if.end52.2.i_crit_edge, label %land.lhs.true60.critedge.1.i.if.else67.1.i_crit_edge

land.lhs.true60.critedge.1.i.if.else67.1.i_crit_edge: ; preds = %land.lhs.true60.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67.1.i

land.lhs.true60.critedge.1.i.if.end52.2.i_crit_edge: ; preds = %land.lhs.true60.critedge.1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52.2.i

if.else67.1.critedge.i:                           ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #15
  %and70.c.i = and i32 %conv31.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.c.i)
  %tobool71.not.c.i = icmp eq i32 %and70.c.i, 0
  %and75.c.i = and i32 %diode.0.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.c.i)
  %tobool76.not.c.i = icmp eq i32 %and75.c.i, 0
  %conv77.c.i = select i1 %tobool76.not.c.i, i8 3, i8 1
  %.sink.c.i = select i1 %tobool71.not.c.i, i8 4, i8 %conv77.c.i
  %arrayidx82.c.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 25, i32 0
  %177 = ptrtoint ptr %arrayidx82.c.i to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %.sink.c.i, ptr %arrayidx82.c.i, align 1
  %and70.1.c.i = and i32 %conv31.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1.c.i)
  %tobool71.not.1.c.i = icmp eq i32 %and70.1.c.i, 0
  %and75.1.c.i = and i32 %diode.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.1.c.i)
  %tobool76.not.1.c.i = icmp eq i32 %and75.1.c.i, 0
  %conv77.1.c.i = select i1 %tobool76.not.1.c.i, i8 3, i8 1
  %.sink138.c.i = select i1 %tobool71.not.1.c.i, i8 4, i8 %conv77.1.c.i
  %arrayidx82.1.c.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 25, i32 1
  %178 = ptrtoint ptr %arrayidx82.1.c.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %.sink138.c.i, ptr %arrayidx82.1.c.i, align 1
  br label %if.else67.2.i

if.else67.1.i:                                    ; preds = %land.lhs.true60.critedge.1.i.if.else67.1.i_crit_edge, %if.end52.1.i.if.else67.1.i_crit_edge
  %and70.1.i = and i32 %conv31.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.1.i)
  %tobool71.not.1.i = icmp eq i32 %and70.1.i, 0
  %and75.1.i = and i32 %diode.0.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.1.i)
  %tobool76.not.1.i = icmp eq i32 %and75.1.i, 0
  %conv77.1.i = select i1 %tobool76.not.1.i, i8 3, i8 1
  %.sink138.i = select i1 %tobool71.not.1.i, i8 4, i8 %conv77.1.i
  br label %if.end52.2.i

if.end52.2.i:                                     ; preds = %if.else67.1.i, %land.lhs.true60.critedge.1.i.if.end52.2.i_crit_edge, %land.lhs.true.1.i.if.end52.2.i_crit_edge
  %.sink138.i.sink = phi i8 [ %.sink138.i, %if.else67.1.i ], [ 5, %land.lhs.true60.critedge.1.i.if.end52.2.i_crit_edge ], [ 6, %land.lhs.true.1.i.if.end52.2.i_crit_edge ]
  %arrayidx82.1.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 25, i32 1
  %179 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_store1_noabort(i32 %179)
  store i8 %.sink138.i.sink, ptr %arrayidx82.1.i, align 1
  %arrayidx50.2.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 7, i32 2
  %180 = ptrtoint ptr %arrayidx50.2.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %arrayidx50.2.i, align 1
  %idxprom.2.i = zext i8 %181 to i32
  %arrayidx51.2.i = getelementptr ptr, ptr %167, i32 %idxprom.2.i
  %182 = ptrtoint ptr %arrayidx51.2.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %arrayidx51.2.i, align 4
  %tobool53.not.2.i = icmp eq ptr %183, null
  br i1 %tobool53.not.2.i, label %if.end52.2.i.if.else67.2.i_crit_edge, label %land.lhs.true.2.i

if.end52.2.i.if.else67.2.i_crit_edge:             ; preds = %if.end52.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67.2.i

land.lhs.true.2.i:                                ; preds = %if.end52.2.i
  %call54.2.i = tail call i32 @strncmp(ptr noundef nonnull %183, ptr noundef nonnull dereferenceable(5) @.str.39, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.2.i)
  %cmp55.2.i = icmp eq i32 %call54.2.i, 0
  br i1 %cmp55.2.i, label %land.lhs.true.2.i.w83627ehf_init_device.exit_crit_edge, label %land.lhs.true60.critedge.2.i

land.lhs.true.2.i.w83627ehf_init_device.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_init_device.exit

land.lhs.true60.critedge.2.i:                     ; preds = %land.lhs.true.2.i
  %call61.2.i = tail call i32 @strncmp(ptr noundef nonnull %183, ptr noundef nonnull dereferenceable(4) @.str.40, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.2.i)
  %cmp62.2.i = icmp eq i32 %call61.2.i, 0
  br i1 %cmp62.2.i, label %land.lhs.true60.critedge.2.i.w83627ehf_init_device.exit_crit_edge, label %land.lhs.true60.critedge.2.i.if.else67.2.i_crit_edge

land.lhs.true60.critedge.2.i.if.else67.2.i_crit_edge: ; preds = %land.lhs.true60.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else67.2.i

land.lhs.true60.critedge.2.i.w83627ehf_init_device.exit_crit_edge: ; preds = %land.lhs.true60.critedge.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_init_device.exit

if.else67.2.i:                                    ; preds = %land.lhs.true60.critedge.2.i.if.else67.2.i_crit_edge, %if.end52.2.i.if.else67.2.i_crit_edge, %if.else67.1.critedge.i
  %and70.2.i = and i32 %conv31.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.2.i)
  %tobool71.not.2.i = icmp eq i32 %and70.2.i, 0
  br i1 %tobool71.not.2.i, label %if.else67.2.i.w83627ehf_init_device.exit_crit_edge, label %if.then72.2.i

if.else67.2.i.w83627ehf_init_device.exit_crit_edge: ; preds = %if.else67.2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_init_device.exit

if.then72.2.i:                                    ; preds = %if.else67.2.i
  call void @__sanitizer_cov_trace_pc() #15
  %and75.2.i = and i32 %diode.0.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.2.i)
  %tobool76.not.2.i = icmp eq i32 %and75.2.i, 0
  %conv77.2.i = select i1 %tobool76.not.2.i, i8 3, i8 1
  br label %w83627ehf_init_device.exit

w83627ehf_init_device.exit:                       ; preds = %if.then72.2.i, %if.else67.2.i.w83627ehf_init_device.exit_crit_edge, %land.lhs.true60.critedge.2.i.w83627ehf_init_device.exit_crit_edge, %land.lhs.true.2.i.w83627ehf_init_device.exit_crit_edge
  %.sink140.i = phi i8 [ %conv77.2.i, %if.then72.2.i ], [ 5, %land.lhs.true60.critedge.2.i.w83627ehf_init_device.exit_crit_edge ], [ 6, %land.lhs.true.2.i.w83627ehf_init_device.exit_crit_edge ], [ 4, %if.else67.2.i.w83627ehf_init_device.exit_crit_edge ]
  %arrayidx82.2.i = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 25, i32 2
  %184 = ptrtoint ptr %arrayidx82.2.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %.sink140.i, ptr %arrayidx82.2.i, align 1
  %call289 = tail call zeroext i8 @vid_which_vrm() #13
  %vrm = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 45
  %185 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %call289, ptr %vrm, align 1
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %1, align 4
  %call.i558 = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %187, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 4194304) #13
  %tobool.not.i559 = icmp eq ptr %call.i558, null
  br i1 %tobool.not.i559, label %w83627ehf_init_device.exit.cleanup_crit_edge, label %if.end293

w83627ehf_init_device.exit.cleanup_crit_edge:     ; preds = %w83627ehf_init_device.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end293:                                        ; preds = %w83627ehf_init_device.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !292
  tail call void @arm_heavy_mb() #13
  %and.i = and i32 %187, 1048575
  %add.i = or i32 %and.i, -18874368
  %188 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 -121) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !293
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %188, i8 -121) #13, !srcloc !289
  %189 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %kind, align 4
  %191 = zext i32 %190 to i64
  call void @__sanitizer_cov_trace_switch(i64 %191, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %190, label %if.then313 [
    i32 4, label %if.end293.if.then301_crit_edge
    i32 5, label %if.end293.if.then301_crit_edge604
    i32 3, label %if.end293.if.then.i582_crit_edge
  ]

if.end293.if.then.i582_crit_edge:                 ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i582

if.end293.if.then301_crit_edge604:                ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then301

if.end293.if.then301_crit_edge:                   ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then301

if.then301:                                       ; preds = %if.end293.if.then301_crit_edge, %if.end293.if.then301_crit_edge604
  %192 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  %and.i560 = and i32 %193, 1048575
  %add.i561 = or i32 %and.i560, -18874368
  %194 = inttoptr i32 %add.i561 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 7) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void @arm_heavy_mb() #13
  %add3.i = add i32 %193, 1
  %and4.i = and i32 %add3.i, 1048575
  %add5.i = or i32 %and4.i, -18874368
  %195 = inttoptr i32 %add5.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %195, i8 13) #13, !srcloc !289
  %196 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i562 = and i32 %197, 1048575
  %add.i563 = or i32 %and.i562, -18874368
  %198 = inttoptr i32 %add.i563 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %198, i8 -29) #13, !srcloc !289
  %add1.i = add i32 %197, 1
  %and2.i = and i32 %add1.i, 1048575
  %add3.i564 = or i32 %and2.i, -18874368
  %199 = inttoptr i32 %add3.i564 to ptr
  %200 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %199) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %vid = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 44
  %201 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %201)
  store i8 %200, ptr %vid, align 2
  %have_vid = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %202 = ptrtoint ptr %have_vid to i32
  call void @__asan_load1_noabort(i32 %202)
  %bf.load306 = load i8, ptr %have_vid, align 4
  %bf.set308 = or i8 %bf.load306, 32
  store i8 %bf.set308, ptr %have_vid, align 4
  br label %if.end384

if.then313:                                       ; preds = %if.end293
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !299
  tail call void @arm_heavy_mb() #13
  %and.i565 = and i32 %204, 1048575
  %add.i566 = or i32 %and.i565, -18874368
  %205 = inttoptr i32 %add.i566 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %205, i8 7) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !300
  tail call void @arm_heavy_mb() #13
  %add3.i567 = add i32 %204, 1
  %and4.i568 = and i32 %add3.i567, 1048575
  %add5.i569 = or i32 %and4.i568, -18874368
  %206 = inttoptr i32 %add5.i569 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %206, i8 11) #13, !srcloc !289
  %207 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i570 = and i32 %208, 1048575
  %add.i571 = or i32 %and.i570, -18874368
  %209 = inttoptr i32 %add.i571 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %209, i8 -16) #13, !srcloc !289
  %add1.i572 = add i32 %208, 1
  %and2.i573 = and i32 %add1.i572, 1048575
  %add3.i574 = or i32 %and2.i573, -18874368
  %210 = inttoptr i32 %add3.i574 to ptr
  %211 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %210) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %211)
  %tobool318.not = icmp sgt i8 %211, -1
  br i1 %tobool318.not, label %do.end381, label %if.then319

if.then319:                                       ; preds = %if.then313
  %212 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp321 = icmp eq i32 %213, 0
  br i1 %cmp321, label %if.then323, label %if.then319.if.end360_crit_edge

if.then319.if.end360_crit_edge:                   ; preds = %if.then319
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

if.then323:                                       ; preds = %if.then319
  %214 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %1, align 4
  %call325 = tail call fastcc i32 @superio_inb(i32 noundef %215, i32 noundef 44)
  %conv327 = and i32 %call325, 247
  %and328 = and i32 %call325, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and328)
  %tobool329.not = icmp eq i32 %and328, 0
  %216 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %vrm, align 1
  br i1 %tobool329.not, label %land.lhs.true346.critedge, label %land.lhs.true330

land.lhs.true330:                                 ; preds = %if.then323
  call void @__sanitizer_cov_trace_const_cmp1(i8 90, i8 %217)
  %cmp333 = icmp eq i8 %217, 90
  br i1 %cmp333, label %do.end338, label %land.lhs.true330.if.end360_crit_edge

land.lhs.true330.if.end360_crit_edge:             ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

do.end338:                                        ; preds = %land.lhs.true330
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.17) #17
  %218 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %1, align 4
  tail call fastcc void @superio_outb(i32 noundef %219, i32 noundef 44, i32 noundef %conv327)
  br label %if.end360

land.lhs.true346.critedge:                        ; preds = %if.then323
  call void @__sanitizer_cov_trace_const_cmp1(i8 100, i8 %217)
  %cmp349 = icmp eq i8 %217, 100
  br i1 %cmp349, label %do.end354, label %land.lhs.true346.critedge.if.end360_crit_edge

land.lhs.true346.critedge.if.end360_crit_edge:    ; preds = %land.lhs.true346.critedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end360

do.end354:                                        ; preds = %land.lhs.true346.critedge
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.22) #17
  %220 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %1, align 4
  %or357 = or i32 %conv327, 8
  tail call fastcc void @superio_outb(i32 noundef %221, i32 noundef 44, i32 noundef %or357)
  br label %if.end360

if.end360:                                        ; preds = %do.end354, %land.lhs.true346.critedge.if.end360_crit_edge, %do.end338, %land.lhs.true330.if.end360_crit_edge, %if.then319.if.end360_crit_edge
  %222 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i576 = and i32 %223, 1048575
  %add.i577 = or i32 %and.i576, -18874368
  %224 = inttoptr i32 %add.i577 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 -15) #13, !srcloc !289
  %add1.i578 = add i32 %223, 1
  %and2.i579 = and i32 %add1.i578, 1048575
  %add3.i580 = or i32 %and2.i579, -18874368
  %225 = inttoptr i32 %add3.i580 to ptr
  %226 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %225) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %vid364 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 44
  %227 = ptrtoint ptr %vid364 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 %226, ptr %vid364, align 2
  %228 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp366 = icmp eq i32 %229, 0
  br i1 %cmp366, label %if.then368, label %if.end360.if.end373_crit_edge

if.end360.if.end373_crit_edge:                    ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end373

if.then368:                                       ; preds = %if.end360
  call void @__sanitizer_cov_trace_pc() #15
  %conv372 = and i8 %226, 63
  %230 = ptrtoint ptr %vid364 to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 %conv372, ptr %vid364, align 2
  br label %if.end373

if.end373:                                        ; preds = %if.then368, %if.end360.if.end373_crit_edge
  %have_vid374 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 48
  %231 = ptrtoint ptr %have_vid374 to i32
  call void @__asan_load1_noabort(i32 %231)
  %bf.load375 = load i8, ptr %have_vid374, align 4
  %bf.set377 = or i8 %bf.load375, 32
  store i8 %bf.set377, ptr %have_vid374, align 4
  br label %if.end384

do.end381:                                        ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.25) #17
  br label %if.end384

if.end384:                                        ; preds = %do.end381, %if.end373, %if.then301
  %232 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pr589 = load i32, ptr %kind, align 4
  %233 = zext i32 %.pr589 to i64
  call void @__sanitizer_cov_trace_switch(i64 %233, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %.pr589, label %if.else.i [
    i32 3, label %if.end384.if.then.i582_crit_edge
    i32 4, label %if.end384.if.then5.i_crit_edge
    i32 5, label %if.end384.if.then5.i_crit_edge605
  ]

if.end384.if.then5.i_crit_edge605:                ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

if.end384.if.then5.i_crit_edge:                   ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then5.i

if.end384.if.then.i582_crit_edge:                 ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i582

if.then.i582:                                     ; preds = %if.end384.if.then.i582_crit_edge, %if.end293.if.then.i582_crit_edge
  %has_fan.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 23
  %234 = ptrtoint ptr %has_fan.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 3, ptr %has_fan.i, align 1
  %has_fan_min.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 24
  %235 = ptrtoint ptr %has_fan_min.i to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 3, ptr %has_fan_min.i, align 4
  br label %w83627ehf_check_fan_inputs.exit

if.then5.i:                                       ; preds = %if.end384.if.then5.i_crit_edge, %if.end384.if.then5.i_crit_edge605
  %236 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i.i = and i32 %237, 1048575
  %add.i.i = or i32 %and.i.i, -18874368
  %238 = inttoptr i32 %add.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %238, i8 39) #13, !srcloc !289
  %add1.i.i = add i32 %237, 1
  %and2.i.i = and i32 %add1.i.i, 1048575
  %add3.i.i = or i32 %and2.i.i, -18874368
  %239 = inttoptr i32 %add3.i.i to ptr
  %240 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %239) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %241 = and i8 %240, 64
  %and.i583 = zext i8 %241 to i32
  %242 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i79.i = and i32 %243, 1048575
  %add.i80.i = or i32 %and.i79.i, -18874368
  %244 = inttoptr i32 %add.i80.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %244, i8 39) #13, !srcloc !289
  %add1.i81.i = add i32 %243, 1
  %and2.i82.i = and i32 %add1.i81.i, 1048575
  %add3.i83.i = or i32 %and2.i82.i, -18874368
  %245 = inttoptr i32 %add3.i83.i to ptr
  %246 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %245) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %247 = and i8 %246, 32
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #15
  %248 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i85.i = and i32 %249, 1048575
  %add.i86.i = or i32 %and.i85.i, -18874368
  %250 = inttoptr i32 %add.i86.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %250, i8 41) #13, !srcloc !289
  %add1.i87.i = add i32 %249, 1
  %and2.i88.i = and i32 %add1.i87.i, 1048575
  %add3.i89.i = or i32 %and2.i88.i, -18874368
  %251 = inttoptr i32 %add3.i89.i to ptr
  %252 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %251) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %253 = and i8 %252, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %253)
  %tobool.not.i584 = icmp eq i8 %253, 0
  %lnot.ext.i = zext i1 %tobool.not.i584 to i32
  %254 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %and.i91.i = and i32 %255, 1048575
  %add.i92.i = or i32 %and.i91.i, -18874368
  %256 = inttoptr i32 %add.i92.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %256, i8 36) #13, !srcloc !289
  %add1.i93.i = add i32 %255, 1
  %and2.i94.i = and i32 %add1.i93.i, 1048575
  %add3.i95.i = or i32 %and2.i94.i, -18874368
  %257 = inttoptr i32 %add3.i95.i to ptr
  %258 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %257) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %259 = lshr i8 %258, 1
  %260 = and i8 %259, 1
  %261 = xor i8 %260, 1
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then5.i
  %fan4pin.0.i = phi i32 [ %and.i583, %if.then5.i ], [ %lnot.ext.i, %if.else.i ]
  %fan5pin.0.in.i = phi i8 [ %247, %if.then5.i ], [ %261, %if.else.i ]
  %has_fan_min19.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 24
  %has_fan20.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 23
  %262 = ptrtoint ptr %has_fan20.i to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 7, ptr %has_fan20.i, align 1
  %263 = ptrtoint ptr %has_fan_min19.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 7, ptr %has_fan_min19.i, align 4
  %call28.i = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %call.i, i16 noundef zeroext 71) #13
  %conv29.i = zext i16 %call28.i to i32
  %and30.i = and i32 %conv29.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fan4pin.0.i)
  %tobool32.not.i = icmp eq i32 %fan4pin.0.i, 0
  %or.cond.i = select i1 %tobool31.not.i, i1 true, i1 %tobool32.not.i
  br i1 %or.cond.i, label %if.end18.i.if.end42.i_crit_edge, label %if.then33.i

if.end18.i.if.end42.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42.i

if.then33.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #15
  %264 = ptrtoint ptr %has_fan20.i to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %has_fan20.i, align 1
  %266 = or i8 %265, 8
  store i8 %266, ptr %has_fan20.i, align 1
  %267 = ptrtoint ptr %has_fan_min19.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %has_fan_min19.i, align 4
  %269 = or i8 %268, 8
  store i8 %269, ptr %has_fan_min19.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then33.i, %if.end18.i.if.end42.i_crit_edge
  %and43.i = and i32 %conv29.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp ne i32 %and43.i, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %fan5pin.0.in.i)
  %tobool46.not.i = icmp eq i8 %fan5pin.0.in.i, 0
  %or.cond78.i = select i1 %tobool44.not.i, i1 true, i1 %tobool46.not.i
  br i1 %or.cond78.i, label %if.end42.i.w83627ehf_check_fan_inputs.exit_crit_edge, label %if.then47.i

if.end42.i.w83627ehf_check_fan_inputs.exit_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %w83627ehf_check_fan_inputs.exit

if.then47.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #15
  %270 = ptrtoint ptr %has_fan20.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %has_fan20.i, align 1
  %272 = or i8 %271, 16
  store i8 %272, ptr %has_fan20.i, align 1
  %273 = ptrtoint ptr %has_fan_min19.i to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %has_fan_min19.i, align 4
  %275 = or i8 %274, 16
  store i8 %275, ptr %has_fan_min19.i, align 4
  br label %w83627ehf_check_fan_inputs.exit

w83627ehf_check_fan_inputs.exit:                  ; preds = %if.then47.i, %if.end42.i.w83627ehf_check_fan_inputs.exit_crit_edge, %if.then.i582
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !296
  tail call void @arm_heavy_mb() #13
  %and.i585 = and i32 %277, 1048575
  %add.i586 = or i32 %and.i585, -18874368
  %278 = inttoptr i32 %add.i586 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 -86) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !297
  tail call void @arm_heavy_mb() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %278, i8 2) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !298
  tail call void @arm_heavy_mb() #13
  %add8.i = add i32 %277, 1
  %and9.i = and i32 %add8.i, 1048575
  %add10.i = or i32 %and9.i, -18874368
  %279 = inttoptr i32 %add10.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %279, i8 2) #13, !srcloc !289
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %277, i32 noundef 2) #13
  tail call fastcc void @w83627ehf_update_fan_div(ptr noundef nonnull %call.i)
  tail call fastcc void @w83627ehf_update_pwm(ptr noundef nonnull %call.i)
  %pwm_num387 = getelementptr inbounds %struct.w83627ehf_data, ptr %call.i, i32 0, i32 35
  %280 = ptrtoint ptr %pwm_num387 to i32
  call void @__asan_load1_noabort(i32 %280)
  %281 = load i8, ptr %pwm_num387, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %281)
  %cmp389596.not = icmp eq i8 %281, 0
  br i1 %cmp389596.not, label %w83627ehf_check_fan_inputs.exit.for.end396_crit_edge, label %w83627ehf_check_fan_inputs.exit.for.body391_crit_edge

w83627ehf_check_fan_inputs.exit.for.body391_crit_edge: ; preds = %w83627ehf_check_fan_inputs.exit
  br label %for.body391

w83627ehf_check_fan_inputs.exit.for.end396_crit_edge: ; preds = %w83627ehf_check_fan_inputs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end396

for.body391:                                      ; preds = %for.body391.for.body391_crit_edge, %w83627ehf_check_fan_inputs.exit.for.body391_crit_edge
  %i.2597 = phi i32 [ %inc395, %for.body391.for.body391_crit_edge ], [ 0, %w83627ehf_check_fan_inputs.exit.for.body391_crit_edge ]
  %arrayidx392 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 33, i32 %i.2597
  %282 = ptrtoint ptr %arrayidx392 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %arrayidx392, align 1
  %arrayidx393 = getelementptr %struct.w83627ehf_data, ptr %call.i, i32 0, i32 34, i32 %i.2597
  %284 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_store1_noabort(i32 %284)
  store i8 %283, ptr %arrayidx393, align 1
  %inc395 = add nuw nsw i32 %i.2597, 1
  %285 = ptrtoint ptr %pwm_num387 to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %pwm_num387, align 1
  %conv388 = zext i8 %286 to i32
  %cmp389 = icmp ult i32 %inc395, %conv388
  br i1 %cmp389, label %for.body391.for.body391_crit_edge, label %for.body391.for.end396_crit_edge

for.body391.for.end396_crit_edge:                 ; preds = %for.body391
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end396

for.body391.for.body391_crit_edge:                ; preds = %for.body391
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body391

for.end396:                                       ; preds = %for.body391.for.end396_crit_edge, %w83627ehf_check_fan_inputs.exit.for.end396_crit_edge
  %287 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %name, align 4
  %call399 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %288, ptr noundef nonnull %call.i, ptr noundef nonnull @w83627ehf_chip_info, ptr noundef nonnull @w83627ehf_groups) #13
  %cmp.i.i = icmp ugt ptr %call399, inttoptr (i32 -4096 to ptr)
  %289 = ptrtoint ptr %call399 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %289, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.end396, %w83627ehf_init_device.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %for.end396 ], [ -16, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -16, %w83627ehf_init_device.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @superio_inb(i32 noundef %ioreg, i32 noundef %reg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !294
  tail call void @arm_heavy_mb() #13
  %conv = trunc i32 %reg to i8
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #13, !srcloc !289
  %add1 = add i32 %ioreg, 1
  %and2 = and i32 %add1, 1048575
  %add3 = or i32 %and2, -18874368
  %1 = inttoptr i32 %add3 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #13, !srcloc !290
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !295
  %conv6 = zext i8 %2 to i32
  ret i32 %conv6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @superio_outb(i32 noundef %ioreg, i32 noundef %reg, i32 noundef %val) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !301
  tail call void @arm_heavy_mb() #13
  %conv = trunc i32 %reg to i8
  %and = and i32 %ioreg, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %conv) #13, !srcloc !289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #13, !srcloc !302
  tail call void @arm_heavy_mb() #13
  %conv3 = trunc i32 %val to i8
  %add4 = add i32 %ioreg, 1
  %and5 = and i32 %add4, 1048575
  %add6 = or i32 %and5, -18874368
  %1 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %1, i8 %conv3) #13, !srcloc !289
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_request_region(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal fastcc void @w83627ehf_set_temp_reg_ehf(ptr nocapture noundef writeonly %data, i32 noundef %n_temp) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_temp)
  %cmp20 = icmp sgt i32 %n_temp, 0
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i16], ptr @W83627EHF_REG_TEMP, i32 0, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 3, i32 %i.021
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %arrayidx1, align 2
  %arrayidx2 = getelementptr [4 x i16], ptr @W83627EHF_REG_TEMP_OVER, i32 0, i32 %i.021
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx2, align 2
  %arrayidx3 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 4, i32 %i.021
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %arrayidx3, align 2
  %arrayidx4 = getelementptr [4 x i16], ptr @W83627EHF_REG_TEMP_HYST, i32 0, i32 %i.021
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx4, align 2
  %arrayidx5 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 5, i32 %i.021
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %arrayidx5, align 2
  %arrayidx6 = getelementptr [4 x i16], ptr @W83627EHF_REG_TEMP_CONFIG, i32 0, i32 %i.021
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx6, align 2
  %arrayidx7 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 6, i32 %i.021
  %11 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %arrayidx7, align 2
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %n_temp
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @w83627ehf_is_visible(ptr nocapture noundef readonly %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %type, label %sw.default [
    i32 1, label %sw.bb
    i32 7, label %sw.bb51
    i32 2, label %sw.bb79
    i32 8, label %sw.bb108
    i32 9, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %have_temp = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 46
  %1 = ptrtoint ptr %have_temp to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %have_temp, align 4
  %conv = zext i16 %2 to i32
  %shl = shl nuw i32 1, %channel
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %attr, label %if.end10 [
    i32 1, label %if.end.cleanup_crit_edge
    i32 21, label %if.then6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %temp_label = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 8
  %4 = ptrtoint ptr %temp_label to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %temp_label, align 4
  %tobool7.not = icmp eq ptr %5, null
  %. = select i1 %tobool7.not, i16 0, i16 292
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp11 = icmp eq i32 %channel, 2
  br i1 %cmp11, label %land.lhs.true, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  %temp3_val_only = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 48
  %6 = ptrtoint ptr %temp3_val_only to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %temp3_val_only, align 4
  %7 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool14.not = icmp eq i8 %7, 0
  br i1 %tobool14.not, label %land.lhs.true.if.end16_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %attr, label %if.end30 [
    i32 7, label %if.then19
    i32 8, label %if.then25
  ]

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 4, i32 %channel
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool20.not = icmp eq i16 %10, 0
  %.170 = select i1 %tobool20.not, i16 0, i16 420
  br label %cleanup

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx26 = getelementptr %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 5, i32 %channel
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx26, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool27.not = icmp eq i16 %12, 0
  %.171 = select i1 %tobool27.not, i16 0, i16 420
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp31 = icmp sgt i32 %channel, 2
  br i1 %cmp31, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %attr, label %if.end34.sw.epilog_crit_edge [
    i32 13, label %if.end34.cleanup_crit_edge
    i32 2, label %if.end34.cleanup_crit_edge174
    i32 20, label %if.then43
  ]

if.end34.cleanup_crit_edge174:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then43:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  %have_temp_offset = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 47
  %14 = ptrtoint ptr %have_temp_offset to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %have_temp_offset, align 2
  %conv44 = zext i16 %15 to i32
  %and46 = and i32 %shl, %conv44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  %.172 = select i1 %tobool47.not, i16 0, i16 420
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 23
  %16 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_fan, align 1
  %conv52 = zext i8 %17 to i32
  %shl53 = shl nuw i32 1, %channel
  %and54 = and i32 %shl53, %conv52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %sw.bb51.cleanup_crit_edge, label %if.end57

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57:                                         ; preds = %sw.bb51
  %18 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %attr, label %if.end57.sw.epilog_crit_edge [
    i32 1, label %if.end57.cleanup_crit_edge
    i32 8, label %if.end57.cleanup_crit_edge175
    i32 5, label %if.end57.cleanup_crit_edge176
    i32 3, label %if.then71
  ]

if.end57.cleanup_crit_edge176:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57.cleanup_crit_edge175:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end57.sw.epilog_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then71:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #15
  %has_fan_min = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 24
  %19 = ptrtoint ptr %has_fan_min to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_fan_min, align 4
  %conv72 = zext i8 %20 to i32
  %and74 = and i32 %shl53, %conv72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  %.173 = select i1 %tobool75.not, i16 0, i16 420
  br label %cleanup

sw.bb79:                                          ; preds = %entry
  %in_num = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 16
  %21 = ptrtoint ptr %in_num to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %in_num, align 1
  %conv80 = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv80, i32 %channel)
  %cmp81.not = icmp sgt i32 %conv80, %channel
  br i1 %cmp81.not, label %if.end84, label %sw.bb79.cleanup_crit_edge

sw.bb79.cleanup_crit_edge:                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end84:                                         ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %channel)
  %cmp85 = icmp eq i32 %channel, 6
  br i1 %cmp85, label %land.lhs.true87, label %if.end84.if.end93_crit_edge

if.end84.if.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

land.lhs.true87:                                  ; preds = %if.end84
  %in6_skip = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 48
  %23 = ptrtoint ptr %in6_skip to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load88 = load i8, ptr %in6_skip, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load88)
  %tobool91.not = icmp sgt i8 %bf.load88, -1
  br i1 %tobool91.not, label %land.lhs.true87.if.end93_crit_edge, label %land.lhs.true87.cleanup_crit_edge

land.lhs.true87.cleanup_crit_edge:                ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true87.if.end93_crit_edge:               ; preds = %land.lhs.true87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end93

if.end93:                                         ; preds = %land.lhs.true87.if.end93_crit_edge, %if.end84.if.end93_crit_edge
  %24 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %attr, label %if.end93.sw.epilog_crit_edge [
    i32 11, label %if.end93.cleanup_crit_edge
    i32 1, label %if.end93.cleanup_crit_edge177
    i32 2, label %if.end93.if.then106_crit_edge
    i32 3, label %if.end93.if.then106_crit_edge178
  ]

if.end93.if.then106_crit_edge178:                 ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

if.end93.if.then106_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then106

if.end93.cleanup_crit_edge177:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end93.sw.epilog_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.then106:                                       ; preds = %if.end93.if.then106_crit_edge, %if.end93.if.then106_crit_edge178
  br label %cleanup

sw.bb108:                                         ; preds = %entry
  %has_fan109 = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 23
  %25 = ptrtoint ptr %has_fan109 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %has_fan109, align 1
  %conv110 = zext i8 %26 to i32
  %shl111 = shl nuw i32 1, %channel
  %and112 = and i32 %shl111, %conv110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %sw.bb108.cleanup_crit_edge, label %lor.lhs.false114

sw.bb108.cleanup_crit_edge:                       ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false114:                                 ; preds = %sw.bb108
  %pwm_num = getelementptr inbounds %struct.w83627ehf_data, ptr %drvdata, i32 0, i32 35
  %27 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pwm_num, align 1
  %conv115 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv115, i32 %channel)
  %cmp116.not = icmp sgt i32 %conv115, %channel
  br i1 %cmp116.not, label %if.end119, label %lor.lhs.false114.cleanup_crit_edge

lor.lhs.false114.cleanup_crit_edge:               ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end119:                                        ; preds = %lor.lhs.false114
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attr)
  %switch = icmp ult i32 %attr, 3
  br i1 %switch, label %if.end119.cleanup_crit_edge, label %if.end119.sw.epilog_crit_edge

if.end119.sw.epilog_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %sw.epilog

if.end119.cleanup_crit_edge:                      ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.epilog:                                        ; preds = %if.end119.sw.epilog_crit_edge, %if.end93.sw.epilog_crit_edge, %if.end57.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.default, %if.end119.cleanup_crit_edge, %lor.lhs.false114.cleanup_crit_edge, %sw.bb108.cleanup_crit_edge, %if.then106, %if.end93.cleanup_crit_edge, %if.end93.cleanup_crit_edge177, %land.lhs.true87.cleanup_crit_edge, %sw.bb79.cleanup_crit_edge, %if.then71, %if.end57.cleanup_crit_edge, %if.end57.cleanup_crit_edge175, %if.end57.cleanup_crit_edge176, %sw.bb51.cleanup_crit_edge, %if.then43, %if.end34.cleanup_crit_edge, %if.end34.cleanup_crit_edge174, %if.end30.cleanup_crit_edge, %if.then25, %if.then19, %land.lhs.true.cleanup_crit_edge, %if.then6, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default ], [ 0, %sw.epilog ], [ 420, %if.then106 ], [ 0, %sw.bb.cleanup_crit_edge ], [ 292, %if.end.cleanup_crit_edge ], [ %., %if.then6 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %.170, %if.then19 ], [ %.171, %if.then25 ], [ 0, %if.end30.cleanup_crit_edge ], [ 292, %if.end34.cleanup_crit_edge ], [ 292, %if.end34.cleanup_crit_edge174 ], [ %.172, %if.then43 ], [ 0, %sw.bb51.cleanup_crit_edge ], [ 292, %if.end57.cleanup_crit_edge ], [ 292, %if.end57.cleanup_crit_edge175 ], [ 292, %if.end57.cleanup_crit_edge176 ], [ %.173, %if.then71 ], [ 0, %sw.bb79.cleanup_crit_edge ], [ 0, %land.lhs.true87.cleanup_crit_edge ], [ 292, %if.end93.cleanup_crit_edge ], [ 292, %if.end93.cleanup_crit_edge177 ], [ 0, %lor.lhs.false114.cleanup_crit_edge ], [ 0, %sw.bb108.cleanup_crit_edge ], [ 420, %if.end119.cleanup_crit_edge ], [ 420, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627ehf_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 7, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb4
    i32 1, label %sw.bb6
    i32 9, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 5, label %sw.bb4.i
    i32 8, label %sw.bb8.i
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 20, i32 %channel
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  br label %cleanup.sink.split

sw.bb1.i:                                         ; preds = %sw.bb
  %arrayidx2.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 21, i32 %channel
  %6 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx2.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.126)
  switch i16 %7, label %if.end.i.i [
    i16 0, label %sw.bb1.i.cleanup.sink.split_crit_edge
    i16 255, label %sw.bb1.i.cleanup.sink.split_crit_edge66
  ]

sw.bb1.i.cleanup.sink.split_crit_edge66:          ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

sw.bb1.i.cleanup.sink.split_crit_edge:            ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx3.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 22, i32 %channel
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %10 to i32
  %conv.i.i = zext i16 %7 to i32
  %shl.i.i = shl i32 %conv.i.i, %conv.i
  %div.i.i = udiv i32 1350000, %shl.i.i
  br label %cleanup.sink.split

sw.bb4.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 22, i32 %channel
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx6.i, align 1
  %conv.i23.i = zext i8 %12 to i32
  %shl.i24.i = shl nuw i32 1, %conv.i23.i
  br label %cleanup.sink.split

sw.bb8.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %channel)
  %cmp.i = icmp slt i32 %channel, 5
  br i1 %cmp.i, label %if.then.i, label %sw.bb8.i.cleanup_crit_edge

sw.bb8.i.cleanup_crit_edge:                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #15
  %alarms.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 30
  %13 = ptrtoint ptr %alarms.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %alarms.i, align 4
  %arrayidx10.i = getelementptr [5 x i32], ptr @__const.w83627ehf_do_read_fan.bit, i32 0, i32 %channel
  %15 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx10.i, align 4
  %shr.i = lshr i32 %14, %16
  %and.i = and i32 %shr.i, 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %17 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %attr, label %sw.bb2.cleanup_crit_edge [
    i32 1, label %sw.bb.i28
    i32 2, label %sw.bb1.i30
    i32 3, label %sw.bb6.i
    i32 11, label %sw.bb11.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i28:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i26 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 17, i32 %channel
  %18 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i26, align 1
  %scale_in.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 11
  %20 = ptrtoint ptr %scale_in.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %scale_in.i, align 4
  %conv.i.i27 = zext i8 %19 to i32
  %idxprom.i.i = and i32 %channel, 255
  %arrayidx.i.i = getelementptr i16, ptr %21, i32 %idxprom.i.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx.i.i, align 2
  %conv1.i.i = zext i16 %23 to i32
  %mul.i.i = mul nuw nsw i32 %conv1.i.i, %conv.i.i27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp.not.i.i = icmp eq i32 %mul.i.i, 0
  %add.i.i = add nuw nsw i32 %mul.i.i, 50
  %add.op.i.i = udiv i32 %add.i.i, 100
  %cond.i.i = select i1 %cmp.not.i.i, i32 0, i32 %add.op.i.i
  br label %cleanup.sink.split

sw.bb1.i30:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i29 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 19, i32 %channel
  %24 = ptrtoint ptr %arrayidx2.i29 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx2.i29, align 1
  %scale_in4.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 11
  %26 = ptrtoint ptr %scale_in4.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %scale_in4.i, align 4
  %conv.i30.i = zext i8 %25 to i32
  %idxprom.i31.i = and i32 %channel, 255
  %arrayidx.i32.i = getelementptr i16, ptr %27, i32 %idxprom.i31.i
  %28 = ptrtoint ptr %arrayidx.i32.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx.i32.i, align 2
  %conv1.i33.i = zext i16 %29 to i32
  %mul.i34.i = mul nuw nsw i32 %conv1.i33.i, %conv.i30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i34.i)
  %cmp.not.i35.i = icmp eq i32 %mul.i34.i, 0
  %add.i36.i = add nuw nsw i32 %mul.i34.i, 50
  %add.op.i37.i = udiv i32 %add.i36.i, 100
  %cond.i38.i = select i1 %cmp.not.i35.i, i32 0, i32 %add.op.i37.i
  br label %cleanup.sink.split

sw.bb6.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx7.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 18, i32 %channel
  %30 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.i, align 1
  %scale_in9.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 11
  %32 = ptrtoint ptr %scale_in9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %scale_in9.i, align 4
  %conv.i39.i = zext i8 %31 to i32
  %idxprom.i40.i = and i32 %channel, 255
  %arrayidx.i41.i = getelementptr i16, ptr %33, i32 %idxprom.i40.i
  %34 = ptrtoint ptr %arrayidx.i41.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i41.i, align 2
  %conv1.i42.i = zext i16 %35 to i32
  %mul.i43.i = mul nuw nsw i32 %conv1.i42.i, %conv.i39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i43.i)
  %cmp.not.i44.i = icmp eq i32 %mul.i43.i, 0
  %add.i45.i = add nuw nsw i32 %mul.i43.i, 50
  %add.op.i46.i = udiv i32 %add.i45.i, 100
  %cond.i47.i = select i1 %cmp.not.i44.i, i32 0, i32 %add.op.i46.i
  br label %cleanup.sink.split

sw.bb11.i:                                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %channel)
  %cmp.i31 = icmp slt i32 %channel, 10
  br i1 %cmp.i31, label %if.then.i35, label %sw.bb11.i.cleanup_crit_edge

sw.bb11.i.cleanup_crit_edge:                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i35:                                      ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #15
  %alarms.i32 = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 30
  %36 = ptrtoint ptr %alarms.i32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %alarms.i32, align 4
  %arrayidx13.i = getelementptr [10 x i32], ptr @__const.w83627ehf_do_read_in.bit, i32 0, i32 %channel
  %38 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx13.i, align 4
  %shr.i33 = lshr i32 %37, %39
  %and.i34 = and i32 %shr.i33, 1
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  %40 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %attr, label %sw.bb4.cleanup_crit_edge [
    i32 0, label %sw.bb.i40
    i32 1, label %sw.bb1.i42
    i32 2, label %sw.bb4.i44
  ]

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i40:                                        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i39 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 36, i32 %channel
  br label %return.sink.split.i45

sw.bb1.i42:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i41 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 33, i32 %channel
  br label %return.sink.split.i45

sw.bb4.i44:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6.i43 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 33, i32 %channel
  br label %return.sink.split.i45

return.sink.split.i45:                            ; preds = %sw.bb4.i44, %sw.bb1.i42, %sw.bb.i40
  %arrayidx6.sink.i = phi ptr [ %arrayidx6.i43, %sw.bb4.i44 ], [ %arrayidx2.i41, %sw.bb1.i42 ], [ %arrayidx.i39, %sw.bb.i40 ]
  %41 = ptrtoint ptr %arrayidx6.sink.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx6.sink.i, align 1
  %conv7.i = zext i8 %42 to i32
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry
  %43 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %attr, label %sw.bb6.cleanup_crit_edge [
    i32 1, label %sw.bb.i50
    i32 7, label %sw.bb1.i52
    i32 8, label %sw.bb4.i54
    i32 20, label %sw.bb7.i
    i32 2, label %sw.bb9.i
    i32 13, label %sw.bb12.i
  ]

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

sw.bb.i50:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i47 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 27, i32 %channel
  %44 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx.i47, align 2
  %46 = sdiv i16 %45, 128
  %div.i.i48 = sext i16 %46 to i32
  %mul.i.i49 = mul nsw i32 %div.i.i48, 500
  br label %cleanup.sink.split

sw.bb1.i52:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx2.i51 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 28, i32 %channel
  %47 = ptrtoint ptr %arrayidx2.i51 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx2.i51, align 2
  %49 = sdiv i16 %48, 128
  %div.i31.i = sext i16 %49 to i32
  %mul.i32.i = mul nsw i32 %div.i31.i, 500
  br label %cleanup.sink.split

sw.bb4.i54:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx5.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 29, i32 %channel
  %50 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %arrayidx5.i, align 2
  %52 = sdiv i16 %51, 128
  %div.i33.i = sext i16 %52 to i32
  %mul.i34.i53 = mul nsw i32 %div.i33.i, 500
  br label %cleanup.sink.split

sw.bb7.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx8.i = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 26, i32 %channel
  %53 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx8.i, align 1
  %conv.i55 = sext i8 %54 to i32
  %mul.i = mul nsw i32 %conv.i55, 1000
  br label %cleanup.sink.split

sw.bb9.i:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx10.i56 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 25, i32 %channel
  %55 = ptrtoint ptr %arrayidx10.i56 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx10.i56, align 1
  %conv11.i = zext i8 %56 to i32
  br label %cleanup.sink.split

sw.bb12.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %channel)
  %cmp.i57 = icmp slt i32 %channel, 3
  br i1 %cmp.i57, label %if.then.i61, label %sw.bb12.i.cleanup_crit_edge

sw.bb12.i.cleanup_crit_edge:                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i61:                                      ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #15
  %alarms.i58 = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 30
  %57 = ptrtoint ptr %alarms.i58 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %alarms.i58, align 4
  %arrayidx14.i = getelementptr [3 x i32], ptr @__const.w83627ehf_do_read_temp.bit, i32 0, i32 %channel
  %59 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx14.i, align 4
  %shr.i59 = lshr i32 %58, %60
  %and.i60 = and i32 %shr.i59, 1
  br label %cleanup.sink.split

sw.bb8:                                           ; preds = %entry
  %61 = or i32 %channel, %attr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %if.end.i, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #15
  %caseopen.i = getelementptr inbounds %struct.w83627ehf_data, ptr %call, i32 0, i32 31
  %63 = ptrtoint ptr %caseopen.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %caseopen.i, align 4
  %65 = lshr i8 %64, 4
  %.lobit.i = and i8 %65, 1
  %66 = zext i8 %.lobit.i to i32
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.i, %if.then.i61, %sw.bb9.i, %sw.bb7.i, %sw.bb4.i54, %sw.bb1.i52, %sw.bb.i50, %return.sink.split.i45, %if.then.i35, %sw.bb6.i, %sw.bb1.i30, %sw.bb.i28, %if.then.i, %sw.bb4.i, %if.end.i.i, %sw.bb1.i.cleanup.sink.split_crit_edge, %sw.bb1.i.cleanup.sink.split_crit_edge66, %sw.bb.i
  %.sink = phi i32 [ %66, %if.end.i ], [ %conv7.i, %return.sink.split.i45 ], [ %and.i, %if.then.i ], [ %shl.i24.i, %sw.bb4.i ], [ %5, %sw.bb.i ], [ %div.i.i, %if.end.i.i ], [ 0, %sw.bb1.i.cleanup.sink.split_crit_edge ], [ 0, %sw.bb1.i.cleanup.sink.split_crit_edge66 ], [ %and.i34, %if.then.i35 ], [ %cond.i47.i, %sw.bb6.i ], [ %cond.i38.i, %sw.bb1.i30 ], [ %cond.i.i, %sw.bb.i28 ], [ %and.i60, %if.then.i61 ], [ %conv11.i, %sw.bb9.i ], [ %mul.i, %sw.bb7.i ], [ %mul.i34.i53, %sw.bb4.i54 ], [ %mul.i32.i, %sw.bb1.i52 ], [ %mul.i.i49, %sw.bb.i50 ]
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb8.cleanup_crit_edge, %sw.bb12.i.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %sw.bb11.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb8.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %sw.bb8.i.cleanup_crit_edge ], [ -95, %sw.bb2.cleanup_crit_edge ], [ -95, %sw.bb11.i.cleanup_crit_edge ], [ -95, %sw.bb4.cleanup_crit_edge ], [ -95, %sw.bb6.cleanup_crit_edge ], [ -95, %sw.bb12.i.cleanup_crit_edge ], [ -95, %sw.bb8.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @w83627ehf_read_string(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %str) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cond = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %attr)
  %cmp = icmp eq i32 %attr, 21
  %or.cond = and i1 %cond, %cmp
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %temp_label = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %temp_label to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %temp_label, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 7, i32 %channel
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %idxprom = zext i8 %5 to i32
  %arrayidx1 = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %str, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83627ehf_write(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type)
  %cmp = icmp eq i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 2
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i = icmp slt i32 %val, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %update_lock.i = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #13
  %scale_in.i = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %scale_in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %scale_in.i, align 4
  %mul.i.i = mul i32 %val, 100
  %idxprom.i.i = and i32 %channel, 255
  %arrayidx.i.i = getelementptr i16, ptr %3, i32 %idxprom.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %5 to i32
  %div18.i.i = lshr i32 %conv.i.i, 1
  %add.i.i = add i32 %div18.i.i, %mul.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i)
  %cmp.not.i.i = icmp ult i32 %add.i.i, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.cond.end.thread.i.i_crit_edge, label %cond.end.i.i

if.end.i.cond.end.thread.i.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread.i.i

cond.end.i.i:                                     ; preds = %if.end.i
  %div2.i.i = udiv i32 %add.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div2.i.i)
  %cmp6.i.i = icmp ult i32 %div2.i.i, 255
  br i1 %cmp6.i.i, label %cond.end.i.i.cond.end.thread.i.i_crit_edge, label %cond.end.i.i.in_to_reg.exit.i_crit_edge

cond.end.i.i.in_to_reg.exit.i_crit_edge:          ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %in_to_reg.exit.i

cond.end.i.i.cond.end.thread.i.i_crit_edge:       ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread.i.i

cond.end.thread.i.i:                              ; preds = %cond.end.i.i.cond.end.thread.i.i_crit_edge, %if.end.i.cond.end.thread.i.i_crit_edge
  %cond21.i.i = phi i32 [ %div2.i.i, %cond.end.i.i.cond.end.thread.i.i_crit_edge ], [ 0, %if.end.i.cond.end.thread.i.i_crit_edge ]
  br label %in_to_reg.exit.i

in_to_reg.exit.i:                                 ; preds = %cond.end.thread.i.i, %cond.end.i.i.in_to_reg.exit.i_crit_edge
  %6 = phi i32 [ %cond21.i.i, %cond.end.thread.i.i ], [ 255, %cond.end.i.i.in_to_reg.exit.i_crit_edge ]
  %conv12.i.i = trunc i32 %6 to i8
  %arrayidx.i = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 19, i32 %channel
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12.i.i, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp1.i = icmp slt i32 %channel, 7
  %mul.i = shl i32 %channel, 1
  %cond.v.i = select i1 %cmp1.i, i32 44, i32 1351
  %cond.i = add i32 %cond.v.i, %mul.i
  %conv5.i = trunc i32 %cond.i to i16
  %8 = trunc i32 %6 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %conv5.i, i16 noundef zeroext %8) #13
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attr)
  %cmp5 = icmp eq i32 %attr, 3
  %or.cond112 = and i1 %cmp, %cmp5
  br i1 %or.cond112, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.i121 = icmp slt i32 %val, 0
  br i1 %cmp.i121, label %if.then6.cleanup_crit_edge, label %if.end.i131

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i131:                                      ; preds = %if.then6
  %update_lock.i122 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i122, i32 noundef 0) #13
  %scale_in.i123 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %scale_in.i123 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scale_in.i123, align 4
  %mul.i.i124 = mul i32 %val, 100
  %idxprom.i.i125 = and i32 %channel, 255
  %arrayidx.i.i126 = getelementptr i16, ptr %10, i32 %idxprom.i.i125
  %11 = ptrtoint ptr %arrayidx.i.i126 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i.i126, align 2
  %conv.i.i127 = zext i16 %12 to i32
  %div18.i.i128 = lshr i32 %conv.i.i127, 1
  %add.i.i129 = add i32 %div18.i.i128, %mul.i.i124
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i129, i32 %conv.i.i127)
  %cmp.not.i.i130 = icmp ult i32 %add.i.i129, %conv.i.i127
  br i1 %cmp.not.i.i130, label %if.end.i131.cond.end.thread.i.i136_crit_edge, label %cond.end.i.i134

if.end.i131.cond.end.thread.i.i136_crit_edge:     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread.i.i136

cond.end.i.i134:                                  ; preds = %if.end.i131
  %div2.i.i132 = udiv i32 %add.i.i129, %conv.i.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %div2.i.i132)
  %cmp6.i.i133 = icmp ult i32 %div2.i.i132, 255
  br i1 %cmp6.i.i133, label %cond.end.i.i134.cond.end.thread.i.i136_crit_edge, label %cond.end.i.i134.in_to_reg.exit.i144_crit_edge

cond.end.i.i134.in_to_reg.exit.i144_crit_edge:    ; preds = %cond.end.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %in_to_reg.exit.i144

cond.end.i.i134.cond.end.thread.i.i136_crit_edge: ; preds = %cond.end.i.i134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end.thread.i.i136

cond.end.thread.i.i136:                           ; preds = %cond.end.i.i134.cond.end.thread.i.i136_crit_edge, %if.end.i131.cond.end.thread.i.i136_crit_edge
  %cond21.i.i135 = phi i32 [ %div2.i.i132, %cond.end.i.i134.cond.end.thread.i.i136_crit_edge ], [ 0, %if.end.i131.cond.end.thread.i.i136_crit_edge ]
  br label %in_to_reg.exit.i144

in_to_reg.exit.i144:                              ; preds = %cond.end.thread.i.i136, %cond.end.i.i134.in_to_reg.exit.i144_crit_edge
  %13 = phi i32 [ %cond21.i.i135, %cond.end.thread.i.i136 ], [ 255, %cond.end.i.i134.in_to_reg.exit.i144_crit_edge ]
  %conv12.i.i137 = trunc i32 %13 to i8
  %arrayidx.i138 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 18, i32 %channel
  %14 = ptrtoint ptr %arrayidx.i138 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv12.i.i137, ptr %arrayidx.i138, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %channel)
  %cmp1.i139 = icmp slt i32 %channel, 7
  %mul.i140 = shl i32 %channel, 1
  %cond.v.i141 = select i1 %cmp1.i139, i32 43, i32 1350
  %cond.i142 = add i32 %cond.v.i141, %mul.i140
  %conv5.i143 = trunc i32 %cond.i142 to i16
  %15 = trunc i32 %13 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %conv5.i143, i16 noundef zeroext %15) #13
  tail call void @mutex_unlock(ptr noundef %update_lock.i122) #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cmp9 = icmp eq i32 %type, 7
  %or.cond113 = and i1 %cmp9, %cmp5
  br i1 %or.cond113, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = tail call fastcc i32 @store_fan_min(ptr noundef %dev, ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp15 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %attr)
  %cmp17 = icmp eq i32 %attr, 7
  %or.cond114 = and i1 %cmp15, %cmp17
  br i1 %or.cond114, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end14
  %update_lock.i146 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i146, i32 noundef 0) #13
  %16 = tail call i32 @llvm.smax.i32(i32 %val, i32 -55000) #13
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 125000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp7.i.i = icmp slt i32 %17, 0
  %cond8.i.i = select i1 %cmp7.i.i, i32 -250, i32 250
  %add.i.i147 = add nsw i32 %cond8.i.i, %17
  %div.i.i = sdiv i32 %add.i.i147, 500
  %div.tr.i.i = trunc i32 %div.i.i to i16
  %conv.i.i148 = shl nsw i16 %div.tr.i.i, 7
  %arrayidx.i149 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 28, i32 %channel
  %18 = ptrtoint ptr %arrayidx.i149 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i148, ptr %arrayidx.i149, align 2
  %arrayidx1.i = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 4, i32 %channel
  %19 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx1.i, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %and.i.i.i = and i16 %20, -256
  %21 = zext i16 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.130)
  switch i16 %and.i.i.i, label %if.then18.lor.lhs.false20.i.i.i_crit_edge [
    i16 256, label %if.then18.land.lhs.true.i.i.i_crit_edge
    i16 512, label %if.then18.land.lhs.true.i.i.i_crit_edge175
  ]

if.then18.land.lhs.true.i.i.i_crit_edge175:       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i.i

if.then18.land.lhs.true.i.i.i_crit_edge:          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i.i

if.then18.lor.lhs.false20.i.i.i_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then18.land.lhs.true.i.i.i_crit_edge, %if.then18.land.lhs.true.i.i.i_crit_edge175
  %trunc.i.i.i = trunc i16 %20 to i8
  %22 = zext i8 %trunc.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %trunc.i.i.i, label %land.lhs.true.i.i.i.lor.lhs.false20.i.i.i_crit_edge [
    i8 80, label %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge
    i8 83, label %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge176
    i8 85, label %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge177
  ]

land.lhs.true.i.i.i.store_temp_max.exit_crit_edge177: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

land.lhs.true.i.i.i.store_temp_max.exit_crit_edge176: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

land.lhs.true.i.i.i.store_temp_max.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

land.lhs.true.i.i.i.lor.lhs.false20.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i.i

lor.lhs.false20.i.i.i:                            ; preds = %land.lhs.true.i.i.i.lor.lhs.false20.i.i.i_crit_edge, %if.then18.lor.lhs.false20.i.i.i_crit_edge
  %and22.i.i.i = and i32 %conv.i.i.i, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i.i)
  %cmp23.i.i.i = icmp eq i32 %and22.i.i.i, 1584
  %23 = and i16 %20, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %23)
  %24 = icmp eq i16 %23, 1600
  %25 = or i1 %24, %cmp23.i.i.i
  br i1 %25, label %lor.lhs.false20.i.i.i.store_temp_max.exit_crit_edge, label %lor.lhs.false33.i.i.i

lor.lhs.false20.i.i.i.store_temp_max.exit_crit_edge: ; preds = %lor.lhs.false20.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

lor.lhs.false33.i.i.i:                            ; preds = %lor.lhs.false20.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i.i)
  %cmp36.i.i.i = icmp eq i32 %and22.i.i.i, 1616
  %and40.i.i.i = and i32 %conv.i.i.i, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i.i)
  %cmp41.i.i.i = icmp ugt i32 %and40.i.i.i, 5
  %or.cond67.i.i.i = and i1 %cmp36.i.i.i, %cmp41.i.i.i
  br i1 %or.cond67.i.i.i, label %lor.lhs.false33.i.i.i.store_temp_max.exit_crit_edge, label %switch.early.test.i.i.i

lor.lhs.false33.i.i.i.store_temp_max.exit_crit_edge: ; preds = %lor.lhs.false33.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

switch.early.test.i.i.i:                          ; preds = %lor.lhs.false33.i.i.i
  %26 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.132)
  switch i16 %20, label %is_word_sized.exit.i.i [
    i16 117, label %switch.early.test.i.i.i.store_temp_max.exit_crit_edge
    i16 115, label %switch.early.test.i.i.i.store_temp_max.exit_crit_edge178
  ]

switch.early.test.i.i.i.store_temp_max.exit_crit_edge178: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

switch.early.test.i.i.i.store_temp_max.exit_crit_edge: ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max.exit

is_word_sized.exit.i.i:                           ; preds = %switch.early.test.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %20)
  %cmp52.i.not.i.i = icmp eq i16 %20, 119
  %27 = lshr i16 %conv.i.i148, 8
  %spec.select.i.i = select i1 %cmp52.i.not.i.i, i16 %conv.i.i148, i16 %27
  br label %store_temp_max.exit

store_temp_max.exit:                              ; preds = %is_word_sized.exit.i.i, %switch.early.test.i.i.i.store_temp_max.exit_crit_edge, %switch.early.test.i.i.i.store_temp_max.exit_crit_edge178, %lor.lhs.false33.i.i.i.store_temp_max.exit_crit_edge, %lor.lhs.false20.i.i.i.store_temp_max.exit_crit_edge, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge176, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge177
  %28 = phi i16 [ %conv.i.i148, %lor.lhs.false20.i.i.i.store_temp_max.exit_crit_edge ], [ %conv.i.i148, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge ], [ %conv.i.i148, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge176 ], [ %conv.i.i148, %land.lhs.true.i.i.i.store_temp_max.exit_crit_edge177 ], [ %conv.i.i148, %switch.early.test.i.i.i.store_temp_max.exit_crit_edge ], [ %conv.i.i148, %switch.early.test.i.i.i.store_temp_max.exit_crit_edge178 ], [ %conv.i.i148, %lor.lhs.false33.i.i.i.store_temp_max.exit_crit_edge ], [ %spec.select.i.i, %is_word_sized.exit.i.i ]
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %20, i16 noundef zeroext %28) #13
  tail call void @mutex_unlock(ptr noundef %update_lock.i146) #13
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %attr)
  %cmp23 = icmp eq i32 %attr, 8
  %or.cond115 = and i1 %cmp15, %cmp23
  br i1 %or.cond115, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  %update_lock.i150 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i150, i32 noundef 0) #13
  %29 = tail call i32 @llvm.smax.i32(i32 %val, i32 -55000) #13
  %30 = tail call i32 @llvm.smin.i32(i32 %29, i32 125000) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp7.i.i151 = icmp slt i32 %30, 0
  %cond8.i.i152 = select i1 %cmp7.i.i151, i32 -250, i32 250
  %add.i.i153 = add nsw i32 %cond8.i.i152, %30
  %div.i.i154 = sdiv i32 %add.i.i153, 500
  %div.tr.i.i155 = trunc i32 %div.i.i154 to i16
  %conv.i.i156 = shl nsw i16 %div.tr.i.i155, 7
  %arrayidx.i157 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 29, i32 %channel
  %31 = ptrtoint ptr %arrayidx.i157 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i.i156, ptr %arrayidx.i157, align 2
  %arrayidx1.i158 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 5, i32 %channel
  %32 = ptrtoint ptr %arrayidx1.i158 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx1.i158, align 2
  %conv.i.i.i159 = zext i16 %33 to i32
  %and.i.i.i160 = and i16 %33, -256
  %34 = zext i16 %and.i.i.i160 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.133)
  switch i16 %and.i.i.i160, label %if.then24.lor.lhs.false20.i.i.i165_crit_edge [
    i16 256, label %if.then24.land.lhs.true.i.i.i162_crit_edge
    i16 512, label %if.then24.land.lhs.true.i.i.i162_crit_edge179
  ]

if.then24.land.lhs.true.i.i.i162_crit_edge179:    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i.i162

if.then24.land.lhs.true.i.i.i162_crit_edge:       ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true.i.i.i162

if.then24.lor.lhs.false20.i.i.i165_crit_edge:     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i.i165

land.lhs.true.i.i.i162:                           ; preds = %if.then24.land.lhs.true.i.i.i162_crit_edge, %if.then24.land.lhs.true.i.i.i162_crit_edge179
  %trunc.i.i.i161 = trunc i16 %33 to i8
  %35 = zext i8 %trunc.i.i.i161 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.134)
  switch i8 %trunc.i.i.i161, label %land.lhs.true.i.i.i162.lor.lhs.false20.i.i.i165_crit_edge [
    i8 80, label %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge
    i8 83, label %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge180
    i8 85, label %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge181
  ]

land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge181: ; preds = %land.lhs.true.i.i.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge180: ; preds = %land.lhs.true.i.i.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge: ; preds = %land.lhs.true.i.i.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

land.lhs.true.i.i.i162.lor.lhs.false20.i.i.i165_crit_edge: ; preds = %land.lhs.true.i.i.i162
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false20.i.i.i165

lor.lhs.false20.i.i.i165:                         ; preds = %land.lhs.true.i.i.i162.lor.lhs.false20.i.i.i165_crit_edge, %if.then24.lor.lhs.false20.i.i.i165_crit_edge
  %and22.i.i.i163 = and i32 %conv.i.i.i159, 65520
  call void @__sanitizer_cov_trace_const_cmp4(i32 1584, i32 %and22.i.i.i163)
  %cmp23.i.i.i164 = icmp eq i32 %and22.i.i.i163, 1584
  %36 = and i16 %33, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 1600, i16 %36)
  %37 = icmp eq i16 %36, 1600
  %38 = or i1 %37, %cmp23.i.i.i164
  br i1 %38, label %lor.lhs.false20.i.i.i165.store_temp_max_hyst.exit_crit_edge, label %lor.lhs.false33.i.i.i170

lor.lhs.false20.i.i.i165.store_temp_max_hyst.exit_crit_edge: ; preds = %lor.lhs.false20.i.i.i165
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

lor.lhs.false33.i.i.i170:                         ; preds = %lor.lhs.false20.i.i.i165
  call void @__sanitizer_cov_trace_const_cmp4(i32 1616, i32 %and22.i.i.i163)
  %cmp36.i.i.i166 = icmp eq i32 %and22.i.i.i163, 1616
  %and40.i.i.i167 = and i32 %conv.i.i.i159, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and40.i.i.i167)
  %cmp41.i.i.i168 = icmp ugt i32 %and40.i.i.i167, 5
  %or.cond67.i.i.i169 = and i1 %cmp36.i.i.i166, %cmp41.i.i.i168
  br i1 %or.cond67.i.i.i169, label %lor.lhs.false33.i.i.i170.store_temp_max_hyst.exit_crit_edge, label %switch.early.test.i.i.i171

lor.lhs.false33.i.i.i170.store_temp_max_hyst.exit_crit_edge: ; preds = %lor.lhs.false33.i.i.i170
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

switch.early.test.i.i.i171:                       ; preds = %lor.lhs.false33.i.i.i170
  %39 = zext i16 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.135)
  switch i16 %33, label %is_word_sized.exit.i.i174 [
    i16 117, label %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge
    i16 115, label %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge182
  ]

switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge182: ; preds = %switch.early.test.i.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge: ; preds = %switch.early.test.i.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  br label %store_temp_max_hyst.exit

is_word_sized.exit.i.i174:                        ; preds = %switch.early.test.i.i.i171
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 119, i16 %33)
  %cmp52.i.not.i.i172 = icmp eq i16 %33, 119
  %40 = lshr i16 %conv.i.i156, 8
  %spec.select.i.i173 = select i1 %cmp52.i.not.i.i172, i16 %conv.i.i156, i16 %40
  br label %store_temp_max_hyst.exit

store_temp_max_hyst.exit:                         ; preds = %is_word_sized.exit.i.i174, %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge, %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge182, %lor.lhs.false33.i.i.i170.store_temp_max_hyst.exit_crit_edge, %lor.lhs.false20.i.i.i165.store_temp_max_hyst.exit_crit_edge, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge180, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge181
  %41 = phi i16 [ %conv.i.i156, %lor.lhs.false20.i.i.i165.store_temp_max_hyst.exit_crit_edge ], [ %conv.i.i156, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge ], [ %conv.i.i156, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge180 ], [ %conv.i.i156, %land.lhs.true.i.i.i162.store_temp_max_hyst.exit_crit_edge181 ], [ %conv.i.i156, %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge ], [ %conv.i.i156, %switch.early.test.i.i.i171.store_temp_max_hyst.exit_crit_edge182 ], [ %conv.i.i156, %lor.lhs.false33.i.i.i170.store_temp_max_hyst.exit_crit_edge ], [ %spec.select.i.i173, %is_word_sized.exit.i.i174 ]
  tail call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %33, i16 noundef zeroext %41) #13
  tail call void @mutex_unlock(ptr noundef %update_lock.i150) #13
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %attr)
  %cmp29 = icmp eq i32 %attr, 20
  %or.cond116 = and i1 %cmp15, %cmp29
  br i1 %or.cond116, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @store_temp_offset(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %type)
  %cmp33 = icmp eq i32 %type, 8
  %or.cond117 = and i1 %cmp33, %cmp1
  br i1 %or.cond117, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %call37 = tail call fastcc i32 @store_pwm_mode(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cmp41 = icmp eq i32 %attr, 1
  %or.cond118 = and i1 %cmp33, %cmp41
  br i1 %or.cond118, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %call43 = tail call fastcc i32 @store_pwm_enable(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cmp47 = icmp eq i32 %attr, 0
  %or.cond119 = and i1 %cmp33, %cmp47
  br i1 %or.cond119, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @store_pwm(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

if.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %type)
  %cmp51 = icmp eq i32 %type, 9
  %or.cond120 = and i1 %cmp51, %cmp47
  br i1 %or.cond120, label %if.then54, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then54:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #15
  %call55 = tail call fastcc i32 @clear_caseopen(ptr noundef %1, i32 noundef %channel, i32 noundef %val)
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end50.cleanup_crit_edge, %if.then48, %if.then42, %if.then36, %if.then30, %store_temp_max_hyst.exit, %store_temp_max.exit, %if.then12, %in_to_reg.exit.i144, %if.then6.cleanup_crit_edge, %in_to_reg.exit.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ 0, %store_temp_max.exit ], [ 0, %store_temp_max_hyst.exit ], [ 0, %if.then30 ], [ %call37, %if.then36 ], [ %call43, %if.then42 ], [ 0, %if.then48 ], [ %call55, %if.then54 ], [ -95, %if.end50.cleanup_crit_edge ], [ 0, %in_to_reg.exit.i ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %in_to_reg.exit.i144 ], [ -22, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_fan_min(ptr noundef %dev, ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp slt i32 %val, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 21, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 255, ptr %arrayidx, align 2
  %arrayidx2 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 %channel
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx2, align 1
  %add = add i32 %channel, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %add) #17
  br label %if.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 42, i32 %val)
  %cmp3 = icmp ult i32 %val, 42
  br i1 %cmp3, label %if.then4, label %if.else11

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 21, i32 %channel
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 254, ptr %arrayidx6, align 2
  %add10 = add i32 %channel, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %add10, i32 noundef %val, i32 noundef 41) #17
  br label %if.end30

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350000, i32 %val)
  %tobool12.not = icmp ugt i32 %val, 1350000
  br i1 %tobool12.not, label %if.then13, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.else11
  %div = udiv i32 1350000, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 6995, i32 %val)
  %cmp22108 = icmp ult i32 %val, 6995
  br i1 %cmp22108, label %while.body, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

if.then13:                                        ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx15 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 21, i32 %channel
  %4 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 1, ptr %arrayidx15, align 2
  %add19 = add i32 %channel, 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %add19, i32 noundef %val, i32 noundef 1350000) #17
  br label %if.end30

while.body:                                       ; preds = %while.cond.preheader
  %shr = lshr i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3498, i32 %val)
  %cmp22 = icmp ult i32 %val, 3498
  br i1 %cmp22, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %shr.1 = lshr i32 %div, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1749, i32 %val)
  %cmp22.1 = icmp ult i32 %val, 1749
  br i1 %cmp22.1, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %shr.2 = lshr i32 %div, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 875, i32 %val)
  %cmp22.2 = icmp ult i32 %val, 875
  br i1 %cmp22.2, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %shr.3 = lshr i32 %div, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 438, i32 %val)
  %cmp22.3 = icmp ult i32 %val, 438
  br i1 %cmp22.3, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  %shr.4 = lshr i32 %div, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 219, i32 %val)
  %cmp22.4 = icmp ult i32 %val, 219
  br i1 %cmp22.4, label %while.body.5, label %while.body.4.while.end_crit_edge

while.body.4.while.end_crit_edge:                 ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.5:                                     ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #15
  %shr.5 = lshr i32 %div, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 110, i32 %val)
  %cmp22.5 = icmp ult i32 %val, 110
  %shr.6 = lshr i32 %div, 7
  %spec.select = select i1 %cmp22.5, i32 %shr.6, i32 %shr.5
  %spec.select112 = select i1 %cmp22.5, i8 7, i8 6
  br label %while.end

while.end:                                        ; preds = %while.body.5, %while.body.4.while.end_crit_edge, %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %new_div.0.lcssa = phi i8 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 3, %while.body.2.while.end_crit_edge ], [ 4, %while.body.3.while.end_crit_edge ], [ 5, %while.body.4.while.end_crit_edge ], [ %spec.select112, %while.body.5 ]
  %reg.0.lcssa = phi i32 [ %div, %while.cond.preheader.while.end_crit_edge ], [ %shr, %while.body.while.end_crit_edge ], [ %shr.1, %while.body.1.while.end_crit_edge ], [ %shr.2, %while.body.2.while.end_crit_edge ], [ %shr.3, %while.body.3.while.end_crit_edge ], [ %shr.4, %while.body.4.while.end_crit_edge ], [ %spec.select, %while.body.5 ]
  %conv25 = trunc i32 %reg.0.lcssa to i16
  %arrayidx27 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 21, i32 %channel
  %5 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv25, ptr %arrayidx27, align 2
  br label %if.end30

if.end30:                                         ; preds = %while.end, %if.then13, %if.then4, %if.then1
  %new_div.1 = phi i8 [ 7, %if.then4 ], [ %new_div.0.lcssa, %while.end ], [ 0, %if.then13 ], [ %2, %if.then1 ]
  %arrayidx33 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 22, i32 %channel
  %6 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx33, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_div.1, i8 %7)
  %cmp35.not = icmp eq i8 %new_div.1, %7
  br i1 %cmp35.not, label %if.end30.if.end55_crit_edge, label %do.body38

if.end30.if.end55_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

do.body38:                                        ; preds = %if.end30
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @store_fan_min.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@store_fan_min, %do.end52)) #13
          to label %if.then44 [label %do.end52], !srcloc !287

if.then44:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  %add45 = add i32 %channel, 1
  %8 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx33, align 1
  %conv.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv.i105 = zext i8 %new_div.1 to i32
  %shl.i106 = shl nuw i32 1, %conv.i105
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @store_fan_min.__UNIQUE_ID_ddebug198, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %add45, i32 noundef %shl.i, i32 noundef %shl.i106) #13
  br label %do.end52

do.end52:                                         ; preds = %if.then44, %do.body38
  %10 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %new_div.1, ptr %arrayidx33, align 1
  tail call fastcc void @w83627ehf_write_fan_div(ptr noundef %data, i32 noundef %channel)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %last_updated = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 14
  %12 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %last_updated, align 4
  br label %if.end55

if.end55:                                         ; preds = %do.end52, %if.end30.if.end55_crit_edge
  %arrayidx56 = getelementptr [5 x i16], ptr @W83627EHF_REG_FAN_MIN, i32 0, i32 %channel
  %13 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx56, align 2
  %arrayidx58 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 21, i32 %channel
  %15 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx58, align 2
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %14, i16 noundef zeroext %16)
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end55 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @store_temp_offset(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp = icmp sgt i32 %val, 0
  %cond.in.v = select i1 %cmp, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %cond.in)
  %cmp9 = icmp sgt i32 %cond.in, -128000
  %cond = sdiv i32 %cond.in, 1000
  %0 = tail call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %1 = select i1 %cmp9, i32 %0, i32 -128
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %conv22 = trunc i32 %1 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 26, i32 %channel
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv22, ptr %arrayidx, align 1
  %arrayidx23 = getelementptr [3 x i16], ptr @W83627EHF_REG_TEMP_OFFSET, i32 0, i32 %channel
  %3 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx23, align 2
  %conv24 = trunc i32 %1 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %4, i16 noundef zeroext %conv24)
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_pwm_mode(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %0 = icmp ugt i32 %val, 1
  br i1 %0, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %arrayidx = getelementptr [4 x i8], ptr @W83627EHF_REG_PWM_ENABLE, i32 0, i32 %channel
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i16
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %conv)
  %conv2 = trunc i32 %val to i8
  %arrayidx3 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 32, i32 %channel
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %arrayidx3, align 1
  %arrayidx4 = getelementptr [4 x i8], ptr @W83627EHF_PWM_MODE_SHIFT, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv5
  %6 = trunc i32 %shl to i16
  %7 = xor i16 %6, -1
  %conv7 = and i16 %call, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %conv13 = or i16 %call, %6
  %reg.0 = select i1 %tobool.not, i16 %conv13, i16 %conv7
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %conv, i16 noundef zeroext %reg.0)
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @store_pwm_enable(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %0 = icmp slt i32 %val, 1
  br i1 %0, label %entry.cleanup_crit_edge, label %lor.lhs.false1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

lor.lhs.false1:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val)
  %cmp2 = icmp ugt i32 %val, 4
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false1.if.end_crit_edge

lor.lhs.false1.if.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false1
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 34, i32 %channel
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %val)
  %cmp3.not = icmp eq i32 %conv, %val
  br i1 %cmp3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false1.if.end_crit_edge
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %conv5 = trunc i32 %val to i8
  %arrayidx6 = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 33, i32 %channel
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv5, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr [4 x i8], ptr @W83627EHF_REG_PWM_ENABLE, i32 0, i32 %channel
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %5 to i16
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext %conv8)
  %arrayidx9 = getelementptr [4 x i8], ptr @W83627EHF_PWM_ENABLE_SHIFT, i32 0, i32 %channel
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %7 to i32
  %shl = shl i32 3, %conv10
  %8 = trunc i32 %shl to i16
  %9 = xor i16 %8, -1
  %conv12 = and i16 %call, %9
  %sub = add nuw i32 %val, 65535
  %shl15 = shl i32 %sub, %conv10
  %10 = trunc i32 %shl15 to i16
  %conv17 = or i16 %conv12, %10
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %conv8, i16 noundef zeroext %conv17)
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @store_pwm(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %val, i32 0)
  %1 = tail call i32 @llvm.umin.i32(i32 %0, i32 255)
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %conv = trunc i32 %1 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %data, i32 0, i32 36, i32 %channel
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr [4 x i16], ptr @W83627EHF_REG_PWM, i32 0, i32 %channel
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx7, align 2
  %conv8 = trunc i32 %1 to i16
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext %4, i16 noundef zeroext %conv8)
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clear_caseopen(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = or i32 %val, %channel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %call = tail call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %data, i16 noundef zeroext 70)
  %or = or i16 %call, 128
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 70, i16 noundef zeroext %or)
  %2 = and i16 %call, -129
  tail call fastcc void @w83627ehf_write_value(ptr noundef %data, i16 noundef zeroext 70, i16 noundef zeroext %2)
  %valid = getelementptr inbounds %struct.w83627ehf_data, ptr %data, i32 0, i32 13
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %valid, align 4
  tail call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @w83627ehf_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %show, align 4
  %cmp = icmp eq ptr %3, @cpu0_vid_show
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %have_vid = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %have_vid to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %have_vid, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp2 = icmp slt i32 %7, 2
  br i1 %cmp2, label %land.lhs.true4, label %if.end17

land.lhs.true4:                                   ; preds = %if.end
  %cmp6 = icmp eq ptr %3, @show_fan_stop_time
  %cmp9 = icmp eq ptr %3, @show_fan_start_output
  %or.cond = or i1 %cmp6, %cmp9
  %cmp13 = icmp eq ptr %3, @show_fan_stop_output
  %or.cond167 = or i1 %cmp13, %or.cond
  br i1 %or.cond167, label %land.lhs.true4.cleanup.sink.split_crit_edge, label %land.lhs.true4.land.lhs.true21_crit_edge

land.lhs.true4.land.lhs.true21_crit_edge:         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true21

land.lhs.true4.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end17:                                         ; preds = %if.end
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %7, label %if.end17.if.end100_crit_edge [
    i32 2, label %if.end17.land.lhs.true21_crit_edge
    i32 3, label %land.lhs.true68
  ]

if.end17.land.lhs.true21_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.lhs.true21

if.end17.if.end100_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true21:                                  ; preds = %if.end17.land.lhs.true21_crit_edge, %land.lhs.true4.land.lhs.true21_crit_edge
  %cmp23 = icmp eq ptr %3, @show_fan_max_output
  %cmp27 = icmp eq ptr %3, @show_fan_step_output
  %or.cond168 = or i1 %cmp23, %cmp27
  br i1 %or.cond168, label %land.lhs.true29, label %land.lhs.true21.if.end39_crit_edge

land.lhs.true21.if.end39_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true29:                                  ; preds = %land.lhs.true21
  %REG_FAN_STEP_OUTPUT = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %REG_FAN_STEP_OUTPUT to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %REG_FAN_STEP_OUTPUT, align 4
  %tobool30.not = icmp eq ptr %10, null
  br i1 %tobool30.not, label %land.lhs.true29.if.end39_crit_edge, label %land.lhs.true31

land.lhs.true29.if.end39_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

land.lhs.true31:                                  ; preds = %land.lhs.true29
  %arrayidx = getelementptr i16, ptr %10, i32 %7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %12)
  %cmp35.not = icmp eq i16 %12, 255
  br i1 %cmp35.not, label %land.lhs.true31.if.end39_crit_edge, label %land.lhs.true31.cleanup.sink.split_crit_edge

land.lhs.true31.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true31.if.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true31.if.end39_crit_edge, %land.lhs.true29.if.end39_crit_edge, %land.lhs.true21.if.end39_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp41 = icmp eq i32 %7, 2
  br i1 %cmp41, label %land.lhs.true43, label %if.end39.if.end100_crit_edge

if.end39.if.end100_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true43:                                  ; preds = %if.end39
  %has_fan = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 23
  %13 = ptrtoint ptr %has_fan to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_fan, align 1
  %15 = and i8 %14, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool45.not = icmp eq i8 %15, 0
  br i1 %tobool45.not, label %land.lhs.true43.if.end100_crit_edge, label %land.lhs.true46

land.lhs.true43.if.end100_crit_edge:              ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %pwm_num = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 35
  %16 = ptrtoint ptr %pwm_num to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwm_num, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %17)
  %cmp48 = icmp ugt i8 %17, 2
  br i1 %cmp48, label %land.lhs.true50, label %land.lhs.true46.if.end100_crit_edge

land.lhs.true46.if.end100_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true50:                                  ; preds = %land.lhs.true46
  %cmp52 = icmp eq ptr %3, @show_fan_stop_time
  %cmp56 = icmp eq ptr %3, @show_fan_start_output
  %or.cond169 = or i1 %cmp52, %cmp56
  %cmp60 = icmp eq ptr %3, @show_fan_stop_output
  %or.cond170 = or i1 %cmp60, %or.cond169
  br i1 %or.cond170, label %land.lhs.true50.cleanup.sink.split_crit_edge, label %land.lhs.true50.if.end100_crit_edge

land.lhs.true50.if.end100_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true50.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

land.lhs.true68:                                  ; preds = %if.end17
  %has_fan69 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 23
  %18 = ptrtoint ptr %has_fan69 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_fan69, align 1
  %20 = and i8 %19, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool72.not = icmp eq i8 %20, 0
  br i1 %tobool72.not, label %land.lhs.true68.if.end100_crit_edge, label %land.lhs.true73

land.lhs.true68.if.end100_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true73:                                  ; preds = %land.lhs.true68
  %pwm_num74 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 35
  %21 = ptrtoint ptr %pwm_num74 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pwm_num74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %22)
  %cmp76 = icmp ugt i8 %22, 3
  br i1 %cmp76, label %land.lhs.true78, label %land.lhs.true73.if.end100_crit_edge

land.lhs.true73.if.end100_crit_edge:              ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true78:                                  ; preds = %land.lhs.true73
  %cmp80 = icmp eq ptr %3, @show_fan_stop_time
  %cmp84 = icmp eq ptr %3, @show_fan_start_output
  %or.cond171 = or i1 %cmp80, %cmp84
  %cmp88 = icmp eq ptr %3, @show_fan_stop_output
  %or.cond172 = or i1 %cmp88, %or.cond171
  %cmp92 = icmp eq ptr %3, @show_fan_max_output
  %or.cond173 = or i1 %cmp92, %or.cond172
  %cmp96 = icmp eq ptr %3, @show_fan_step_output
  %or.cond174 = or i1 %cmp96, %or.cond173
  br i1 %or.cond174, label %land.lhs.true78.cleanup.sink.split_crit_edge, label %land.lhs.true78.if.end100_crit_edge

land.lhs.true78.if.end100_crit_edge:              ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end100

land.lhs.true78.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end100:                                        ; preds = %land.lhs.true78.if.end100_crit_edge, %land.lhs.true73.if.end100_crit_edge, %land.lhs.true68.if.end100_crit_edge, %land.lhs.true50.if.end100_crit_edge, %land.lhs.true46.if.end100_crit_edge, %land.lhs.true43.if.end100_crit_edge, %if.end39.if.end100_crit_edge, %if.end17.if.end100_crit_edge
  %cmp102 = icmp eq ptr %3, @show_target_temp
  %cmp106 = icmp eq ptr %3, @show_tolerance
  %or.cond175 = or i1 %cmp102, %cmp106
  br i1 %or.cond175, label %land.lhs.true108, label %if.end100.cleanup_crit_edge

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true108:                                 ; preds = %if.end100
  %has_fan109 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 23
  %23 = ptrtoint ptr %has_fan109 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %has_fan109, align 1
  %conv110 = zext i8 %24 to i32
  %shl = shl nuw i32 1, %7
  %and112 = and i32 %shl, %conv110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112)
  %tobool113.not = icmp eq i32 %and112, 0
  br i1 %tobool113.not, label %land.lhs.true108.cleanup_crit_edge, label %land.lhs.true114

land.lhs.true108.cleanup_crit_edge:               ; preds = %land.lhs.true108
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true114:                                 ; preds = %land.lhs.true108
  %pwm_num116 = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 35
  %25 = ptrtoint ptr %pwm_num116 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pwm_num116, align 1
  %conv117 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv117)
  %cmp118 = icmp slt i32 %7, %conv117
  br i1 %cmp118, label %land.lhs.true114.cleanup.sink.split_crit_edge, label %land.lhs.true114.cleanup_crit_edge

land.lhs.true114.cleanup_crit_edge:               ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true114.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true114.cleanup.sink.split_crit_edge, %land.lhs.true78.cleanup.sink.split_crit_edge, %land.lhs.true50.cleanup.sink.split_crit_edge, %land.lhs.true31.cleanup.sink.split_crit_edge, %land.lhs.true4.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %mode121 = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %27 = ptrtoint ptr %mode121 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %mode121, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true114.cleanup_crit_edge, %land.lhs.true108.cleanup_crit_edge, %if.end100.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.end100.cleanup_crit_edge ], [ 0, %land.lhs.true114.cleanup_crit_edge ], [ 0, %land.lhs.true108.cleanup_crit_edge ], [ %28, %cleanup.sink.split ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vid = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vid, align 2
  %conv = zext i8 %3 to i32
  %vrm = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 45
  %4 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %5) #13
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_stop_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 41, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 32, i32 %3
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  %conv1.i = zext i8 %5 to i32
  %cond.v.i = select i1 %tobool.not.i, i32 400, i32 100
  %cond.i = mul nuw nsw i32 %cond.v.i, %conv1.i
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %cond.i)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_start_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 39, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_stop_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 40, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_max_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 42, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_step_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 43, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_target_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 37, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %call = tail call fastcc ptr @w83627ehf_update_device(ptr noundef %1)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %call, i32 0, i32 38, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.59, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_stop_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 32, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  %add.i = add i32 %6, 50
  %div.i = udiv i32 %add.i, 100
  %add1.i = add i32 %6, 200
  %div2.i = udiv i32 %add1.i, 400
  %cond.i = select i1 %tobool.not.i, i32 %div2.i, i32 %div.i
  %9 = call i32 @llvm.umax.i32(i32 %cond.i, i32 1) #13
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 255) #13
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv3 = trunc i32 %13 to i8
  %arrayidx4 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 41, i32 %3
  %14 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3, ptr %arrayidx4, align 1
  %arrayidx5 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_STOP_TIME, i32 0, i32 %3
  %15 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx5, align 2
  %17 = load i32, ptr %val, align 4
  %conv6 = trunc i32 %17 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %16, i16 noundef zeroext %conv6)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_start_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 39, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_START_OUTPUT, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 2
  %15 = load i32, ptr %val, align 4
  %conv11 = trunc i32 %15 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %14, i16 noundef zeroext %conv11)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_stop_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 40, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [4 x i16], ptr @W83627EHF_REG_FAN_STOP_OUTPUT, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 2
  %15 = load i32, ptr %val, align 4
  %conv11 = trunc i32 %15 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %14, i16 noundef zeroext %conv11)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_max_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 42, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %REG_FAN_MAX_OUTPUT = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %REG_FAN_MAX_OUTPUT to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %REG_FAN_MAX_OUTPUT, align 4
  %arrayidx10 = getelementptr i16, ptr %14, i32 %3
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx10, align 2
  %17 = load i32, ptr %val, align 4
  %conv11 = trunc i32 %17 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %16, i16 noundef zeroext %conv11)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_step_output(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umax.i32(i32 %6, i32 1)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 43, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  %REG_FAN_STEP_OUTPUT = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 10
  %13 = ptrtoint ptr %REG_FAN_STEP_OUTPUT to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %REG_FAN_STEP_OUTPUT, align 4
  %arrayidx10 = getelementptr i16, ptr %14, i32 %3
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx10, align 2
  %17 = load i32, ptr %val, align 4
  %conv11 = trunc i32 %17 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %16, i16 noundef zeroext %conv11)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_target_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp3, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.in)
  %cmp12 = icmp sgt i32 %cond.in, 999
  %cond = sdiv i32 %cond.in, 1000
  %7 = call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %8 = select i1 %cmp12, i32 %7, i32 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv25 = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 37, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %arrayidx, align 1
  %arrayidx26 = getelementptr [4 x i16], ptr @W83627EHF_REG_TARGET, i32 0, i32 %3
  %13 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx26, align 2
  %15 = load i32, ptr %val, align 4
  %conv27 = trunc i32 %15 to i16
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %14, i16 noundef zeroext %conv27)
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tolerance(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #13
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !285
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp3, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.in)
  %cmp12 = icmp sgt i32 %cond.in, 999
  %cond = sdiv i32 %cond.in, 1000
  %7 = call i32 @llvm.smin.i32(i32 %cond, i32 15)
  %8 = select i1 %cmp12, i32 %7, i32 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83627ehf_data, ptr %1, i32 0, i32 12
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #13
  %arrayidx = getelementptr [4 x i8], ptr @W83627EHF_REG_TOLERANCE, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv25 = zext i8 %11 to i16
  %call26 = call fastcc zeroext i16 @w83627ehf_read_value(ptr noundef %1, i16 noundef zeroext %conv25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp27 = icmp eq i32 %3, 1
  br i1 %cmp27, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %12 = and i16 %call26, 15
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %.tr = trunc i32 %14 to i16
  %15 = shl i16 %.tr, 4
  %conv31 = or i16 %15, %12
  br label %if.end36

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %16 = and i16 %call26, 240
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = trunc i32 %18 to i16
  %conv35 = or i16 %16, %19
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then29
  %reg.0 = phi i16 [ %conv31, %if.then29 ], [ %conv35, %if.else ]
  call fastcc void @w83627ehf_write_value(ptr noundef %1, i16 noundef zeroext %conv25, i16 noundef zeroext %reg.0)
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %conv40 = trunc i32 %21 to i8
  %arrayidx41 = getelementptr %struct.w83627ehf_data, ptr %1, i32 0, i32 38, i32 %3
  %22 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv40, ptr %arrayidx41, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end36 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #13
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !95, !96, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !183, !185, !187, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @__param_force_id, !1, !"__param_force_id", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83627ehf.c", i32 65, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_idtype187, !1, !"__UNIQUE_ID_force_idtype187", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_id188, !4, !"__UNIQUE_ID_force_id188", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83627ehf.c", i32 66, i32 1}
!5 = !{ptr @__UNIQUE_ID_author232, !6, !"__UNIQUE_ID_author232", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83627ehf.c", i32 2155, i32 1}
!7 = !{ptr @__UNIQUE_ID_description233, !8, !"__UNIQUE_ID_description233", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/w83627ehf.c", i32 2156, i32 1}
!9 = !{ptr @__UNIQUE_ID_file234, !10, !"__UNIQUE_ID_file234", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/w83627ehf.c", i32 2157, i32 1}
!11 = !{ptr @__UNIQUE_ID_license235, !10, !"__UNIQUE_ID_license235", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_w83627ehf__236_2159_sensors_w83627ehf_init6, !13, !"__initcall__kmod_w83627ehf__236_2159_sensors_w83627ehf_init6", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/w83627ehf.c", i32 2159, i32 1}
!14 = !{ptr @__exitcall_sensors_w83627ehf_exit, !15, !"__exitcall_sensors_w83627ehf_exit", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/w83627ehf.c", i32 2160, i32 1}
!16 = !{ptr @force_id, !17, !"force_id", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/w83627ehf.c", i32 64, i32 23}
!18 = !{ptr @pdev, !19, !"pdev", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/w83627ehf.c", i32 2113, i32 32}
!20 = !{ptr @__param_str_force_id, !1, !"__param_str_force_id", i1 false, i1 false}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/w83627ehf.c", i32 2017, i32 11}
!23 = !{ptr @w83627ehf_driver, !24, !"w83627ehf_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/w83627ehf.c", i32 2015, i32 31}
!25 = !{ptr @w83627ehf_dev_pm_ops, !26, !"w83627ehf_dev_pm_ops", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/w83627ehf.c", i32 2013, i32 8}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/w83627ehf.c", i32 608, i32 5}
!29 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @w83627ehf_update_device.__UNIQUE_ID_ddebug197, !28, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!32 = !{ptr @W83627EHF_REG_FAN, !33, !"W83627EHF_REG_FAN", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/w83627ehf.c", i32 157, i32 18}
!34 = !{ptr @W83627EHF_REG_FAN_MIN, !35, !"W83627EHF_REG_FAN_MIN", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/w83627ehf.c", i32 158, i32 18}
!36 = !{ptr @W83627EHF_REG_PWM_ENABLE, !37, !"W83627EHF_REG_PWM_ENABLE", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/w83627ehf.c", i32 192, i32 17}
!38 = !{ptr @W83627EHF_REG_TOLERANCE, !39, !"W83627EHF_REG_TOLERANCE", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/w83627ehf.c", i32 205, i32 17}
!40 = !{ptr @W83627EHF_PWM_MODE_SHIFT, !41, !"W83627EHF_PWM_MODE_SHIFT", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/w83627ehf.c", i32 199, i32 17}
!42 = !{ptr @W83627EHF_PWM_ENABLE_SHIFT, !43, !"W83627EHF_PWM_ENABLE_SHIFT", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/w83627ehf.c", i32 200, i32 17}
!44 = !{ptr @W83627EHF_REG_PWM, !45, !"W83627EHF_REG_PWM", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/w83627ehf.c", i32 203, i32 18}
!46 = !{ptr @W83627EHF_REG_FAN_START_OUTPUT, !47, !"W83627EHF_REG_FAN_START_OUTPUT", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/w83627ehf.c", i32 208, i32 18}
!48 = !{ptr @W83627EHF_REG_FAN_STOP_OUTPUT, !49, !"W83627EHF_REG_FAN_STOP_OUTPUT", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/w83627ehf.c", i32 209, i32 18}
!50 = !{ptr @W83627EHF_REG_FAN_STOP_TIME, !51, !"W83627EHF_REG_FAN_STOP_TIME", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/w83627ehf.c", i32 210, i32 18}
!52 = !{ptr @W83627EHF_REG_TARGET, !53, !"W83627EHF_REG_TARGET", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/w83627ehf.c", i32 204, i32 18}
!54 = !{ptr @W83627EHF_REG_TEMP_OFFSET, !55, !"W83627EHF_REG_TEMP_OFFSET", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/w83627ehf.c", i32 221, i32 18}
!56 = !{ptr @w83627ehf_find.sio_name_W83627EHF, !57, !"sio_name_W83627EHF", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/w83627ehf.c", i32 2026, i32 20}
!58 = !{ptr @w83627ehf_find.sio_name_W83627EHG, !59, !"sio_name_W83627EHG", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/w83627ehf.c", i32 2027, i32 20}
!60 = !{ptr @w83627ehf_find.sio_name_W83627DHG, !61, !"sio_name_W83627DHG", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/w83627ehf.c", i32 2028, i32 20}
!62 = !{ptr @w83627ehf_find.sio_name_W83627DHG_P, !63, !"sio_name_W83627DHG_P", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/w83627ehf.c", i32 2029, i32 20}
!64 = !{ptr @w83627ehf_find.sio_name_W83627UHG, !65, !"sio_name_W83627UHG", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/w83627ehf.c", i32 2030, i32 20}
!66 = !{ptr @w83627ehf_find.sio_name_W83667HG, !67, !"sio_name_W83667HG", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/w83627ehf.c", i32 2031, i32 20}
!68 = !{ptr @w83627ehf_find.sio_name_W83667HG_B, !69, !"sio_name_W83667HG_B", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/w83627ehf.c", i32 2032, i32 20}
!70 = !{ptr @.str.4, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/w83627ehf.c", i32 2078, i32 4}
!72 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @w83627ehf_find.__UNIQUE_ID_ddebug231, !71, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!74 = !{ptr @.str.6, !71, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/w83627ehf.c", i32 2089, i32 3}
!77 = !{ptr @w83627ehf_find._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @w83627ehf_find._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.9, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/w83627ehf.c", i32 2097, i32 3}
!81 = !{ptr @w83627ehf_find._entry.8, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @w83627ehf_find._entry_ptr.10, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.12, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/w83627ehf.c", i32 2102, i32 2}
!85 = !{ptr @w83627ehf_find._entry.11, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @w83627ehf_find._entry_ptr.13, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @w83627ehf_probe.__key, !88, !"__key", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/w83627ehf.c", i32 1714, i32 2}
!89 = !{ptr @.str.14, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @w83627ehf_probe.__key.15, !91, !"__key", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/w83627ehf.c", i32 1715, i32 2}
!92 = !{ptr @.str.16, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.17, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/w83627ehf.c", i32 1901, i32 6}
!95 = !{ptr @.str.18, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.19, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @w83627ehf_probe._entry, !94, !"_entry", i1 false, i1 false}
!99 = !{ptr @w83627ehf_probe._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.22, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/w83627ehf.c", i32 1908, i32 6}
!102 = !{ptr @w83627ehf_probe._entry.21, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @w83627ehf_probe._entry_ptr.23, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/w83627ehf.c", i32 1922, i32 4}
!106 = !{ptr @.str.26, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @w83627ehf_probe._entry.24, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @w83627ehf_probe._entry_ptr.27, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/w83627ehf.c", i32 57, i32 2}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/w83627ehf.c", i32 59, i32 2}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/w83627ehf.c", i32 60, i32 2}
!115 = !{ptr @w83627ehf_device_names, !116, !"w83627ehf_device_names", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/w83627ehf.c", i32 55, i32 27}
!117 = !{ptr @W83627EHF_REG_TEMP, !118, !"W83627EHF_REG_TEMP", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/w83627ehf.c", i32 168, i32 18}
!119 = !{ptr @W83627EHF_REG_TEMP_OVER, !120, !"W83627EHF_REG_TEMP_OVER", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/w83627ehf.c", i32 170, i32 18}
!121 = !{ptr @W83627EHF_REG_TEMP_HYST, !122, !"W83627EHF_REG_TEMP_HYST", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/w83627ehf.c", i32 169, i32 18}
!123 = !{ptr @W83627EHF_REG_TEMP_CONFIG, !124, !"W83627EHF_REG_TEMP_CONFIG", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/w83627ehf.c", i32 171, i32 18}
!125 = !{ptr @.str.31, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/w83627ehf.c", i32 224, i32 2}
!127 = !{ptr @.str.32, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/w83627ehf.c", i32 225, i32 2}
!129 = !{ptr @.str.33, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/w83627ehf.c", i32 226, i32 2}
!131 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/w83627ehf.c", i32 227, i32 2}
!133 = !{ptr @.str.35, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/w83627ehf.c", i32 228, i32 2}
!135 = !{ptr @.str.36, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/w83627ehf.c", i32 229, i32 2}
!137 = !{ptr @.str.37, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/w83627ehf.c", i32 230, i32 2}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/w83627ehf.c", i32 231, i32 2}
!141 = !{ptr @w83667hg_b_temp_label, !142, !"w83667hg_b_temp_label", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/w83627ehf.c", i32 223, i32 26}
!143 = !{ptr @W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B, !144, !"W83627EHF_REG_FAN_MAX_OUTPUT_W83667_B", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/w83627ehf.c", i32 217, i32 18}
!145 = !{ptr @W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B, !146, !"W83627EHF_REG_FAN_STEP_OUTPUT_W83667_B", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/w83627ehf.c", i32 218, i32 18}
!147 = !{ptr @W83627EHF_REG_FAN_MAX_OUTPUT_COMMON, !148, !"W83627EHF_REG_FAN_MAX_OUTPUT_COMMON", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/w83627ehf.c", i32 212, i32 18}
!149 = !{ptr @W83627EHF_REG_FAN_STEP_OUTPUT_COMMON, !150, !"W83627EHF_REG_FAN_STEP_OUTPUT_COMMON", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/w83627ehf.c", i32 214, i32 18}
!151 = !{ptr @scale_in_w83627uhg, !152, !"scale_in_w83627uhg", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/w83627ehf.c", i32 287, i32 18}
!153 = !{ptr @scale_in_common, !154, !"scale_in_common", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/w83627ehf.c", i32 284, i32 18}
!155 = !{ptr @.str.39, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/w83627ehf.c", i32 1266, i32 31}
!157 = !{ptr @.str.40, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/w83627ehf.c", i32 1268, i32 36}
!159 = !{ptr @w83627ehf_chip_info, !160, !"w83627ehf_chip_info", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/w83627ehf.c", i32 1690, i32 37}
!161 = !{ptr @w83627ehf_ops, !162, !"w83627ehf_ops", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/w83627ehf.c", i32 1636, i32 31}
!163 = !{ptr @.str.41, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/w83627ehf.c", i32 731, i32 3}
!165 = !{ptr @.str.42, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @store_fan_min._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @store_fan_min._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.44, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/w83627ehf.c", i32 740, i32 3}
!170 = !{ptr @store_fan_min._entry.43, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @store_fan_min._entry_ptr.45, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.47, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/w83627ehf.c", i32 750, i32 3}
!174 = !{ptr @store_fan_min._entry.46, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @store_fan_min._entry_ptr.48, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.49, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/w83627ehf.c", i32 772, i32 3}
!178 = !{ptr @store_fan_min.__UNIQUE_ID_ddebug198, !177, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!179 = !{ptr @w83627ehf_info, !180, !"w83627ehf_info", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/w83627ehf.c", i32 1643, i32 41}
!181 = !{ptr @w83627ehf_groups, !182, !"w83627ehf_groups", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/w83627ehf.c", i32 1207, i32 38}
!183 = !{ptr @w83627ehf_group, !184, !"w83627ehf_group", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/w83627ehf.c", i32 1202, i32 37}
!185 = !{ptr @.str.59, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/w83627ehf.c", i32 1082, i32 22}
!187 = !{ptr @w83627ehf_attrs, !188, !"w83627ehf_attrs", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/w83627ehf.c", i32 1164, i32 26}
!189 = !{ptr @.str.60, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/w83627ehf.c", i32 1047, i32 8}
!191 = !{ptr @sensor_dev_attr_pwm1_stop_time, !190, !"sensor_dev_attr_pwm1_stop_time", i1 false, i1 false}
!192 = !{ptr @.str.61, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/w83627ehf.c", i32 1051, i32 8}
!194 = !{ptr @sensor_dev_attr_pwm1_start_output, !193, !"sensor_dev_attr_pwm1_start_output", i1 false, i1 false}
!195 = !{ptr @.str.62, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/w83627ehf.c", i32 1055, i32 8}
!197 = !{ptr @sensor_dev_attr_pwm1_stop_output, !196, !"sensor_dev_attr_pwm1_stop_output", i1 false, i1 false}
!198 = !{ptr @.str.63, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/w83627ehf.c", i32 1065, i32 8}
!200 = !{ptr @sensor_dev_attr_pwm1_max_output, !199, !"sensor_dev_attr_pwm1_max_output", i1 false, i1 false}
!201 = !{ptr @.str.64, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/w83627ehf.c", i32 1067, i32 8}
!203 = !{ptr @sensor_dev_attr_pwm1_step_output, !202, !"sensor_dev_attr_pwm1_step_output", i1 false, i1 false}
!204 = !{ptr @.str.65, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/w83627ehf.c", i32 937, i32 8}
!206 = !{ptr @sensor_dev_attr_pwm1_target, !205, !"sensor_dev_attr_pwm1_target", i1 false, i1 false}
!207 = !{ptr @.str.66, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/w83627ehf.c", i32 946, i32 8}
!209 = !{ptr @sensor_dev_attr_pwm1_tolerance, !208, !"sensor_dev_attr_pwm1_tolerance", i1 false, i1 false}
!210 = !{ptr @.str.67, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/w83627ehf.c", i32 1049, i32 8}
!212 = !{ptr @sensor_dev_attr_pwm2_stop_time, !211, !"sensor_dev_attr_pwm2_stop_time", i1 false, i1 false}
!213 = !{ptr @.str.68, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/w83627ehf.c", i32 1053, i32 8}
!215 = !{ptr @sensor_dev_attr_pwm2_start_output, !214, !"sensor_dev_attr_pwm2_start_output", i1 false, i1 false}
!216 = !{ptr @.str.69, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/w83627ehf.c", i32 1057, i32 8}
!218 = !{ptr @sensor_dev_attr_pwm2_stop_output, !217, !"sensor_dev_attr_pwm2_stop_output", i1 false, i1 false}
!219 = !{ptr @.str.70, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/w83627ehf.c", i32 1069, i32 8}
!221 = !{ptr @sensor_dev_attr_pwm2_max_output, !220, !"sensor_dev_attr_pwm2_max_output", i1 false, i1 false}
!222 = !{ptr @.str.71, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/w83627ehf.c", i32 1071, i32 8}
!224 = !{ptr @sensor_dev_attr_pwm2_step_output, !223, !"sensor_dev_attr_pwm2_step_output", i1 false, i1 false}
!225 = !{ptr @.str.72, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/w83627ehf.c", i32 939, i32 8}
!227 = !{ptr @sensor_dev_attr_pwm2_target, !226, !"sensor_dev_attr_pwm2_target", i1 false, i1 false}
!228 = !{ptr @.str.73, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/w83627ehf.c", i32 948, i32 8}
!230 = !{ptr @sensor_dev_attr_pwm2_tolerance, !229, !"sensor_dev_attr_pwm2_tolerance", i1 false, i1 false}
!231 = !{ptr @.str.74, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/w83627ehf.c", i32 1040, i32 8}
!233 = !{ptr @sensor_dev_attr_pwm3_stop_time, !232, !"sensor_dev_attr_pwm3_stop_time", i1 false, i1 false}
!234 = !{ptr @.str.75, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/w83627ehf.c", i32 1042, i32 8}
!236 = !{ptr @sensor_dev_attr_pwm3_start_output, !235, !"sensor_dev_attr_pwm3_start_output", i1 false, i1 false}
!237 = !{ptr @.str.76, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/w83627ehf.c", i32 1044, i32 8}
!239 = !{ptr @sensor_dev_attr_pwm3_stop_output, !238, !"sensor_dev_attr_pwm3_stop_output", i1 false, i1 false}
!240 = !{ptr @.str.77, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/w83627ehf.c", i32 1073, i32 8}
!242 = !{ptr @sensor_dev_attr_pwm3_max_output, !241, !"sensor_dev_attr_pwm3_max_output", i1 false, i1 false}
!243 = !{ptr @.str.78, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/w83627ehf.c", i32 1075, i32 8}
!245 = !{ptr @sensor_dev_attr_pwm3_step_output, !244, !"sensor_dev_attr_pwm3_step_output", i1 false, i1 false}
!246 = !{ptr @.str.79, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/w83627ehf.c", i32 941, i32 8}
!248 = !{ptr @sensor_dev_attr_pwm3_target, !247, !"sensor_dev_attr_pwm3_target", i1 false, i1 false}
!249 = !{ptr @.str.80, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/w83627ehf.c", i32 950, i32 8}
!251 = !{ptr @sensor_dev_attr_pwm3_tolerance, !250, !"sensor_dev_attr_pwm3_tolerance", i1 false, i1 false}
!252 = !{ptr @.str.81, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/w83627ehf.c", i32 1029, i32 8}
!254 = !{ptr @sensor_dev_attr_pwm4_stop_time, !253, !"sensor_dev_attr_pwm4_stop_time", i1 false, i1 false}
!255 = !{ptr @.str.82, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/w83627ehf.c", i32 1031, i32 8}
!257 = !{ptr @sensor_dev_attr_pwm4_start_output, !256, !"sensor_dev_attr_pwm4_start_output", i1 false, i1 false}
!258 = !{ptr @.str.83, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/w83627ehf.c", i32 1033, i32 8}
!260 = !{ptr @sensor_dev_attr_pwm4_stop_output, !259, !"sensor_dev_attr_pwm4_stop_output", i1 false, i1 false}
!261 = !{ptr @.str.84, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/w83627ehf.c", i32 1035, i32 8}
!263 = !{ptr @sensor_dev_attr_pwm4_max_output, !262, !"sensor_dev_attr_pwm4_max_output", i1 false, i1 false}
!264 = !{ptr @.str.85, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/w83627ehf.c", i32 1037, i32 8}
!266 = !{ptr @sensor_dev_attr_pwm4_step_output, !265, !"sensor_dev_attr_pwm4_step_output", i1 false, i1 false}
!267 = !{ptr @.str.86, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/w83627ehf.c", i32 943, i32 8}
!269 = !{ptr @sensor_dev_attr_pwm4_target, !268, !"sensor_dev_attr_pwm4_target", i1 false, i1 false}
!270 = !{ptr @.str.87, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/w83627ehf.c", i32 952, i32 8}
!272 = !{ptr @sensor_dev_attr_pwm4_tolerance, !271, !"sensor_dev_attr_pwm4_tolerance", i1 false, i1 false}
!273 = !{ptr @.str.88, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/w83627ehf.c", i32 1084, i32 8}
!275 = !{ptr @dev_attr_cpu0_vid, !274, !"dev_attr_cpu0_vid", i1 false, i1 false}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"auto-init"}
!286 = !{i8 0, i8 2}
!287 = !{i64 2149012928, i64 2149012933, i64 2149012946, i64 2149012990, i64 2149013024, i64 2149013045}
!288 = !{i64 2153402008}
!289 = !{i64 5873442}
!290 = !{i64 5873837}
!291 = !{i64 2153400023}
!292 = !{i64 2153450547}
!293 = !{i64 2153450868}
!294 = !{i64 2153448835}
!295 = !{i64 2153449228}
!296 = !{i64 2153451358}
!297 = !{i64 2153451679}
!298 = !{i64 2153452004}
!299 = !{i64 2153449609}
!300 = !{i64 2153449932}
!301 = !{i64 2153448018}
!302 = !{i64 2153448342}
