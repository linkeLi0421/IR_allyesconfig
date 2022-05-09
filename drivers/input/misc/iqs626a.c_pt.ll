; ModuleID = '/llk/IR_all_yes/drivers/input/misc/iqs626a.c_pt.bc'
source_filename = "../drivers/input/misc/iqs626a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iqs626_channel_desc = type { ptr, i32, i8, [6 x i8] }
%struct.iqs626_event_desc = type { ptr, i32, i32, i8, i8 }
%struct.iqs626_ver_info = type { i8, i8, i8, i8 }
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
%struct.iqs626_private = type { ptr, ptr, %struct.iqs626_sys_reg, %struct.completion, ptr, ptr, %struct.touchscreen_properties, [7 x [6 x i32]], [7 x [6 x i32]], [6 x i32], i32 }
%struct.iqs626_sys_reg = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.iqs626_ch_reg_ulp, %struct.iqs626_tp_grp_reg, [3 x %struct.iqs626_ch_reg_gen], %struct.iqs626_ch_reg_hall }
%struct.iqs626_ch_reg_ulp = type { [2 x i8], i8, i8, [2 x i8], i8, i8, i16, i8, i8 }
%struct.iqs626_tp_grp_reg = type { i8, i8, [2 x i8], [9 x %struct.iqs626_ch_reg_tp] }
%struct.iqs626_ch_reg_tp = type { i8, i8, i16 }
%struct.iqs626_ch_reg_gen = type { [3 x i8], i8, i8, i8, i16, [5 x i8], i8, i8, i8, i8, i8 }
%struct.iqs626_ch_reg_hall = type { i8, i8, i8, i8, i16 }
%struct.touchscreen_properties = type { i32, i32, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.iqs626_flags = type { i16, i8, i8, [4 x i8], i8, i8, i8, i8, i8, i8 }

@__initcall__kmod_iqs626a__288_1837_iqs626_i2c_driver_init6 = internal global ptr @iqs626_i2c_driver_init, section ".initcall6.init", align 4
@iqs626_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @iqs626_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iqs626_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs626_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_iqs626_i2c_driver_exit = internal global ptr @iqs626_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [47 x i8] c"iqs626a.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"iqs626a.description=Azoteq IQS626A Capacitive Touch Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"iqs626a.file=drivers/input/misc/iqs626a\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"iqs626a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iqs626a\00", [24 x i8] zeroinitializer }, align 32
@iqs626_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs626a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iqs626_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @iqs626_suspend, ptr @iqs626_resume, ptr @iqs626_suspend, ptr @iqs626_resume, ptr @iqs626_suspend, ptr @iqs626_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iqs626_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iqs626_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iqs626a:1661:(&iqs626_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@iqs626_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1665, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize register map: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iqs626_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/iqs626a.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs626_probe._entry_ptr = internal global ptr @iqs626_probe._entry, section ".printk_index", align 4
@iqs626_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1678, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unrecognized product number: 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs626_probe._entry_ptr.9 = internal global ptr @iqs626_probe._entry.7, section ".printk_index", align 4
@iqs626_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1694, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs626_probe._entry_ptr.12 = internal global ptr @iqs626_probe._entry.10, section ".printk_index", align 4
@iqs626_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to complete ATI\0A\00", [40 x i8] zeroinitializer }, align 32
@iqs626_probe._entry_ptr.15 = internal global ptr @iqs626_probe._entry.13, section ".printk_index", align 4
@iqs626_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register keypad: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs626_probe._entry_ptr.18 = internal global ptr @iqs626_probe._entry.16, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,suspend-mode\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 1242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid suspend mode: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs626_parse_prop\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr = internal global ptr @iqs626_parse_prop._entry, section ".printk_index", align 4
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"azoteq,clk-div\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,ulp-enable\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,ulp-update\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.4, i32 1266, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid update rate: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.28 = internal global ptr @iqs626_parse_prop._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azoteq,ati-band-disable\00", [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,ati-lp-only\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,gpio3-select\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.22, ptr @.str.4, i32 1286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid GPIO3 selection: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.34 = internal global ptr @iqs626_parse_prop._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,reseed-select\00", [43 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.22, ptr @.str.4, i32 1298, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid reseed selection: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.38 = internal global ptr @iqs626_parse_prop._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,thresh-extend\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,tracking-enable\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,reseed-offset\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,rate-np-ms\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str.4, i32 1321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid report rate: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.45 = internal global ptr @iqs626_parse_prop._entry.43, section ".printk_index", align 4
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,rate-lp-ms\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str.4, i32 1331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.48 = internal global ptr @iqs626_parse_prop._entry.47, section ".printk_index", align 4
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,rate-ulp-ms\00", [45 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.22, ptr @.str.4, i32 1341, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.51 = internal global ptr @iqs626_parse_prop._entry.50, section ".printk_index", align 4
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,timeout-pwr-ms\00", [42 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.4, i32 1351, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid timeout: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.55 = internal global ptr @iqs626_parse_prop._entry.53, section ".printk_index", align 4
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,timeout-lta-ms\00", [42 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.22, ptr @.str.4, i32 1361, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_prop._entry_ptr.58 = internal global ptr @iqs626_parse_prop._entry.57, section ".printk_index", align 4
@iqs626_channels = internal constant { [7 x %struct.iqs626_channel_desc], [48 x i8] } { [7 x %struct.iqs626_channel_desc] [%struct.iqs626_channel_desc { ptr @.str.61, i32 1, i8 1, [6 x i8] c"\01\01\01\01\00\00" }, %struct.iqs626_channel_desc { ptr @.str.62, i32 6, i8 2, [6 x i8] c"\00\00\01\00\00\00" }, %struct.iqs626_channel_desc { ptr @.str.63, i32 9, i8 6, [6 x i8] c"\00\00\01\00\00\00" }, %struct.iqs626_channel_desc { ptr @.str.64, i32 1, i8 16, [6 x i8] c"\01\01\01\01\01\01" }, %struct.iqs626_channel_desc { ptr @.str.65, i32 1, i8 32, [6 x i8] c"\01\01\01\01\01\01" }, %struct.iqs626_channel_desc { ptr @.str.66, i32 1, i8 64, [6 x i8] c"\01\01\01\01\01\01" }, %struct.iqs626_channel_desc { ptr @.str.67, i32 1, i8 -128, [6 x i8] c"\00\00\01\01\00\00" }], [48 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,ati-exclude\00", [45 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,reseed-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ulp-0\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trackpad-3x2\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"trackpad-3x3\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"generic-0\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"generic-1\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"generic-2\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hall\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"azoteq,meas-cap-decrease\00", [39 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,rx-inactive\00", [45 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Invalid %s channel CRX pin termination: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"iqs626_parse_channel\00", [43 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr = internal global ptr @iqs626_parse_channel._entry, section ".printk_index", align 4
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,linearize\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,dual-direction\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,filt-disable\00", [44 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azoteq,ati-mode\00", [16 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.71, ptr @.str.4, i32 979, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid %s channel ATI mode: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.78 = internal global ptr @iqs626_parse_channel._entry.76, section ".printk_index", align 4
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,cct-increase\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.71, ptr @.str.4, i32 1016, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid %s channel charge cycle time: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.82 = internal global ptr @iqs626_parse_channel._entry.80, section ".printk_index", align 4
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,proj-bias\00", [47 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.71, ptr @.str.4, i32 1035, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid %s channel bias current: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.86 = internal global ptr @iqs626_parse_channel._entry.84, section ".printk_index", align 4
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,sense-freq\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.71, ptr @.str.4, i32 1047, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid %s channel sensing frequency: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.90 = internal global ptr @iqs626_parse_channel._entry.88, section ".printk_index", align 4
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azoteq,ati-band-tighten\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,proj-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-np-cnt\00", [41 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.71, ptr @.str.4, i32 1084, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid %s channel filter strength: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.96 = internal global ptr @iqs626_parse_channel._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-lp-cnt\00", [41 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.71, ptr @.str.4, i32 1097, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.99 = internal global ptr @iqs626_parse_channel._entry.98, section ".printk_index", align 4
@.str.100 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-np-lta\00", [41 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.71, ptr @.str.4, i32 1110, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.102 = internal global ptr @iqs626_parse_channel._entry.101, section ".printk_index", align 4
@.str.103 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-lp-lta\00", [41 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.71, ptr @.str.4, i32 1123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.105 = internal global ptr @iqs626_parse_channel._entry.104, section ".printk_index", align 4
@.str.106 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,rx-enable\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,tx-enable\00", [47 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,local-cap-size\00", [42 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.71, ptr @.str.4, i32 1152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid %s channel local cap. size: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.111 = internal global ptr @iqs626_parse_channel._entry.109, section ".printk_index", align 4
@.str.112 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,sense-mode\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.113 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.71, ptr @.str.4, i32 1166, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid %s channel sensing mode: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.115 = internal global ptr @iqs626_parse_channel._entry.113, section ".printk_index", align 4
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"azoteq,tx-freq\00", [17 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.71, ptr @.str.4, i32 1178, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid %s channel excitation frequency: %u\0A\00", [51 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.119 = internal global ptr @iqs626_parse_channel._entry.117, section ".printk_index", align 4
@.str.120 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,invert-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,comp-disable\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,static-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,assoc-select\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,assoc-weight\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.71, ptr @.str.4, i32 1220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid %s channel associated weight: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs626_parse_channel._entry_ptr.127 = internal global ptr @iqs626_parse_channel._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,lta-update\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.130, ptr @.str.4, i32 779, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid %s channel update rate: %u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iqs626_parse_trackpad\00", [42 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr = internal global ptr @iqs626_parse_trackpad._entry, section ".printk_index", align 4
@.str.131 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"azoteq,filt-str-trackpad\00", [39 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.130, ptr @.str.4, i32 792, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.133 = internal global ptr @iqs626_parse_trackpad._entry.132, section ".printk_index", align 4
@iqs626_parse_trackpad._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.130, ptr @.str.4, i32 805, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.135 = internal global ptr @iqs626_parse_trackpad._entry.134, section ".printk_index", align 4
@iqs626_parse_trackpad._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.130, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.137 = internal global ptr @iqs626_parse_trackpad._entry.136, section ".printk_index", align 4
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"linux,keycodes\00", [17 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.130, ptr @.str.4, i32 831, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Too many keycodes present\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.141 = internal global ptr @iqs626_parse_trackpad._entry.139, section ".printk_index", align 4
@iqs626_parse_trackpad._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.130, ptr @.str.4, i32 834, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to count keycodes: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.144 = internal global ptr @iqs626_parse_trackpad._entry.142, section ".printk_index", align 4
@iqs626_parse_trackpad._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.130, ptr @.str.4, i32 841, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read keycodes: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.147 = internal global ptr @iqs626_parse_trackpad._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,gesture-swipe\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,timeout-tap-ms\00", [42 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.130, ptr @.str.4, i32 854, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid %s channel timeout: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.152 = internal global ptr @iqs626_parse_trackpad._entry.150, section ".printk_index", align 4
@.str.153 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azoteq,timeout-swipe-ms\00", [40 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.130, ptr @.str.4, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.155 = internal global ptr @iqs626_parse_trackpad._entry.154, section ".printk_index", align 4
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,thresh-swipe\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.130, ptr @.str.4, i32 878, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid %s channel threshold: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@iqs626_parse_trackpad._entry_ptr.159 = internal global ptr @iqs626_parse_trackpad._entry.157, section ".printk_index", align 4
@iqs626_parse_pins._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.161, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Too many %s channel CRX/TX pins present\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs626_parse_pins\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_pins._entry_ptr = internal global ptr @iqs626_parse_pins._entry, section ".printk_index", align 4
@iqs626_parse_pins._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.161, ptr @.str.4, i32 738, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to count %s channel CRX/TX pins: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@iqs626_parse_pins._entry_ptr.164 = internal global ptr @iqs626_parse_pins._entry.162, section ".printk_index", align 4
@iqs626_parse_pins._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.161, ptr @.str.4, i32 746, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to read %s channel CRX/TX pins: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@iqs626_parse_pins._entry_ptr.167 = internal global ptr @iqs626_parse_pins._entry.165, section ".printk_index", align 4
@iqs626_parse_pins._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.161, ptr @.str.4, i32 756, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid %s channel CRX/TX pin: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@iqs626_parse_pins._entry_ptr.170 = internal global ptr @iqs626_parse_pins._entry.168, section ".printk_index", align 4
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,ati-target\00", [46 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.4, i32 650, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid %s channel ATI target: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iqs626_parse_ati_target\00", [40 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry_ptr = internal global ptr @iqs626_parse_ati_target._entry, section ".printk_index", align 4
@.str.174 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azoteq,ati-base\00", [16 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.173, ptr @.str.4, i32 680, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid %s channel ATI base: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry_ptr.177 = internal global ptr @iqs626_parse_ati_target._entry.175, section ".printk_index", align 4
@iqs626_parse_ati_target._entry.178 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.179, ptr @.str.173, ptr @.str.4, i32 698, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read %s channel ATI bases: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry_ptr.180 = internal global ptr @iqs626_parse_ati_target._entry.178, section ".printk_index", align 4
@iqs626_parse_ati_target._entry.181 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.173, ptr @.str.4, i32 707, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_ati_target._entry_ptr.182 = internal global ptr @iqs626_parse_ati_target._entry.181, section ".printk_index", align 4
@iqs626_events = internal constant { [6 x %struct.iqs626_event_desc], [32 x i8] } { [6 x %struct.iqs626_event_desc] [%struct.iqs626_event_desc { ptr @.str.199, i32 0, i32 0, i8 0, i8 1 }, %struct.iqs626_event_desc { ptr @.str.200, i32 0, i32 0, i8 1, i8 1 }, %struct.iqs626_event_desc { ptr @.str.201, i32 2, i32 1, i8 0, i8 2 }, %struct.iqs626_event_desc { ptr @.str.202, i32 2, i32 1, i8 1, i8 2 }, %struct.iqs626_event_desc { ptr @.str.203, i32 3, i32 2, i8 0, i8 4 }, %struct.iqs626_event_desc { ptr @.str.204, i32 3, i32 2, i8 1, i8 4 }], [32 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,input-type\00", [47 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.185, ptr @.str.186, ptr @.str.4, i32 535, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid input type: %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iqs626_parse_events\00", [44 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry_ptr = internal global ptr @iqs626_parse_events._entry, section ".printk_index", align 4
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"azoteq,hyst\00", [20 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.186, ptr @.str.4, i32 549, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid %s channel hysteresis: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry_ptr.190 = internal global ptr @iqs626_parse_events._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"azoteq,thresh\00", [18 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.186, ptr @.str.4, i32 569, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry_ptr.193 = internal global ptr @iqs626_parse_events._entry.192, section ".printk_index", align 4
@iqs626_parse_events._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.186, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to read %s channel thresholds: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry_ptr.196 = internal global ptr @iqs626_parse_events._entry.194, section ".printk_index", align 4
@iqs626_parse_events._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.186, ptr @.str.4, i32 597, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs626_parse_events._entry_ptr.198 = internal global ptr @iqs626_parse_events._entry.197, section ".printk_index", align 4
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-prox\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event-prox-alt\00", [17 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event-touch\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event-touch-alt\00", [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-deep\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event-deep-alt\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iqs626a_keypad\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs626a_trackpad\00", [47 x i8] zeroinitializer }, align 32
@iqs626_input_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.208, ptr @.str.4, i32 1501, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register trackpad: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs626_input_init\00", [46 x i8] zeroinitializer }, align 32
@iqs626_input_init._entry_ptr = internal global ptr @iqs626_input_init._entry, section ".printk_index", align 4
@iqs626_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.4, i32 1520, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read device status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iqs626_report\00", [18 x i8] zeroinitializer }, align 32
@iqs626_report._entry_ptr = internal global ptr @iqs626_report._entry, section ".printk_index", align 4
@iqs626_report._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.210, ptr @.str.4, i32 1530, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected device reset\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs626_report._entry_ptr.213 = internal global ptr @iqs626_report._entry.211, section ".printk_index", align 4
@iqs626_report._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.210, ptr @.str.4, i32 1536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs626_report._entry_ptr.216 = internal global ptr @iqs626_report._entry.214, section ".printk_index", align 4
@iqs626_report._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.210, ptr @.str.4, i32 1554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read Hall output: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@iqs626_report._entry_ptr.219 = internal global ptr @iqs626_report._entry.217, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.220 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.221 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.222 = internal global [6 x i64] [i64 4, i64 32, i64 75, i64 100, i64 150, i64 200]
@__sancov_gen_cov_switch_values.223 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.224 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.225 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.226 = private unnamed_addr constant [18 x i8] c"iqs626_i2c_driver\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1829, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1831, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant [16 x i8] c"iqs626_of_match\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1823, i32 34 }
@___asan_gen_.235 = private unnamed_addr constant [10 x i8] c"iqs626_pm\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1821, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [21 x i8] c"iqs626_regmap_config\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1642, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1661, i32 19 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1664, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1677, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1694, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1700, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1710, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.293, i32 87, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1238, i32 46 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1241, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1257, i32 44 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1260, i32 44 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1263, i32 46 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1266, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1275, i32 44 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1279, i32 44 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1282, i32 46 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1285, i32 4 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1294, i32 46 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1297, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1307, i32 44 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1311, i32 44 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1315, i32 44 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1318, i32 46 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1321, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1328, i32 46 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1331, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1338, i32 46 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1341, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1348, i32 46 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1351, i32 4 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1358, i32 46 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1361, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant [16 x i8] c"iqs626_channels\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 365, i32 41 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1392, i32 41 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1395, i32 41 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 367, i32 11 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 378, i32 11 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 386, i32 11 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 394, i32 11 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 407, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 420, i32 11 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 433, i32 11 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 928, i32 39 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 932, i32 41 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 956, i32 4 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 964, i32 39 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 968, i32 39 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 972, i32 39 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 975, i32 41 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 977, i32 4 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 991, i32 41 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1014, i32 4 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1031, i32 41 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1033, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1043, i32 41 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1045, i32 4 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1056, i32 39 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1064, i32 40 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1079, i32 41 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1082, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1092, i32 41 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1095, i32 4 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1105, i32 41 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1108, i32 4 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1118, i32 41 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1121, i32 4 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1131, i32 45 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1136, i32 45 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1145, i32 41 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1150, i32 4 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1162, i32 41 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1164, i32 4 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1174, i32 41 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1176, i32 4 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1187, i32 39 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1191, i32 39 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1195, i32 39 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1203, i32 40 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1214, i32 40 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1218, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 775, i32 41 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 777, i32 4 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 787, i32 41 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 790, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 803, i32 4 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 816, i32 4 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 826, i32 40 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 831, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 834, i32 3 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 841, i32 3 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 846, i32 39 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 849, i32 41 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 852, i32 4 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 861, i32 41 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 864, i32 4 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 873, i32 41 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 876, i32 4 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 731, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 736, i32 3 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 744, i32 3 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 754, i32 4 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 646, i32 41 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 648, i32 4 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 659, i32 41 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 678, i32 4 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 696, i32 3 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 705, i32 4 }
@___asan_gen_.697 = private unnamed_addr constant [14 x i8] c"iqs626_events\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 225, i32 39 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 519, i32 43 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 524, i32 13 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 533, i32 6 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 545, i32 42 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 547, i32 5 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 565, i32 42 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 567, i32 5 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 587, i32 4 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 595, i32 5 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 227, i32 11 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 233, i32 11 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 240, i32 11 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 246, i32 11 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 253, i32 11 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 259, i32 11 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1441, i32 25 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1469, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1500, i32 3 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1519, i32 3 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1530, i32 3 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1535, i32 4 }
@___asan_gen_.793 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.796 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.797 = private constant [32 x i8] c"../drivers/input/misc/iqs626a.c\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.797, i32 1553, i32 4 }
@llvm.compiler.used = appending global [253 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iqs626_i2c_driver_exit, ptr @__initcall__kmod_iqs626a__288_1837_iqs626_i2c_driver_init6, ptr @iqs626_i2c_driver_exit, ptr @iqs626_input_init._entry, ptr @iqs626_input_init._entry_ptr, ptr @iqs626_parse_ati_target._entry, ptr @iqs626_parse_ati_target._entry.175, ptr @iqs626_parse_ati_target._entry.178, ptr @iqs626_parse_ati_target._entry.181, ptr @iqs626_parse_ati_target._entry_ptr, ptr @iqs626_parse_ati_target._entry_ptr.177, ptr @iqs626_parse_ati_target._entry_ptr.180, ptr @iqs626_parse_ati_target._entry_ptr.182, ptr @iqs626_parse_channel._entry, ptr @iqs626_parse_channel._entry.101, ptr @iqs626_parse_channel._entry.104, ptr @iqs626_parse_channel._entry.109, ptr @iqs626_parse_channel._entry.113, ptr @iqs626_parse_channel._entry.117, ptr @iqs626_parse_channel._entry.125, ptr @iqs626_parse_channel._entry.76, ptr @iqs626_parse_channel._entry.80, ptr @iqs626_parse_channel._entry.84, ptr @iqs626_parse_channel._entry.88, ptr @iqs626_parse_channel._entry.94, ptr @iqs626_parse_channel._entry.98, ptr @iqs626_parse_channel._entry_ptr, ptr @iqs626_parse_channel._entry_ptr.102, ptr @iqs626_parse_channel._entry_ptr.105, ptr @iqs626_parse_channel._entry_ptr.111, ptr @iqs626_parse_channel._entry_ptr.115, ptr @iqs626_parse_channel._entry_ptr.119, ptr @iqs626_parse_channel._entry_ptr.127, ptr @iqs626_parse_channel._entry_ptr.78, ptr @iqs626_parse_channel._entry_ptr.82, ptr @iqs626_parse_channel._entry_ptr.86, ptr @iqs626_parse_channel._entry_ptr.90, ptr @iqs626_parse_channel._entry_ptr.96, ptr @iqs626_parse_channel._entry_ptr.99, ptr @iqs626_parse_events._entry, ptr @iqs626_parse_events._entry.188, ptr @iqs626_parse_events._entry.192, ptr @iqs626_parse_events._entry.194, ptr @iqs626_parse_events._entry.197, ptr @iqs626_parse_events._entry_ptr, ptr @iqs626_parse_events._entry_ptr.190, ptr @iqs626_parse_events._entry_ptr.193, ptr @iqs626_parse_events._entry_ptr.196, ptr @iqs626_parse_events._entry_ptr.198, ptr @iqs626_parse_pins._entry, ptr @iqs626_parse_pins._entry.162, ptr @iqs626_parse_pins._entry.165, ptr @iqs626_parse_pins._entry.168, ptr @iqs626_parse_pins._entry_ptr, ptr @iqs626_parse_pins._entry_ptr.164, ptr @iqs626_parse_pins._entry_ptr.167, ptr @iqs626_parse_pins._entry_ptr.170, ptr @iqs626_parse_prop._entry, ptr @iqs626_parse_prop._entry.26, ptr @iqs626_parse_prop._entry.32, ptr @iqs626_parse_prop._entry.36, ptr @iqs626_parse_prop._entry.43, ptr @iqs626_parse_prop._entry.47, ptr @iqs626_parse_prop._entry.50, ptr @iqs626_parse_prop._entry.53, ptr @iqs626_parse_prop._entry.57, ptr @iqs626_parse_prop._entry_ptr, ptr @iqs626_parse_prop._entry_ptr.28, ptr @iqs626_parse_prop._entry_ptr.34, ptr @iqs626_parse_prop._entry_ptr.38, ptr @iqs626_parse_prop._entry_ptr.45, ptr @iqs626_parse_prop._entry_ptr.48, ptr @iqs626_parse_prop._entry_ptr.51, ptr @iqs626_parse_prop._entry_ptr.55, ptr @iqs626_parse_prop._entry_ptr.58, ptr @iqs626_parse_trackpad._entry, ptr @iqs626_parse_trackpad._entry.132, ptr @iqs626_parse_trackpad._entry.134, ptr @iqs626_parse_trackpad._entry.136, ptr @iqs626_parse_trackpad._entry.139, ptr @iqs626_parse_trackpad._entry.142, ptr @iqs626_parse_trackpad._entry.145, ptr @iqs626_parse_trackpad._entry.150, ptr @iqs626_parse_trackpad._entry.154, ptr @iqs626_parse_trackpad._entry.157, ptr @iqs626_parse_trackpad._entry_ptr, ptr @iqs626_parse_trackpad._entry_ptr.133, ptr @iqs626_parse_trackpad._entry_ptr.135, ptr @iqs626_parse_trackpad._entry_ptr.137, ptr @iqs626_parse_trackpad._entry_ptr.141, ptr @iqs626_parse_trackpad._entry_ptr.144, ptr @iqs626_parse_trackpad._entry_ptr.147, ptr @iqs626_parse_trackpad._entry_ptr.152, ptr @iqs626_parse_trackpad._entry_ptr.155, ptr @iqs626_parse_trackpad._entry_ptr.159, ptr @iqs626_probe._entry, ptr @iqs626_probe._entry.10, ptr @iqs626_probe._entry.13, ptr @iqs626_probe._entry.16, ptr @iqs626_probe._entry.7, ptr @iqs626_probe._entry_ptr, ptr @iqs626_probe._entry_ptr.12, ptr @iqs626_probe._entry_ptr.15, ptr @iqs626_probe._entry_ptr.18, ptr @iqs626_probe._entry_ptr.9, ptr @iqs626_report._entry, ptr @iqs626_report._entry.211, ptr @iqs626_report._entry.214, ptr @iqs626_report._entry.217, ptr @iqs626_report._entry_ptr, ptr @iqs626_report._entry_ptr.213, ptr @iqs626_report._entry_ptr.216, ptr @iqs626_report._entry_ptr.219, ptr @iqs626_i2c_driver, ptr @.str, ptr @iqs626_of_match, ptr @iqs626_pm, ptr @iqs626_probe._key, ptr @iqs626_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @init_completion.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @iqs626_channels, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.151, ptr @.str.153, ptr @.str.156, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.176, ptr @.str.179, ptr @iqs626_events, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.195, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.212, ptr @.str.215, ptr @.str.218], section "llvm.metadata"
@0 = internal global [191 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_prop._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_channels to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.113 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_channel._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_trackpad._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_pins._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_pins._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_pins._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_pins._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_ati_target._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_ati_target._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_ati_target._entry.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_ati_target._entry.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_events to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_events._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_events._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_events._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_events._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_parse_events._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_input_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_report._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_report._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs626_report._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs626_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @iqs626_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs626_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @iqs626_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs626_probe(ptr noundef %client) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %ver_info = alloca %struct.iqs626_ver_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver_info) #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %0 = ptrtoint ptr %ver_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver_info, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 580, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @iqs626_regmap_config, ptr noundef nonnull @iqs626_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %ati_done = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %ati_done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ati_done, align 4
  %wait.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @init_completion.__key) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %ver_info, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %8 = ptrtoint ptr %ver_info to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 81, i8 %9)
  %cmp.not = icmp eq i8 %9, 81
  br i1 %cmp.not, label %if.end23, label %do.end19

do.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %9 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %conv) #10
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %sys_reg1.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !400
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.20, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end23.if.end5.i_crit_edge

if.end23.if.end5.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then.i:                                        ; preds = %if.end23
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i97 = icmp ugt i32 %14, 3
  br i1 %cmp.i97, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %14) #10
  br label %iqs626_parse_prop.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %suspend_mode.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 10
  %15 = ptrtoint ptr %suspend_mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %suspend_mode.i, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i, %if.end23.if.end5.i_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call6.i = call i32 @regmap_raw_read(ptr noundef %17, i32 noundef 128, ptr noundef %sys_reg1.i, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.iqs626_parse_prop.exit.thread_crit_edge

if.end5.i.iqs626_parse_prop.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_prop.exit.thread

if.end9.i:                                        ; preds = %if.end5.i
  %18 = ptrtoint ptr %sys_reg1.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %sys_reg1.i, align 1
  %20 = and i16 %19, 1792
  %call13.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.23) #7
  %21 = or i16 %20, -32768
  %spec.select.i = select i1 %call13.i, i16 %21, i16 %20
  %call19.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.24) #7
  %22 = or i16 %spec.select.i, 16384
  %general.1.i = select i1 %call19.i, i16 %22, i16 %spec.select.i
  %call.i415.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.25, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i415.i)
  %tobool27.not.i = icmp eq i32 %call.i415.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %if.end9.i.if.end43.i_crit_edge

if.end9.i.if.end43.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i

if.then28.i:                                      ; preds = %if.end9.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp29.i = icmp ugt i32 %24, 7
  br i1 %cmp29.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.27, i32 noundef %24) #10
  br label %iqs626_parse_prop.exit.thread

if.end36.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = and i16 %general.1.i, -16384
  %.tr.i = trunc i32 %24 to i16
  %26 = shl nuw nsw i16 %.tr.i, 8
  %conv42.i = or i16 %26, %25
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end36.i, %if.end9.i.if.end43.i_crit_edge
  %general.2.i = phi i16 [ %general.1.i, %if.end9.i.if.end43.i_crit_edge ], [ %conv42.i, %if.end36.i ]
  %misc_a.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %misc_a.i, align 1
  %29 = and i8 %28, 127
  store i8 %29, ptr %misc_a.i, align 1
  %call48.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #7
  br i1 %call48.i, label %if.then49.i, label %if.end43.i.if.end54.i_crit_edge

if.end43.i.if.end54.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %misc_a.i, align 1
  %32 = or i8 %31, -128
  store i8 %32, ptr %misc_a.i, align 1
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %if.end43.i.if.end54.i_crit_edge
  %33 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %misc_a.i, align 1
  %35 = and i8 %34, -9
  store i8 %35, ptr %misc_a.i, align 1
  %call60.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.30) #7
  br i1 %call60.i, label %if.then61.i, label %if.end54.i.if.end66.i_crit_edge

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66.i

if.then61.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %misc_a.i, align 1
  %38 = or i8 %37, 8
  store i8 %38, ptr %misc_a.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then61.i, %if.end54.i.if.end66.i_crit_edge
  %call.i416.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i416.i)
  %tobool69.not.i = icmp eq i32 %call.i416.i, 0
  br i1 %tobool69.not.i, label %if.then70.i, label %if.end66.i.if.end87.i_crit_edge

if.end66.i.if.end87.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then70.i:                                      ; preds = %if.end66.i
  %39 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %40)
  %cmp71.i = icmp ugt i32 %40, 7
  br i1 %cmp71.i, label %do.end76.i, label %if.end78.i

do.end76.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33, i32 noundef %40) #10
  br label %iqs626_parse_prop.exit.thread

if.end78.i:                                       ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %misc_a.i, align 1
  %43 = and i8 %42, -8
  %44 = trunc i32 %40 to i8
  %conv86.i = or i8 %43, %44
  store i8 %conv86.i, ptr %misc_a.i, align 1
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.end78.i, %if.end66.i.if.end87.i_crit_edge
  %call.i417.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i417.i)
  %tobool90.not.i = icmp eq i32 %call.i417.i, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %if.end87.i.if.end108.i_crit_edge

if.end87.i.if.end108.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end108.i

if.then91.i:                                      ; preds = %if.end87.i
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %46)
  %cmp92.i = icmp ugt i32 %46, 3
  br i1 %cmp92.i, label %do.end97.i, label %if.end99.i

do.end97.i:                                       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.37, i32 noundef %46) #10
  br label %iqs626_parse_prop.exit.thread

if.end99.i:                                       ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #9
  %misc_b.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 11
  %47 = ptrtoint ptr %misc_b.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %misc_b.i, align 1
  %49 = and i8 %48, 63
  %.tr407.i = trunc i32 %46 to i8
  %50 = shl nuw i8 %.tr407.i, 6
  %conv107.i = or i8 %49, %50
  store i8 %conv107.i, ptr %misc_b.i, align 1
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.end99.i, %if.end87.i.if.end108.i_crit_edge
  %misc_b109.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 11
  %51 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %misc_b109.i, align 1
  %53 = and i8 %52, -33
  store i8 %53, ptr %misc_b109.i, align 1
  %call114.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.39) #7
  br i1 %call114.i, label %if.then115.i, label %if.end108.i.if.end120.i_crit_edge

if.end108.i.if.end120.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120.i

if.then115.i:                                     ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %misc_b109.i, align 1
  %56 = or i8 %55, 32
  store i8 %56, ptr %misc_b109.i, align 1
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.then115.i, %if.end108.i.if.end120.i_crit_edge
  %57 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %misc_b109.i, align 1
  %59 = and i8 %58, -17
  store i8 %59, ptr %misc_b109.i, align 1
  %call126.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.40) #7
  br i1 %call126.i, label %if.then127.i, label %if.end120.i.if.end132.i_crit_edge

if.end120.i.if.end132.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132.i

if.then127.i:                                     ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %misc_b109.i, align 1
  %62 = or i8 %61, 16
  store i8 %62, ptr %misc_b109.i, align 1
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.then127.i, %if.end120.i.if.end132.i_crit_edge
  %63 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %misc_b109.i, align 1
  %65 = and i8 %64, -5
  store i8 %65, ptr %misc_b109.i, align 1
  %call138.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.41) #7
  br i1 %call138.i, label %if.then139.i, label %if.end132.i.if.end144.i_crit_edge

if.end132.i.if.end144.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144.i

if.then139.i:                                     ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %misc_b109.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %misc_b109.i, align 1
  %68 = or i8 %67, 4
  store i8 %68, ptr %misc_b109.i, align 1
  br label %if.end144.i

if.end144.i:                                      ; preds = %if.then139.i, %if.end132.i.if.end144.i_crit_edge
  %call.i418.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i418.i)
  %tobool147.not.i = icmp eq i32 %call.i418.i, 0
  br i1 %tobool147.not.i, label %if.then148.i, label %if.end144.i.if.end158.i_crit_edge

if.end144.i.if.end158.i_crit_edge:                ; preds = %if.end144.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.i

if.then148.i:                                     ; preds = %if.end144.i
  %69 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %70)
  %cmp149.i = icmp ugt i32 %70, 255
  br i1 %cmp149.i, label %do.end154.i, label %if.end156.i

do.end154.i:                                      ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %70) #10
  br label %iqs626_parse_prop.exit.thread

if.end156.i:                                      ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv157.i = trunc i32 %70 to i8
  %rate_np.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 5
  %71 = ptrtoint ptr %rate_np.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv157.i, ptr %rate_np.i, align 1
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.end156.i, %if.end144.i.if.end158.i_crit_edge
  %call.i419.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.46, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i419.i)
  %tobool161.not.i = icmp eq i32 %call.i419.i, 0
  br i1 %tobool161.not.i, label %if.then162.i, label %if.end158.i.if.end172.i_crit_edge

if.end158.i.if.end172.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172.i

if.then162.i:                                     ; preds = %if.end158.i
  %72 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %73)
  %cmp163.i = icmp ugt i32 %73, 255
  br i1 %cmp163.i, label %do.end168.i, label %if.end170.i

do.end168.i:                                      ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %73) #10
  br label %iqs626_parse_prop.exit.thread

if.end170.i:                                      ; preds = %if.then162.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv171.i = trunc i32 %73 to i8
  %rate_lp.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 6
  %74 = ptrtoint ptr %rate_lp.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv171.i, ptr %rate_lp.i, align 1
  br label %if.end172.i

if.end172.i:                                      ; preds = %if.end170.i, %if.end158.i.if.end172.i_crit_edge
  %call.i420.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.49, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i420.i)
  %tobool175.not.i = icmp eq i32 %call.i420.i, 0
  br i1 %tobool175.not.i, label %if.then176.i, label %if.end172.i.if.end186.i_crit_edge

if.end172.i.if.end186.i_crit_edge:                ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186.i

if.then176.i:                                     ; preds = %if.end172.i
  %75 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %76)
  %cmp177.i = icmp ugt i32 %76, 4080
  br i1 %cmp177.i, label %do.end182.i, label %if.end184.i

do.end182.i:                                      ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.44, i32 noundef %76) #10
  br label %iqs626_parse_prop.exit.thread

if.end184.i:                                      ; preds = %if.then176.i
  call void @__sanitizer_cov_trace_pc() #9
  %div408.i = lshr i32 %76, 4
  %conv185.i = trunc i32 %div408.i to i8
  %rate_ulp.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 7
  %77 = ptrtoint ptr %rate_ulp.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv185.i, ptr %rate_ulp.i, align 1
  br label %if.end186.i

if.end186.i:                                      ; preds = %if.end184.i, %if.end172.i.if.end186.i_crit_edge
  %call.i421.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i421.i)
  %tobool189.not.i = icmp eq i32 %call.i421.i, 0
  br i1 %tobool189.not.i, label %if.then190.i, label %if.end186.i.if.end201.i_crit_edge

if.end186.i.if.end201.i_crit_edge:                ; preds = %if.end186.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201.i

if.then190.i:                                     ; preds = %if.end186.i
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %79)
  %cmp191.i = icmp ugt i32 %79, 130560
  br i1 %cmp191.i, label %do.end196.i, label %if.end198.i

do.end196.i:                                      ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %79) #10
  br label %iqs626_parse_prop.exit.thread

if.end198.i:                                      ; preds = %if.then190.i
  call void @__sanitizer_cov_trace_pc() #9
  %div199409.i = lshr i32 %79, 9
  %conv200.i = trunc i32 %div199409.i to i8
  %timeout_pwr.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 8
  %80 = ptrtoint ptr %timeout_pwr.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv200.i, ptr %timeout_pwr.i, align 1
  br label %if.end201.i

if.end201.i:                                      ; preds = %if.end198.i, %if.end186.i.if.end201.i_crit_edge
  %call.i422.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.56, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i422.i)
  %tobool204.not.i = icmp eq i32 %call.i422.i, 0
  br i1 %tobool204.not.i, label %if.then205.i, label %if.end201.i.if.end216.i_crit_edge

if.end201.i.if.end216.i_crit_edge:                ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216.i

if.then205.i:                                     ; preds = %if.end201.i
  %81 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %82)
  %cmp206.i = icmp ugt i32 %82, 130560
  br i1 %cmp206.i, label %do.end211.i, label %if.end213.i

do.end211.i:                                      ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %82) #10
  br label %iqs626_parse_prop.exit.thread

if.end213.i:                                      ; preds = %if.then205.i
  call void @__sanitizer_cov_trace_pc() #9
  %div214410.i = lshr i32 %82, 9
  %conv215.i = trunc i32 %div214410.i to i8
  %timeout_lta.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 10
  %83 = ptrtoint ptr %timeout_lta.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv215.i, ptr %timeout_lta.i, align 1
  br label %if.end216.i

if.end216.i:                                      ; preds = %if.end213.i, %if.end201.i.if.end216.i_crit_edge
  %event_mask.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 2
  %84 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 -65, ptr %event_mask.i, align 1
  %redo_ati.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 15
  %85 = ptrtoint ptr %redo_ati.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %redo_ati.i, align 1
  %reseed.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 4
  %86 = ptrtoint ptr %reseed.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %reseed.i, align 1
  %active.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 2, i32 3
  %87 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %active.i, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end216.i
  %i.0423.i = phi i32 [ 0, %if.end216.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0423.i
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %call220.i = call ptr @device_get_named_child_node(ptr noundef %dev.i, ptr noundef %89) #7
  %tobool221.not.i = icmp eq ptr %call220.i, null
  br i1 %tobool221.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end223.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end223.i:                                      ; preds = %for.body.i
  %call224.i = call fastcc i32 @iqs626_parse_channel(ptr noundef %call.i, ptr noundef nonnull %call220.i, i32 noundef %i.0423.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224.i)
  %tobool225.not.i = icmp eq i32 %call224.i, 0
  br i1 %tobool225.not.i, label %if.end227.i, label %if.end223.i.iqs626_parse_prop.exit.thread_crit_edge

if.end223.i.iqs626_parse_prop.exit.thread_crit_edge: ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_prop.exit.thread

if.end227.i:                                      ; preds = %if.end223.i
  %call228.i = call fastcc i32 @iqs626_parse_ati_target(ptr noundef %call.i, ptr noundef nonnull %call220.i, i32 noundef %i.0423.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call228.i)
  %tobool229.not.i = icmp eq i32 %call228.i, 0
  br i1 %tobool229.not.i, label %if.end231.i, label %if.end227.i.iqs626_parse_prop.exit.thread_crit_edge

if.end227.i.iqs626_parse_prop.exit.thread_crit_edge: ; preds = %if.end227.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_prop.exit.thread

if.end231.i:                                      ; preds = %if.end227.i
  %call232.i = call fastcc i32 @iqs626_parse_events(ptr noundef %call.i, ptr noundef nonnull %call220.i, i32 noundef %i.0423.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232.i)
  %tobool233.not.i = icmp eq i32 %call232.i, 0
  br i1 %tobool233.not.i, label %if.end235.i, label %if.end231.i.iqs626_parse_prop.exit.thread_crit_edge

if.end231.i.iqs626_parse_prop.exit.thread_crit_edge: ; preds = %if.end231.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_prop.exit.thread

if.end235.i:                                      ; preds = %if.end231.i
  %call236.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call220.i, ptr noundef nonnull @.str.59) #7
  br i1 %call236.i, label %if.end235.i.if.end245.i_crit_edge, label %if.then237.i

if.end235.i.if.end245.i_crit_edge:                ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end245.i

if.then237.i:                                     ; preds = %if.end235.i
  call void @__sanitizer_cov_trace_pc() #9
  %active239.i = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0423.i, i32 2
  %90 = ptrtoint ptr %active239.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %active239.i, align 4
  %92 = ptrtoint ptr %redo_ati.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %redo_ati.i, align 1
  %or243411.i = or i8 %93, %91
  store i8 %or243411.i, ptr %redo_ati.i, align 1
  br label %if.end245.i

if.end245.i:                                      ; preds = %if.then237.i, %if.end235.i.if.end245.i_crit_edge
  %call246.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %call220.i, ptr noundef nonnull @.str.60) #7
  br i1 %call246.i, label %if.end245.i.if.end255.i_crit_edge, label %if.then247.i

if.end245.i.if.end255.i_crit_edge:                ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end255.i

if.then247.i:                                     ; preds = %if.end245.i
  call void @__sanitizer_cov_trace_pc() #9
  %active249.i = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0423.i, i32 2
  %94 = ptrtoint ptr %active249.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %active249.i, align 4
  %96 = ptrtoint ptr %reseed.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %reseed.i, align 1
  %or253412.i = or i8 %97, %95
  store i8 %or253412.i, ptr %reseed.i, align 1
  br label %if.end255.i

if.end255.i:                                      ; preds = %if.then247.i, %if.end245.i.if.end255.i_crit_edge
  %active257.i = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0423.i, i32 2
  %98 = ptrtoint ptr %active257.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %active257.i, align 4
  %100 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %active.i, align 1
  %or261413.i = or i8 %101, %99
  store i8 %or261413.i, ptr %active.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end255.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0423.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 7
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %102 = or i16 %general.2.i, 32
  %103 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %active.i, align 1
  %105 = and i8 %104, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %105)
  %tobool270.not.i = icmp eq i8 %105, 0
  br i1 %tobool270.not.i, label %for.end.i.if.end279.i_crit_edge, label %land.lhs.true.i

for.end.i.if.end279.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end279.i

land.lhs.true.i:                                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %106 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %event_mask.i, align 1
  %108 = and i8 %107, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool274.not.i = icmp eq i8 %108, 0
  %109 = or i16 %general.2.i, 48
  %spec.select414.i = select i1 %tobool274.not.i, i16 %102, i16 %109
  br label %if.end279.i

if.end279.i:                                      ; preds = %land.lhs.true.i, %for.end.i.if.end279.i_crit_edge
  %general.3.i = phi i16 [ %102, %for.end.i.if.end279.i_crit_edge ], [ %spec.select414.i, %land.lhs.true.i ]
  %110 = or i16 %general.3.i, 5
  %111 = ptrtoint ptr %sys_reg1.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %sys_reg1.i, align 1
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call289.i = call i32 @regmap_raw_write(ptr noundef %113, i32 noundef 128, ptr noundef %sys_reg1.i, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call289.i)
  %tobool290.not.i = icmp eq i32 %call289.i, 0
  br i1 %tobool290.not.i, label %if.end27, label %if.end279.i.iqs626_parse_prop.exit.thread_crit_edge

if.end279.i.iqs626_parse_prop.exit.thread_crit_edge: ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_prop.exit.thread

iqs626_parse_prop.exit.thread:                    ; preds = %if.end279.i.iqs626_parse_prop.exit.thread_crit_edge, %if.end231.i.iqs626_parse_prop.exit.thread_crit_edge, %if.end227.i.iqs626_parse_prop.exit.thread_crit_edge, %if.end223.i.iqs626_parse_prop.exit.thread_crit_edge, %do.end211.i, %do.end196.i, %do.end182.i, %do.end168.i, %do.end154.i, %do.end97.i, %do.end76.i, %do.end34.i, %if.end5.i.iqs626_parse_prop.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call289.i, %if.end279.i.iqs626_parse_prop.exit.thread_crit_edge ], [ %call6.i, %if.end5.i.iqs626_parse_prop.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end34.i ], [ -22, %do.end76.i ], [ -22, %do.end97.i ], [ -22, %do.end154.i ], [ -22, %do.end168.i ], [ -22, %do.end182.i ], [ -22, %do.end196.i ], [ -22, %do.end211.i ], [ %call232.i, %if.end231.i.iqs626_parse_prop.exit.thread_crit_edge ], [ %call228.i, %if.end227.i.iqs626_parse_prop.exit.thread_crit_edge ], [ %call224.i, %if.end223.i.iqs626_parse_prop.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end27:                                         ; preds = %if.end279.i
  call void @usleep_range_state(i32 noundef 350, i32 noundef 400, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %114 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %call.i, align 4
  %dev.i98 = getelementptr inbounds %struct.i2c_client, ptr %115, i32 0, i32 4
  %call.i99 = call ptr @devm_input_allocate_device(ptr noundef %dev.i98) #7
  %keypad.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 4
  %116 = ptrtoint ptr %keypad.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %call.i99, ptr %keypad.i, align 4
  %tobool.not.i100 = icmp eq ptr %call.i99, null
  br i1 %tobool.not.i100, label %if.end27.cleanup_crit_edge, label %if.end.i102

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i102:                                      ; preds = %if.end27
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %call.i99, i32 0, i32 15
  %117 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 7, ptr %keycodemax.i, align 4
  %kp_code.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 8
  %118 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %keypad.i, align 4
  %keycode.i = getelementptr inbounds %struct.input_dev, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %keycode.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %kp_code.i, ptr %keycode.i, align 4
  %121 = load ptr, ptr %keypad.i, align 4
  %keycodesize.i = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 16
  %122 = ptrtoint ptr %keycodesize.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 4, ptr %keycodesize.i, align 8
  %123 = load ptr, ptr %keypad.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @.str.205, ptr %123, align 8
  %125 = load ptr, ptr %keypad.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 24, ptr %id.i, align 4
  br label %for.body.i103

for.body.i103:                                    ; preds = %for.inc30.i.for.body.i103_crit_edge, %if.end.i102
  %i.0160.i = phi i32 [ 0, %if.end.i102 ], [ %inc31.i, %for.inc30.i.for.body.i103_crit_edge ]
  %127 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %active.i, align 1
  %active9.i = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0160.i, i32 2
  %129 = ptrtoint ptr %active9.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %active9.i, align 4
  %and157.i = and i8 %130, %128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and157.i)
  %tobool11.not.i = icmp eq i8 %and157.i, 0
  br i1 %tobool11.not.i, label %for.body.i103.for.inc30.i_crit_edge, label %for.body17.preheader.i

for.body.i103.for.inc30.i_crit_edge:              ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

for.body17.preheader.i:                           ; preds = %for.body.i103
  %arrayidx19.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 0
  %131 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %arrayidx19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool20.not.i = icmp eq i32 %132, 0
  br i1 %tobool20.not.i, label %for.body17.preheader.i.for.inc.i104_crit_edge, label %if.end22.i

for.body17.preheader.i.for.inc.i104_crit_edge:    ; preds = %for.body17.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i104

if.end22.i:                                       ; preds = %for.body17.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 0
  %135 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx29.i, align 4
  call void @input_set_capability(ptr noundef %134, i32 noundef %132, i32 noundef %136) #7
  br label %for.inc.i104

for.inc.i104:                                     ; preds = %if.end22.i, %for.body17.preheader.i.for.inc.i104_crit_edge
  %arrayidx19.1.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 1
  %137 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx19.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool20.not.1.i = icmp eq i32 %138, 0
  br i1 %tobool20.not.1.i, label %for.inc.i104.for.inc.1.i_crit_edge, label %if.end22.1.i

for.inc.i104.for.inc.1.i_crit_edge:               ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end22.1.i:                                     ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.1.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 1
  %141 = ptrtoint ptr %arrayidx29.1.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx29.1.i, align 4
  call void @input_set_capability(ptr noundef %140, i32 noundef %138, i32 noundef %142) #7
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end22.1.i, %for.inc.i104.for.inc.1.i_crit_edge
  %arrayidx19.2.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 2
  %143 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx19.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool20.not.2.i = icmp eq i32 %144, 0
  br i1 %tobool20.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end22.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end22.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.2.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 2
  %147 = ptrtoint ptr %arrayidx29.2.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx29.2.i, align 4
  call void @input_set_capability(ptr noundef %146, i32 noundef %144, i32 noundef %148) #7
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end22.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx19.3.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 3
  %149 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx19.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool20.not.3.i = icmp eq i32 %150, 0
  br i1 %tobool20.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end22.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3.i

if.end22.3.i:                                     ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.3.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 3
  %153 = ptrtoint ptr %arrayidx29.3.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx29.3.i, align 4
  call void @input_set_capability(ptr noundef %152, i32 noundef %150, i32 noundef %154) #7
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end22.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx19.4.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 4
  %155 = ptrtoint ptr %arrayidx19.4.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx19.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool20.not.4.i = icmp eq i32 %156, 0
  br i1 %tobool20.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end22.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4.i

if.end22.4.i:                                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %157 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.4.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 4
  %159 = ptrtoint ptr %arrayidx29.4.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx29.4.i, align 4
  call void @input_set_capability(ptr noundef %158, i32 noundef %156, i32 noundef %160) #7
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end22.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %arrayidx19.5.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 7, i32 %i.0160.i, i32 5
  %161 = ptrtoint ptr %arrayidx19.5.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx19.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool20.not.5.i = icmp eq i32 %162, 0
  br i1 %tobool20.not.5.i, label %for.inc.4.i.for.inc30.i_crit_edge, label %if.end22.5.i

for.inc.4.i.for.inc30.i_crit_edge:                ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc30.i

if.end22.5.i:                                     ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %keypad.i, align 4
  %arrayidx29.5.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 8, i32 %i.0160.i, i32 5
  %165 = ptrtoint ptr %arrayidx29.5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %arrayidx29.5.i, align 4
  call void @input_set_capability(ptr noundef %164, i32 noundef %162, i32 noundef %166) #7
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %if.end22.5.i, %for.inc.4.i.for.inc30.i_crit_edge, %for.body.i103.for.inc30.i_crit_edge
  %inc31.i = add nuw nsw i32 %i.0160.i, 1
  %exitcond.not.i105 = icmp eq i32 %inc31.i, 7
  br i1 %exitcond.not.i105, label %for.end32.i, label %for.inc30.i.for.body.i103_crit_edge

for.inc30.i.for.body.i103_crit_edge:              ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i103

for.end32.i:                                      ; preds = %for.inc30.i
  %167 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %active.i, align 1
  %169 = and i8 %168, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool37.not.i = icmp eq i8 %169, 0
  br i1 %tobool37.not.i, label %for.end32.i.if.end31_crit_edge, label %if.end39.i

for.end32.i.if.end31_crit_edge:                   ; preds = %for.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

if.end39.i:                                       ; preds = %for.end32.i
  %call41.i = call ptr @devm_input_allocate_device(ptr noundef %dev.i98) #7
  %trackpad.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 5
  %170 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %call41.i, ptr %trackpad.i, align 4
  %tobool43.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool43.not.i, label %if.end39.i.cleanup_crit_edge, label %if.end45.i

if.end39.i.cleanup_crit_edge:                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45.i:                                       ; preds = %if.end39.i
  %keycodemax47.i = getelementptr inbounds %struct.input_dev, ptr %call41.i, i32 0, i32 15
  %171 = ptrtoint ptr %keycodemax47.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 6, ptr %keycodemax47.i, align 4
  %tp_code.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9
  %172 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %trackpad.i, align 4
  %keycode50.i = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 17
  %174 = ptrtoint ptr %keycode50.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %tp_code.i, ptr %keycode50.i, align 4
  %175 = load ptr, ptr %trackpad.i, align 4
  %keycodesize52.i = getelementptr inbounds %struct.input_dev, ptr %175, i32 0, i32 16
  %176 = ptrtoint ptr %keycodesize52.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 4, ptr %keycodesize52.i, align 8
  %177 = load ptr, ptr %trackpad.i, align 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @.str.206, ptr %177, align 8
  %179 = load ptr, ptr %trackpad.i, align 4
  %id56.i = getelementptr inbounds %struct.input_dev, ptr %179, i32 0, i32 3
  %180 = ptrtoint ptr %id56.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 24, ptr %id56.i, align 4
  %181 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %event_mask.i, align 1
  %183 = and i8 %182, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool60.not.i = icmp eq i8 %183, 0
  br i1 %tobool60.not.i, label %for.body80.preheader.i, label %if.then61.i107

for.body80.preheader.i:                           ; preds = %if.end45.i
  %184 = ptrtoint ptr %tp_code.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %tp_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %cmp83.not.i = icmp eq i32 %185, 0
  br i1 %cmp83.not.i, label %for.body80.preheader.i.for.inc90.i_crit_edge, label %if.then85.i

for.body80.preheader.i.for.inc90.i_crit_edge:     ; preds = %for.body80.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90.i

if.then61.i107:                                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %187, i32 noundef 1, i32 noundef 330) #7
  %188 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_abs_params(ptr noundef %189, i32 noundef 1, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #7
  %190 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %active.i, align 1
  %192 = and i8 %191, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %192)
  %cmp69.i = icmp eq i8 %192, 6
  %193 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %trackpad.i, align 4
  %..i = select i1 %cmp69.i, i32 255, i32 128
  call void @input_set_abs_params(ptr noundef %194, i32 noundef 0, i32 noundef 0, i32 noundef %..i, i32 noundef 0, i32 noundef 0) #7
  %195 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %trackpad.i, align 4
  %prop.i = getelementptr inbounds %struct.iqs626_private, ptr %call.i, i32 0, i32 6
  call void @touchscreen_parse_properties(ptr noundef %196, i1 noundef zeroext false, ptr noundef %prop.i) #7
  br label %if.end93.i

if.then85.i:                                      ; preds = %for.body80.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %197 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %198, i32 noundef 1, i32 noundef %185) #7
  br label %for.inc90.i

for.inc90.i:                                      ; preds = %if.then85.i, %for.body80.preheader.i.for.inc90.i_crit_edge
  %arrayidx82.1.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9, i32 1
  %199 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx82.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %cmp83.not.1.i = icmp eq i32 %200, 0
  br i1 %cmp83.not.1.i, label %for.inc90.i.for.inc90.1.i_crit_edge, label %if.then85.1.i

for.inc90.i.for.inc90.1.i_crit_edge:              ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90.1.i

if.then85.1.i:                                    ; preds = %for.inc90.i
  call void @__sanitizer_cov_trace_pc() #9
  %201 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %202, i32 noundef 1, i32 noundef %200) #7
  br label %for.inc90.1.i

for.inc90.1.i:                                    ; preds = %if.then85.1.i, %for.inc90.i.for.inc90.1.i_crit_edge
  %arrayidx82.2.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9, i32 2
  %203 = ptrtoint ptr %arrayidx82.2.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx82.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp83.not.2.i = icmp eq i32 %204, 0
  br i1 %cmp83.not.2.i, label %for.inc90.1.i.for.inc90.2.i_crit_edge, label %if.then85.2.i

for.inc90.1.i.for.inc90.2.i_crit_edge:            ; preds = %for.inc90.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90.2.i

if.then85.2.i:                                    ; preds = %for.inc90.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %205 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %206, i32 noundef 1, i32 noundef %204) #7
  br label %for.inc90.2.i

for.inc90.2.i:                                    ; preds = %if.then85.2.i, %for.inc90.1.i.for.inc90.2.i_crit_edge
  %arrayidx82.3.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9, i32 3
  %207 = ptrtoint ptr %arrayidx82.3.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %arrayidx82.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp83.not.3.i = icmp eq i32 %208, 0
  br i1 %cmp83.not.3.i, label %for.inc90.2.i.for.inc90.3.i_crit_edge, label %if.then85.3.i

for.inc90.2.i.for.inc90.3.i_crit_edge:            ; preds = %for.inc90.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90.3.i

if.then85.3.i:                                    ; preds = %for.inc90.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %209 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %210, i32 noundef 1, i32 noundef %208) #7
  br label %for.inc90.3.i

for.inc90.3.i:                                    ; preds = %if.then85.3.i, %for.inc90.2.i.for.inc90.3.i_crit_edge
  %arrayidx82.4.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9, i32 4
  %211 = ptrtoint ptr %arrayidx82.4.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx82.4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp83.not.4.i = icmp eq i32 %212, 0
  br i1 %cmp83.not.4.i, label %for.inc90.3.i.for.inc90.4.i_crit_edge, label %if.then85.4.i

for.inc90.3.i.for.inc90.4.i_crit_edge:            ; preds = %for.inc90.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc90.4.i

if.then85.4.i:                                    ; preds = %for.inc90.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %214, i32 noundef 1, i32 noundef %212) #7
  br label %for.inc90.4.i

for.inc90.4.i:                                    ; preds = %if.then85.4.i, %for.inc90.3.i.for.inc90.4.i_crit_edge
  %arrayidx82.5.i = getelementptr %struct.iqs626_private, ptr %call.i, i32 0, i32 9, i32 5
  %215 = ptrtoint ptr %arrayidx82.5.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %arrayidx82.5.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp83.not.5.i = icmp eq i32 %216, 0
  br i1 %cmp83.not.5.i, label %for.inc90.4.i.if.end93.i_crit_edge, label %if.then85.5.i

for.inc90.4.i.if.end93.i_crit_edge:               ; preds = %for.inc90.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then85.5.i:                                    ; preds = %for.inc90.4.i
  call void @__sanitizer_cov_trace_pc() #9
  %217 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %trackpad.i, align 4
  call void @input_set_capability(ptr noundef %218, i32 noundef 1, i32 noundef %216) #7
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then85.5.i, %for.inc90.4.i.if.end93.i_crit_edge, %if.then61.i107
  %219 = ptrtoint ptr %trackpad.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %trackpad.i, align 4
  %call95.i = call i32 @input_register_device(ptr noundef %220) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95.i)
  %tobool96.not.i = icmp eq i32 %call95.i, 0
  br i1 %tobool96.not.i, label %if.end93.i.if.end31_crit_edge, label %do.end.i108

if.end93.i.if.end31_crit_edge:                    ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end.i108:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i98, ptr noundef nonnull @.str.207, i32 noundef %call95.i) #10
  br label %cleanup

if.end31:                                         ; preds = %if.end93.i.if.end31_crit_edge, %for.end32.i.if.end31_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %221 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call33 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %222, ptr noundef null, ptr noundef nonnull @iqs626_irq, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end40, label %do.end38

do.end38:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call33) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call43 = call i32 @wait_for_completion_timeout(ptr noundef %ati_done, i32 noundef 200) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end50

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end40
  %223 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %keypad.i, align 4
  %call51 = call i32 @input_register_device(ptr noundef %224) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end50.cleanup_crit_edge, label %do.end56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call51) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end56, %if.end50.cleanup_crit_edge, %do.end48, %do.end38, %do.end.i108, %if.end39.i.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %iqs626_parse_prop.exit.thread, %do.end19, %if.end9.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ -22, %do.end19 ], [ %call33, %do.end38 ], [ -110, %do.end48 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end9.cleanup_crit_edge ], [ %call51, %do.end56 ], [ 0, %if.end50.cleanup_crit_edge ], [ %retval.0.i.ph, %iqs626_parse_prop.exit.thread ], [ %call95.i, %do.end.i108 ], [ -12, %if.end39.i.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver_info) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs626_irq(i32 noundef %irq, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iqs626_report(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @usleep_range_state(i32 noundef 350, i32 noundef 400, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs626_parse_channel(ptr noundef %iqs626, ptr noundef %ch_node, i32 noundef %ch_id) unnamed_addr #5 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs626, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !400
  %3 = zext i32 %ch_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ch_id, label %entry.cleanup522_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb4_crit_edge
    i32 2, label %entry.sw.bb4_crit_edge718
    i32 3, label %entry.sw.bb7_crit_edge
    i32 4, label %entry.sw.bb7_crit_edge719
    i32 5, label %entry.sw.bb7_crit_edge720
    i32 6, label %sw.bb10
  ]

entry.sw.bb7_crit_edge720:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge719:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb4_crit_edge718:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.cleanup522_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %engine3 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 3
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge718
  %engine5 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18, i32 2
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge719, %entry.sw.bb7_crit_edge720
  %sub = add nsw i32 %ch_id, -3
  %engine8 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub, i32 5
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ch_reg_hall = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 20
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb4, %sw.bb
  %engine.0 = phi ptr [ %ch_reg_hall, %sw.bb10 ], [ %engine8, %sw.bb7 ], [ %engine5, %sw.bb4 ], [ %engine3, %sw.bb ]
  %4 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %engine.0, align 1
  %6 = or i8 %5, -128
  store i8 %6, ptr %engine.0, align 1
  %call = tail call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.68) #7
  br i1 %call, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %engine.0, align 1
  %9 = and i8 %8, 127
  store i8 %9, ptr %engine.0, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %10 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %engine.0, align 1
  %12 = or i8 %11, 32
  store i8 %12, ptr %engine.0, align 1
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.69, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then19, label %if.end.if.end56_crit_edge

if.end.if.end56_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then19:                                        ; preds = %if.end
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.220)
  switch i32 %14, label %if.then19.do.end_crit_edge [
    i32 0, label %if.then19.if.end56_crit_edge
    i32 1, label %sw.bb20
    i32 2, label %sw.bb35
  ]

if.then19.if.end56_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then19.do.end_crit_edge:                       ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb20:                                          ; preds = %if.then19
  %16 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %engine.0, align 1
  %18 = and i8 %17, -33
  store i8 %18, ptr %engine.0, align 1
  %ch_id.off = add nsw i32 %ch_id, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch_id.off)
  %switch = icmp ult i32 %ch_id.off, 3
  br i1 %switch, label %if.then30, label %sw.bb20.if.end56_crit_edge

sw.bb20.if.end56_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then30:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %engine.0, i32 4
  %19 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr, align 1
  %21 = and i8 %20, -65
  store i8 %21, ptr %add.ptr, align 1
  br label %if.end56

sw.bb35:                                          ; preds = %if.then19
  %ch_id.off694 = add nsw i32 %ch_id, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch_id.off694)
  %switch695 = icmp ult i32 %ch_id.off694, 3
  br i1 %switch695, label %if.then44, label %sw.bb35.do.end_crit_edge

sw.bb35.do.end_crit_edge:                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then44:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %engine.0, align 1
  %24 = and i8 %23, -33
  store i8 %24, ptr %engine.0, align 1
  %add.ptr48 = getelementptr i8, ptr %engine.0, i32 4
  %25 = ptrtoint ptr %add.ptr48 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %add.ptr48, align 1
  %27 = or i8 %26, 64
  store i8 %27, ptr %add.ptr48, align 1
  br label %if.end56

do.end:                                           ; preds = %sw.bb35.do.end_crit_edge, %if.then19.do.end_crit_edge
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call54 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef %call54, i32 noundef %29) #10
  br label %cleanup522

if.end56:                                         ; preds = %if.then44, %if.then30, %sw.bb20.if.end56_crit_edge, %if.then19.if.end56_crit_edge, %if.end.if.end56_crit_edge
  %30 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %engine.0, align 1
  %32 = and i8 %31, -17
  store i8 %32, ptr %engine.0, align 1
  %call60 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.72) #7
  br i1 %call60, label %if.then61, label %if.end56.if.end65_crit_edge

if.end56.if.end65_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %engine.0, align 1
  %35 = or i8 %34, 16
  store i8 %35, ptr %engine.0, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then61, %if.end56.if.end65_crit_edge
  %36 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %engine.0, align 1
  %38 = and i8 %37, -9
  store i8 %38, ptr %engine.0, align 1
  %call69 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.73) #7
  br i1 %call69, label %if.then70, label %if.end65.if.end74_crit_edge

if.end65.if.end74_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %engine.0, align 1
  %41 = or i8 %40, 8
  store i8 %41, ptr %engine.0, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.end65.if.end74_crit_edge
  %42 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %engine.0, align 1
  %44 = and i8 %43, -5
  store i8 %44, ptr %engine.0, align 1
  %call78 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.74) #7
  br i1 %call78, label %if.then79, label %if.end74.if.end83_crit_edge

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then79:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %engine.0, align 1
  %47 = or i8 %46, 4
  store i8 %47, ptr %engine.0, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then79, %if.end74.if.end83_crit_edge
  %call.i700 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.75, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i700)
  %tobool85.not = icmp eq i32 %call.i700, 0
  br i1 %tobool85.not, label %if.then86, label %if.end83.if.end102_crit_edge

if.end83.if.end102_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then86:                                        ; preds = %if.end83
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %49)
  %cmp87 = icmp ugt i32 %49, 3
  br i1 %cmp87, label %do.end92, label %if.end95

do.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %dev93 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call94 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.77, ptr noundef %call94, i32 noundef %51) #10
  br label %cleanup522

if.end95:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %engine.0 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %engine.0, align 1
  %54 = and i8 %53, -4
  %55 = trunc i32 %49 to i8
  %conv101 = or i8 %54, %55
  store i8 %conv101, ptr %engine.0, align 1
  br label %if.end102

if.end102:                                        ; preds = %if.end95, %if.end83.if.end102_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ch_id)
  %cmp103 = icmp eq i32 %ch_id, 6
  br i1 %cmp103, label %if.end102.cleanup522_crit_edge, label %if.end106

if.end102.cleanup522_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

if.end106:                                        ; preds = %if.end102
  %add.ptr107 = getelementptr i8, ptr %engine.0, i32 1
  %56 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr107, align 1
  %58 = and i8 %57, -9
  store i8 %58, ptr %add.ptr107, align 1
  %call.i701 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.79, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i701)
  %tobool112.not = icmp eq i32 %call.i701, 0
  br i1 %tobool112.not, label %land.lhs.true, label %if.end106.if.end186_crit_edge

if.end106.if.end186_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

land.lhs.true:                                    ; preds = %if.end106
  %59 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool113.not = icmp eq i32 %60, 0
  br i1 %tobool113.not, label %land.lhs.true.if.end186_crit_edge, label %if.then114

land.lhs.true.if.end186_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end186

if.then114:                                       ; preds = %land.lhs.true
  %dec = add i32 %60, -1
  %61 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dec, ptr %val, align 4
  %ch_id.off696 = add nsw i32 %ch_id, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %ch_id.off696)
  %switch697 = icmp ult i32 %ch_id.off696, 3
  br i1 %switch697, label %if.then123, label %if.then114.if.end148_crit_edge

if.then114.if.end148_crit_edge:                   ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end148

if.then123:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr124 = getelementptr i8, ptr %engine.0, i32 4
  %62 = ptrtoint ptr %add.ptr124 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr124, align 1
  %64 = and i8 %63, -49
  %65 = trunc i32 %dec to i8
  %66 = shl i8 %65, 4
  %67 = and i8 %66, 32
  %spec.select = or i8 %64, %67
  %68 = and i8 %66, 16
  %storemerge714 = or i8 %spec.select, %68
  store i8 %storemerge714, ptr %add.ptr124, align 1
  %shr = lshr i32 %dec, 2
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shr, ptr %val, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then123, %if.then114.if.end148_crit_edge
  %70 = phi i32 [ %dec, %if.then114.if.end148_crit_edge ], [ %shr, %if.then123 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %tobool150.not = icmp ult i32 %70, 4
  br i1 %tobool150.not, label %if.end157, label %do.end154

do.end154:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %dev155 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call156 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev155, ptr noundef nonnull @.str.81, ptr noundef %call156, i32 noundef %60) #10
  br label %cleanup522

if.end157:                                        ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %add.ptr107, align 1
  %73 = and i8 %72, 55
  %74 = trunc i32 %70 to i8
  %75 = shl nuw i8 %74, 6
  %.masked = and i8 %75, -128
  %76 = or i8 %73, %.masked
  %77 = and i8 %75, 64
  %storemerge712 = or i8 %76, %77
  %78 = or i8 %storemerge712, 8
  store i8 %78, ptr %add.ptr107, align 1
  br label %if.end186

if.end186:                                        ; preds = %if.end157, %land.lhs.true.if.end186_crit_edge, %if.end106.if.end186_crit_edge
  %call.i702 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.83, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i702)
  %tobool188.not = icmp eq i32 %call.i702, 0
  br i1 %tobool188.not, label %if.then189, label %if.end186.if.end207_crit_edge

if.end186.if.end207_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end207

if.then189:                                       ; preds = %if.end186
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %80)
  %cmp190 = icmp ugt i32 %80, 3
  br i1 %cmp190, label %do.end195, label %if.end198

do.end195:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %dev196 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call197 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev196, ptr noundef nonnull @.str.85, ptr noundef %call197, i32 noundef %82) #10
  br label %cleanup522

if.end198:                                        ; preds = %if.then189
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %add.ptr107, align 1
  %85 = and i8 %84, -49
  %.tr = trunc i32 %80 to i8
  %86 = shl nuw nsw i8 %.tr, 4
  %conv206 = or i8 %85, %86
  store i8 %conv206, ptr %add.ptr107, align 1
  br label %if.end207

if.end207:                                        ; preds = %if.end198, %if.end186.if.end207_crit_edge
  %call.i703 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.87, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i703)
  %tobool209.not = icmp eq i32 %call.i703, 0
  br i1 %tobool209.not, label %if.then210, label %if.end207.if.end229_crit_edge

if.end207.if.end229_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end229

if.then210:                                       ; preds = %if.end207
  %87 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %88)
  %cmp211 = icmp ugt i32 %88, 3
  br i1 %cmp211, label %do.end216, label %if.end219

do.end216:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #9
  %dev217 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call218 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %89 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev217, ptr noundef nonnull @.str.89, ptr noundef %call218, i32 noundef %90) #10
  br label %cleanup522

if.end219:                                        ; preds = %if.then210
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr107, align 1
  %93 = and i8 %92, -7
  %.tr686 = trunc i32 %88 to i8
  %94 = shl nuw nsw i8 %.tr686, 1
  %conv228 = or i8 %93, %94
  store i8 %conv228, ptr %add.ptr107, align 1
  br label %if.end229

if.end229:                                        ; preds = %if.end219, %if.end207.if.end229_crit_edge
  %95 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr107, align 1
  %97 = and i8 %96, -2
  store i8 %97, ptr %add.ptr107, align 1
  %call234 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.91) #7
  br i1 %call234, label %if.then235, label %if.end229.if.end240_crit_edge

if.end229.if.end240_crit_edge:                    ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

if.then235:                                       ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %add.ptr107 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr107, align 1
  %100 = or i8 %99, 1
  store i8 %100, ptr %add.ptr107, align 1
  br label %if.end240

if.end240:                                        ; preds = %if.then235, %if.end229.if.end240_crit_edge
  %ch_id.off698 = add nsw i32 %ch_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ch_id.off698)
  %switch699 = icmp ult i32 %ch_id.off698, 2
  br i1 %switch699, label %if.then246, label %if.end248

if.then246:                                       ; preds = %if.end240
  %101 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %iqs626, align 4
  %tp_grp_reg.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %103 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 -1, ptr %val.i, align 4, !annotation !400
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.128, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then246.if.end10.i_crit_edge

if.then246.if.end10.i_crit_edge:                  ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then.i:                                        ; preds = %if.then246
  %104 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %105)
  %cmp.i = icmp ugt i32 %105, 7
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call5.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %106 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.129, ptr noundef %call5.i, i32 noundef %107) #10
  br label %iqs626_parse_trackpad.exit

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %misc_a.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 1
  %108 = ptrtoint ptr %misc_a.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %misc_a.i, align 1
  %110 = and i8 %109, -113
  %.tr.i = trunc i32 %105 to i8
  %111 = shl nuw nsw i8 %.tr.i, 4
  %conv9.i = or i8 %110, %111
  store i8 %conv9.i, ptr %misc_a.i, align 1
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i, %if.then246.if.end10.i_crit_edge
  %call.i214.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.131, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214.i)
  %tobool12.not.i = icmp eq i32 %call.i214.i, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %if.end10.i.if.end30.i_crit_edge

if.end10.i.if.end30.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30.i

if.then13.i:                                      ; preds = %if.end10.i
  %112 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %113)
  %cmp14.i = icmp ugt i32 %113, 3
  br i1 %cmp14.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev20.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call21.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %114 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev20.i, ptr noundef nonnull @.str.95, ptr noundef %call21.i, i32 noundef %115) #10
  br label %iqs626_parse_trackpad.exit

if.end22.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %misc_b.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 11
  %116 = ptrtoint ptr %misc_b.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %misc_b.i, align 1
  %118 = and i8 %117, -4
  %119 = trunc i32 %113 to i8
  %conv29.i = or i8 %118, %119
  store i8 %conv29.i, ptr %misc_b.i, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.end22.i, %if.end10.i.if.end30.i_crit_edge
  %call.i215.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.93, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215.i)
  %tobool32.not.i = icmp eq i32 %call.i215.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.end30.i.if.end50.i_crit_edge

if.end30.i.if.end50.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

if.then33.i:                                      ; preds = %if.end30.i
  %120 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %121)
  %cmp34.i = icmp ugt i32 %121, 3
  br i1 %cmp34.i, label %do.end39.i, label %if.end42.i

do.end39.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev40.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call41.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %122 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev40.i, ptr noundef nonnull @.str.95, ptr noundef %call41.i, i32 noundef %123) #10
  br label %iqs626_parse_trackpad.exit

if.end42.i:                                       ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %124 = ptrtoint ptr %tp_grp_reg.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %tp_grp_reg.i, align 1
  %126 = and i8 %125, 63
  %.tr210.i = trunc i32 %121 to i8
  %127 = shl nuw i8 %.tr210.i, 6
  %conv49.i = or i8 %126, %127
  store i8 %conv49.i, ptr %tp_grp_reg.i, align 1
  br label %if.end50.i

if.end50.i:                                       ; preds = %if.end42.i, %if.end30.i.if.end50.i_crit_edge
  %call.i216.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.97, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216.i)
  %tobool52.not.i = icmp eq i32 %call.i216.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end50.i.if.end70.i_crit_edge

if.end50.i.if.end70.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

if.then53.i:                                      ; preds = %if.end50.i
  %128 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %129)
  %cmp54.i = icmp ugt i32 %129, 3
  br i1 %cmp54.i, label %do.end59.i, label %if.end62.i

do.end59.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev60.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call61.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %130 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev60.i, ptr noundef nonnull @.str.95, ptr noundef %call61.i, i32 noundef %131) #10
  br label %iqs626_parse_trackpad.exit

if.end62.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %tp_grp_reg.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %tp_grp_reg.i, align 1
  %134 = and i8 %133, -49
  %.tr211.i = trunc i32 %129 to i8
  %135 = shl nuw nsw i8 %.tr211.i, 4
  %conv69.i = or i8 %134, %135
  store i8 %conv69.i, ptr %tp_grp_reg.i, align 1
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.end62.i, %if.end50.i.if.end70.i_crit_edge
  %call71.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.138) #7
  br i1 %call71.i, label %if.end73.i, label %if.end70.i.iqs626_parse_trackpad.exit_crit_edge

if.end70.i.iqs626_parse_trackpad.exit_crit_edge:  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iqs626_parse_trackpad.exit

if.end73.i:                                       ; preds = %if.end70.i
  %call.i217.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.138, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i217.i)
  %cmp75.i = icmp sgt i32 %call.i217.i, 6
  br i1 %cmp75.i, label %do.end80.i, label %if.else.i

do.end80.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev81.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev81.i, ptr noundef nonnull @.str.140) #10
  br label %iqs626_parse_trackpad.exit

if.else.i:                                        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217.i)
  %cmp82.i = icmp slt i32 %call.i217.i, 0
  br i1 %cmp82.i, label %do.end87.i, label %if.end90.i

do.end87.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev88.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev88.i, ptr noundef nonnull @.str.143, i32 noundef %call.i217.i) #10
  br label %iqs626_parse_trackpad.exit

if.end90.i:                                       ; preds = %if.else.i
  %tp_code.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 9
  %call91.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.138, ptr noundef %tp_code.i, i32 noundef %call.i217.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91.i)
  %tobool92.not.i = icmp eq i32 %call91.i, 0
  br i1 %tobool92.not.i, label %if.end98.i, label %do.end96.i

do.end96.i:                                       ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev97.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev97.i, ptr noundef nonnull @.str.146, i32 noundef %call91.i) #10
  br label %iqs626_parse_trackpad.exit

if.end98.i:                                       ; preds = %if.end90.i
  %misc_b99.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 11
  %136 = ptrtoint ptr %misc_b99.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %misc_b99.i, align 1
  %138 = and i8 %137, -9
  store i8 %138, ptr %misc_b99.i, align 1
  %call103.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.148) #7
  br i1 %call103.i, label %if.then104.i, label %if.end98.i.if.end109.i_crit_edge

if.end98.i.if.end109.i_crit_edge:                 ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109.i

if.then104.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %misc_b99.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %misc_b99.i, align 1
  %141 = or i8 %140, 8
  store i8 %141, ptr %misc_b99.i, align 1
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then104.i, %if.end98.i.if.end109.i_crit_edge
  %call.i218.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.149, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218.i)
  %tobool111.not.i = icmp eq i32 %call.i218.i, 0
  br i1 %tobool111.not.i, label %if.then112.i, label %if.end109.i.if.end123.i_crit_edge

if.end109.i.if.end123.i_crit_edge:                ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i

if.then112.i:                                     ; preds = %if.end109.i
  %142 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %143)
  %cmp113.i = icmp ugt i32 %143, 4080
  br i1 %cmp113.i, label %do.end118.i, label %if.end121.i

do.end118.i:                                      ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev119.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call120.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %144 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev119.i, ptr noundef nonnull @.str.151, ptr noundef %call120.i, i32 noundef %145) #10
  br label %iqs626_parse_trackpad.exit

if.end121.i:                                      ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #9
  %div212.i = lshr i32 %143, 4
  %conv122.i = trunc i32 %div212.i to i8
  %timeout_tap.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 13
  %146 = ptrtoint ptr %timeout_tap.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 %conv122.i, ptr %timeout_tap.i, align 1
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.end121.i, %if.end109.i.if.end123.i_crit_edge
  %call.i219.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.153, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219.i)
  %tobool125.not.i = icmp eq i32 %call.i219.i, 0
  br i1 %tobool125.not.i, label %if.then126.i, label %if.end123.i.if.end138.i_crit_edge

if.end123.i.if.end138.i_crit_edge:                ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138.i

if.then126.i:                                     ; preds = %if.end123.i
  %147 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %148)
  %cmp127.i = icmp ugt i32 %148, 4080
  br i1 %cmp127.i, label %do.end132.i, label %if.end135.i

do.end132.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev133.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call134.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %149 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev133.i, ptr noundef nonnull @.str.151, ptr noundef %call134.i, i32 noundef %150) #10
  br label %iqs626_parse_trackpad.exit

if.end135.i:                                      ; preds = %if.then126.i
  call void @__sanitizer_cov_trace_pc() #9
  %div136213.i = lshr i32 %148, 4
  %conv137.i = trunc i32 %div136213.i to i8
  %timeout_swipe.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 14
  %151 = ptrtoint ptr %timeout_swipe.i to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %conv137.i, ptr %timeout_swipe.i, align 1
  br label %if.end138.i

if.end138.i:                                      ; preds = %if.end135.i, %if.end123.i.if.end138.i_crit_edge
  %call.i220.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.156, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220.i)
  %tobool140.not.i = icmp eq i32 %call.i220.i, 0
  br i1 %tobool140.not.i, label %if.then141.i, label %if.end138.i.if.end152.i_crit_edge

if.end138.i.if.end152.i_crit_edge:                ; preds = %if.end138.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152.i

if.then141.i:                                     ; preds = %if.end138.i
  %152 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %153)
  %cmp142.i = icmp ugt i32 %153, 255
  br i1 %cmp142.i, label %do.end147.i, label %if.end150.i

do.end147.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev148.i = getelementptr inbounds %struct.i2c_client, ptr %102, i32 0, i32 4
  %call149.i = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %154 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev148.i, ptr noundef nonnull @.str.158, ptr noundef %call149.i, i32 noundef %155) #10
  br label %iqs626_parse_trackpad.exit

if.end150.i:                                      ; preds = %if.then141.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv151.i = trunc i32 %153 to i8
  %thresh_swipe.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 12
  %156 = ptrtoint ptr %thresh_swipe.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv151.i, ptr %thresh_swipe.i, align 1
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.end150.i, %if.end138.i.if.end152.i_crit_edge
  %event_mask.i = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 2
  %157 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %event_mask.i, align 1
  %159 = and i8 %158, -9
  store i8 %159, ptr %event_mask.i, align 1
  br label %iqs626_parse_trackpad.exit

iqs626_parse_trackpad.exit:                       ; preds = %if.end152.i, %do.end147.i, %do.end132.i, %do.end118.i, %do.end96.i, %do.end87.i, %do.end80.i, %if.end70.i.iqs626_parse_trackpad.exit_crit_edge, %do.end59.i, %do.end39.i, %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ -22, %do.end80.i ], [ %call.i217.i, %do.end87.i ], [ %call91.i, %do.end96.i ], [ 0, %if.end152.i ], [ -22, %do.end147.i ], [ -22, %do.end132.i ], [ -22, %do.end118.i ], [ -22, %do.end59.i ], [ -22, %do.end39.i ], [ -22, %do.end19.i ], [ -22, %do.end.i ], [ 0, %if.end70.i.iqs626_parse_trackpad.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup522

if.end248:                                        ; preds = %if.end240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ch_id)
  %cmp249 = icmp eq i32 %ch_id, 0
  br i1 %cmp249, label %if.then251, label %if.else

if.then251:                                       ; preds = %if.end248
  %hyst = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 1
  %160 = ptrtoint ptr %hyst to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %hyst, align 1
  %162 = and i8 %161, -17
  store i8 %162, ptr %hyst, align 1
  %call256 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.92) #7
  br i1 %call256, label %if.then257, label %if.then251.if.end263_crit_edge

if.then251.if.end263_crit_edge:                   ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

if.then257:                                       ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #9
  %163 = ptrtoint ptr %hyst to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %hyst, align 1
  %165 = or i8 %164, 16
  store i8 %165, ptr %hyst, align 1
  br label %if.end263

if.end263:                                        ; preds = %if.then257, %if.then251.if.end263_crit_edge
  %filter265 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 2
  %rx_enable267 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 7
  %tx_enable269 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 8
  br label %if.end280

if.else:                                          ; preds = %if.end248
  call void @__sanitizer_cov_trace_pc() #9
  %sub270 = add nsw i32 %ch_id, -3
  %filter273 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub270, i32 6
  %rx_enable276 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub270, i32 7
  %tx_enable279 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub270, i32 8
  br label %if.end280

if.end280:                                        ; preds = %if.else, %if.end263
  %filter.0 = phi ptr [ %filter265, %if.end263 ], [ %filter273, %if.else ]
  %rx_enable.0 = phi ptr [ %rx_enable267, %if.end263 ], [ %rx_enable276, %if.else ]
  %tx_enable.0 = phi ptr [ %tx_enable269, %if.end263 ], [ %tx_enable279, %if.else ]
  %call.i704 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.93, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i704)
  %tobool282.not = icmp eq i32 %call.i704, 0
  br i1 %tobool282.not, label %if.then283, label %if.end280.if.end300_crit_edge

if.end280.if.end300_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end300

if.then283:                                       ; preds = %if.end280
  %166 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %167)
  %cmp284 = icmp ugt i32 %167, 3
  br i1 %cmp284, label %do.end289, label %if.end292

do.end289:                                        ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #9
  %dev290 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call291 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %168 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev290, ptr noundef nonnull @.str.95, ptr noundef %call291, i32 noundef %169) #10
  br label %cleanup522

if.end292:                                        ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #9
  %170 = ptrtoint ptr %filter.0 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %filter.0, align 1
  %172 = and i8 %171, 63
  %.tr687 = trunc i32 %167 to i8
  %173 = shl nuw i8 %.tr687, 6
  %conv299 = or i8 %172, %173
  store i8 %conv299, ptr %filter.0, align 1
  br label %if.end300

if.end300:                                        ; preds = %if.end292, %if.end280.if.end300_crit_edge
  %call.i705 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.97, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i705)
  %tobool302.not = icmp eq i32 %call.i705, 0
  br i1 %tobool302.not, label %if.then303, label %if.end300.if.end320_crit_edge

if.end300.if.end320_crit_edge:                    ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end320

if.then303:                                       ; preds = %if.end300
  %174 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %175)
  %cmp304 = icmp ugt i32 %175, 3
  br i1 %cmp304, label %do.end309, label %if.end312

do.end309:                                        ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #9
  %dev310 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call311 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %176 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev310, ptr noundef nonnull @.str.95, ptr noundef %call311, i32 noundef %177) #10
  br label %cleanup522

if.end312:                                        ; preds = %if.then303
  call void @__sanitizer_cov_trace_pc() #9
  %178 = ptrtoint ptr %filter.0 to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %filter.0, align 1
  %180 = and i8 %179, -49
  %.tr688 = trunc i32 %175 to i8
  %181 = shl nuw nsw i8 %.tr688, 4
  %conv319 = or i8 %180, %181
  store i8 %conv319, ptr %filter.0, align 1
  br label %if.end320

if.end320:                                        ; preds = %if.end312, %if.end300.if.end320_crit_edge
  %call.i706 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.100, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i706)
  %tobool322.not = icmp eq i32 %call.i706, 0
  br i1 %tobool322.not, label %if.then323, label %if.end320.if.end340_crit_edge

if.end320.if.end340_crit_edge:                    ; preds = %if.end320
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end340

if.then323:                                       ; preds = %if.end320
  %182 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %183)
  %cmp324 = icmp ugt i32 %183, 3
  br i1 %cmp324, label %do.end329, label %if.end332

do.end329:                                        ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  %dev330 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call331 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %184 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev330, ptr noundef nonnull @.str.95, ptr noundef %call331, i32 noundef %185) #10
  br label %cleanup522

if.end332:                                        ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #9
  %186 = ptrtoint ptr %filter.0 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %filter.0, align 1
  %188 = and i8 %187, -13
  %.tr689 = trunc i32 %183 to i8
  %189 = shl nuw nsw i8 %.tr689, 2
  %conv339 = or i8 %188, %189
  store i8 %conv339, ptr %filter.0, align 1
  br label %if.end340

if.end340:                                        ; preds = %if.end332, %if.end320.if.end340_crit_edge
  %call.i707 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.103, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i707)
  %tobool342.not = icmp eq i32 %call.i707, 0
  br i1 %tobool342.not, label %if.then343, label %if.end340.if.end359_crit_edge

if.end340.if.end359_crit_edge:                    ; preds = %if.end340
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end359

if.then343:                                       ; preds = %if.end340
  %190 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %191)
  %cmp344 = icmp ugt i32 %191, 3
  br i1 %cmp344, label %do.end349, label %if.end352

do.end349:                                        ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #9
  %dev350 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call351 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %192 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev350, ptr noundef nonnull @.str.95, ptr noundef %call351, i32 noundef %193) #10
  br label %cleanup522

if.end352:                                        ; preds = %if.then343
  call void @__sanitizer_cov_trace_pc() #9
  %194 = ptrtoint ptr %filter.0 to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %filter.0, align 1
  %196 = and i8 %195, -4
  %197 = trunc i32 %191 to i8
  %conv358 = or i8 %196, %197
  store i8 %conv358, ptr %filter.0, align 1
  br label %if.end359

if.end359:                                        ; preds = %if.end352, %if.end340.if.end359_crit_edge
  %call360 = call fastcc i32 @iqs626_parse_pins(ptr noundef %iqs626, ptr noundef %ch_node, ptr noundef nonnull @.str.106, ptr noundef %rx_enable.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call360)
  %tobool361.not = icmp eq i32 %call360, 0
  br i1 %tobool361.not, label %if.end363, label %if.end359.cleanup522_crit_edge

if.end359.cleanup522_crit_edge:                   ; preds = %if.end359
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

if.end363:                                        ; preds = %if.end359
  %call364 = call fastcc i32 @iqs626_parse_pins(ptr noundef %iqs626, ptr noundef %ch_node, ptr noundef nonnull @.str.107, ptr noundef %tx_enable.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call364)
  %tobool365.not = icmp ne i32 %call364, 0
  %brmerge = or i1 %cmp249, %tobool365.not
  br i1 %brmerge, label %if.end363.cleanup522_crit_edge, label %if.end371

if.end363.cleanup522_crit_edge:                   ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

if.end371:                                        ; preds = %if.end363
  %add.ptr372 = getelementptr i8, ptr %engine.0, i32 2
  %198 = ptrtoint ptr %add.ptr372 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %add.ptr372, align 1
  %200 = and i8 %199, -33
  store i8 %200, ptr %add.ptr372, align 1
  %call.i708 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.108, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i708)
  %tobool377.not = icmp eq i32 %call.i708, 0
  br i1 %tobool377.not, label %land.lhs.true378, label %if.end371.if.end408_crit_edge

if.end371.if.end408_crit_edge:                    ; preds = %if.end371
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end408

land.lhs.true378:                                 ; preds = %if.end371
  %201 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %tobool379.not = icmp eq i32 %202, 0
  br i1 %tobool379.not, label %land.lhs.true378.if.end408_crit_edge, label %if.then380

land.lhs.true378.if.end408_crit_edge:             ; preds = %land.lhs.true378
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end408

if.then380:                                       ; preds = %land.lhs.true378
  %dec382 = add i32 %202, -1
  %203 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %dec382, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %dec382)
  %cmp383 = icmp ugt i32 %dec382, 3
  br i1 %cmp383, label %do.end388, label %if.end391

do.end388:                                        ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #9
  %dev389 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call390 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev389, ptr noundef nonnull @.str.110, ptr noundef %call390, i32 noundef %202) #10
  br label %cleanup522

if.end391:                                        ; preds = %if.then380
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %add.ptr372 to i32
  call void @__asan_load1_noabort(i32 %204)
  %205 = load i8, ptr %add.ptr372, align 1
  %206 = and i8 %205, 31
  %.tr692 = trunc i32 %dec382 to i8
  %207 = shl nuw i8 %.tr692, 6
  %conv400 = or i8 %206, %207
  %208 = or i8 %conv400, 32
  store i8 %208, ptr %add.ptr372, align 1
  br label %if.end408

if.end408:                                        ; preds = %if.end391, %land.lhs.true378.if.end408_crit_edge, %if.end371.if.end408_crit_edge
  %call.i709 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.112, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i709)
  %tobool410.not = icmp eq i32 %call.i709, 0
  br i1 %tobool410.not, label %if.then411, label %if.end408.if.end429_crit_edge

if.end408.if.end429_crit_edge:                    ; preds = %if.end408
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end429

if.then411:                                       ; preds = %if.end408
  %209 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %210)
  %cmp412 = icmp ugt i32 %210, 15
  br i1 %cmp412, label %do.end417, label %if.end420

do.end417:                                        ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #9
  %dev418 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call419 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %211 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev418, ptr noundef nonnull @.str.114, ptr noundef %call419, i32 noundef %212) #10
  br label %cleanup522

if.end420:                                        ; preds = %if.then411
  call void @__sanitizer_cov_trace_pc() #9
  %213 = ptrtoint ptr %add.ptr372 to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %add.ptr372, align 1
  %215 = and i8 %214, -16
  %216 = trunc i32 %210 to i8
  %conv428 = or i8 %215, %216
  store i8 %conv428, ptr %add.ptr372, align 1
  br label %if.end429

if.end429:                                        ; preds = %if.end420, %if.end408.if.end429_crit_edge
  %call.i710 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.116, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i710)
  %tobool431.not = icmp eq i32 %call.i710, 0
  br i1 %tobool431.not, label %if.then432, label %if.end429.if.end451_crit_edge

if.end429.if.end451_crit_edge:                    ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end451

if.then432:                                       ; preds = %if.end429
  %217 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %218)
  %cmp433 = icmp ugt i32 %218, 3
  br i1 %cmp433, label %do.end438, label %if.end441

do.end438:                                        ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #9
  %dev439 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call440 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %219 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev439, ptr noundef nonnull @.str.118, ptr noundef %call440, i32 noundef %220) #10
  br label %cleanup522

if.end441:                                        ; preds = %if.then432
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr442 = getelementptr i8, ptr %engine.0, i32 3
  %221 = ptrtoint ptr %add.ptr442 to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %add.ptr442, align 1
  %223 = and i8 %222, -49
  %.tr690 = trunc i32 %218 to i8
  %224 = shl nuw nsw i8 %.tr690, 4
  %conv450 = or i8 %223, %224
  store i8 %conv450, ptr %add.ptr442, align 1
  br label %if.end451

if.end451:                                        ; preds = %if.end441, %if.end429.if.end451_crit_edge
  %add.ptr452 = getelementptr i8, ptr %engine.0, i32 3
  %225 = ptrtoint ptr %add.ptr452 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %add.ptr452, align 1
  %227 = and i8 %226, -2
  store i8 %227, ptr %add.ptr452, align 1
  %call456 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.120) #7
  br i1 %call456, label %if.then457, label %if.end451.if.end462_crit_edge

if.end451.if.end462_crit_edge:                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end462

if.then457:                                       ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #9
  %228 = ptrtoint ptr %add.ptr452 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %add.ptr452, align 1
  %230 = or i8 %229, 1
  store i8 %230, ptr %add.ptr452, align 1
  br label %if.end462

if.end462:                                        ; preds = %if.then457, %if.end451.if.end462_crit_edge
  %add.ptr463 = getelementptr i8, ptr %engine.0, i32 4
  %231 = ptrtoint ptr %add.ptr463 to i32
  call void @__asan_load1_noabort(i32 %231)
  %232 = load i8, ptr %add.ptr463, align 1
  %233 = and i8 %232, -3
  store i8 %233, ptr %add.ptr463, align 1
  %call467 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.121) #7
  br i1 %call467, label %if.then468, label %if.end462.if.end473_crit_edge

if.end462.if.end473_crit_edge:                    ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end473

if.then468:                                       ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #9
  %234 = ptrtoint ptr %add.ptr463 to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %add.ptr463, align 1
  %236 = or i8 %235, 2
  store i8 %236, ptr %add.ptr463, align 1
  br label %if.end473

if.end473:                                        ; preds = %if.then468, %if.end462.if.end473_crit_edge
  %237 = ptrtoint ptr %add.ptr463 to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %add.ptr463, align 1
  %239 = and i8 %238, -2
  store i8 %239, ptr %add.ptr463, align 1
  %call478 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.122) #7
  br i1 %call478, label %if.then479, label %if.end473.if.end484_crit_edge

if.end473.if.end484_crit_edge:                    ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end484

if.then479:                                       ; preds = %if.end473
  call void @__sanitizer_cov_trace_pc() #9
  %240 = ptrtoint ptr %add.ptr463 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %add.ptr463, align 1
  %242 = or i8 %241, 1
  store i8 %242, ptr %add.ptr463, align 1
  br label %if.end484

if.end484:                                        ; preds = %if.then479, %if.end473.if.end484_crit_edge
  %sub485 = add nsw i32 %ch_id, -3
  %assoc_select488 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub485, i32 9
  %assoc_weight491 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub485, i32 10
  %243 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 0, ptr %assoc_select488, align 1
  %call492 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.123) #7
  br i1 %call492, label %for.body.preheader, label %if.end484.cleanup522_crit_edge

if.end484.cleanup522_crit_edge:                   ; preds = %if.end484
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

for.body.preheader:                               ; preds = %if.end484
  %call498 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498)
  %cmp499 = icmp slt i32 %call498, 0
  br i1 %cmp499, label %for.body.preheader.for.inc_crit_edge, label %if.end502

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end502:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %244 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %244)
  %245 = load i8, ptr %assoc_select488, align 1
  %or506691 = or i8 %245, 1
  store i8 %or506691, ptr %assoc_select488, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end502, %for.body.preheader.for.inc_crit_edge
  %call498.1 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.1)
  %cmp499.1 = icmp slt i32 %call498.1, 0
  br i1 %cmp499.1, label %for.inc.for.inc.1_crit_edge, label %if.end502.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.end502.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %246 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %246)
  %247 = load i8, ptr %assoc_select488, align 1
  %or506691.1 = or i8 %247, 2
  store i8 %or506691.1, ptr %assoc_select488, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end502.1, %for.inc.for.inc.1_crit_edge
  %call498.2 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.63) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.2)
  %cmp499.2 = icmp slt i32 %call498.2, 0
  br i1 %cmp499.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end502.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2

if.end502.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %248 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %assoc_select488, align 1
  %or506691.2 = or i8 %249, 6
  store i8 %or506691.2, ptr %assoc_select488, align 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end502.2, %for.inc.1.for.inc.2_crit_edge
  %call498.3 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.3)
  %cmp499.3 = icmp slt i32 %call498.3, 0
  br i1 %cmp499.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end502.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.3

if.end502.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  %250 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %250)
  %251 = load i8, ptr %assoc_select488, align 1
  %or506691.3 = or i8 %251, 16
  store i8 %or506691.3, ptr %assoc_select488, align 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end502.3, %for.inc.2.for.inc.3_crit_edge
  %call498.4 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.4)
  %cmp499.4 = icmp slt i32 %call498.4, 0
  br i1 %cmp499.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end502.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.4

if.end502.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  %252 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %assoc_select488, align 1
  %or506691.4 = or i8 %253, 32
  store i8 %or506691.4, ptr %assoc_select488, align 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end502.4, %for.inc.3.for.inc.4_crit_edge
  %call498.5 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.66) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.5)
  %cmp499.5 = icmp slt i32 %call498.5, 0
  br i1 %cmp499.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end502.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.5

if.end502.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  %254 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %assoc_select488, align 1
  %or506691.5 = or i8 %255, 64
  store i8 %or506691.5, ptr %assoc_select488, align 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end502.5, %for.inc.4.for.inc.5_crit_edge
  %call498.6 = call i32 @fwnode_property_match_string(ptr noundef %ch_node, ptr noundef nonnull @.str.123, ptr noundef nonnull @.str.67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call498.6)
  %cmp499.6 = icmp slt i32 %call498.6, 0
  br i1 %cmp499.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end502.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.6

if.end502.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  %256 = ptrtoint ptr %assoc_select488 to i32
  call void @__asan_load1_noabort(i32 %256)
  %257 = load i8, ptr %assoc_select488, align 1
  %or506691.6 = or i8 %257, -128
  store i8 %or506691.6, ptr %assoc_select488, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end502.6, %for.inc.5.for.inc.6_crit_edge
  %call.i711 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.124, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i711)
  %tobool509.not = icmp eq i32 %call.i711, 0
  br i1 %tobool509.not, label %if.end511, label %for.inc.6.cleanup522_crit_edge

for.inc.6.cleanup522_crit_edge:                   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup522

if.end511:                                        ; preds = %for.inc.6
  %258 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %259)
  %cmp512 = icmp ugt i32 %259, 255
  br i1 %cmp512, label %do.end517, label %if.end520

do.end517:                                        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #9
  %dev518 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call519 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %260 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev518, ptr noundef nonnull @.str.126, ptr noundef %call519, i32 noundef %261) #10
  br label %cleanup522

if.end520:                                        ; preds = %if.end511
  call void @__sanitizer_cov_trace_pc() #9
  %conv521 = trunc i32 %259 to i8
  %262 = ptrtoint ptr %assoc_weight491 to i32
  call void @__asan_store1_noabort(i32 %262)
  store i8 %conv521, ptr %assoc_weight491, align 1
  br label %cleanup522

cleanup522:                                       ; preds = %if.end520, %do.end517, %for.inc.6.cleanup522_crit_edge, %if.end484.cleanup522_crit_edge, %do.end438, %do.end417, %do.end388, %if.end363.cleanup522_crit_edge, %if.end359.cleanup522_crit_edge, %do.end349, %do.end329, %do.end309, %do.end289, %iqs626_parse_trackpad.exit, %do.end216, %do.end195, %do.end154, %if.end102.cleanup522_crit_edge, %do.end92, %do.end, %entry.cleanup522_crit_edge
  %retval.3 = phi i32 [ %retval.0.i, %iqs626_parse_trackpad.exit ], [ -22, %do.end517 ], [ 0, %if.end520 ], [ -22, %do.end438 ], [ -22, %do.end417 ], [ -22, %do.end349 ], [ -22, %do.end329 ], [ -22, %do.end309 ], [ -22, %do.end289 ], [ -22, %do.end216 ], [ -22, %do.end195 ], [ -22, %do.end92 ], [ -22, %do.end ], [ -22, %entry.cleanup522_crit_edge ], [ 0, %if.end102.cleanup522_crit_edge ], [ -22, %do.end154 ], [ %call360, %if.end359.cleanup522_crit_edge ], [ %call364, %if.end363.cleanup522_crit_edge ], [ -22, %do.end388 ], [ 0, %if.end484.cleanup522_crit_edge ], [ 0, %for.inc.6.cleanup522_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.3
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs626_parse_ati_target(ptr nocapture noundef %iqs626, ptr noundef %ch_node, i32 noundef %ch_id) unnamed_addr #5 align 64 {
entry:
  %ati_base = alloca [9 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs626, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %ati_base) #7
  %2 = call ptr @memset(ptr %ati_base, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !400
  %num_ch3 = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %ch_id, i32 1
  %4 = ptrtoint ptr %num_ch3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ch3, align 4
  %6 = zext i32 %ch_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.221)
  switch i32 %ch_id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb5_crit_edge
    i32 2, label %entry.sw.bb5_crit_edge128
    i32 3, label %entry.sw.bb7_crit_edge
    i32 4, label %entry.sw.bb7_crit_edge129
    i32 5, label %entry.sw.bb7_crit_edge130
    i32 6, label %sw.bb10
  ]

entry.sw.bb7_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb5_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ati_target4 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge128
  %ati_target6 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge129, %entry.sw.bb7_crit_edge130
  %sub = add nsw i32 %ch_id, -3
  %ati_target9 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub, i32 3
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ati_target11 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 20, i32 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb7, %sw.bb5, %sw.bb
  %ati_target.0 = phi ptr [ %ati_target11, %sw.bb10 ], [ %ati_target9, %sw.bb7 ], [ %ati_target6, %sw.bb5 ], [ %ati_target4, %sw.bb ]
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.171, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then, label %sw.epilog.if.end17_crit_edge

sw.epilog.if.end17_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %sw.epilog
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2016, i32 %8)
  %cmp = icmp ugt i32 %8, 2016
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call13 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.172, ptr noundef %call13, i32 noundef %10) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %ati_target.0 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ati_target.0, align 1
  %13 = and i8 %12, -64
  %div119 = lshr i32 %8, 5
  %14 = trunc i32 %div119 to i8
  %conv16 = or i8 %13, %14
  store i8 %conv16, ptr %ati_target.0, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end, %sw.epilog.if.end17_crit_edge
  %ch_id.off = add nsw i32 %ch_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ch_id.off)
  %switch = icmp ult i32 %ch_id.off, 2
  br i1 %switch, label %if.end17.if.end43_crit_edge, label %land.lhs.true22

if.end17.if.end43_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

land.lhs.true22:                                  ; preds = %if.end17
  %call.i120 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.174, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool24.not = icmp eq i32 %call.i120, 0
  br i1 %tobool24.not, label %if.then25, label %land.lhs.true22.if.end43_crit_edge

land.lhs.true22.if.end43_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then25:                                        ; preds = %land.lhs.true22
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.222)
  switch i32 %16, label %do.end33 [
    i32 75, label %sw.bb26
    i32 100, label %sw.bb27
    i32 150, label %sw.bb28
    i32 200, label %sw.bb29
  ]

sw.bb26:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  br label %sw.epilog36

sw.bb27:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %val, align 4
  br label %sw.epilog36

sw.bb28:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 128, ptr %val, align 4
  br label %sw.epilog36

sw.bb29:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 192, ptr %val, align 4
  br label %sw.epilog36

do.end33:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %dev34 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call35 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev34, ptr noundef nonnull @.str.176, ptr noundef %call35, i32 noundef %23) #10
  br label %cleanup

sw.epilog36:                                      ; preds = %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26
  %24 = ptrtoint ptr %ati_target.0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ati_target.0, align 1
  %26 = and i8 %25, 63
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %29 = trunc i32 %28 to i8
  %conv42 = or i8 %26, %29
  store i8 %conv42, ptr %ati_target.0, align 1
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true22.if.end43_crit_edge, %if.end17.if.end43_crit_edge
  %call44 = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef nonnull @.str.174) #7
  br i1 %call44, label %if.end46, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.end43
  %call47 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef nonnull @.str.174, ptr noundef nonnull %ati_base, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %for.body.preheader, label %do.end52

for.body.preheader:                               ; preds = %if.end46
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.body

do.end52:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call54 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.179, ptr noundef %call54, i32 noundef %call47) #10
  br label %cleanup

for.body:                                         ; preds = %if.end71.for.body_crit_edge, %for.body.preheader
  %i.0122 = phi i32 [ %inc, %if.end71.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx58 = getelementptr [9 x i32], ptr %ati_base, i32 0, i32 %i.0122
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx58, align 4
  %32 = add i32 %31, -301
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %32)
  %33 = icmp ult i32 %32, -256
  br i1 %33, label %do.end67, label %if.end71

do.end67:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev68 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call69 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %34 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx58, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68, ptr noundef nonnull @.str.176, ptr noundef %call69, i32 noundef %35) #10
  br label %cleanup

if.end71:                                         ; preds = %for.body
  %sub73 = add nsw i32 %31, -45
  %36 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub73, ptr %arrayidx58, align 4
  %conv75 = trunc i32 %sub73 to i8
  %ati_base78 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18, i32 3, i32 %i.0122, i32 1
  %37 = ptrtoint ptr %ati_base78 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv75, ptr %ati_base78, align 1
  %inc = add nuw nsw i32 %i.0122, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end71.cleanup_crit_edge, label %if.end71.for.body_crit_edge

if.end71.for.body_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71.cleanup_crit_edge, %do.end67, %do.end52, %if.end43.cleanup_crit_edge, %sw.epilog36, %do.end33, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call47, %do.end52 ], [ -22, %do.end67 ], [ -22, %do.end33 ], [ 0, %sw.epilog36 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %ati_base) #7
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs626_parse_events(ptr nocapture noundef %iqs626, ptr noundef %ch_node, i32 noundef %ch_id) unnamed_addr #5 align 64 {
entry:
  %thresh_tp = alloca [9 x i32], align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs626, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %thresh_tp) #7
  %2 = call ptr @memset(ptr %thresh_tp, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !400
  %num_ch3 = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %ch_id, i32 1
  %4 = ptrtoint ptr %num_ch3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ch3, align 4
  %6 = zext i32 %ch_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.223)
  switch i32 %ch_id, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb7_crit_edge
    i32 2, label %entry.sw.bb7_crit_edge258
    i32 3, label %entry.sw.bb12_crit_edge
    i32 4, label %entry.sw.bb12_crit_edge259
    i32 5, label %entry.sw.bb12_crit_edge260
    i32 6, label %sw.bb19
  ]

entry.sw.bb12_crit_edge260:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb12_crit_edge259:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb12_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb12

entry.sw.bb7_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ch_reg_ulp = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17
  %hyst6 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 17, i32 1
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge258
  %tp_grp_reg = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18
  %ch_reg_tp = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18, i32 3
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry.sw.bb12_crit_edge, %entry.sw.bb12_crit_edge259, %entry.sw.bb12_crit_edge260
  %sub = add nsw i32 %ch_id, -3
  %arrayidx13 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub
  %hyst18 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 19, i32 %sub, i32 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %thresh20 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 20, i32 1
  %hyst22 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 20, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb12, %sw.bb7, %sw.bb
  %thresh.0 = phi ptr [ %thresh20, %sw.bb19 ], [ %arrayidx13, %sw.bb12 ], [ %ch_reg_tp, %sw.bb7 ], [ %ch_reg_ulp, %sw.bb ]
  %hyst.0 = phi ptr [ %hyst22, %sw.bb19 ], [ %hyst18, %sw.bb12 ], [ %tp_grp_reg, %sw.bb7 ], [ %hyst6, %sw.bb ]
  %ch_id.off = add nsw i32 %ch_id, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ch_id.off)
  %switch = icmp ult i32 %ch_id.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %ch_id)
  %cmp40 = icmp eq i32 %ch_id, 6
  %event_mask = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 2
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc156.for.body_crit_edge, %sw.epilog
  %i.0243 = phi i32 [ 0, %sw.epilog ], [ %inc157, %for.inc156.for.body_crit_edge ]
  %arrayidx24 = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %ch_id, i32 3, i32 %i.0243
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx24, align 1, !range !401
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %for.body.for.inc156_crit_edge, label %if.end

for.body.for.inc156_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

if.end:                                           ; preds = %for.body
  br i1 %switch, label %if.end.if.end55_crit_edge, label %if.else

if.end.if.end55_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.else:                                          ; preds = %if.end
  %arrayidx28 = getelementptr [6 x %struct.iqs626_event_desc], ptr @iqs626_events, i32 0, i32 %i.0243
  %9 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx28, align 4
  %call = call ptr @fwnode_get_named_child_node(ptr noundef %ch_node, ptr noundef %10) #7
  %tobool29.not = icmp eq ptr %call, null
  br i1 %tobool29.not, label %if.else.for.inc156_crit_edge, label %if.end31

if.else.for.inc156_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

if.end31:                                         ; preds = %if.else
  %call.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.183, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool33.not = icmp eq i32 %call.i, 0
  br i1 %tobool33.not, label %if.then34, label %if.end31.if.end55_crit_edge

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then34:                                        ; preds = %if.end31
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %arrayidx36 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 8, i32 %ch_id, i32 %i.0243
  %13 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx36, align 4
  %call.i237 = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call, ptr noundef nonnull @.str.184, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %tobool38.not = icmp eq i32 %call.i237, 0
  br i1 %tobool38.not, label %if.end44, label %if.then39

if.then39:                                        ; preds = %if.then34
  br i1 %cmp40, label %if.then41, label %if.else42

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %val, align 4
  br label %if.end48

if.else42:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %val, align 4
  br label %if.end48

if.end44:                                         ; preds = %if.then34
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %val, align 4
  %17 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.224)
  switch i32 %.pr, label %do.end [
    i32 1, label %if.end44.if.end48_crit_edge
    i32 5, label %if.end44.if.end48_crit_edge261
  ]

if.end44.if.end48_crit_edge261:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.185, i32 noundef %.pr) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end44.if.end48_crit_edge261, %if.else42, %if.then41
  %18 = phi i32 [ %.pr, %if.end44.if.end48_crit_edge ], [ %.pr, %if.end44.if.end48_crit_edge261 ], [ 1, %if.else42 ], [ 5, %if.then41 ]
  %arrayidx50 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 7, i32 %ch_id, i32 %i.0243
  %19 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx50, align 4
  %mask = getelementptr [6 x %struct.iqs626_event_desc], ptr @iqs626_events, i32 0, i32 %i.0243, i32 4
  %20 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mask, align 1
  %neg = xor i8 %21, -1
  %22 = ptrtoint ptr %event_mask to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %event_mask, align 1
  %and = and i8 %23, %neg
  store i8 %and, ptr %event_mask, align 1
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %if.end31.if.end55_crit_edge, %if.end.if.end55_crit_edge
  %ev_node.0 = phi ptr [ %call, %if.end31.if.end55_crit_edge ], [ %call, %if.end48 ], [ %ch_node, %if.end.if.end55_crit_edge ]
  %call.i238 = call i32 @fwnode_property_read_u32_array(ptr noundef %ev_node.0, ptr noundef nonnull @.str.187, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool57.not = icmp eq i32 %call.i238, 0
  br i1 %tobool57.not, label %if.then58, label %if.end55.if.end94_crit_edge

if.end55.if.end94_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then58:                                        ; preds = %if.end55
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %25)
  %cmp59 = icmp ugt i32 %25, 15
  br i1 %cmp59, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call66 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev65, ptr noundef nonnull @.str.189, ptr noundef %call66, i32 noundef %27) #10
  br label %cleanup

if.end67:                                         ; preds = %if.then58
  %28 = zext i32 %i.0243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.225)
  switch i32 %i.0243, label %if.end67.if.end94_crit_edge [
    i32 4, label %if.end67.if.then73_crit_edge
    i32 5, label %if.end67.if.then73_crit_edge262
    i32 2, label %if.end67.if.then85_crit_edge
    i32 3, label %if.end67.if.then85_crit_edge263
  ]

if.end67.if.then85_crit_edge263:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.end67.if.then85_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85

if.end67.if.then73_crit_edge262:                  ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

if.end67.if.then73_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then73

if.end67.if.end94_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94

if.then73:                                        ; preds = %if.end67.if.then73_crit_edge, %if.end67.if.then73_crit_edge262
  %29 = ptrtoint ptr %hyst.0 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %hyst.0, align 1
  %31 = and i8 %30, 15
  %.tr = trunc i32 %25 to i8
  %32 = shl nuw i8 %.tr, 4
  %conv78 = or i8 %31, %32
  br label %if.end94.sink.split

if.then85:                                        ; preds = %if.end67.if.then85_crit_edge, %if.end67.if.then85_crit_edge263
  %33 = ptrtoint ptr %hyst.0 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %hyst.0, align 1
  %35 = and i8 %34, -16
  %36 = trunc i32 %25 to i8
  %conv91 = or i8 %35, %36
  br label %if.end94.sink.split

if.end94.sink.split:                              ; preds = %if.then85, %if.then73
  %conv78.sink = phi i8 [ %conv78, %if.then73 ], [ %conv91, %if.then85 ]
  %37 = ptrtoint ptr %hyst.0 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv78.sink, ptr %hyst.0, align 1
  br label %if.end94

if.end94:                                         ; preds = %if.end94.sink.split, %if.end67.if.end94_crit_edge, %if.end55.if.end94_crit_edge
  br i1 %switch, label %if.end94.if.end121_crit_edge, label %land.lhs.true100

if.end94.if.end121_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

land.lhs.true100:                                 ; preds = %if.end94
  %call.i239 = call i32 @fwnode_property_read_u32_array(ptr noundef %ev_node.0, ptr noundef nonnull @.str.191, ptr noundef nonnull %val, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239)
  %tobool102.not = icmp eq i32 %call.i239, 0
  br i1 %tobool102.not, label %if.then103, label %land.lhs.true100.if.end121_crit_edge

land.lhs.true100.if.end121_crit_edge:             ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then103:                                       ; preds = %land.lhs.true100
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %39)
  %cmp104 = icmp ugt i32 %39, 255
  br i1 %cmp104, label %do.end109, label %if.end112

do.end109:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %dev110 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call111 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev110, ptr noundef nonnull @.str.158, ptr noundef %call111, i32 noundef %41) #10
  br label %cleanup

if.end112:                                        ; preds = %if.then103
  %conv116 = trunc i32 %39 to i8
  br i1 %cmp40, label %if.end112.for.inc156.sink.split_crit_edge, label %if.else117

if.end112.for.inc156.sink.split_crit_edge:        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156.sink.split

if.else117:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %th_offs = getelementptr [6 x %struct.iqs626_event_desc], ptr @iqs626_events, i32 0, i32 %i.0243, i32 2
  %42 = ptrtoint ptr %th_offs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %th_offs, align 4
  %add.ptr = getelementptr i8, ptr %thresh.0, i32 %43
  br label %for.inc156.sink.split

if.end121:                                        ; preds = %land.lhs.true100.if.end121_crit_edge, %if.end94.if.end121_crit_edge
  %call122 = call zeroext i1 @fwnode_property_present(ptr noundef %ev_node.0, ptr noundef nonnull @.str.191) #7
  br i1 %call122, label %if.end124, label %if.end121.for.inc156_crit_edge

if.end121.for.inc156_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

if.end124:                                        ; preds = %if.end121
  %call126 = call i32 @fwnode_property_read_u32_array(ptr noundef %ev_node.0, ptr noundef nonnull @.str.191, ptr noundef nonnull %thresh_tp, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end124.for.body138_crit_edge, label %do.end131

if.end124.for.body138_crit_edge:                  ; preds = %if.end124
  br label %for.body138

do.end131:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %dev132 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call133 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev132, ptr noundef nonnull @.str.195, ptr noundef %call133, i32 noundef %call126) #10
  br label %cleanup

for.body138:                                      ; preds = %if.end149.for.body138_crit_edge, %if.end124.for.body138_crit_edge
  %j.0242 = phi i32 [ %inc, %if.end149.for.body138_crit_edge ], [ 0, %if.end124.for.body138_crit_edge ]
  %arrayidx139 = getelementptr [9 x i32], ptr %thresh_tp, i32 0, i32 %j.0242
  %44 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx139, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %45)
  %cmp140 = icmp ugt i32 %45, 255
  br i1 %cmp140, label %do.end145, label %if.end149

do.end145:                                        ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx139.le = getelementptr [9 x i32], ptr %thresh_tp, i32 0, i32 %j.0242
  %dev146 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call147 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %46 = ptrtoint ptr %arrayidx139.le to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx139.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev146, ptr noundef nonnull @.str.158, ptr noundef %call147, i32 noundef %47) #10
  br label %cleanup

if.end149:                                        ; preds = %for.body138
  %conv151 = trunc i32 %45 to i8
  %arrayidx154 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 18, i32 3, i32 %j.0242
  %48 = ptrtoint ptr %arrayidx154 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv151, ptr %arrayidx154, align 1
  %inc = add nuw nsw i32 %j.0242, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end149.for.inc156_crit_edge, label %if.end149.for.body138_crit_edge

if.end149.for.body138_crit_edge:                  ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body138

if.end149.for.inc156_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc156

for.inc156.sink.split:                            ; preds = %if.else117, %if.end112.for.inc156.sink.split_crit_edge
  %thresh.0.sink = phi ptr [ %add.ptr, %if.else117 ], [ %thresh.0, %if.end112.for.inc156.sink.split_crit_edge ]
  %49 = ptrtoint ptr %thresh.0.sink to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv116, ptr %thresh.0.sink, align 1
  br label %for.inc156

for.inc156:                                       ; preds = %for.inc156.sink.split, %if.end149.for.inc156_crit_edge, %if.end121.for.inc156_crit_edge, %if.else.for.inc156_crit_edge, %for.body.for.inc156_crit_edge
  %inc157 = add nuw nsw i32 %i.0243, 1
  %exitcond249.not = icmp eq i32 %inc157, 6
  br i1 %exitcond249.not, label %for.inc156.cleanup_crit_edge, label %for.inc156.for.body_crit_edge

for.inc156.for.body_crit_edge:                    ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc156.cleanup_crit_edge:                     ; preds = %for.inc156
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc156.cleanup_crit_edge, %do.end145, %do.end131, %do.end109, %do.end64, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call126, %do.end131 ], [ -22, %do.end145 ], [ -22, %do.end109 ], [ -22, %do.end64 ], [ -22, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %for.inc156.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %thresh_tp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs626_parse_pins(ptr nocapture noundef readonly %iqs626, ptr noundef %ch_node, ptr noundef %propname, ptr nocapture noundef %enable) unnamed_addr #2 align 64 {
entry:
  %val = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs626, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val) #7
  %2 = call ptr @memset(ptr %val, i32 255, i32 32)
  %call = tail call zeroext i1 @fwnode_property_present(ptr noundef %ch_node, ptr noundef %propname) #7
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef %propname, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i)
  %cmp = icmp sgt i32 %call.i, 8
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call4 = tail call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.160, ptr noundef %call4) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %do.end9, label %if.end13

do.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev10 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call11 = tail call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.163, ptr noundef %call11, i32 noundef %call.i) #10
  br label %cleanup

if.end13:                                         ; preds = %if.else
  %call14 = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node, ptr noundef %propname, ptr noundef nonnull %val, i32 noundef %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end21, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call20 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull @.str.166, ptr noundef %call20, i32 noundef %call14) #10
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2261.not = icmp eq i32 %call.i, 0
  br i1 %cmp2261.not, label %if.end21.cleanup_crit_edge, label %for.body

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %if.end21
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp23 = icmp ugt i32 %5, 7
  br i1 %cmp23, label %for.body.do.end27_crit_edge, label %if.end31

for.body.do.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end27:                                         ; preds = %for.body.7.do.end27_crit_edge, %for.body.6.do.end27_crit_edge, %for.body.5.do.end27_crit_edge, %for.body.4.do.end27_crit_edge, %for.body.3.do.end27_crit_edge, %for.body.2.do.end27_crit_edge, %for.body.1.do.end27_crit_edge, %for.body.do.end27_crit_edge
  %i.062.lcssa = phi i32 [ 0, %for.body.do.end27_crit_edge ], [ 1, %for.body.1.do.end27_crit_edge ], [ 2, %for.body.2.do.end27_crit_edge ], [ 3, %for.body.3.do.end27_crit_edge ], [ 4, %for.body.4.do.end27_crit_edge ], [ 5, %for.body.5.do.end27_crit_edge ], [ 6, %for.body.6.do.end27_crit_edge ], [ 7, %for.body.7.do.end27_crit_edge ]
  %arrayidx.le = getelementptr [8 x i32], ptr %val, i32 0, i32 %i.062.lcssa
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call29 = call ptr @fwnode_get_name(ptr noundef %ch_node) #7
  %6 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.le, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.169, ptr noundef %call29, i32 noundef %7) #10
  br label %cleanup

if.end31:                                         ; preds = %for.body
  %shl = shl nuw nsw i32 1, %5
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable, align 1
  %10 = trunc i32 %shl to i8
  %conv33 = or i8 %9, %10
  store i8 %conv33, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %exitcond.not = icmp eq i32 %call.i, 1
  br i1 %exitcond.not, label %if.end31.cleanup_crit_edge, label %for.body.1

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.1:                                       ; preds = %if.end31
  %arrayidx.1 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %12)
  %cmp23.1 = icmp ugt i32 %12, 7
  br i1 %cmp23.1, label %for.body.1.do.end27_crit_edge, label %if.end31.1

for.body.1.do.end27_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.1:                                       ; preds = %for.body.1
  %shl.1 = shl nuw nsw i32 1, %12
  %13 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %enable, align 1
  %15 = trunc i32 %shl.1 to i8
  %conv33.1 = or i8 %14, %15
  store i8 %conv33.1, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %exitcond.not.1 = icmp eq i32 %call.i, 2
  br i1 %exitcond.not.1, label %if.end31.1.cleanup_crit_edge, label %for.body.2

if.end31.1.cleanup_crit_edge:                     ; preds = %if.end31.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.2:                                       ; preds = %if.end31.1
  %arrayidx.2 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %cmp23.2 = icmp ugt i32 %17, 7
  br i1 %cmp23.2, label %for.body.2.do.end27_crit_edge, label %if.end31.2

for.body.2.do.end27_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.2:                                       ; preds = %for.body.2
  %shl.2 = shl nuw nsw i32 1, %17
  %18 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %enable, align 1
  %20 = trunc i32 %shl.2 to i8
  %conv33.2 = or i8 %19, %20
  store i8 %conv33.2, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i)
  %exitcond.not.2 = icmp eq i32 %call.i, 3
  br i1 %exitcond.not.2, label %if.end31.2.cleanup_crit_edge, label %for.body.3

if.end31.2.cleanup_crit_edge:                     ; preds = %if.end31.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.3:                                       ; preds = %if.end31.2
  %arrayidx.3 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %22)
  %cmp23.3 = icmp ugt i32 %22, 7
  br i1 %cmp23.3, label %for.body.3.do.end27_crit_edge, label %if.end31.3

for.body.3.do.end27_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.3:                                       ; preds = %for.body.3
  %shl.3 = shl nuw nsw i32 1, %22
  %23 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %enable, align 1
  %25 = trunc i32 %shl.3 to i8
  %conv33.3 = or i8 %24, %25
  store i8 %conv33.3, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i)
  %exitcond.not.3 = icmp eq i32 %call.i, 4
  br i1 %exitcond.not.3, label %if.end31.3.cleanup_crit_edge, label %for.body.4

if.end31.3.cleanup_crit_edge:                     ; preds = %if.end31.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.4:                                       ; preds = %if.end31.3
  %arrayidx.4 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %27)
  %cmp23.4 = icmp ugt i32 %27, 7
  br i1 %cmp23.4, label %for.body.4.do.end27_crit_edge, label %if.end31.4

for.body.4.do.end27_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.4:                                       ; preds = %for.body.4
  %shl.4 = shl nuw nsw i32 1, %27
  %28 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %enable, align 1
  %30 = trunc i32 %shl.4 to i8
  %conv33.4 = or i8 %29, %30
  store i8 %conv33.4, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %exitcond.not.4 = icmp eq i32 %call.i, 5
  br i1 %exitcond.not.4, label %if.end31.4.cleanup_crit_edge, label %for.body.5

if.end31.4.cleanup_crit_edge:                     ; preds = %if.end31.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.5:                                       ; preds = %if.end31.4
  %arrayidx.5 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 5
  %31 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %32)
  %cmp23.5 = icmp ugt i32 %32, 7
  br i1 %cmp23.5, label %for.body.5.do.end27_crit_edge, label %if.end31.5

for.body.5.do.end27_crit_edge:                    ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.5:                                       ; preds = %for.body.5
  %shl.5 = shl nuw nsw i32 1, %32
  %33 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %enable, align 1
  %35 = trunc i32 %shl.5 to i8
  %conv33.5 = or i8 %34, %35
  store i8 %conv33.5, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i)
  %exitcond.not.5 = icmp eq i32 %call.i, 6
  br i1 %exitcond.not.5, label %if.end31.5.cleanup_crit_edge, label %for.body.6

if.end31.5.cleanup_crit_edge:                     ; preds = %if.end31.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.6:                                       ; preds = %if.end31.5
  %arrayidx.6 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 6
  %36 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %37)
  %cmp23.6 = icmp ugt i32 %37, 7
  br i1 %cmp23.6, label %for.body.6.do.end27_crit_edge, label %if.end31.6

for.body.6.do.end27_crit_edge:                    ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.6:                                       ; preds = %for.body.6
  %shl.6 = shl nuw nsw i32 1, %37
  %38 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %enable, align 1
  %40 = trunc i32 %shl.6 to i8
  %conv33.6 = or i8 %39, %40
  store i8 %conv33.6, ptr %enable, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %exitcond.not.6 = icmp eq i32 %call.i, 7
  br i1 %exitcond.not.6, label %if.end31.6.cleanup_crit_edge, label %for.body.7

if.end31.6.cleanup_crit_edge:                     ; preds = %if.end31.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.7:                                       ; preds = %if.end31.6
  %arrayidx.7 = getelementptr inbounds [8 x i32], ptr %val, i32 0, i32 7
  %41 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %42)
  %cmp23.7 = icmp ugt i32 %42, 7
  br i1 %cmp23.7, label %for.body.7.do.end27_crit_edge, label %if.end31.7

for.body.7.do.end27_crit_edge:                    ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

if.end31.7:                                       ; preds = %for.body.7
  call void @__sanitizer_cov_trace_pc() #9
  %shl.7 = shl nuw nsw i32 1, %42
  %43 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %enable, align 1
  %45 = trunc i32 %shl.7 to i8
  %conv33.7 = or i8 %44, %45
  store i8 %conv33.7, ptr %enable, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end31.7, %if.end31.6.cleanup_crit_edge, %if.end31.5.cleanup_crit_edge, %if.end31.4.cleanup_crit_edge, %if.end31.3.cleanup_crit_edge, %if.end31.2.cleanup_crit_edge, %if.end31.1.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end27, %if.end21.cleanup_crit_edge, %do.end18, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call.i, %do.end9 ], [ %call14, %do.end18 ], [ -22, %do.end27 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ 0, %if.end31.7 ], [ 0, %if.end31.6.cleanup_crit_edge ], [ 0, %if.end31.5.cleanup_crit_edge ], [ 0, %if.end31.4.cleanup_crit_edge ], [ 0, %if.end31.3.cleanup_crit_edge ], [ 0, %if.end31.2.cleanup_crit_edge ], [ 0, %if.end31.1.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_parse_properties(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs626_report(ptr noundef %iqs626) unnamed_addr #2 align 64 {
entry:
  %flags = alloca %struct.iqs626_flags, align 2
  %hall_output = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_reg1 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2
  %0 = ptrtoint ptr %iqs626 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs626, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %flags) #7
  %2 = getelementptr inbounds %struct.iqs626_flags, ptr %flags, i32 0, i32 1
  %3 = getelementptr inbounds %struct.iqs626_flags, ptr %flags, i32 0, i32 3, i32 1
  %4 = getelementptr inbounds %struct.iqs626_flags, ptr %flags, i32 0, i32 3, i32 2
  %5 = getelementptr inbounds %struct.iqs626_flags, ptr %flags, i32 0, i32 8
  %6 = getelementptr inbounds %struct.iqs626_flags, ptr %flags, i32 0, i32 9
  %7 = call ptr @memset(ptr %flags, i32 255, i32 14)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hall_output) #7
  %8 = ptrtoint ptr %hall_output to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %hall_output, align 2, !annotation !400
  %regmap = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_raw_read(ptr noundef %10, i32 noundef 2, ptr noundef nonnull %flags, i32 noundef 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.209, i32 noundef %call) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %flags, align 2
  %conv = zext i16 %12 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end18, label %do.end7

do.end7:                                          ; preds = %if.end
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.212) #10
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_raw_write(ptr noundef %14, i32 noundef 128, ptr noundef %sys_reg1, i32 noundef 130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.end7.cleanup_crit_edge, label %do.end15

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.215, i32 noundef %call10) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %and21 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %active = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %16)
  %tobool28.not = icmp sgt i8 %16, -1
  br i1 %tobool28.not, label %if.end24.if.end50_crit_edge, label %if.then29

if.end24.if.end50_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then29:                                        ; preds = %if.end24
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call31 = call i32 @regmap_raw_read(ptr noundef %18, i32 noundef 35, ptr noundef nonnull %hall_output, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev37, ptr noundef nonnull @.str.218, i32 noundef %call31) #10
  br label %cleanup

if.end38:                                         ; preds = %if.then29
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %3, align 1
  %21 = and i8 %20, 127
  store i8 %21, ptr %3, align 1
  %22 = ptrtoint ptr %hall_output to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hall_output, align 2
  %.mask = and i16 %23, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %.mask)
  %cmp = icmp eq i16 %.mask, 0
  br i1 %cmp, label %if.then45, label %if.end38.if.end50_crit_edge

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then45:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %24 = or i8 %20, -128
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %3, align 1
  br label %if.end50

if.end50:                                         ; preds = %if.then45, %if.end38.if.end50_crit_edge, %if.end24.if.end50_crit_edge
  %keypad = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc96.for.body_crit_edge, %if.end50
  %i.0229 = phi i32 [ 0, %if.end50 ], [ %inc97, %for.inc96.for.body_crit_edge ]
  %26 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %active, align 1
  %active56 = getelementptr [7 x %struct.iqs626_channel_desc], ptr @iqs626_channels, i32 0, i32 %i.0229, i32 2
  %28 = ptrtoint ptr %active56 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %active56, align 4
  %and58223 = and i8 %29, %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and58223)
  %tobool59.not = icmp eq i8 %and58223, 0
  br i1 %tobool59.not, label %for.body.for.inc96_crit_edge, label %for.body.for.body65_crit_edge

for.body.for.body65_crit_edge:                    ; preds = %for.body
  br label %for.body65

for.body.for.inc96_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc96

for.body65:                                       ; preds = %for.inc.for.body65_crit_edge, %for.body.for.body65_crit_edge
  %j.0227 = phi i32 [ %inc, %for.inc.for.body65_crit_edge ], [ 0, %for.body.for.body65_crit_edge ]
  %arrayidx67 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 7, i32 %i.0229, i32 %j.0227
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool68.not = icmp eq i32 %31, 0
  br i1 %tobool68.not, label %for.body65.for.inc_crit_edge, label %if.end70

for.body65.for.inc_crit_edge:                     ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end70:                                         ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #9
  %st_offs = getelementptr [6 x %struct.iqs626_event_desc], ptr @iqs626_events, i32 0, i32 %j.0227, i32 1
  %32 = ptrtoint ptr %st_offs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %st_offs, align 4
  %arrayidx73 = getelementptr %struct.iqs626_flags, ptr %flags, i32 0, i32 3, i32 %33
  %34 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx73, align 1
  %36 = lshr i32 21, %j.0227
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %3, align 1
  %39 = trunc i32 %36 to i8
  %40 = and i8 %39, 1
  %neg79 = sub nsw i8 0, %40
  %cond = xor i8 %38, %neg79
  %and81 = and i8 %35, %29
  %and87224 = and i8 %and81, %cond
  %41 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %keypad, align 4
  %arrayidx93 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 8, i32 %i.0229, i32 %j.0227
  %43 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx93, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and87224)
  %tobool94 = icmp ne i8 %and87224, 0
  %lnot.ext = zext i1 %tobool94 to i32
  call void @input_event(ptr noundef %42, i32 noundef %31, i32 noundef %44, i32 noundef %lnot.ext) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end70, %for.body65.for.inc_crit_edge
  %inc = add nuw nsw i32 %j.0227, 1
  %exitcond.not = icmp eq i32 %inc, 6
  br i1 %exitcond.not, label %for.inc.for.inc96_crit_edge, label %for.inc.for.body65_crit_edge

for.inc.for.body65_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body65

for.inc.for.inc96_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc96

for.inc96:                                        ; preds = %for.inc.for.inc96_crit_edge, %for.body.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %i.0229, 1
  %exitcond233.not = icmp eq i32 %inc97, 7
  br i1 %exitcond233.not, label %for.end98, label %for.inc96.for.body_crit_edge

for.inc96.for.body_crit_edge:                     ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end98:                                        ; preds = %for.inc96
  %45 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %keypad, align 4
  call void @input_event(ptr noundef %46, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %ati_done = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 3
  call void @complete_all(ptr noundef %ati_done) #7
  %47 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %active, align 1
  %49 = and i8 %48, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool104.not = icmp eq i8 %49, 0
  br i1 %tobool104.not, label %for.end98.cleanup_crit_edge, label %if.end106

for.end98.cleanup_crit_edge:                      ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end106:                                        ; preds = %for.end98
  %event_mask = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 2, i32 2
  %50 = ptrtoint ptr %event_mask to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %event_mask, align 1
  %52 = and i8 %51, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool109.not = icmp eq i8 %52, 0
  br i1 %tobool109.not, label %for.cond124.preheader, label %if.then110

for.cond124.preheader:                            ; preds = %if.end106
  %trackpad128 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 5
  %53 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %trackpad128, align 4
  %arrayidx129 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 0
  %55 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx129, align 4
  %57 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %2, align 2
  %59 = and i8 %58, 1
  %60 = zext i8 %59 to i32
  call void @input_event(ptr noundef %54, i32 noundef 1, i32 noundef %56, i32 noundef %60) #7
  %61 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %trackpad128, align 4
  %arrayidx129.1 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx129.1, align 4
  %65 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %2, align 2
  %67 = lshr i8 %66, 1
  %68 = and i8 %67, 1
  %69 = zext i8 %68 to i32
  call void @input_event(ptr noundef %62, i32 noundef 1, i32 noundef %64, i32 noundef %69) #7
  %70 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %trackpad128, align 4
  %arrayidx129.2 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 2
  %72 = ptrtoint ptr %arrayidx129.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx129.2, align 4
  %74 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %2, align 2
  %76 = lshr i8 %75, 2
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  call void @input_event(ptr noundef %71, i32 noundef 1, i32 noundef %73, i32 noundef %78) #7
  %79 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %trackpad128, align 4
  %arrayidx129.3 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 3
  %81 = ptrtoint ptr %arrayidx129.3 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx129.3, align 4
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %2, align 2
  %85 = lshr i8 %84, 3
  %86 = and i8 %85, 1
  %87 = zext i8 %86 to i32
  call void @input_event(ptr noundef %80, i32 noundef 1, i32 noundef %82, i32 noundef %87) #7
  %88 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %trackpad128, align 4
  %arrayidx129.4 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 4
  %90 = ptrtoint ptr %arrayidx129.4 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx129.4, align 4
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %2, align 2
  %94 = lshr i8 %93, 4
  %95 = and i8 %94, 1
  %96 = zext i8 %95 to i32
  call void @input_event(ptr noundef %89, i32 noundef 1, i32 noundef %91, i32 noundef %96) #7
  %97 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %trackpad128, align 4
  %arrayidx129.5 = getelementptr %struct.iqs626_private, ptr %iqs626, i32 0, i32 9, i32 5
  %99 = ptrtoint ptr %arrayidx129.5 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx129.5, align 4
  %101 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %2, align 2
  %103 = lshr i8 %102, 5
  %104 = and i8 %103, 1
  %105 = zext i8 %104 to i32
  call void @input_event(ptr noundef %98, i32 noundef 1, i32 noundef %100, i32 noundef %105) #7
  %106 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %2, align 2
  %108 = and i8 %107, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool138.not = icmp eq i8 %108, 0
  br i1 %tobool138.not, label %for.cond124.preheader.if.end152_crit_edge, label %if.then139

for.cond124.preheader.if.end152_crit_edge:        ; preds = %for.cond124.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then110:                                       ; preds = %if.end106
  %109 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %4, align 2
  %111 = and i8 %110, 2
  %trackpad = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 5
  %112 = ptrtoint ptr %trackpad to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %trackpad, align 4
  %.lobit = lshr exact i8 %111, 1
  %114 = zext i8 %.lobit to i32
  call void @input_event(ptr noundef %113, i32 noundef 1, i32 noundef 330, i32 noundef %114) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool118.not = icmp eq i8 %111, 0
  br i1 %tobool118.not, label %if.then110.if.end152_crit_edge, label %if.then119

if.then110.if.end152_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

if.then119:                                       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %trackpad to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %trackpad, align 4
  %prop = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 6
  %117 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %5, align 2
  %conv121 = zext i8 %118 to i32
  %119 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %6, align 1
  %conv122 = zext i8 %120 to i32
  call void @touchscreen_report_pos(ptr noundef %116, ptr noundef %prop, i32 noundef %conv121, i32 noundef %conv122, i1 noundef zeroext false) #7
  br label %if.end152

if.then139:                                       ; preds = %for.cond124.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %trackpad128, align 4
  call void @input_event(ptr noundef %122, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %123 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %trackpad128, align 4
  %125 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx129, align 4
  call void @input_event(ptr noundef %124, i32 noundef 1, i32 noundef %126, i32 noundef 0) #7
  %127 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %trackpad128, align 4
  %129 = ptrtoint ptr %arrayidx129.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx129.1, align 4
  call void @input_event(ptr noundef %128, i32 noundef 1, i32 noundef %130, i32 noundef 0) #7
  %131 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %trackpad128, align 4
  %133 = ptrtoint ptr %arrayidx129.2 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx129.2, align 4
  call void @input_event(ptr noundef %132, i32 noundef 1, i32 noundef %134, i32 noundef 0) #7
  %135 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %trackpad128, align 4
  %137 = ptrtoint ptr %arrayidx129.3 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx129.3, align 4
  call void @input_event(ptr noundef %136, i32 noundef 1, i32 noundef %138, i32 noundef 0) #7
  %139 = ptrtoint ptr %trackpad128 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %trackpad128, align 4
  %141 = ptrtoint ptr %arrayidx129.4 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx129.4, align 4
  call void @input_event(ptr noundef %140, i32 noundef 1, i32 noundef %142, i32 noundef 0) #7
  br label %if.end152

if.end152:                                        ; preds = %if.then139, %if.then119, %if.then110.if.end152_crit_edge, %for.cond124.preheader.if.end152_crit_edge
  %trackpad153 = getelementptr inbounds %struct.iqs626_private, ptr %iqs626, i32 0, i32 5
  %143 = ptrtoint ptr %trackpad153 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %trackpad153, align 4
  call void @input_event(ptr noundef %144, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end152, %for.end98.cleanup_crit_edge, %do.end36, %if.end18.cleanup_crit_edge, %do.end15, %do.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call31, %do.end36 ], [ 0, %if.end152 ], [ %call10, %do.end15 ], [ 0, %do.end7.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %for.end98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hall_output) #7
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %flags) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @touchscreen_report_pos(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs626_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !400
  %suspend_mode = getelementptr inbounds %struct.iqs626_private, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #7
  %regmap = getelementptr inbounds %struct.iqs626_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 8192, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1744) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call17168 = call i32 @regmap_read(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17168)
  %tobool18.not169 = icmp eq i32 %call17168, 0
  br i1 %tobool18.not169, label %if.end5.lor.lhs.false_crit_edge, label %if.end5.err_irq_crit_edge

if.end5.err_irq_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31.lor.lhs.false_crit_edge, %if.end5.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call23 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %val) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then31.lor.lhs.false_crit_edge, label %if.then31.err_irq_crit_edge

if.then31.err_irq_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.then31.lor.lhs.false_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call28 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %for.end.lor.rhs_crit_edge, label %for.end.err_irq_crit_edge

for.end.err_irq_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and34 = and i32 %20, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end41, label %lor.rhs.err_irq_crit_edge

lor.rhs.err_irq_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end41:                                         ; preds = %lor.rhs
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %23 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %suspend_mode, align 4
  %shl = shl i32 %24, 11
  %call.i140 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 128, i32 noundef 6144, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i140)
  %tobool45.not = icmp eq i32 %call.i140, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.err_irq_crit_edge

if.end41.err_irq_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end47:                                         ; preds = %if.end41
  %call53 = call i64 @ktime_get() #7
  %add.i141 = add i64 %call53, 500000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1765) #7
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call69170 = call i32 @regmap_read(ptr noundef %26, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69170)
  %tobool70.not171 = icmp eq i32 %call69170, 0
  br i1 %tobool70.not171, label %if.end47.lor.lhs.false71_crit_edge, label %if.end47.err_irq_crit_edge

if.end47.err_irq_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end47.lor.lhs.false71_crit_edge:               ; preds = %if.end47
  br label %lor.lhs.false71

lor.lhs.false71:                                  ; preds = %if.then88.lor.lhs.false71_crit_edge, %if.end47.lor.lhs.false71_crit_edge
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  %and72 = and i32 %28, 768
  %29 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %suspend_mode, align 4
  %shl74 = shl i32 %30, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and72, i32 %shl74)
  %cmp75 = icmp eq i32 %and72, %shl74
  br i1 %cmp75, label %lor.lhs.false71.lor.rhs95_crit_edge, label %land.lhs.true79

lor.lhs.false71.lor.rhs95_crit_edge:              ; preds = %lor.lhs.false71
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs95

land.lhs.true79:                                  ; preds = %lor.lhs.false71
  %call80 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call80, i64 %add.i141)
  %cmp3.i143 = icmp sgt i64 %call80, %add.i141
  br i1 %cmp3.i143, label %for.end92, label %if.then88

if.then88:                                        ; preds = %land.lhs.true79
  call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call69 = call i32 @regmap_read(ptr noundef %32, i32 noundef 2, ptr noundef nonnull %val) #7
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.then88.lor.lhs.false71_crit_edge, label %if.then88.err_irq_crit_edge

if.then88.err_irq_crit_edge:                      ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.then88.lor.lhs.false71_crit_edge:              ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false71

for.end92:                                        ; preds = %land.lhs.true79
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regmap_read(ptr noundef %34, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool94.not = icmp eq i32 %call85, 0
  br i1 %tobool94.not, label %for.end92.lor.rhs95_crit_edge, label %for.end92.err_irq_crit_edge

for.end92.err_irq_crit_edge:                      ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

for.end92.lor.rhs95_crit_edge:                    ; preds = %for.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs95

lor.rhs95:                                        ; preds = %for.end92.lor.rhs95_crit_edge, %lor.lhs.false71.lor.rhs95_crit_edge
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and96 = and i32 %36, 768
  %37 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %suspend_mode, align 4
  %shl98 = shl i32 %38, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and96, i32 %shl98)
  %cmp99 = icmp eq i32 %and96, %shl98
  %phi.sel138 = select i1 %cmp99, i32 0, i32 -110
  br label %err_irq

err_irq:                                          ; preds = %lor.rhs95, %for.end92.err_irq_crit_edge, %if.then88.err_irq_crit_edge, %if.end47.err_irq_crit_edge, %if.end41.err_irq_crit_edge, %lor.rhs.err_irq_crit_edge, %for.end.err_irq_crit_edge, %if.then31.err_irq_crit_edge, %if.end5.err_irq_crit_edge, %if.end.err_irq_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.err_irq_crit_edge ], [ %call.i140, %if.end41.err_irq_crit_edge ], [ %call85, %for.end92.err_irq_crit_edge ], [ %phi.sel138, %lor.rhs95 ], [ %call69170, %if.end47.err_irq_crit_edge ], [ %call17168, %if.end5.err_irq_crit_edge ], [ -110, %lor.rhs.err_irq_crit_edge ], [ %call28, %for.end.err_irq_crit_edge ], [ %call69, %if.then88.err_irq_crit_edge ], [ %call17, %if.then31.err_irq_crit_edge ]
  call void @usleep_range_state(i32 noundef 350, i32 noundef 400, i32 noundef 2) #7
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_irq ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs626_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !400
  %suspend_mode = getelementptr inbounds %struct.iqs626_private, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #7
  %regmap = getelementptr inbounds %struct.iqs626_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 6144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call6, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1798) #7
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call1780 = call i32 @regmap_read(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1780)
  %tobool18.not81 = icmp eq i32 %call1780, 0
  br i1 %tobool18.not81, label %if.end5.lor.lhs.false_crit_edge, label %if.end5.err_irq_crit_edge

if.end5.err_irq_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end5.lor.lhs.false_crit_edge:                  ; preds = %if.end5
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then31.lor.lhs.false_crit_edge, %if.end5.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %and = and i32 %14, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call23 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call23, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call23, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then31

if.then31:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 12501, i32 noundef 50000, i32 noundef 2) #7
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %16, i32 noundef 2, ptr noundef nonnull %val) #7
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then31.lor.lhs.false_crit_edge, label %if.then31.err_irq_crit_edge

if.then31.err_irq_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.then31.lor.lhs.false_crit_edge:                ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call28 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool33.not = icmp eq i32 %call28, 0
  br i1 %tobool33.not, label %for.end.lor.rhs_crit_edge, label %for.end.err_irq_crit_edge

for.end.err_irq_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and34 = and i32 %20, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %if.end41, label %lor.rhs.err_irq_crit_edge

lor.rhs.err_irq_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end41:                                         ; preds = %lor.rhs
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i68 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 128, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool44.not = icmp eq i32 %call.i68, 0
  br i1 %tobool44.not, label %if.end46, label %if.end41.err_irq_crit_edge

if.end41.err_irq_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_irq

if.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = call fastcc i32 @iqs626_report(ptr noundef %1)
  br label %err_irq

err_irq:                                          ; preds = %if.end46, %if.end41.err_irq_crit_edge, %lor.rhs.err_irq_crit_edge, %for.end.err_irq_crit_edge, %if.then31.err_irq_crit_edge, %if.end5.err_irq_crit_edge, %if.end.err_irq_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.err_irq_crit_edge ], [ %call.i68, %if.end41.err_irq_crit_edge ], [ %call47, %if.end46 ], [ %call1780, %if.end5.err_irq_crit_edge ], [ -110, %lor.rhs.err_irq_crit_edge ], [ %call28, %for.end.err_irq_crit_edge ], [ %call17, %if.then31.err_irq_crit_edge ]
  call void @usleep_range_state(i32 noundef 350, i32 noundef 400, i32 noundef 2) #7
  %23 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_irq ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 191)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !62, !63, !65, !67, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !87, !89, !90, !91, !93, !95, !96, !98, !100, !101, !103, !105, !106, !107, !109, !111, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !139, !140, !141, !143, !145, !147, !149, !151, !152, !153, !155, !157, !158, !159, !161, !163, !164, !165, !167, !169, !170, !171, !173, !175, !177, !179, !180, !181, !183, !185, !186, !188, !190, !191, !193, !195, !196, !198, !200, !202, !204, !205, !206, !208, !210, !211, !212, !214, !216, !217, !218, !220, !222, !224, !226, !228, !230, !231, !232, !234, !236, !237, !238, !239, !241, !243, !244, !246, !247, !249, !250, !252, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !268, !270, !271, !272, !274, !276, !277, !279, !281, !282, !283, !285, !286, !287, !288, !290, !291, !292, !294, !295, !296, !298, !299, !300, !302, !304, !305, !306, !307, !309, !311, !312, !313, !315, !316, !317, !319, !320, !322, !324, !326, !327, !328, !329, !331, !333, !334, !335, !337, !339, !340, !342, !343, !344, !346, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !368, !369, !370, !372, !373, !374, !375, !377, !378, !379, !381, !382, !383, !385, !386, !387, !389}
!llvm.module.flags = !{!391, !392, !393, !394, !395, !396, !397, !398}
!llvm.ident = !{!399}

!0 = !{ptr @__initcall__kmod_iqs626a__288_1837_iqs626_i2c_driver_init6, !1, !"__initcall__kmod_iqs626a__288_1837_iqs626_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/iqs626a.c", i32 1837, i32 1}
!2 = !{ptr @__exitcall_iqs626_i2c_driver_exit, !1, !"__exitcall_iqs626_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/iqs626a.c", i32 1839, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/iqs626a.c", i32 1840, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/iqs626a.c", i32 1841, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/iqs626a.c", i32 1831, i32 11}
!12 = !{ptr @iqs626_i2c_driver, !13, !"iqs626_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/iqs626a.c", i32 1829, i32 26}
!14 = !{ptr @iqs626_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/iqs626a.c", i32 1661, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/misc/iqs626a.c", i32 1664, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @iqs626_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @iqs626_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/iqs626a.c", i32 1677, i32 3}
!27 = !{ptr @iqs626_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @iqs626_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/misc/iqs626a.c", i32 1694, i32 3}
!31 = !{ptr @iqs626_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @iqs626_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/iqs626a.c", i32 1700, i32 3}
!35 = !{ptr @iqs626_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iqs626_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/iqs626a.c", i32 1710, i32 3}
!39 = !{ptr @iqs626_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iqs626_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @iqs626_regmap_config, !42, !"iqs626_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/iqs626a.c", i32 1642, i32 35}
!43 = !{ptr @init_completion.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../include/linux/completion.h", i32 87, i32 2}
!45 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/iqs626a.c", i32 1238, i32 46}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/iqs626a.c", i32 1241, i32 4}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @iqs626_parse_prop._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @iqs626_parse_prop._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/iqs626a.c", i32 1257, i32 44}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/iqs626a.c", i32 1260, i32 44}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/iqs626a.c", i32 1263, i32 46}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/iqs626a.c", i32 1266, i32 4}
!61 = !{ptr @iqs626_parse_prop._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @iqs626_parse_prop._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/iqs626a.c", i32 1275, i32 44}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/misc/iqs626a.c", i32 1279, i32 44}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/misc/iqs626a.c", i32 1282, i32 46}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/iqs626a.c", i32 1285, i32 4}
!71 = !{ptr @iqs626_parse_prop._entry.32, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @iqs626_parse_prop._entry_ptr.34, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/iqs626a.c", i32 1294, i32 46}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/misc/iqs626a.c", i32 1297, i32 4}
!77 = !{ptr @iqs626_parse_prop._entry.36, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @iqs626_parse_prop._entry_ptr.38, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/iqs626a.c", i32 1307, i32 44}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/iqs626a.c", i32 1311, i32 44}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/iqs626a.c", i32 1315, i32 44}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/iqs626a.c", i32 1318, i32 46}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/iqs626a.c", i32 1321, i32 4}
!89 = !{ptr @iqs626_parse_prop._entry.43, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @iqs626_parse_prop._entry_ptr.45, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/iqs626a.c", i32 1328, i32 46}
!93 = !{ptr @iqs626_parse_prop._entry.47, !94, !"_entry", i1 false, i1 false}
!94 = !{!"../drivers/input/misc/iqs626a.c", i32 1331, i32 4}
!95 = !{ptr @iqs626_parse_prop._entry_ptr.48, !94, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/misc/iqs626a.c", i32 1338, i32 46}
!98 = !{ptr @iqs626_parse_prop._entry.50, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/iqs626a.c", i32 1341, i32 4}
!100 = !{ptr @iqs626_parse_prop._entry_ptr.51, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.52, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/misc/iqs626a.c", i32 1348, i32 46}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/misc/iqs626a.c", i32 1351, i32 4}
!105 = !{ptr @iqs626_parse_prop._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @iqs626_parse_prop._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/iqs626a.c", i32 1358, i32 46}
!109 = !{ptr @iqs626_parse_prop._entry.57, !110, !"_entry", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/iqs626a.c", i32 1361, i32 4}
!111 = !{ptr @iqs626_parse_prop._entry_ptr.58, !110, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/input/misc/iqs626a.c", i32 1392, i32 41}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/misc/iqs626a.c", i32 1395, i32 41}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/input/misc/iqs626a.c", i32 367, i32 11}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/misc/iqs626a.c", i32 378, i32 11}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/input/misc/iqs626a.c", i32 386, i32 11}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/misc/iqs626a.c", i32 394, i32 11}
!124 = !{ptr @.str.65, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/input/misc/iqs626a.c", i32 407, i32 11}
!126 = !{ptr @.str.66, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/input/misc/iqs626a.c", i32 420, i32 11}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/input/misc/iqs626a.c", i32 433, i32 11}
!130 = !{ptr @iqs626_channels, !131, !"iqs626_channels", i1 false, i1 false}
!131 = !{!"../drivers/input/misc/iqs626a.c", i32 365, i32 41}
!132 = !{ptr @.str.68, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/input/misc/iqs626a.c", i32 928, i32 39}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/input/misc/iqs626a.c", i32 932, i32 41}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/misc/iqs626a.c", i32 956, i32 4}
!138 = !{ptr @.str.71, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @iqs626_parse_channel._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @iqs626_parse_channel._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/input/misc/iqs626a.c", i32 964, i32 39}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/misc/iqs626a.c", i32 968, i32 39}
!145 = !{ptr @.str.74, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/misc/iqs626a.c", i32 972, i32 39}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/input/misc/iqs626a.c", i32 975, i32 41}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/input/misc/iqs626a.c", i32 977, i32 4}
!151 = !{ptr @iqs626_parse_channel._entry.76, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @iqs626_parse_channel._entry_ptr.78, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/input/misc/iqs626a.c", i32 991, i32 41}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/input/misc/iqs626a.c", i32 1014, i32 4}
!157 = !{ptr @iqs626_parse_channel._entry.80, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @iqs626_parse_channel._entry_ptr.82, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.83, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/input/misc/iqs626a.c", i32 1031, i32 41}
!161 = !{ptr @.str.85, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/misc/iqs626a.c", i32 1033, i32 4}
!163 = !{ptr @iqs626_parse_channel._entry.84, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @iqs626_parse_channel._entry_ptr.86, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.87, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/misc/iqs626a.c", i32 1043, i32 41}
!167 = !{ptr @.str.89, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/misc/iqs626a.c", i32 1045, i32 4}
!169 = !{ptr @iqs626_parse_channel._entry.88, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @iqs626_parse_channel._entry_ptr.90, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.91, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/misc/iqs626a.c", i32 1056, i32 39}
!173 = !{ptr @.str.92, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/input/misc/iqs626a.c", i32 1064, i32 40}
!175 = !{ptr @.str.93, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/misc/iqs626a.c", i32 1079, i32 41}
!177 = !{ptr @.str.95, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/misc/iqs626a.c", i32 1082, i32 4}
!179 = !{ptr @iqs626_parse_channel._entry.94, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @iqs626_parse_channel._entry_ptr.96, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.97, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/misc/iqs626a.c", i32 1092, i32 41}
!183 = !{ptr @iqs626_parse_channel._entry.98, !184, !"_entry", i1 false, i1 false}
!184 = !{!"../drivers/input/misc/iqs626a.c", i32 1095, i32 4}
!185 = !{ptr @iqs626_parse_channel._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.100, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/input/misc/iqs626a.c", i32 1105, i32 41}
!188 = !{ptr @iqs626_parse_channel._entry.101, !189, !"_entry", i1 false, i1 false}
!189 = !{!"../drivers/input/misc/iqs626a.c", i32 1108, i32 4}
!190 = !{ptr @iqs626_parse_channel._entry_ptr.102, !189, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/misc/iqs626a.c", i32 1118, i32 41}
!193 = !{ptr @iqs626_parse_channel._entry.104, !194, !"_entry", i1 false, i1 false}
!194 = !{!"../drivers/input/misc/iqs626a.c", i32 1121, i32 4}
!195 = !{ptr @iqs626_parse_channel._entry_ptr.105, !194, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.106, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/input/misc/iqs626a.c", i32 1131, i32 45}
!198 = !{ptr @.str.107, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/input/misc/iqs626a.c", i32 1136, i32 45}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/input/misc/iqs626a.c", i32 1145, i32 41}
!202 = !{ptr @.str.110, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/input/misc/iqs626a.c", i32 1150, i32 4}
!204 = !{ptr @iqs626_parse_channel._entry.109, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @iqs626_parse_channel._entry_ptr.111, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.112, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/input/misc/iqs626a.c", i32 1162, i32 41}
!208 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/input/misc/iqs626a.c", i32 1164, i32 4}
!210 = !{ptr @iqs626_parse_channel._entry.113, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @iqs626_parse_channel._entry_ptr.115, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.116, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/input/misc/iqs626a.c", i32 1174, i32 41}
!214 = !{ptr @.str.118, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/input/misc/iqs626a.c", i32 1176, i32 4}
!216 = !{ptr @iqs626_parse_channel._entry.117, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @iqs626_parse_channel._entry_ptr.119, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.120, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/input/misc/iqs626a.c", i32 1187, i32 39}
!220 = !{ptr @.str.121, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/input/misc/iqs626a.c", i32 1191, i32 39}
!222 = !{ptr @.str.122, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/input/misc/iqs626a.c", i32 1195, i32 39}
!224 = !{ptr @.str.123, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/input/misc/iqs626a.c", i32 1203, i32 40}
!226 = !{ptr @.str.124, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/input/misc/iqs626a.c", i32 1214, i32 40}
!228 = !{ptr @.str.126, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/input/misc/iqs626a.c", i32 1218, i32 3}
!230 = !{ptr @iqs626_parse_channel._entry.125, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @iqs626_parse_channel._entry_ptr.127, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.128, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/input/misc/iqs626a.c", i32 775, i32 41}
!234 = !{ptr @.str.129, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/input/misc/iqs626a.c", i32 777, i32 4}
!236 = !{ptr @.str.130, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @iqs626_parse_trackpad._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @iqs626_parse_trackpad._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.131, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/misc/iqs626a.c", i32 787, i32 41}
!241 = !{ptr @iqs626_parse_trackpad._entry.132, !242, !"_entry", i1 false, i1 false}
!242 = !{!"../drivers/input/misc/iqs626a.c", i32 790, i32 4}
!243 = !{ptr @iqs626_parse_trackpad._entry_ptr.133, !242, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @iqs626_parse_trackpad._entry.134, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/input/misc/iqs626a.c", i32 803, i32 4}
!246 = !{ptr @iqs626_parse_trackpad._entry_ptr.135, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @iqs626_parse_trackpad._entry.136, !248, !"_entry", i1 false, i1 false}
!248 = !{!"../drivers/input/misc/iqs626a.c", i32 816, i32 4}
!249 = !{ptr @iqs626_parse_trackpad._entry_ptr.137, !248, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.138, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/input/misc/iqs626a.c", i32 826, i32 40}
!252 = !{ptr @.str.140, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/input/misc/iqs626a.c", i32 831, i32 3}
!254 = !{ptr @iqs626_parse_trackpad._entry.139, !253, !"_entry", i1 false, i1 false}
!255 = !{ptr @iqs626_parse_trackpad._entry_ptr.141, !253, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.143, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/input/misc/iqs626a.c", i32 834, i32 3}
!258 = !{ptr @iqs626_parse_trackpad._entry.142, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @iqs626_parse_trackpad._entry_ptr.144, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.146, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/input/misc/iqs626a.c", i32 841, i32 3}
!262 = !{ptr @iqs626_parse_trackpad._entry.145, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @iqs626_parse_trackpad._entry_ptr.147, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.148, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/input/misc/iqs626a.c", i32 846, i32 39}
!266 = !{ptr @.str.149, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/input/misc/iqs626a.c", i32 849, i32 41}
!268 = !{ptr @.str.151, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/input/misc/iqs626a.c", i32 852, i32 4}
!270 = !{ptr @iqs626_parse_trackpad._entry.150, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @iqs626_parse_trackpad._entry_ptr.152, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.153, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/input/misc/iqs626a.c", i32 861, i32 41}
!274 = !{ptr @iqs626_parse_trackpad._entry.154, !275, !"_entry", i1 false, i1 false}
!275 = !{!"../drivers/input/misc/iqs626a.c", i32 864, i32 4}
!276 = !{ptr @iqs626_parse_trackpad._entry_ptr.155, !275, !"_entry_ptr", i1 false, i1 false}
!277 = !{ptr @.str.156, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/input/misc/iqs626a.c", i32 873, i32 41}
!279 = !{ptr @.str.158, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/input/misc/iqs626a.c", i32 876, i32 4}
!281 = !{ptr @iqs626_parse_trackpad._entry.157, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @iqs626_parse_trackpad._entry_ptr.159, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/input/misc/iqs626a.c", i32 731, i32 3}
!285 = !{ptr @.str.161, !284, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @iqs626_parse_pins._entry, !284, !"_entry", i1 false, i1 false}
!287 = !{ptr @iqs626_parse_pins._entry_ptr, !284, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.163, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/input/misc/iqs626a.c", i32 736, i32 3}
!290 = !{ptr @iqs626_parse_pins._entry.162, !289, !"_entry", i1 false, i1 false}
!291 = !{ptr @iqs626_parse_pins._entry_ptr.164, !289, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.166, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/input/misc/iqs626a.c", i32 744, i32 3}
!294 = !{ptr @iqs626_parse_pins._entry.165, !293, !"_entry", i1 false, i1 false}
!295 = !{ptr @iqs626_parse_pins._entry_ptr.167, !293, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.169, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/input/misc/iqs626a.c", i32 754, i32 4}
!298 = !{ptr @iqs626_parse_pins._entry.168, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @iqs626_parse_pins._entry_ptr.170, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.171, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/input/misc/iqs626a.c", i32 646, i32 41}
!302 = !{ptr @.str.172, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/input/misc/iqs626a.c", i32 648, i32 4}
!304 = !{ptr @.str.173, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @iqs626_parse_ati_target._entry, !303, !"_entry", i1 false, i1 false}
!306 = !{ptr @iqs626_parse_ati_target._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.174, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/input/misc/iqs626a.c", i32 659, i32 41}
!309 = !{ptr @.str.176, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/input/misc/iqs626a.c", i32 678, i32 4}
!311 = !{ptr @iqs626_parse_ati_target._entry.175, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @iqs626_parse_ati_target._entry_ptr.177, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.179, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/input/misc/iqs626a.c", i32 696, i32 3}
!315 = !{ptr @iqs626_parse_ati_target._entry.178, !314, !"_entry", i1 false, i1 false}
!316 = !{ptr @iqs626_parse_ati_target._entry_ptr.180, !314, !"_entry_ptr", i1 false, i1 false}
!317 = !{ptr @iqs626_parse_ati_target._entry.181, !318, !"_entry", i1 false, i1 false}
!318 = !{!"../drivers/input/misc/iqs626a.c", i32 705, i32 4}
!319 = !{ptr @iqs626_parse_ati_target._entry_ptr.182, !318, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @.str.183, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/input/misc/iqs626a.c", i32 519, i32 43}
!322 = !{ptr @.str.184, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/input/misc/iqs626a.c", i32 524, i32 13}
!324 = !{ptr @.str.185, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/input/misc/iqs626a.c", i32 533, i32 6}
!326 = !{ptr @.str.186, !325, !"<string literal>", i1 false, i1 false}
!327 = !{ptr @iqs626_parse_events._entry, !325, !"_entry", i1 false, i1 false}
!328 = !{ptr @iqs626_parse_events._entry_ptr, !325, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.187, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/input/misc/iqs626a.c", i32 545, i32 42}
!331 = !{ptr @.str.189, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/input/misc/iqs626a.c", i32 547, i32 5}
!333 = !{ptr @iqs626_parse_events._entry.188, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @iqs626_parse_events._entry_ptr.190, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.191, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/input/misc/iqs626a.c", i32 565, i32 42}
!337 = !{ptr @iqs626_parse_events._entry.192, !338, !"_entry", i1 false, i1 false}
!338 = !{!"../drivers/input/misc/iqs626a.c", i32 567, i32 5}
!339 = !{ptr @iqs626_parse_events._entry_ptr.193, !338, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.195, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/input/misc/iqs626a.c", i32 587, i32 4}
!342 = !{ptr @iqs626_parse_events._entry.194, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @iqs626_parse_events._entry_ptr.196, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @iqs626_parse_events._entry.197, !345, !"_entry", i1 false, i1 false}
!345 = !{!"../drivers/input/misc/iqs626a.c", i32 595, i32 5}
!346 = !{ptr @iqs626_parse_events._entry_ptr.198, !345, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.199, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/input/misc/iqs626a.c", i32 227, i32 11}
!349 = !{ptr @.str.200, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/input/misc/iqs626a.c", i32 233, i32 11}
!351 = !{ptr @.str.201, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/input/misc/iqs626a.c", i32 240, i32 11}
!353 = !{ptr @.str.202, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/input/misc/iqs626a.c", i32 246, i32 11}
!355 = !{ptr @.str.203, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/input/misc/iqs626a.c", i32 253, i32 11}
!357 = !{ptr @.str.204, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/input/misc/iqs626a.c", i32 259, i32 11}
!359 = !{ptr @iqs626_events, !360, !"iqs626_events", i1 false, i1 false}
!360 = !{!"../drivers/input/misc/iqs626a.c", i32 225, i32 39}
!361 = !{ptr @.str.205, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/input/misc/iqs626a.c", i32 1441, i32 25}
!363 = !{ptr @.str.206, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/input/misc/iqs626a.c", i32 1469, i32 27}
!365 = !{ptr @.str.207, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/input/misc/iqs626a.c", i32 1500, i32 3}
!367 = !{ptr @.str.208, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @iqs626_input_init._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @iqs626_input_init._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.209, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/input/misc/iqs626a.c", i32 1519, i32 3}
!372 = !{ptr @.str.210, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @iqs626_report._entry, !371, !"_entry", i1 false, i1 false}
!374 = !{ptr @iqs626_report._entry_ptr, !371, !"_entry_ptr", i1 false, i1 false}
!375 = !{ptr @.str.212, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/input/misc/iqs626a.c", i32 1530, i32 3}
!377 = !{ptr @iqs626_report._entry.211, !376, !"_entry", i1 false, i1 false}
!378 = !{ptr @iqs626_report._entry_ptr.213, !376, !"_entry_ptr", i1 false, i1 false}
!379 = !{ptr @.str.215, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/input/misc/iqs626a.c", i32 1535, i32 4}
!381 = !{ptr @iqs626_report._entry.214, !380, !"_entry", i1 false, i1 false}
!382 = !{ptr @iqs626_report._entry_ptr.216, !380, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.218, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/input/misc/iqs626a.c", i32 1553, i32 4}
!385 = !{ptr @iqs626_report._entry.217, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @iqs626_report._entry_ptr.219, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @iqs626_of_match, !388, !"iqs626_of_match", i1 false, i1 false}
!388 = !{!"../drivers/input/misc/iqs626a.c", i32 1823, i32 34}
!389 = !{ptr @iqs626_pm, !390, !"iqs626_pm", i1 false, i1 false}
!390 = !{!"../drivers/input/misc/iqs626a.c", i32 1821, i32 8}
!391 = !{i32 1, !"wchar_size", i32 2}
!392 = !{i32 1, !"min_enum_size", i32 4}
!393 = !{i32 8, !"branch-target-enforcement", i32 0}
!394 = !{i32 8, !"sign-return-address", i32 0}
!395 = !{i32 8, !"sign-return-address-all", i32 0}
!396 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!397 = !{i32 7, !"uwtable", i32 1}
!398 = !{i32 7, !"frame-pointer", i32 2}
!399 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!400 = !{!"auto-init"}
!401 = !{i8 0, i8 2}
