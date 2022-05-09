; ModuleID = '/llk/IR_all_yes/drivers/input/misc/iqs269a.c_pt.bc'
source_filename = "../drivers/input/misc/iqs269a.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iqs269_event_desc = type { ptr, i32, i32, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iqs269_flags = type { i16, i8, i8, [4 x i8] }
%struct.iqs269_ver_info = type { i8, i8, i8, i8 }
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
%struct.iqs269_private = type { ptr, ptr, %struct.mutex, [6 x %struct.iqs269_switch_desc], [8 x %struct.iqs269_ch_reg], %struct.iqs269_sys_reg, ptr, [2 x ptr], [48 x i32], i32, i32, i32, i8, i8 }
%struct.iqs269_switch_desc = type { i32, i8 }
%struct.iqs269_ch_reg = type { i8, i8, i16, i16, i16, [3 x i8], i8, i8, i8 }
%struct.iqs269_sys_reg = type { i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, i8, [2 x i8], i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_iqs269a__288_1822_iqs269_i2c_driver_init6 = internal global ptr @iqs269_i2c_driver_init, section ".initcall6.init", align 4
@iqs269_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @iqs269_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @iqs269_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iqs269_pm, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_iqs269_i2c_driver_exit = internal global ptr @iqs269_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [47 x i8] c"iqs269a.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [63 x i8] c"iqs269a.description=Azoteq IQS269A Capacitive Touch Controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [40 x i8] c"iqs269a.file=drivers/input/misc/iqs269a\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"iqs269a.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"iqs269a\00", [24 x i8] zeroinitializer }, align 32
@iqs269_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"azoteq,iqs269a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@iqs269_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @iqs269_suspend, ptr @iqs269_resume, ptr @iqs269_suspend, ptr @iqs269_resume, ptr @iqs269_suspend, ptr @iqs269_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@iqs269_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@iqs269_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iqs269a:1649:(&iqs269_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@iqs269_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1653, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to initialize register map: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"iqs269_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/iqs269a.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iqs269_probe._entry_ptr = internal global ptr @iqs269_probe._entry, section ".printk_index", align 4
@iqs269_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&iqs269->lock\00", [18 x i8] zeroinitializer }, align 32
@iqs269_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1666, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unrecognized product number: 0x%02X\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs269_probe._entry_ptr.10 = internal global ptr @iqs269_probe._entry.8, section ".printk_index", align 4
@iqs269_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1677, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to initialize device: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs269_probe._entry_ptr.13 = internal global ptr @iqs269_probe._entry.11, section ".printk_index", align 4
@iqs269_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1689, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@iqs269_probe._entry_ptr.16 = internal global ptr @iqs269_probe._entry.14, section ".printk_index", align 4
@iqs269_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @iqs269_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@iqs269_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1695, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add attributes: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs269_probe._entry_ptr.19 = internal global ptr @iqs269_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,hall-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,suspend-mode\00", [44 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 766, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid suspend mode: %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs269_parse_prop\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr = internal global ptr @iqs269_parse_prop._entry, section ".printk_index", align 4
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-lp-lta\00", [41 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 782, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid filter strength: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.27 = internal global ptr @iqs269_parse_prop._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-lp-cnt\00", [41 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 794, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.30 = internal global ptr @iqs269_parse_prop._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-np-lta\00", [41 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 806, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.33 = internal global ptr @iqs269_parse_prop._entry.32, section ".printk_index", align 4
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-np-cnt\00", [41 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 818, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.36 = internal global ptr @iqs269_parse_prop._entry.35, section ".printk_index", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,rate-np-ms\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.4, i32 829, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid report rate: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.40 = internal global ptr @iqs269_parse_prop._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,rate-lp-ms\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.4, i32 839, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.43 = internal global ptr @iqs269_parse_prop._entry.42, section ".printk_index", align 4
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,rate-ulp-ms\00", [45 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.23, ptr @.str.4, i32 849, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.46 = internal global ptr @iqs269_parse_prop._entry.45, section ".printk_index", align 4
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,timeout-pwr-ms\00", [42 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.23, ptr @.str.4, i32 859, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid timeout: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.50 = internal global ptr @iqs269_parse_prop._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,timeout-lta-ms\00", [42 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.23, ptr @.str.4, i32 869, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.53 = internal global ptr @iqs269_parse_prop._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azoteq,ati-band-disable\00", [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"azoteq,ati-lp-only\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"azoteq,ati-band-tighten\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,filt-disable\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,gpio3-select\00", [44 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.23, ptr @.str.4, i32 899, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid GPIO3 selection: %u\0A\00", [35 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.61 = internal global ptr @iqs269_parse_prop._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,dual-direction\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"azoteq,tx-freq\00", [17 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.23, ptr @.str.4, i32 914, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid excitation frequency: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.66 = internal global ptr @iqs269_parse_prop._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"azoteq,global-cap-increase\00", [37 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,reseed-select\00", [43 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.23, ptr @.str.4, i32 930, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid reseed selection: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.71 = internal global ptr @iqs269_parse_prop._entry.69, section ".printk_index", align 4
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,tracking-enable\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,filt-str-slider\00", [41 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.4, i32 946, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.75 = internal global ptr @iqs269_parse_prop._entry.74, section ".printk_index", align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"azoteq,clk-div\00", [17 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,ulp-update\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.23, ptr @.str.4, i32 1003, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid update rate: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs269_parse_prop._entry_ptr.80 = internal global ptr @iqs269_parse_prop._entry.78, section ".printk_index", align 4
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,reseed-offset\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.4, i32 514, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read channel number: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs269_parse_chan\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr = internal global ptr @iqs269_parse_chan._entry, section ".printk_index", align 4
@iqs269_parse_chan._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.4, i32 517, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid channel number: %u\0A\00", [36 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.87 = internal global ptr @iqs269_parse_chan._entry.85, section ".printk_index", align 4
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,reseed-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"azoteq,blocking-enable\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,slider0-select\00", [42 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,slider1-select\00", [42 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,rx-enable\00", [47 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.84, ptr @.str.4, i32 546, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid channel %u RX enable mask: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.95 = internal global ptr @iqs269_parse_chan._entry.93, section ".printk_index", align 4
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,tx-enable\00", [47 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.84, ptr @.str.4, i32 554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid channel %u TX enable mask: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.99 = internal global ptr @iqs269_parse_chan._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"azoteq,meas-cap-decrease\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"azoteq,rx-float-inactive\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"azoteq,local-cap-size\00", [42 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.84, ptr @.str.4, i32 587, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Invalid channel %u local cap. size: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.105 = internal global ptr @iqs269_parse_chan._entry.103, section ".printk_index", align 4
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,invert-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"azoteq,proj-bias\00", [47 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.84, ptr @.str.4, i32 600, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid channel %u bias current: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.110 = internal global ptr @iqs269_parse_chan._entry.108, section ".printk_index", align 4
@.str.111 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,sense-mode\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.84, ptr @.str.4, i32 612, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid channel %u sensing mode: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.114 = internal global ptr @iqs269_parse_chan._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,sense-freq\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.84, ptr @.str.4, i32 624, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid channel %u sensing frequency: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.118 = internal global ptr @iqs269_parse_chan._entry.116, section ".printk_index", align 4
@.str.119 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"azoteq,static-enable\00", [43 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azoteq,ati-mode\00", [16 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.84, ptr @.str.4, i32 643, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid channel %u ATI mode: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.123 = internal global ptr @iqs269_parse_chan._entry.121, section ".printk_index", align 4
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"azoteq,ati-base\00", [16 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.125 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.84, ptr @.str.4, i32 652, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid channel %u ATI base: %u\0A\00", [63 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.127 = internal global ptr @iqs269_parse_chan._entry.125, section ".printk_index", align 4
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"azoteq,ati-target\00", [46 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.84, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid channel %u ATI target: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.131 = internal global ptr @iqs269_parse_chan._entry.129, section ".printk_index", align 4
@.str.132 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,assoc-select\00", [44 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.84, ptr @.str.4, i32 671, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid channel %u association: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.135 = internal global ptr @iqs269_parse_chan._entry.133, section ".printk_index", align 4
@.str.136 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"azoteq,assoc-weight\00", [44 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.84, ptr @.str.4, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Invalid channel %u associated weight: %u\0A\00", [54 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.139 = internal global ptr @iqs269_parse_chan._entry.137, section ".printk_index", align 4
@iqs269_events = internal constant { [6 x %struct.iqs269_event_desc], [32 x i8] } { [6 x %struct.iqs269_event_desc] [%struct.iqs269_event_desc { ptr @.str.149, i32 0, i32 0, i8 0, i8 1 }, %struct.iqs269_event_desc { ptr @.str.150, i32 0, i32 0, i8 1, i8 1 }, %struct.iqs269_event_desc { ptr @.str.151, i32 2, i32 1, i8 0, i8 2 }, %struct.iqs269_event_desc { ptr @.str.152, i32 2, i32 1, i8 1, i8 2 }, %struct.iqs269_event_desc { ptr @.str.153, i32 3, i32 2, i8 0, i8 4 }, %struct.iqs269_event_desc { ptr @.str.154, i32 3, i32 2, i8 1, i8 4 }], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"azoteq,thresh\00", [18 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.84, ptr @.str.4, i32 696, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid channel %u threshold: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.143 = internal global ptr @iqs269_parse_chan._entry.141, section ".printk_index", align 4
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"azoteq,hyst\00", [20 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.84, ptr @.str.4, i32 709, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid channel %u hysteresis: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@iqs269_parse_chan._entry_ptr.147 = internal global ptr @iqs269_parse_chan._entry.145, section ".printk_index", align 4
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-prox\00", [21 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event-prox-alt\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"event-touch\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"event-touch-alt\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-deep\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"event-deep-alt\00", [17 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iqs269a_keypad\00", [17 x i8] zeroinitializer }, align 32
@iqs269_input_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.4, i32 1112, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read initial status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iqs269_input_init\00", [46 x i8] zeroinitializer }, align 32
@iqs269_input_init._entry_ptr = internal global ptr @iqs269_input_init._entry, section ".printk_index", align 4
@iqs269_input_init._entry.158 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.157, ptr @.str.4, i32 1162, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register keypad: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@iqs269_input_init._entry_ptr.160 = internal global ptr @iqs269_input_init._entry.158, section ".printk_index", align 4
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs269a_slider_1\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iqs269a_slider_0\00", [47 x i8] zeroinitializer }, align 32
@iqs269_input_init._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.164, ptr @.str.157, ptr @.str.4, i32 1184, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register slider %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@iqs269_input_init._entry_ptr.165 = internal global ptr @iqs269_input_init._entry.163, section ".printk_index", align 4
@iqs269_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.167, ptr @.str.4, i32 1205, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read device status: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"iqs269_report\00", [18 x i8] zeroinitializer }, align 32
@iqs269_report._entry_ptr = internal global ptr @iqs269_report._entry, section ".printk_index", align 4
@iqs269_report._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.4, i32 1215, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unexpected device reset\0A\00", [39 x i8] zeroinitializer }, align 32
@iqs269_report._entry_ptr.170 = internal global ptr @iqs269_report._entry.168, section ".printk_index", align 4
@iqs269_report._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.167, ptr @.str.4, i32 1220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to re-initialize device: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs269_report._entry_ptr.173 = internal global ptr @iqs269_report._entry.171, section ".printk_index", align 4
@iqs269_report._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.167, ptr @.str.4, i32 1229, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read slider position: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@iqs269_report._entry_ptr.176 = internal global ptr @iqs269_report._entry.174, section ".printk_index", align 4
@iqs269_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_counts, ptr @dev_attr_hall_bin, ptr @dev_attr_hall_enable, ptr @dev_attr_ch_number, ptr @dev_attr_rx_enable, ptr @dev_attr_ati_mode, ptr @dev_attr_ati_base, ptr @dev_attr_ati_target, ptr @dev_attr_ati_trigger, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_counts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @counts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hall_bin = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.179, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hall_bin_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hall_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hall_enable_show, ptr @hall_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ch_number = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ch_number_show, ptr @ch_number_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rx_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rx_enable_show, ptr @rx_enable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ati_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.183, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_mode_show, ptr @ati_mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ati_base = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.184, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_base_show, ptr @ati_base_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ati_target = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.185, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_target_show, ptr @ati_target_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ati_trigger = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.186, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ati_trigger_show, ptr @ati_trigger_store }, [36 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"counts\00", [25 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hall_bin\00", [23 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hall_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ch_number\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_enable\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ati_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ati_base\00", [23 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ati_target\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ati_trigger\00", [20 x i8] zeroinitializer }, align 32
@switch.table.ati_base_show = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 75, i32 100, i32 150, i32 200], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.187 = internal global [6 x i64] [i64 4, i64 32, i64 75, i64 100, i64 150, i64 200]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 7]
@__sancov_gen_cov_switch_values.192 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 32, i64 75, i64 100, i64 150, i64 200]
@___asan_gen_.194 = private unnamed_addr constant [18 x i8] c"iqs269_i2c_driver\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1814, i32 26 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1816, i32 11 }
@___asan_gen_.200 = private unnamed_addr constant [16 x i8] c"iqs269_of_match\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1808, i32 34 }
@___asan_gen_.203 = private unnamed_addr constant [10 x i8] c"iqs269_pm\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1806, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"iqs269_regmap_config\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1630, i32 35 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1649, i32 19 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1652, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1657, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1665, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1676, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1689, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"iqs269_attr_group\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1626, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1695, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 760, i32 13 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 762, i32 46 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 765, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 778, i32 46 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 781, i32 4 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 790, i32 46 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 793, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 802, i32 46 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 805, i32 4 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 814, i32 46 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 817, i32 4 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 826, i32 46 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 829, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 836, i32 46 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 839, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 846, i32 46 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 849, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 856, i32 46 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 859, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 866, i32 46 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 869, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 880, i32 44 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 884, i32 44 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 888, i32 44 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 892, i32 44 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 895, i32 46 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 898, i32 4 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 908, i32 44 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 911, i32 46 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 913, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 923, i32 44 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 926, i32 46 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 929, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 939, i32 44 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 942, i32 46 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 945, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 983, i32 44 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1000, i32 46 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1003, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1012, i32 44 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 511, i32 44 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 513, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 517, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 522, i32 40 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 525, i32 39 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 528, i32 39 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 531, i32 39 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 542, i32 37 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 545, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 550, i32 37 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 553, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 562, i32 39 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 566, i32 39 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 571, i32 41 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 585, i32 4 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 593, i32 39 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 596, i32 41 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 598, i32 4 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 608, i32 41 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 610, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 620, i32 41 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 622, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 633, i32 39 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 639, i32 41 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 642, i32 4 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 648, i32 41 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 651, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 657, i32 41 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 660, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 667, i32 37 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 670, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 675, i32 41 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 677, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant [14 x i8] c"iqs269_events\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 199, i32 39 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 692, i32 42 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 694, i32 5 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 703, i32 42 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 707, i32 5 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 724, i32 41 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 201, i32 11 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 207, i32 11 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 214, i32 11 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 220, i32 11 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 227, i32 11 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 233, i32 11 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1104, i32 25 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1111, i32 4 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1162, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1174, i32 33 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1175, i32 12 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1183, i32 4 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1204, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1215, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1219, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1228, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant [13 x i8] c"iqs269_attrs\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1613, i32 26 }
@___asan_gen_.656 = private unnamed_addr constant [16 x i8] c"dev_attr_counts\00", align 1
@___asan_gen_.659 = private unnamed_addr constant [18 x i8] c"dev_attr_hall_bin\00", align 1
@___asan_gen_.662 = private unnamed_addr constant [21 x i8] c"dev_attr_hall_enable\00", align 1
@___asan_gen_.665 = private unnamed_addr constant [19 x i8] c"dev_attr_ch_number\00", align 1
@___asan_gen_.668 = private unnamed_addr constant [19 x i8] c"dev_attr_rx_enable\00", align 1
@___asan_gen_.671 = private unnamed_addr constant [18 x i8] c"dev_attr_ati_mode\00", align 1
@___asan_gen_.674 = private unnamed_addr constant [18 x i8] c"dev_attr_ati_base\00", align 1
@___asan_gen_.677 = private unnamed_addr constant [20 x i8] c"dev_attr_ati_target\00", align 1
@___asan_gen_.680 = private unnamed_addr constant [21 x i8] c"dev_attr_ati_trigger\00", align 1
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1603, i32 8 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1335, i32 35 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1604, i32 8 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1605, i32 8 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1606, i32 8 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1607, i32 8 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1608, i32 8 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1609, i32 8 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1610, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.711 = private constant [32 x i8] c"../drivers/input/misc/iqs269a.c\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.711, i32 1611, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant [27 x i8] c"switch.table.ati_base_show\00", align 1
@llvm.compiler.used = appending global [223 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_iqs269_i2c_driver_exit, ptr @__initcall__kmod_iqs269a__288_1822_iqs269_i2c_driver_init6, ptr @iqs269_i2c_driver_exit, ptr @iqs269_input_init._entry, ptr @iqs269_input_init._entry.158, ptr @iqs269_input_init._entry.163, ptr @iqs269_input_init._entry_ptr, ptr @iqs269_input_init._entry_ptr.160, ptr @iqs269_input_init._entry_ptr.165, ptr @iqs269_parse_chan._entry, ptr @iqs269_parse_chan._entry.103, ptr @iqs269_parse_chan._entry.108, ptr @iqs269_parse_chan._entry.112, ptr @iqs269_parse_chan._entry.116, ptr @iqs269_parse_chan._entry.121, ptr @iqs269_parse_chan._entry.125, ptr @iqs269_parse_chan._entry.129, ptr @iqs269_parse_chan._entry.133, ptr @iqs269_parse_chan._entry.137, ptr @iqs269_parse_chan._entry.141, ptr @iqs269_parse_chan._entry.145, ptr @iqs269_parse_chan._entry.85, ptr @iqs269_parse_chan._entry.93, ptr @iqs269_parse_chan._entry.97, ptr @iqs269_parse_chan._entry_ptr, ptr @iqs269_parse_chan._entry_ptr.105, ptr @iqs269_parse_chan._entry_ptr.110, ptr @iqs269_parse_chan._entry_ptr.114, ptr @iqs269_parse_chan._entry_ptr.118, ptr @iqs269_parse_chan._entry_ptr.123, ptr @iqs269_parse_chan._entry_ptr.127, ptr @iqs269_parse_chan._entry_ptr.131, ptr @iqs269_parse_chan._entry_ptr.135, ptr @iqs269_parse_chan._entry_ptr.139, ptr @iqs269_parse_chan._entry_ptr.143, ptr @iqs269_parse_chan._entry_ptr.147, ptr @iqs269_parse_chan._entry_ptr.87, ptr @iqs269_parse_chan._entry_ptr.95, ptr @iqs269_parse_chan._entry_ptr.99, ptr @iqs269_parse_prop._entry, ptr @iqs269_parse_prop._entry.25, ptr @iqs269_parse_prop._entry.29, ptr @iqs269_parse_prop._entry.32, ptr @iqs269_parse_prop._entry.35, ptr @iqs269_parse_prop._entry.38, ptr @iqs269_parse_prop._entry.42, ptr @iqs269_parse_prop._entry.45, ptr @iqs269_parse_prop._entry.48, ptr @iqs269_parse_prop._entry.52, ptr @iqs269_parse_prop._entry.59, ptr @iqs269_parse_prop._entry.64, ptr @iqs269_parse_prop._entry.69, ptr @iqs269_parse_prop._entry.74, ptr @iqs269_parse_prop._entry.78, ptr @iqs269_parse_prop._entry_ptr, ptr @iqs269_parse_prop._entry_ptr.27, ptr @iqs269_parse_prop._entry_ptr.30, ptr @iqs269_parse_prop._entry_ptr.33, ptr @iqs269_parse_prop._entry_ptr.36, ptr @iqs269_parse_prop._entry_ptr.40, ptr @iqs269_parse_prop._entry_ptr.43, ptr @iqs269_parse_prop._entry_ptr.46, ptr @iqs269_parse_prop._entry_ptr.50, ptr @iqs269_parse_prop._entry_ptr.53, ptr @iqs269_parse_prop._entry_ptr.61, ptr @iqs269_parse_prop._entry_ptr.66, ptr @iqs269_parse_prop._entry_ptr.71, ptr @iqs269_parse_prop._entry_ptr.75, ptr @iqs269_parse_prop._entry_ptr.80, ptr @iqs269_probe._entry, ptr @iqs269_probe._entry.11, ptr @iqs269_probe._entry.14, ptr @iqs269_probe._entry.17, ptr @iqs269_probe._entry.8, ptr @iqs269_probe._entry_ptr, ptr @iqs269_probe._entry_ptr.10, ptr @iqs269_probe._entry_ptr.13, ptr @iqs269_probe._entry_ptr.16, ptr @iqs269_probe._entry_ptr.19, ptr @iqs269_report._entry, ptr @iqs269_report._entry.168, ptr @iqs269_report._entry.171, ptr @iqs269_report._entry.174, ptr @iqs269_report._entry_ptr, ptr @iqs269_report._entry_ptr.170, ptr @iqs269_report._entry_ptr.173, ptr @iqs269_report._entry_ptr.176, ptr @iqs269_i2c_driver, ptr @.str, ptr @iqs269_of_match, ptr @iqs269_pm, ptr @iqs269_probe._key, ptr @iqs269_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iqs269_probe.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @iqs269_attr_group, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.76, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.124, ptr @.str.126, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.134, ptr @.str.136, ptr @.str.138, ptr @iqs269_events, ptr @.str.140, ptr @.str.142, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.159, ptr @.str.161, ptr @.str.162, ptr @.str.164, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @iqs269_attrs, ptr @dev_attr_counts, ptr @dev_attr_hall_bin, ptr @dev_attr_hall_enable, ptr @dev_attr_ch_number, ptr @dev_attr_rx_enable, ptr @dev_attr_ati_mode, ptr @dev_attr_ati_base, ptr @dev_attr_ati_target, ptr @dev_attr_ati_trigger, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @switch.table.ati_base_show], section "llvm.metadata"
@0 = internal global [174 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_prop._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_events to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_parse_chan._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_input_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_input_init._entry.158 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_input_init._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_report._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_report._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_report._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iqs269_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_counts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hall_bin to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hall_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ch_number to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rx_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ati_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ati_base to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ati_target to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ati_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ati_base_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs269_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @iqs269_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @iqs269_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @iqs269_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs269_probe(ptr noundef %client) #2 align 64 {
entry:
  %flags.i = alloca %struct.iqs269_flags, align 8
  %val.i514.i.i = alloca [8 x i32], align 4
  %val.i468.i.i = alloca [8 x i32], align 4
  %val.i.i.i = alloca [8 x i32], align 4
  %reg.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %ver_info = alloca %struct.iqs269_ver_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver_info) #6
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %0 = ptrtoint ptr %ver_info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ver_info, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 504, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @iqs269_regmap_config, ptr noundef nonnull @iqs269_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #9
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @iqs269_probe.__key) #6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call14 = call i32 @regmap_raw_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %ver_info, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.body10.cleanup_crit_edge

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %do.body10
  %7 = ptrtoint ptr %ver_info to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ver_info, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %8)
  %cmp.not = icmp eq i8 %8, 79
  br i1 %cmp.not, label %if.end26, label %do.end22

do.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %8 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  %sys_reg1.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %11 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %val.i, align 4, !annotation !353
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %call.i102 = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #6
  %hall_enable.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 12
  %frombool.i = zext i1 %call.i102 to i8
  %12 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %hall_enable.i, align 4
  %call.i.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.21, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end26.if.end7.i_crit_edge

if.end26.if.end7.i_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i

if.then.i:                                        ; preds = %if.end26
  %13 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i103 = icmp ugt i32 %14, 3
  br i1 %cmp.i103, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef %14) #9
  br label %iqs269_parse_prop.exit.thread

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %suspend_mode.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %suspend_mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %suspend_mode.i, align 4
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i, %if.end26.if.end7.i_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call8.i = call i32 @regmap_raw_read(ptr noundef %17, i32 noundef 128, ptr noundef %sys_reg1.i, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.iqs269_parse_prop.exit.thread_crit_edge

if.end7.i.iqs269_parse_prop.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_parse_prop.exit.thread

if.end11.i:                                       ; preds = %if.end7.i
  %call.i566.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566.i)
  %tobool14.not.i = icmp eq i32 %call.i566.i, 0
  br i1 %tobool14.not.i, label %if.then15.i, label %if.end11.i.if.end27.i_crit_edge

if.end11.i.if.end27.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i

if.then15.i:                                      ; preds = %if.end11.i
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp16.i = icmp ugt i32 %19, 3
  br i1 %cmp16.i, label %do.end20.i, label %if.end22.i

do.end20.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %19) #9
  br label %iqs269_parse_prop.exit.thread

if.end22.i:                                       ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %filter.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %filter.i, align 1
  %22 = and i8 %21, 63
  %.tr.i = trunc i32 %19 to i8
  %23 = shl nuw i8 %.tr.i, 6
  %conv26.i = or i8 %22, %23
  store i8 %conv26.i, ptr %filter.i, align 1
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end22.i, %if.end11.i.if.end27.i_crit_edge
  %call.i567.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i567.i)
  %tobool30.not.i = icmp eq i32 %call.i567.i, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.end27.i.if.end49.i_crit_edge

if.end27.i.if.end49.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

if.then31.i:                                      ; preds = %if.end27.i
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp32.i = icmp ugt i32 %25, 3
  br i1 %cmp32.i, label %do.end37.i, label %if.end39.i

do.end37.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %25) #9
  br label %iqs269_parse_prop.exit.thread

if.end39.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter40.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %filter40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %filter40.i, align 1
  %28 = and i8 %27, -49
  %.tr553.i = trunc i32 %25 to i8
  %29 = shl nuw nsw i8 %.tr553.i, 4
  %conv48.i = or i8 %28, %29
  store i8 %conv48.i, ptr %filter40.i, align 1
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.end39.i, %if.end27.i.if.end49.i_crit_edge
  %call.i568.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i568.i)
  %tobool52.not.i = icmp eq i32 %call.i568.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.end49.i.if.end71.i_crit_edge

if.end49.i.if.end71.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i

if.then53.i:                                      ; preds = %if.end49.i
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp54.i = icmp ugt i32 %31, 3
  br i1 %cmp54.i, label %do.end59.i, label %if.end61.i

do.end59.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %31) #9
  br label %iqs269_parse_prop.exit.thread

if.end61.i:                                       ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter62.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 2
  %32 = ptrtoint ptr %filter62.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %filter62.i, align 1
  %34 = and i8 %33, -13
  %.tr554.i = trunc i32 %31 to i8
  %35 = shl nuw nsw i8 %.tr554.i, 2
  %conv70.i = or i8 %34, %35
  store i8 %conv70.i, ptr %filter62.i, align 1
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.end61.i, %if.end49.i.if.end71.i_crit_edge
  %call.i569.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.34, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i569.i)
  %tobool74.not.i = icmp eq i32 %call.i569.i, 0
  br i1 %tobool74.not.i, label %if.then75.i, label %if.end71.i.if.end92.i_crit_edge

if.end71.i.if.end92.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then75.i:                                      ; preds = %if.end71.i
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %37)
  %cmp76.i = icmp ugt i32 %37, 3
  br i1 %cmp76.i, label %do.end81.i, label %if.end83.i

do.end81.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %37) #9
  br label %iqs269_parse_prop.exit.thread

if.end83.i:                                       ; preds = %if.then75.i
  call void @__sanitizer_cov_trace_pc() #8
  %filter84.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 2
  %38 = ptrtoint ptr %filter84.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %filter84.i, align 1
  %40 = and i8 %39, -4
  %41 = trunc i32 %37 to i8
  %conv91.i = or i8 %40, %41
  store i8 %conv91.i, ptr %filter84.i, align 1
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.end83.i, %if.end71.i.if.end92.i_crit_edge
  %call.i570.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.37, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i570.i)
  %tobool95.not.i = icmp eq i32 %call.i570.i, 0
  br i1 %tobool95.not.i, label %if.then96.i, label %if.end92.i.if.end106.i_crit_edge

if.end92.i.if.end106.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106.i

if.then96.i:                                      ; preds = %if.end92.i
  %42 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %43)
  %cmp97.i = icmp ugt i32 %43, 255
  br i1 %cmp97.i, label %do.end102.i, label %if.end104.i

do.end102.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %43) #9
  br label %iqs269_parse_prop.exit.thread

if.end104.i:                                      ; preds = %if.then96.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv105.i = trunc i32 %43 to i8
  %rate_np.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 5
  %44 = ptrtoint ptr %rate_np.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv105.i, ptr %rate_np.i, align 1
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.end104.i, %if.end92.i.if.end106.i_crit_edge
  %call.i571.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.41, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i571.i)
  %tobool109.not.i = icmp eq i32 %call.i571.i, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.end106.i.if.end120.i_crit_edge

if.end106.i.if.end120.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end120.i

if.then110.i:                                     ; preds = %if.end106.i
  %45 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %46)
  %cmp111.i = icmp ugt i32 %46, 255
  br i1 %cmp111.i, label %do.end116.i, label %if.end118.i

do.end116.i:                                      ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %46) #9
  br label %iqs269_parse_prop.exit.thread

if.end118.i:                                      ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv119.i = trunc i32 %46 to i8
  %rate_lp.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 6
  %47 = ptrtoint ptr %rate_lp.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv119.i, ptr %rate_lp.i, align 1
  br label %if.end120.i

if.end120.i:                                      ; preds = %if.end118.i, %if.end106.i.if.end120.i_crit_edge
  %call.i572.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.44, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i572.i)
  %tobool123.not.i = icmp eq i32 %call.i572.i, 0
  br i1 %tobool123.not.i, label %if.then124.i, label %if.end120.i.if.end134.i_crit_edge

if.end120.i.if.end134.i_crit_edge:                ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end134.i

if.then124.i:                                     ; preds = %if.end120.i
  %48 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %49)
  %cmp125.i = icmp ugt i32 %49, 4080
  br i1 %cmp125.i, label %do.end130.i, label %if.end132.i

do.end130.i:                                      ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.39, i32 noundef %49) #9
  br label %iqs269_parse_prop.exit.thread

if.end132.i:                                      ; preds = %if.then124.i
  call void @__sanitizer_cov_trace_pc() #8
  %div555.i = lshr i32 %49, 4
  %conv133.i = trunc i32 %div555.i to i8
  %rate_ulp.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 7
  %50 = ptrtoint ptr %rate_ulp.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv133.i, ptr %rate_ulp.i, align 1
  br label %if.end134.i

if.end134.i:                                      ; preds = %if.end132.i, %if.end120.i.if.end134.i_crit_edge
  %call.i573.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.47, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i573.i)
  %tobool137.not.i = icmp eq i32 %call.i573.i, 0
  br i1 %tobool137.not.i, label %if.then138.i, label %if.end134.i.if.end149.i_crit_edge

if.end134.i.if.end149.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149.i

if.then138.i:                                     ; preds = %if.end134.i
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %52)
  %cmp139.i = icmp ugt i32 %52, 130560
  br i1 %cmp139.i, label %do.end144.i, label %if.end146.i

do.end144.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %52) #9
  br label %iqs269_parse_prop.exit.thread

if.end146.i:                                      ; preds = %if.then138.i
  call void @__sanitizer_cov_trace_pc() #8
  %div147556.i = lshr i32 %52, 9
  %conv148.i = trunc i32 %div147556.i to i8
  %timeout_pwr.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 8
  %53 = ptrtoint ptr %timeout_pwr.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv148.i, ptr %timeout_pwr.i, align 1
  br label %if.end149.i

if.end149.i:                                      ; preds = %if.end146.i, %if.end134.i.if.end149.i_crit_edge
  %call.i574.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.51, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574.i)
  %tobool152.not.i = icmp eq i32 %call.i574.i, 0
  br i1 %tobool152.not.i, label %if.then153.i, label %if.end149.i.if.end164.i_crit_edge

if.end149.i.if.end164.i_crit_edge:                ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.i

if.then153.i:                                     ; preds = %if.end149.i
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130560, i32 %55)
  %cmp154.i = icmp ugt i32 %55, 130560
  br i1 %cmp154.i, label %do.end159.i, label %if.end161.i

do.end159.i:                                      ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %55) #9
  br label %iqs269_parse_prop.exit.thread

if.end161.i:                                      ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #8
  %div162557.i = lshr i32 %55, 9
  %conv163.i = trunc i32 %div162557.i to i8
  %timeout_lta.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 10
  %56 = ptrtoint ptr %timeout_lta.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv163.i, ptr %timeout_lta.i, align 1
  br label %if.end164.i

if.end164.i:                                      ; preds = %if.end161.i, %if.end149.i.if.end164.i_crit_edge
  %misc_a165.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 11
  %57 = ptrtoint ptr %misc_a165.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 2)
  %58 = load i16, ptr %misc_a165.i, align 1
  %misc_b166.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 12
  %59 = ptrtoint ptr %misc_b166.i to i32
  call void @__asan_loadN_noabort(i32 %59, i32 2)
  %60 = load i16, ptr %misc_b166.i, align 1
  %61 = and i16 %58, 4095
  %call171.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.54) #6
  %masksel.i = select i1 %call171.i, i16 -32768, i16 0
  %spec.select.i = or i16 %masksel.i, %61
  %call181.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.55) #6
  %masksel583.i = select i1 %call181.i, i16 16384, i16 0
  %misc_a.1.i = or i16 %spec.select.i, %masksel583.i
  %call191.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.56) #6
  %masksel584.i = select i1 %call191.i, i16 8192, i16 0
  %misc_a.2.i = or i16 %misc_a.1.i, %masksel584.i
  %call201.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.57) #6
  %masksel585.i = select i1 %call201.i, i16 4096, i16 0
  %misc_a.3.i = or i16 %misc_a.2.i, %masksel585.i
  %call.i575.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.58, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i575.i)
  %tobool209.not.i = icmp eq i32 %call.i575.i, 0
  br i1 %tobool209.not.i, label %if.then210.i, label %if.end164.i.if.end226.i_crit_edge

if.end164.i.if.end226.i_crit_edge:                ; preds = %if.end164.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end226.i

if.then210.i:                                     ; preds = %if.end164.i
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %63)
  %cmp211.i = icmp ugt i32 %63, 7
  br i1 %cmp211.i, label %do.end216.i, label %if.end218.i

do.end216.i:                                      ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %63) #9
  br label %iqs269_parse_prop.exit.thread

if.end218.i:                                      ; preds = %if.then210.i
  call void @__sanitizer_cov_trace_pc() #8
  %64 = and i16 %misc_a.3.i, -1793
  %.tr558.i = trunc i32 %63 to i16
  %65 = shl nuw nsw i16 %.tr558.i, 8
  %conv225.i = or i16 %65, %64
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.end218.i, %if.end164.i.if.end226.i_crit_edge
  %misc_a.4.i = phi i16 [ %misc_a.3.i, %if.end164.i.if.end226.i_crit_edge ], [ %conv225.i, %if.end218.i ]
  %66 = and i16 %misc_a.4.i, -65
  %call231.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #6
  %masksel586.i = select i1 %call231.i, i16 64, i16 0
  %spec.select562.i = or i16 %masksel586.i, %66
  %call.i576.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.63, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i576.i)
  %tobool239.not.i = icmp eq i32 %call.i576.i, 0
  br i1 %tobool239.not.i, label %if.then240.i, label %if.end226.i.if.end256.i_crit_edge

if.end226.i.if.end256.i_crit_edge:                ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end256.i

if.then240.i:                                     ; preds = %if.end226.i
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %68)
  %cmp241.i = icmp ugt i32 %68, 3
  br i1 %cmp241.i, label %do.end246.i, label %if.end248.i

do.end246.i:                                      ; preds = %if.then240.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65, i32 noundef %68) #9
  br label %iqs269_parse_prop.exit.thread

if.end248.i:                                      ; preds = %if.then240.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = and i16 %spec.select562.i, -49
  %.tr559.i = trunc i32 %68 to i16
  %70 = shl nuw nsw i16 %.tr559.i, 4
  %conv255.i = or i16 %70, %69
  br label %if.end256.i

if.end256.i:                                      ; preds = %if.end248.i, %if.end226.i.if.end256.i_crit_edge
  %misc_a.6.i = phi i16 [ %spec.select562.i, %if.end226.i.if.end256.i_crit_edge ], [ %conv255.i, %if.end248.i ]
  %71 = and i16 %misc_a.6.i, -2
  %call261.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.67) #6
  %masksel587.i = zext i1 %call261.i to i16
  %spec.select563.i = or i16 %71, %masksel587.i
  %call.i577.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i577.i)
  %tobool269.not.i = icmp eq i32 %call.i577.i, 0
  br i1 %tobool269.not.i, label %if.then270.i, label %if.end256.i.if.end286.i_crit_edge

if.end256.i.if.end286.i_crit_edge:                ; preds = %if.end256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286.i

if.then270.i:                                     ; preds = %if.end256.i
  %72 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp271.i = icmp ugt i32 %73, 3
  br i1 %cmp271.i, label %do.end276.i, label %if.end278.i

do.end276.i:                                      ; preds = %if.then270.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70, i32 noundef %73) #9
  br label %iqs269_parse_prop.exit.thread

if.end278.i:                                      ; preds = %if.then270.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = and i16 %60, -193
  %.tr560.i = trunc i32 %73 to i16
  %75 = shl nuw nsw i16 %.tr560.i, 6
  %conv285.i = or i16 %75, %74
  br label %if.end286.i

if.end286.i:                                      ; preds = %if.end278.i, %if.end256.i.if.end286.i_crit_edge
  %misc_b.0.i = phi i16 [ %60, %if.end256.i.if.end286.i_crit_edge ], [ %conv285.i, %if.end278.i ]
  %76 = and i16 %misc_b.0.i, -17
  %call291.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.72) #6
  %masksel588.i = select i1 %call291.i, i16 16, i16 0
  %spec.select564.i = or i16 %masksel588.i, %76
  %call.i578.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.73, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i578.i)
  %tobool299.not.i = icmp eq i32 %call.i578.i, 0
  br i1 %tobool299.not.i, label %if.then300.i, label %if.end286.i.if.end315.i_crit_edge

if.end286.i.if.end315.i_crit_edge:                ; preds = %if.end286.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end315.i

if.then300.i:                                     ; preds = %if.end286.i
  %77 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %78)
  %cmp301.i = icmp ugt i32 %78, 3
  br i1 %cmp301.i, label %do.end306.i, label %if.end308.i

do.end306.i:                                      ; preds = %if.then300.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %78) #9
  br label %iqs269_parse_prop.exit.thread

if.end308.i:                                      ; preds = %if.then300.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = and i16 %spec.select564.i, -4
  %80 = trunc i32 %78 to i16
  %conv314.i = or i16 %79, %80
  br label %if.end315.i

if.end315.i:                                      ; preds = %if.end308.i, %if.end286.i.if.end315.i_crit_edge
  %misc_b.2.i = phi i16 [ %spec.select564.i, %if.end286.i.if.end315.i_crit_edge ], [ %conv314.i, %if.end308.i ]
  %81 = ptrtoint ptr %misc_a165.i to i32
  call void @__asan_storeN_noabort(i32 %81, i32 2)
  store i16 %spec.select563.i, ptr %misc_a165.i, align 1
  %82 = ptrtoint ptr %misc_b166.i to i32
  call void @__asan_storeN_noabort(i32 %82, i32 2)
  store i16 %misc_b.2.i, ptr %misc_b166.i, align 1
  %active.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 1
  %83 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %active.i, align 1
  %reseed.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 3
  %84 = ptrtoint ptr %reseed.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %reseed.i, align 1
  %blocking.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 13
  %85 = ptrtoint ptr %blocking.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %blocking.i, align 1
  %slider_select.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 15
  %86 = ptrtoint ptr %slider_select.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %slider_select.i, align 1
  %arrayidx319.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 15, i32 1
  %87 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %arrayidx319.i, align 1
  %event_mask.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -65, ptr %event_mask.i, align 1
  %call321.i = call ptr @device_get_next_child_node(ptr noundef %dev.i, ptr noundef null) #6
  %tobool322.not698.i = icmp eq ptr %call321.i, null
  br i1 %tobool322.not698.i, label %if.end315.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end315.i.for.end.i_crit_edge:                  ; preds = %if.end315.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end315.i
  %ati_current.i.i.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 13
  %arrayidx.i.i.i.1 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 1
  %arrayidx.i.i.i.2 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 2
  %arrayidx.i.i.i.3 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 3
  %arrayidx.i.i.i.4 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 4
  %arrayidx.i.i.i.5 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 5
  %arrayidx.i.i.i.6 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 6
  %arrayidx.i.i.i.7 = getelementptr inbounds [8 x i32], ptr %val.i.i.i, i32 0, i32 7
  %arrayidx.i479.i.i.1 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 1
  %arrayidx.i479.i.i.2 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 2
  %arrayidx.i479.i.i.3 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 3
  %arrayidx.i479.i.i.4 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 4
  %arrayidx.i479.i.i.5 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 5
  %arrayidx.i479.i.i.6 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 6
  %arrayidx.i479.i.i.7 = getelementptr inbounds [8 x i32], ptr %val.i468.i.i, i32 0, i32 7
  %arrayidx.i525.i.i.1 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 1
  %arrayidx.i525.i.i.2 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 2
  %arrayidx.i525.i.i.3 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 3
  %arrayidx.i525.i.i.4 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 4
  %arrayidx.i525.i.i.5 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 5
  %arrayidx.i525.i.i.6 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 6
  %arrayidx.i525.i.i.7 = getelementptr inbounds [8 x i32], ptr %val.i514.i.i, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ch_node.0699.i = phi ptr [ %call321.i, %for.body.lr.ph.i ], [ %call328.i, %for.inc.i.for.body.i_crit_edge ]
  %89 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %91 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !353
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %92 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -1, ptr %val.i.i, align 4, !annotation !353
  %call.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.82, ptr noundef nonnull %reg.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.83, i32 noundef %call.i.i.i) #9
  br label %if.then325.i

if.else.i.i:                                      ; preds = %for.body.i
  %93 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %94)
  %cmp.i.i = icmp ugt i32 %94, 7
  br i1 %cmp.i.i, label %do.end5.i.i, label %if.end7.i.i

do.end5.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev6.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i.i, ptr noundef nonnull @.str.86, i32 noundef %94) #9
  br label %if.then325.i

if.end7.i.i:                                      ; preds = %if.else.i.i
  %shl.i.i = shl nuw nsw i32 1, %94
  %95 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %active.i, align 2
  %97 = trunc i32 %shl.i.i to i8
  %conv8.i.i = or i8 %96, %97
  store i8 %conv8.i.i, ptr %active.i, align 2
  %call9.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.88) #6
  br i1 %call9.i.i, label %if.end7.i.i.if.end16.i.i_crit_edge, label %if.then10.i.i

if.end7.i.i.if.end16.i.i_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16.i.i

if.then10.i.i:                                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reg.i.i, align 4
  %shl11.i.i = shl nuw i32 1, %99
  %100 = ptrtoint ptr %reseed.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %reseed.i, align 4
  %102 = trunc i32 %shl11.i.i to i8
  %conv15.i.i = or i8 %101, %102
  store i8 %conv15.i.i, ptr %reseed.i, align 4
  br label %if.end16.i.i

if.end16.i.i:                                     ; preds = %if.then10.i.i, %if.end7.i.i.if.end16.i.i_crit_edge
  %call17.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.89) #6
  br i1 %call17.i.i, label %if.then18.i.i, label %if.end16.i.i.if.end24.i.i_crit_edge

if.end16.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %reg.i.i, align 4
  %shl19.i.i = shl nuw i32 1, %104
  %105 = ptrtoint ptr %blocking.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %blocking.i, align 4
  %107 = trunc i32 %shl19.i.i to i8
  %conv23.i.i = or i8 %106, %107
  store i8 %conv23.i.i, ptr %blocking.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then18.i.i, %if.end16.i.i.if.end24.i.i_crit_edge
  %call25.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.90) #6
  br i1 %call25.i.i, label %if.then26.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32.i.i

if.then26.i.i:                                    ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %reg.i.i, align 4
  %shl27.i.i = shl nuw i32 1, %109
  %110 = ptrtoint ptr %slider_select.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %slider_select.i, align 2
  %112 = trunc i32 %shl27.i.i to i8
  %conv31.i.i = or i8 %111, %112
  store i8 %conv31.i.i, ptr %slider_select.i, align 2
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.then26.i.i, %if.end24.i.i.if.end32.i.i_crit_edge
  %call33.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.91) #6
  br i1 %call33.i.i, label %if.then34.i.i, label %if.end32.i.i.if.end42.i.i_crit_edge

if.end32.i.i.if.end42.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i.i

if.then34.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %113 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %reg.i.i, align 4
  %shl35.i.i = shl nuw i32 1, %114
  %115 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx319.i, align 1
  %117 = trunc i32 %shl35.i.i to i8
  %conv41.i.i = or i8 %116, %117
  store i8 %conv41.i.i, ptr %arrayidx319.i, align 1
  br label %if.end42.i.i

if.end42.i.i:                                     ; preds = %if.then34.i.i, %if.end32.i.i.if.end42.i.i_crit_edge
  %118 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %reg.i.i, align 4
  %arrayidx44.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %mul.i.i = mul i32 %119, 14
  %div461.i.i = lshr exact i32 %mul.i.i, 1
  %add.i.i = add nuw i32 %div461.i.i, 140
  %call45.i.i = call i32 @regmap_raw_read(ptr noundef %121, i32 noundef %add.i.i, ptr noundef %arrayidx44.i.i, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i)
  %tobool46.not.i.i = icmp eq i32 %call45.i.i, 0
  br i1 %tobool46.not.i.i, label %if.end48.i.i, label %if.end42.i.i.if.then325.i_crit_edge

if.end42.i.i.if.then325.i_crit_edge:              ; preds = %if.end42.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then325.i

if.end48.i.i:                                     ; preds = %if.end42.i.i
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i.i.i) #6
  %122 = call ptr @memset(ptr %val.i.i.i, i32 255, i32 32)
  %call.i.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.92, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end48.i.i.if.end56.i.i_crit_edge, label %if.end.i.i.i

if.end48.i.i.if.end56.i.i_crit_edge:              ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

if.end.i.i.i:                                     ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i.i.i)
  %cmp1.i.i.i = icmp ugt i32 %call.i.i.i.i, 8
  br i1 %cmp1.i.i.i, label %if.end.i.i.i.do.end54.i.i_crit_edge, label %if.end3.i.i.i

if.end.i.i.i.do.end54.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i.i
  %call4.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %ch_node.0699.i, ptr noundef nonnull @.str.92, ptr noundef nonnull %val.i.i.i, i32 noundef %call.i.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end6.i.i.i, label %if.end3.i.i.i.do.end54.i.i_crit_edge

if.end3.i.i.i.do.end54.i.i_crit_edge:             ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end6.i.i.i:                                    ; preds = %if.end3.i.i.i
  %123 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp726.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp726.not.i.i.i, label %if.end6.i.i.i.if.end56.i.i_crit_edge, label %for.body.i.i.i

if.end6.i.i.i.if.end56.i.i_crit_edge:             ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i:                                   ; preds = %if.end6.i.i.i
  %124 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %val.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %125)
  %cmp8.i.i.i = icmp ugt i32 %125, 7
  br i1 %cmp8.i.i.i, label %for.body.i.i.i.do.end54.i.i_crit_edge, label %if.end10.i.i.i

for.body.i.i.i.do.end54.i.i_crit_edge:            ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i:                                   ; preds = %for.body.i.i.i
  %shl.i.i.i = shl nuw nsw i32 1, %125
  %126 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %arrayidx44.i.i, align 1
  %128 = trunc i32 %shl.i.i.i to i8
  %conv12.i.i.i = or i8 %127, %128
  store i8 %conv12.i.i.i, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i, label %if.end10.i.i.i.if.end56.i.i_crit_edge, label %for.body.i.i.i.1

if.end10.i.i.i.if.end56.i.i_crit_edge:            ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.1:                                 ; preds = %if.end10.i.i.i
  %129 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %130)
  %cmp8.i.i.i.1 = icmp ugt i32 %130, 7
  br i1 %cmp8.i.i.i.1, label %for.body.i.i.i.1.do.end54.i.i_crit_edge, label %if.end10.i.i.i.1

for.body.i.i.i.1.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.1:                                 ; preds = %for.body.i.i.i.1
  %shl.i.i.i.1 = shl nuw nsw i32 1, %130
  %131 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %arrayidx44.i.i, align 1
  %133 = trunc i32 %shl.i.i.i.1 to i8
  %conv12.i.i.i.1 = or i8 %132, %133
  store i8 %conv12.i.i.i.1, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.1 = icmp eq i32 %call.i.i.i.i, 2
  br i1 %exitcond.not.i.i.i.1, label %if.end10.i.i.i.1.if.end56.i.i_crit_edge, label %for.body.i.i.i.2

if.end10.i.i.i.1.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.2:                                 ; preds = %if.end10.i.i.i.1
  %134 = ptrtoint ptr %arrayidx.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %135)
  %cmp8.i.i.i.2 = icmp ugt i32 %135, 7
  br i1 %cmp8.i.i.i.2, label %for.body.i.i.i.2.do.end54.i.i_crit_edge, label %if.end10.i.i.i.2

for.body.i.i.i.2.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.2:                                 ; preds = %for.body.i.i.i.2
  %shl.i.i.i.2 = shl nuw nsw i32 1, %135
  %136 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx44.i.i, align 1
  %138 = trunc i32 %shl.i.i.i.2 to i8
  %conv12.i.i.i.2 = or i8 %137, %138
  store i8 %conv12.i.i.i.2, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.2 = icmp eq i32 %call.i.i.i.i, 3
  br i1 %exitcond.not.i.i.i.2, label %if.end10.i.i.i.2.if.end56.i.i_crit_edge, label %for.body.i.i.i.3

if.end10.i.i.i.2.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.3:                                 ; preds = %if.end10.i.i.i.2
  %139 = ptrtoint ptr %arrayidx.i.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %140)
  %cmp8.i.i.i.3 = icmp ugt i32 %140, 7
  br i1 %cmp8.i.i.i.3, label %for.body.i.i.i.3.do.end54.i.i_crit_edge, label %if.end10.i.i.i.3

for.body.i.i.i.3.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.3:                                 ; preds = %for.body.i.i.i.3
  %shl.i.i.i.3 = shl nuw nsw i32 1, %140
  %141 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx44.i.i, align 1
  %143 = trunc i32 %shl.i.i.i.3 to i8
  %conv12.i.i.i.3 = or i8 %142, %143
  store i8 %conv12.i.i.i.3, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.3 = icmp eq i32 %call.i.i.i.i, 4
  br i1 %exitcond.not.i.i.i.3, label %if.end10.i.i.i.3.if.end56.i.i_crit_edge, label %for.body.i.i.i.4

if.end10.i.i.i.3.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.4:                                 ; preds = %if.end10.i.i.i.3
  %144 = ptrtoint ptr %arrayidx.i.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx.i.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %145)
  %cmp8.i.i.i.4 = icmp ugt i32 %145, 7
  br i1 %cmp8.i.i.i.4, label %for.body.i.i.i.4.do.end54.i.i_crit_edge, label %if.end10.i.i.i.4

for.body.i.i.i.4.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.4:                                 ; preds = %for.body.i.i.i.4
  %shl.i.i.i.4 = shl nuw nsw i32 1, %145
  %146 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %arrayidx44.i.i, align 1
  %148 = trunc i32 %shl.i.i.i.4 to i8
  %conv12.i.i.i.4 = or i8 %147, %148
  store i8 %conv12.i.i.i.4, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.4 = icmp eq i32 %call.i.i.i.i, 5
  br i1 %exitcond.not.i.i.i.4, label %if.end10.i.i.i.4.if.end56.i.i_crit_edge, label %for.body.i.i.i.5

if.end10.i.i.i.4.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.5:                                 ; preds = %if.end10.i.i.i.4
  %149 = ptrtoint ptr %arrayidx.i.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %150)
  %cmp8.i.i.i.5 = icmp ugt i32 %150, 7
  br i1 %cmp8.i.i.i.5, label %for.body.i.i.i.5.do.end54.i.i_crit_edge, label %if.end10.i.i.i.5

for.body.i.i.i.5.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.5:                                 ; preds = %for.body.i.i.i.5
  %shl.i.i.i.5 = shl nuw nsw i32 1, %150
  %151 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %arrayidx44.i.i, align 1
  %153 = trunc i32 %shl.i.i.i.5 to i8
  %conv12.i.i.i.5 = or i8 %152, %153
  store i8 %conv12.i.i.i.5, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.5 = icmp eq i32 %call.i.i.i.i, 6
  br i1 %exitcond.not.i.i.i.5, label %if.end10.i.i.i.5.if.end56.i.i_crit_edge, label %for.body.i.i.i.6

if.end10.i.i.i.5.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.6:                                 ; preds = %if.end10.i.i.i.5
  %154 = ptrtoint ptr %arrayidx.i.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %155)
  %cmp8.i.i.i.6 = icmp ugt i32 %155, 7
  br i1 %cmp8.i.i.i.6, label %for.body.i.i.i.6.do.end54.i.i_crit_edge, label %if.end10.i.i.i.6

for.body.i.i.i.6.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.6:                                 ; preds = %for.body.i.i.i.6
  %shl.i.i.i.6 = shl nuw nsw i32 1, %155
  %156 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %156)
  %157 = load i8, ptr %arrayidx44.i.i, align 1
  %158 = trunc i32 %shl.i.i.i.6 to i8
  %conv12.i.i.i.6 = or i8 %157, %158
  store i8 %conv12.i.i.i.6, ptr %arrayidx44.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i.6 = icmp eq i32 %call.i.i.i.i, 7
  br i1 %exitcond.not.i.i.i.6, label %if.end10.i.i.i.6.if.end56.i.i_crit_edge, label %for.body.i.i.i.7

if.end10.i.i.i.6.if.end56.i.i_crit_edge:          ; preds = %if.end10.i.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i.i

for.body.i.i.i.7:                                 ; preds = %if.end10.i.i.i.6
  %159 = ptrtoint ptr %arrayidx.i.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx.i.i.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %160)
  %cmp8.i.i.i.7 = icmp ugt i32 %160, 7
  br i1 %cmp8.i.i.i.7, label %for.body.i.i.i.7.do.end54.i.i_crit_edge, label %if.end10.i.i.i.7

for.body.i.i.i.7.do.end54.i.i_crit_edge:          ; preds = %for.body.i.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end54.i.i

if.end10.i.i.i.7:                                 ; preds = %for.body.i.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i.i.i.7 = shl nuw nsw i32 1, %160
  %161 = ptrtoint ptr %arrayidx44.i.i to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %arrayidx44.i.i, align 1
  %163 = trunc i32 %shl.i.i.i.7 to i8
  %conv12.i.i.i.7 = or i8 %162, %163
  store i8 %conv12.i.i.i.7, ptr %arrayidx44.i.i, align 1
  br label %if.end56.i.i

do.end54.i.i:                                     ; preds = %for.body.i.i.i.7.do.end54.i.i_crit_edge, %for.body.i.i.i.6.do.end54.i.i_crit_edge, %for.body.i.i.i.5.do.end54.i.i_crit_edge, %for.body.i.i.i.4.do.end54.i.i_crit_edge, %for.body.i.i.i.3.do.end54.i.i_crit_edge, %for.body.i.i.i.2.do.end54.i.i_crit_edge, %for.body.i.i.i.1.do.end54.i.i_crit_edge, %for.body.i.i.i.do.end54.i.i_crit_edge, %if.end3.i.i.i.do.end54.i.i_crit_edge, %if.end.i.i.i.do.end54.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ -22, %for.body.i.i.i.7.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.6.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.5.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.4.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.3.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.2.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.1.do.end54.i.i_crit_edge ], [ -22, %for.body.i.i.i.do.end54.i.i_crit_edge ], [ -22, %if.end.i.i.i.do.end54.i.i_crit_edge ], [ %call4.i.i.i, %if.end3.i.i.i.do.end54.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i.i.i) #6
  %dev55.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %164 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev55.i.i, ptr noundef nonnull @.str.94, i32 noundef %165, i32 noundef %retval.0.i.i.i) #9
  br label %if.then325.i

if.end56.i.i:                                     ; preds = %if.end10.i.i.i.7, %if.end10.i.i.i.6.if.end56.i.i_crit_edge, %if.end10.i.i.i.5.if.end56.i.i_crit_edge, %if.end10.i.i.i.4.if.end56.i.i_crit_edge, %if.end10.i.i.i.3.if.end56.i.i_crit_edge, %if.end10.i.i.i.2.if.end56.i.i_crit_edge, %if.end10.i.i.i.1.if.end56.i.i_crit_edge, %if.end10.i.i.i.if.end56.i.i_crit_edge, %if.end6.i.i.i.if.end56.i.i_crit_edge, %if.end48.i.i.if.end56.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i.i.i) #6
  %tx_enable.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 1
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i468.i.i) #6
  %166 = call ptr @memset(ptr %val.i468.i.i, i32 255, i32 32)
  %call.i.i469.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.96, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i469.i.i)
  %cmp.i470.i.i = icmp slt i32 %call.i.i469.i.i, 0
  br i1 %cmp.i470.i.i, label %if.end56.i.i.if.end64.i.i_crit_edge, label %if.end.i472.i.i

if.end56.i.i.if.end64.i.i_crit_edge:              ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

if.end.i472.i.i:                                  ; preds = %if.end56.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i469.i.i)
  %cmp1.i471.i.i = icmp ugt i32 %call.i.i469.i.i, 8
  br i1 %cmp1.i471.i.i, label %if.end.i472.i.i.do.end62.i.i_crit_edge, label %if.end3.i475.i.i

if.end.i472.i.i.do.end62.i.i_crit_edge:           ; preds = %if.end.i472.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end3.i475.i.i:                                 ; preds = %if.end.i472.i.i
  %call4.i473.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.96, ptr noundef nonnull %val.i468.i.i, i32 noundef %call.i.i469.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i473.i.i)
  %tobool.not.i474.i.i = icmp eq i32 %call4.i473.i.i, 0
  br i1 %tobool.not.i474.i.i, label %if.end6.i477.i.i, label %if.end3.i475.i.i.do.end62.i.i_crit_edge

if.end3.i475.i.i.do.end62.i.i_crit_edge:          ; preds = %if.end3.i475.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end6.i477.i.i:                                 ; preds = %if.end3.i475.i.i
  %167 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 0, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i469.i.i)
  %cmp726.not.i476.i.i = icmp eq i32 %call.i.i469.i.i, 0
  br i1 %cmp726.not.i476.i.i, label %if.end6.i477.i.i.if.end64.i.i_crit_edge, label %for.body.i481.i.i

if.end6.i477.i.i.if.end64.i.i_crit_edge:          ; preds = %if.end6.i477.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i:                                ; preds = %if.end6.i477.i.i
  %168 = ptrtoint ptr %val.i468.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %val.i468.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %169)
  %cmp8.i480.i.i = icmp ugt i32 %169, 7
  br i1 %cmp8.i480.i.i, label %for.body.i481.i.i.do.end62.i.i_crit_edge, label %if.end10.i486.i.i

for.body.i481.i.i.do.end62.i.i_crit_edge:         ; preds = %for.body.i481.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i:                                ; preds = %for.body.i481.i.i
  %shl.i482.i.i = shl nuw nsw i32 1, %169
  %170 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %tx_enable.i.i, align 1
  %172 = trunc i32 %shl.i482.i.i to i8
  %conv12.i483.i.i = or i8 %171, %172
  store i8 %conv12.i483.i.i, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i = icmp eq i32 %call.i.i469.i.i, 1
  br i1 %exitcond.not.i485.i.i, label %if.end10.i486.i.i.if.end64.i.i_crit_edge, label %for.body.i481.i.i.1

if.end10.i486.i.i.if.end64.i.i_crit_edge:         ; preds = %if.end10.i486.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.1:                              ; preds = %if.end10.i486.i.i
  %173 = ptrtoint ptr %arrayidx.i479.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i479.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %174)
  %cmp8.i480.i.i.1 = icmp ugt i32 %174, 7
  br i1 %cmp8.i480.i.i.1, label %for.body.i481.i.i.1.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.1

for.body.i481.i.i.1.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.1:                              ; preds = %for.body.i481.i.i.1
  %shl.i482.i.i.1 = shl nuw nsw i32 1, %174
  %175 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %tx_enable.i.i, align 1
  %177 = trunc i32 %shl.i482.i.i.1 to i8
  %conv12.i483.i.i.1 = or i8 %176, %177
  store i8 %conv12.i483.i.i.1, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.1 = icmp eq i32 %call.i.i469.i.i, 2
  br i1 %exitcond.not.i485.i.i.1, label %if.end10.i486.i.i.1.if.end64.i.i_crit_edge, label %for.body.i481.i.i.2

if.end10.i486.i.i.1.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.2:                              ; preds = %if.end10.i486.i.i.1
  %178 = ptrtoint ptr %arrayidx.i479.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i479.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %179)
  %cmp8.i480.i.i.2 = icmp ugt i32 %179, 7
  br i1 %cmp8.i480.i.i.2, label %for.body.i481.i.i.2.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.2

for.body.i481.i.i.2.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.2:                              ; preds = %for.body.i481.i.i.2
  %shl.i482.i.i.2 = shl nuw nsw i32 1, %179
  %180 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %tx_enable.i.i, align 1
  %182 = trunc i32 %shl.i482.i.i.2 to i8
  %conv12.i483.i.i.2 = or i8 %181, %182
  store i8 %conv12.i483.i.i.2, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.2 = icmp eq i32 %call.i.i469.i.i, 3
  br i1 %exitcond.not.i485.i.i.2, label %if.end10.i486.i.i.2.if.end64.i.i_crit_edge, label %for.body.i481.i.i.3

if.end10.i486.i.i.2.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.3:                              ; preds = %if.end10.i486.i.i.2
  %183 = ptrtoint ptr %arrayidx.i479.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %arrayidx.i479.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %184)
  %cmp8.i480.i.i.3 = icmp ugt i32 %184, 7
  br i1 %cmp8.i480.i.i.3, label %for.body.i481.i.i.3.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.3

for.body.i481.i.i.3.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.3:                              ; preds = %for.body.i481.i.i.3
  %shl.i482.i.i.3 = shl nuw nsw i32 1, %184
  %185 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %tx_enable.i.i, align 1
  %187 = trunc i32 %shl.i482.i.i.3 to i8
  %conv12.i483.i.i.3 = or i8 %186, %187
  store i8 %conv12.i483.i.i.3, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.3 = icmp eq i32 %call.i.i469.i.i, 4
  br i1 %exitcond.not.i485.i.i.3, label %if.end10.i486.i.i.3.if.end64.i.i_crit_edge, label %for.body.i481.i.i.4

if.end10.i486.i.i.3.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.4:                              ; preds = %if.end10.i486.i.i.3
  %188 = ptrtoint ptr %arrayidx.i479.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx.i479.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %189)
  %cmp8.i480.i.i.4 = icmp ugt i32 %189, 7
  br i1 %cmp8.i480.i.i.4, label %for.body.i481.i.i.4.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.4

for.body.i481.i.i.4.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.4:                              ; preds = %for.body.i481.i.i.4
  %shl.i482.i.i.4 = shl nuw nsw i32 1, %189
  %190 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %tx_enable.i.i, align 1
  %192 = trunc i32 %shl.i482.i.i.4 to i8
  %conv12.i483.i.i.4 = or i8 %191, %192
  store i8 %conv12.i483.i.i.4, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.4 = icmp eq i32 %call.i.i469.i.i, 5
  br i1 %exitcond.not.i485.i.i.4, label %if.end10.i486.i.i.4.if.end64.i.i_crit_edge, label %for.body.i481.i.i.5

if.end10.i486.i.i.4.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.5:                              ; preds = %if.end10.i486.i.i.4
  %193 = ptrtoint ptr %arrayidx.i479.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %arrayidx.i479.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %194)
  %cmp8.i480.i.i.5 = icmp ugt i32 %194, 7
  br i1 %cmp8.i480.i.i.5, label %for.body.i481.i.i.5.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.5

for.body.i481.i.i.5.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.5:                              ; preds = %for.body.i481.i.i.5
  %shl.i482.i.i.5 = shl nuw nsw i32 1, %194
  %195 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %tx_enable.i.i, align 1
  %197 = trunc i32 %shl.i482.i.i.5 to i8
  %conv12.i483.i.i.5 = or i8 %196, %197
  store i8 %conv12.i483.i.i.5, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.5 = icmp eq i32 %call.i.i469.i.i, 6
  br i1 %exitcond.not.i485.i.i.5, label %if.end10.i486.i.i.5.if.end64.i.i_crit_edge, label %for.body.i481.i.i.6

if.end10.i486.i.i.5.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.6:                              ; preds = %if.end10.i486.i.i.5
  %198 = ptrtoint ptr %arrayidx.i479.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %arrayidx.i479.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %199)
  %cmp8.i480.i.i.6 = icmp ugt i32 %199, 7
  br i1 %cmp8.i480.i.i.6, label %for.body.i481.i.i.6.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.6

for.body.i481.i.i.6.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.6:                              ; preds = %for.body.i481.i.i.6
  %shl.i482.i.i.6 = shl nuw nsw i32 1, %199
  %200 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %tx_enable.i.i, align 1
  %202 = trunc i32 %shl.i482.i.i.6 to i8
  %conv12.i483.i.i.6 = or i8 %201, %202
  store i8 %conv12.i483.i.i.6, ptr %tx_enable.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i469.i.i)
  %exitcond.not.i485.i.i.6 = icmp eq i32 %call.i.i469.i.i, 7
  br i1 %exitcond.not.i485.i.i.6, label %if.end10.i486.i.i.6.if.end64.i.i_crit_edge, label %for.body.i481.i.i.7

if.end10.i486.i.i.6.if.end64.i.i_crit_edge:       ; preds = %if.end10.i486.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64.i.i

for.body.i481.i.i.7:                              ; preds = %if.end10.i486.i.i.6
  %203 = ptrtoint ptr %arrayidx.i479.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %arrayidx.i479.i.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %204)
  %cmp8.i480.i.i.7 = icmp ugt i32 %204, 7
  br i1 %cmp8.i480.i.i.7, label %for.body.i481.i.i.7.do.end62.i.i_crit_edge, label %if.end10.i486.i.i.7

for.body.i481.i.i.7.do.end62.i.i_crit_edge:       ; preds = %for.body.i481.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62.i.i

if.end10.i486.i.i.7:                              ; preds = %for.body.i481.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i482.i.i.7 = shl nuw nsw i32 1, %204
  %205 = ptrtoint ptr %tx_enable.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %tx_enable.i.i, align 1
  %207 = trunc i32 %shl.i482.i.i.7 to i8
  %conv12.i483.i.i.7 = or i8 %206, %207
  store i8 %conv12.i483.i.i.7, ptr %tx_enable.i.i, align 1
  br label %if.end64.i.i

do.end62.i.i:                                     ; preds = %for.body.i481.i.i.7.do.end62.i.i_crit_edge, %for.body.i481.i.i.6.do.end62.i.i_crit_edge, %for.body.i481.i.i.5.do.end62.i.i_crit_edge, %for.body.i481.i.i.4.do.end62.i.i_crit_edge, %for.body.i481.i.i.3.do.end62.i.i_crit_edge, %for.body.i481.i.i.2.do.end62.i.i_crit_edge, %for.body.i481.i.i.1.do.end62.i.i_crit_edge, %for.body.i481.i.i.do.end62.i.i_crit_edge, %if.end3.i475.i.i.do.end62.i.i_crit_edge, %if.end.i472.i.i.do.end62.i.i_crit_edge
  %retval.0.i487.i.i = phi i32 [ -22, %for.body.i481.i.i.7.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.6.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.5.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.4.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.3.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.2.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.1.do.end62.i.i_crit_edge ], [ -22, %for.body.i481.i.i.do.end62.i.i_crit_edge ], [ -22, %if.end.i472.i.i.do.end62.i.i_crit_edge ], [ %call4.i473.i.i, %if.end3.i475.i.i.do.end62.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i468.i.i) #6
  %dev63.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %208 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev63.i.i, ptr noundef nonnull @.str.98, i32 noundef %209, i32 noundef %retval.0.i487.i.i) #9
  br label %if.then325.i

if.end64.i.i:                                     ; preds = %if.end10.i486.i.i.7, %if.end10.i486.i.i.6.if.end64.i.i_crit_edge, %if.end10.i486.i.i.5.if.end64.i.i_crit_edge, %if.end10.i486.i.i.4.if.end64.i.i_crit_edge, %if.end10.i486.i.i.3.if.end64.i.i_crit_edge, %if.end10.i486.i.i.2.if.end64.i.i_crit_edge, %if.end10.i486.i.i.1.if.end64.i.i_crit_edge, %if.end10.i486.i.i.if.end64.i.i_crit_edge, %if.end6.i477.i.i.if.end64.i.i_crit_edge, %if.end56.i.i.if.end64.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i468.i.i) #6
  %engine_a65.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 2
  %210 = ptrtoint ptr %engine_a65.i.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %engine_a65.i.i, align 1
  %engine_b66.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 3
  %212 = ptrtoint ptr %engine_b66.i.i to i32
  call void @__asan_loadN_noabort(i32 %212, i32 2)
  %213 = load i16, ptr %engine_b66.i.i, align 1
  %call70.i.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.100) #6
  %214 = and i16 %211, 24575
  %masksel.i.i = select i1 %call70.i.i, i16 0, i16 -32768
  %spec.select.i.i = or i16 %masksel.i.i, %214
  %call78.i.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.101) #6
  %masksel552.i.i = select i1 %call78.i.i, i16 0, i16 8192
  %engine_a.1.i.i = or i16 %spec.select.i.i, %masksel552.i.i
  %215 = and i16 %engine_a.1.i.i, -4097
  %216 = and i16 %213, -8193
  %call.i489.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.102, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i489.i.i)
  %tobool91.not.i.i = icmp eq i32 %call.i489.i.i, 0
  br i1 %tobool91.not.i.i, label %if.then92.i.i, label %if.end64.i.i.if.end104.i.i_crit_edge

if.end64.i.i.if.end104.i.i_crit_edge:             ; preds = %if.end64.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i.i

if.then92.i.i:                                    ; preds = %if.end64.i.i
  %217 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %val.i.i, align 4
  %219 = zext i32 %218 to i64
  call void @__sanitizer_cov_trace_switch(i64 %219, ptr @__sancov_gen_cov_switch_values)
  switch i32 %218, label %do.end102.i.i [
    i32 0, label %if.then92.i.i.if.end104.i.i_crit_edge
    i32 2, label %sw.bb.i.i
    i32 1, label %if.then92.i.i.sw.bb96.i.i_crit_edge
  ]

if.then92.i.i.sw.bb96.i.i_crit_edge:              ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb96.i.i

if.then92.i.i.if.end104.i.i_crit_edge:            ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104.i.i

sw.bb.i.i:                                        ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %220 = or i16 %engine_a.1.i.i, 4096
  br label %sw.bb96.i.i

sw.bb96.i.i:                                      ; preds = %sw.bb.i.i, %if.then92.i.i.sw.bb96.i.i_crit_edge
  %engine_a.2.i.i = phi i16 [ %215, %if.then92.i.i.sw.bb96.i.i_crit_edge ], [ %220, %sw.bb.i.i ]
  %221 = or i16 %213, 8192
  br label %if.end104.i.i

do.end102.i.i:                                    ; preds = %if.then92.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev103.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %222 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev103.i.i, ptr noundef nonnull @.str.104, i32 noundef %223, i32 noundef %218) #9
  br label %if.then325.i

if.end104.i.i:                                    ; preds = %sw.bb96.i.i, %if.then92.i.i.if.end104.i.i_crit_edge, %if.end64.i.i.if.end104.i.i_crit_edge
  %engine_a.3.i.i = phi i16 [ %215, %if.end64.i.i.if.end104.i.i_crit_edge ], [ %engine_a.2.i.i, %sw.bb96.i.i ], [ %215, %if.then92.i.i.if.end104.i.i_crit_edge ]
  %engine_b.0.i.i = phi i16 [ %216, %if.end64.i.i.if.end104.i.i_crit_edge ], [ %221, %sw.bb96.i.i ], [ %216, %if.then92.i.i.if.end104.i.i_crit_edge ]
  %224 = and i16 %engine_a.3.i.i, -129
  %call108.i.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.106) #6
  %masksel553.i.i = select i1 %call108.i.i, i16 128, i16 0
  %spec.select464.i.i = or i16 %masksel553.i.i, %224
  %call.i490.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.107, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i490.i.i)
  %tobool115.not.i.i = icmp eq i32 %call.i490.i.i, 0
  br i1 %tobool115.not.i.i, label %if.then116.i.i, label %if.end104.i.i.if.end132.i.i_crit_edge

if.end104.i.i.if.end132.i.i_crit_edge:            ; preds = %if.end104.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132.i.i

if.then116.i.i:                                   ; preds = %if.end104.i.i
  %225 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %226)
  %cmp117.i.i = icmp ugt i32 %226, 3
  br i1 %cmp117.i.i, label %do.end122.i.i, label %if.end124.i.i

do.end122.i.i:                                    ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev123.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %227 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev123.i.i, ptr noundef nonnull @.str.109, i32 noundef %228, i32 noundef %226) #9
  br label %if.then325.i

if.end124.i.i:                                    ; preds = %if.then116.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %229 = and i16 %spec.select464.i.i, -97
  %.tr.i.i = trunc i32 %226 to i16
  %230 = shl nuw nsw i16 %.tr.i.i, 5
  %conv131.i.i = or i16 %230, %229
  br label %if.end132.i.i

if.end132.i.i:                                    ; preds = %if.end124.i.i, %if.end104.i.i.if.end132.i.i_crit_edge
  %engine_a.5.i.i = phi i16 [ %spec.select464.i.i, %if.end104.i.i.if.end132.i.i_crit_edge ], [ %conv131.i.i, %if.end124.i.i ]
  %call.i491.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.111, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i491.i.i)
  %tobool134.not.i.i = icmp eq i32 %call.i491.i.i, 0
  br i1 %tobool134.not.i.i, label %if.then135.i.i, label %if.end132.i.i.if.end150.i.i_crit_edge

if.end132.i.i.if.end150.i.i_crit_edge:            ; preds = %if.end132.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end150.i.i

if.then135.i.i:                                   ; preds = %if.end132.i.i
  %231 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %232)
  %cmp136.i.i = icmp ugt i32 %232, 15
  br i1 %cmp136.i.i, label %do.end141.i.i, label %if.end143.i.i

do.end141.i.i:                                    ; preds = %if.then135.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev142.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %233 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev142.i.i, ptr noundef nonnull @.str.113, i32 noundef %234, i32 noundef %232) #9
  br label %if.then325.i

if.end143.i.i:                                    ; preds = %if.then135.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %235 = and i16 %engine_a.5.i.i, -16
  %236 = trunc i32 %232 to i16
  %conv149.i.i = or i16 %235, %236
  br label %if.end150.i.i

if.end150.i.i:                                    ; preds = %if.end143.i.i, %if.end132.i.i.if.end150.i.i_crit_edge
  %engine_a.6.i.i = phi i16 [ %engine_a.5.i.i, %if.end132.i.i.if.end150.i.i_crit_edge ], [ %conv149.i.i, %if.end143.i.i ]
  %call.i492.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.115, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i492.i.i)
  %tobool152.not.i.i = icmp eq i32 %call.i492.i.i, 0
  br i1 %tobool152.not.i.i, label %if.then153.i.i, label %if.end150.i.i.if.end169.i.i_crit_edge

if.end150.i.i.if.end169.i.i_crit_edge:            ; preds = %if.end150.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end169.i.i

if.then153.i.i:                                   ; preds = %if.end150.i.i
  %237 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %238)
  %cmp154.i.i = icmp ugt i32 %238, 3
  br i1 %cmp154.i.i, label %do.end159.i.i, label %if.end161.i.i

do.end159.i.i:                                    ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev160.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %239 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev160.i.i, ptr noundef nonnull @.str.117, i32 noundef %240, i32 noundef %238) #9
  br label %if.then325.i

if.end161.i.i:                                    ; preds = %if.then153.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %241 = and i16 %engine_b.0.i.i, -1537
  %.tr462.i.i = trunc i32 %238 to i16
  %242 = shl nuw nsw i16 %.tr462.i.i, 9
  %conv168.i.i = or i16 %242, %241
  br label %if.end169.i.i

if.end169.i.i:                                    ; preds = %if.end161.i.i, %if.end150.i.i.if.end169.i.i_crit_edge
  %engine_b.1.i.i = phi i16 [ %engine_b.0.i.i, %if.end150.i.i.if.end169.i.i_crit_edge ], [ %conv168.i.i, %if.end161.i.i ]
  %243 = and i16 %engine_b.1.i.i, -257
  %call173.i.i = call zeroext i1 @fwnode_property_present(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.119) #6
  %masksel554.i.i = select i1 %call173.i.i, i16 256, i16 0
  %spec.select465.i.i = or i16 %masksel554.i.i, %243
  %244 = ptrtoint ptr %engine_a65.i.i to i32
  call void @__asan_storeN_noabort(i32 %244, i32 2)
  store i16 %engine_a.6.i.i, ptr %engine_a65.i.i, align 1
  %245 = ptrtoint ptr %engine_b66.i.i to i32
  call void @__asan_storeN_noabort(i32 %245, i32 2)
  store i16 %spec.select465.i.i, ptr %engine_b66.i.i, align 1
  %call.i493.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.120, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i493.i.i)
  %tobool182.not.i.i = icmp eq i32 %call.i493.i.i, 0
  br i1 %tobool182.not.i.i, label %if.then183.i.i, label %if.end169.i.i.if.end192.i.i_crit_edge

if.end169.i.i.if.end192.i.i_crit_edge:            ; preds = %if.end169.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end192.i.i

if.then183.i.i:                                   ; preds = %if.end169.i.i
  %246 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %reg.i.i, align 4
  %248 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %247)
  %cmp.i494.i.i = icmp ugt i32 %247, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %249)
  %cmp1.i495.i.i = icmp ugt i32 %249, 3
  %or.cond.i.i.i = or i1 %cmp.i494.i.i, %cmp1.i495.i.i
  br i1 %or.cond.i.i.i, label %do.end189.i.i, label %iqs269_ati_mode_set.exit.thread.i.i

iqs269_ati_mode_set.exit.thread.i.i:              ; preds = %if.then183.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %engine_a4.i.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %247, i32 2
  %250 = ptrtoint ptr %engine_a4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %250)
  %251 = load i16, ptr %engine_a4.i.i.i, align 2
  %252 = and i16 %251, -769
  %mode.tr.i.i.i = trunc i32 %249 to i16
  %253 = shl nuw nsw i16 %mode.tr.i.i.i, 8
  %conv7.i.i.i = or i16 %252, %253
  store i16 %conv7.i.i.i, ptr %engine_a4.i.i.i, align 2
  %254 = ptrtoint ptr %ati_current.i.i.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 0, ptr %ati_current.i.i.i, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end192.i.i

do.end189.i.i:                                    ; preds = %if.then183.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev190.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev190.i.i, ptr noundef nonnull @.str.122, i32 noundef %247, i32 noundef %249) #9
  br label %if.then325.i

if.end192.i.i:                                    ; preds = %iqs269_ati_mode_set.exit.thread.i.i, %if.end169.i.i.if.end192.i.i_crit_edge
  %call.i498.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.124, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i498.i.i)
  %tobool194.not.i.i = icmp eq i32 %call.i498.i.i, 0
  br i1 %tobool194.not.i.i, label %if.then195.i.i, label %if.end192.i.i.if.end204.i.i_crit_edge

if.end192.i.i.if.end204.i.i_crit_edge:            ; preds = %if.end192.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end204.i.i

if.then195.i.i:                                   ; preds = %if.end192.i.i
  %255 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %reg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %256)
  %cmp.i499.i.i = icmp ugt i32 %256, 7
  br i1 %cmp.i499.i.i, label %if.then195.i.i.do.end201.i.i_crit_edge, label %if.end.i500.i.i

if.then195.i.i.do.end201.i.i_crit_edge:           ; preds = %if.then195.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end201.i.i

if.end.i500.i.i:                                  ; preds = %if.then195.i.i
  %257 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %val.i.i, align 4
  %259 = zext i32 %258 to i64
  call void @__sanitizer_cov_trace_switch(i64 %259, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %258, label %if.end.i500.i.i.do.end201.i.i_crit_edge [
    i32 75, label %if.end.i500.i.i.iqs269_ati_base_set.exit.i.i_crit_edge
    i32 100, label %sw.bb1.i.i.i
    i32 150, label %sw.bb2.i.i.i
    i32 200, label %sw.bb3.i.i.i
  ]

if.end.i500.i.i.iqs269_ati_base_set.exit.i.i_crit_edge: ; preds = %if.end.i500.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_ati_base_set.exit.i.i

if.end.i500.i.i.do.end201.i.i_crit_edge:          ; preds = %if.end.i500.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end201.i.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i500.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_ati_base_set.exit.i.i

sw.bb2.i.i.i:                                     ; preds = %if.end.i500.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_ati_base_set.exit.i.i

sw.bb3.i.i.i:                                     ; preds = %if.end.i500.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_ati_base_set.exit.i.i

iqs269_ati_base_set.exit.i.i:                     ; preds = %sw.bb3.i.i.i, %sw.bb2.i.i.i, %sw.bb1.i.i.i, %if.end.i500.i.i.iqs269_ati_base_set.exit.i.i_crit_edge
  %base.addr.0.i.i.i = phi i16 [ 192, %sw.bb3.i.i.i ], [ 128, %sw.bb2.i.i.i ], [ 64, %sw.bb1.i.i.i ], [ 0, %if.end.i500.i.i.iqs269_ati_base_set.exit.i.i_crit_edge ]
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %engine_b4.i.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %256, i32 3
  %260 = ptrtoint ptr %engine_b4.i.i.i to i32
  call void @__asan_load2_noabort(i32 %260)
  %261 = load i16, ptr %engine_b4.i.i.i, align 2
  %262 = and i16 %261, -193
  %or.i.i.i = or i16 %262, %base.addr.0.i.i.i
  store i16 %or.i.i.i, ptr %engine_b4.i.i.i, align 2
  %263 = ptrtoint ptr %ati_current.i.i.i to i32
  call void @__asan_store1_noabort(i32 %263)
  store i8 0, ptr %ati_current.i.i.i, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end204.i.i

do.end201.i.i:                                    ; preds = %if.end.i500.i.i.do.end201.i.i_crit_edge, %if.then195.i.i.do.end201.i.i_crit_edge
  %dev202.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %264 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %val.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev202.i.i, ptr noundef nonnull @.str.126, i32 noundef %256, i32 noundef %265) #9
  br label %if.then325.i

if.end204.i.i:                                    ; preds = %iqs269_ati_base_set.exit.i.i, %if.end192.i.i.if.end204.i.i_crit_edge
  %call.i504.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.128, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i504.i.i)
  %tobool206.not.i.i = icmp eq i32 %call.i504.i.i, 0
  br i1 %tobool206.not.i.i, label %if.then207.i.i, label %if.end204.i.i.if.end216.i.i_crit_edge

if.end204.i.i.if.end216.i.i_crit_edge:            ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end216.i.i

if.then207.i.i:                                   ; preds = %if.end204.i.i
  %266 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %reg.i.i, align 4
  %268 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %267)
  %cmp.i505.i.i = icmp ugt i32 %267, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2016, i32 %269)
  %cmp1.i506.i.i = icmp ugt i32 %269, 2016
  %or.cond.i507.i.i = or i1 %cmp.i505.i.i, %cmp1.i506.i.i
  br i1 %or.cond.i507.i.i, label %do.end213.i.i, label %iqs269_ati_target_set.exit.thread.i.i

iqs269_ati_target_set.exit.thread.i.i:            ; preds = %if.then207.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %engine_b4.i509.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %267, i32 3
  %270 = ptrtoint ptr %engine_b4.i509.i.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %engine_b4.i509.i.i, align 2
  %272 = and i16 %271, -64
  %div21.i.i.i = lshr i32 %269, 5
  %273 = trunc i32 %div21.i.i.i to i16
  %conv7.i510.i.i = or i16 %272, %273
  store i16 %conv7.i510.i.i, ptr %engine_b4.i509.i.i, align 2
  %274 = ptrtoint ptr %ati_current.i.i.i to i32
  call void @__asan_store1_noabort(i32 %274)
  store i8 0, ptr %ati_current.i.i.i, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end216.i.i

do.end213.i.i:                                    ; preds = %if.then207.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev214.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev214.i.i, ptr noundef nonnull @.str.130, i32 noundef %267, i32 noundef %269) #9
  br label %if.then325.i

if.end216.i.i:                                    ; preds = %iqs269_ati_target_set.exit.thread.i.i, %if.end204.i.i.if.end216.i.i_crit_edge
  %assoc_select.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %val.i514.i.i) #6
  %275 = call ptr @memset(ptr %val.i514.i.i, i32 255, i32 32)
  %call.i.i515.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.132, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i515.i.i)
  %cmp.i516.i.i = icmp slt i32 %call.i.i515.i.i, 0
  br i1 %cmp.i516.i.i, label %if.end216.i.i.if.end224.i.i_crit_edge, label %if.end.i518.i.i

if.end216.i.i.if.end224.i.i_crit_edge:            ; preds = %if.end216.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

if.end.i518.i.i:                                  ; preds = %if.end216.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i.i515.i.i)
  %cmp1.i517.i.i = icmp ugt i32 %call.i.i515.i.i, 8
  br i1 %cmp1.i517.i.i, label %if.end.i518.i.i.do.end222.i.i_crit_edge, label %if.end3.i521.i.i

if.end.i518.i.i.do.end222.i.i_crit_edge:          ; preds = %if.end.i518.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end3.i521.i.i:                                 ; preds = %if.end.i518.i.i
  %call4.i519.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.132, ptr noundef nonnull %val.i514.i.i, i32 noundef %call.i.i515.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i519.i.i)
  %tobool.not.i520.i.i = icmp eq i32 %call4.i519.i.i, 0
  br i1 %tobool.not.i520.i.i, label %if.end6.i523.i.i, label %if.end3.i521.i.i.do.end222.i.i_crit_edge

if.end3.i521.i.i.do.end222.i.i_crit_edge:         ; preds = %if.end3.i521.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end6.i523.i.i:                                 ; preds = %if.end3.i521.i.i
  %276 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 0, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i515.i.i)
  %cmp726.not.i522.i.i = icmp eq i32 %call.i.i515.i.i, 0
  br i1 %cmp726.not.i522.i.i, label %if.end6.i523.i.i.if.end224.i.i_crit_edge, label %for.body.i527.i.i

if.end6.i523.i.i.if.end224.i.i_crit_edge:         ; preds = %if.end6.i523.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i:                                ; preds = %if.end6.i523.i.i
  %277 = ptrtoint ptr %val.i514.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %val.i514.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %278)
  %cmp8.i526.i.i = icmp ugt i32 %278, 7
  br i1 %cmp8.i526.i.i, label %for.body.i527.i.i.do.end222.i.i_crit_edge, label %if.end10.i532.i.i

for.body.i527.i.i.do.end222.i.i_crit_edge:        ; preds = %for.body.i527.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i:                                ; preds = %for.body.i527.i.i
  %shl.i528.i.i = shl nuw nsw i32 1, %278
  %279 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %assoc_select.i.i, align 1
  %281 = trunc i32 %shl.i528.i.i to i8
  %conv12.i529.i.i = or i8 %280, %281
  store i8 %conv12.i529.i.i, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i = icmp eq i32 %call.i.i515.i.i, 1
  br i1 %exitcond.not.i531.i.i, label %if.end10.i532.i.i.if.end224.i.i_crit_edge, label %for.body.i527.i.i.1

if.end10.i532.i.i.if.end224.i.i_crit_edge:        ; preds = %if.end10.i532.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.1:                              ; preds = %if.end10.i532.i.i
  %282 = ptrtoint ptr %arrayidx.i525.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %arrayidx.i525.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %283)
  %cmp8.i526.i.i.1 = icmp ugt i32 %283, 7
  br i1 %cmp8.i526.i.i.1, label %for.body.i527.i.i.1.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.1

for.body.i527.i.i.1.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.1:                              ; preds = %for.body.i527.i.i.1
  %shl.i528.i.i.1 = shl nuw nsw i32 1, %283
  %284 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %assoc_select.i.i, align 1
  %286 = trunc i32 %shl.i528.i.i.1 to i8
  %conv12.i529.i.i.1 = or i8 %285, %286
  store i8 %conv12.i529.i.i.1, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.1 = icmp eq i32 %call.i.i515.i.i, 2
  br i1 %exitcond.not.i531.i.i.1, label %if.end10.i532.i.i.1.if.end224.i.i_crit_edge, label %for.body.i527.i.i.2

if.end10.i532.i.i.1.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.2:                              ; preds = %if.end10.i532.i.i.1
  %287 = ptrtoint ptr %arrayidx.i525.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx.i525.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %288)
  %cmp8.i526.i.i.2 = icmp ugt i32 %288, 7
  br i1 %cmp8.i526.i.i.2, label %for.body.i527.i.i.2.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.2

for.body.i527.i.i.2.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.2:                              ; preds = %for.body.i527.i.i.2
  %shl.i528.i.i.2 = shl nuw nsw i32 1, %288
  %289 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %assoc_select.i.i, align 1
  %291 = trunc i32 %shl.i528.i.i.2 to i8
  %conv12.i529.i.i.2 = or i8 %290, %291
  store i8 %conv12.i529.i.i.2, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.2 = icmp eq i32 %call.i.i515.i.i, 3
  br i1 %exitcond.not.i531.i.i.2, label %if.end10.i532.i.i.2.if.end224.i.i_crit_edge, label %for.body.i527.i.i.3

if.end10.i532.i.i.2.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.3:                              ; preds = %if.end10.i532.i.i.2
  %292 = ptrtoint ptr %arrayidx.i525.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %arrayidx.i525.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %293)
  %cmp8.i526.i.i.3 = icmp ugt i32 %293, 7
  br i1 %cmp8.i526.i.i.3, label %for.body.i527.i.i.3.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.3

for.body.i527.i.i.3.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.3:                              ; preds = %for.body.i527.i.i.3
  %shl.i528.i.i.3 = shl nuw nsw i32 1, %293
  %294 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %294)
  %295 = load i8, ptr %assoc_select.i.i, align 1
  %296 = trunc i32 %shl.i528.i.i.3 to i8
  %conv12.i529.i.i.3 = or i8 %295, %296
  store i8 %conv12.i529.i.i.3, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.3 = icmp eq i32 %call.i.i515.i.i, 4
  br i1 %exitcond.not.i531.i.i.3, label %if.end10.i532.i.i.3.if.end224.i.i_crit_edge, label %for.body.i527.i.i.4

if.end10.i532.i.i.3.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.4:                              ; preds = %if.end10.i532.i.i.3
  %297 = ptrtoint ptr %arrayidx.i525.i.i.4 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %arrayidx.i525.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %298)
  %cmp8.i526.i.i.4 = icmp ugt i32 %298, 7
  br i1 %cmp8.i526.i.i.4, label %for.body.i527.i.i.4.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.4

for.body.i527.i.i.4.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.4:                              ; preds = %for.body.i527.i.i.4
  %shl.i528.i.i.4 = shl nuw nsw i32 1, %298
  %299 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %assoc_select.i.i, align 1
  %301 = trunc i32 %shl.i528.i.i.4 to i8
  %conv12.i529.i.i.4 = or i8 %300, %301
  store i8 %conv12.i529.i.i.4, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.4 = icmp eq i32 %call.i.i515.i.i, 5
  br i1 %exitcond.not.i531.i.i.4, label %if.end10.i532.i.i.4.if.end224.i.i_crit_edge, label %for.body.i527.i.i.5

if.end10.i532.i.i.4.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.5:                              ; preds = %if.end10.i532.i.i.4
  %302 = ptrtoint ptr %arrayidx.i525.i.i.5 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %arrayidx.i525.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %303)
  %cmp8.i526.i.i.5 = icmp ugt i32 %303, 7
  br i1 %cmp8.i526.i.i.5, label %for.body.i527.i.i.5.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.5

for.body.i527.i.i.5.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.5:                              ; preds = %for.body.i527.i.i.5
  %shl.i528.i.i.5 = shl nuw nsw i32 1, %303
  %304 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %304)
  %305 = load i8, ptr %assoc_select.i.i, align 1
  %306 = trunc i32 %shl.i528.i.i.5 to i8
  %conv12.i529.i.i.5 = or i8 %305, %306
  store i8 %conv12.i529.i.i.5, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.5 = icmp eq i32 %call.i.i515.i.i, 6
  br i1 %exitcond.not.i531.i.i.5, label %if.end10.i532.i.i.5.if.end224.i.i_crit_edge, label %for.body.i527.i.i.6

if.end10.i532.i.i.5.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.6:                              ; preds = %if.end10.i532.i.i.5
  %307 = ptrtoint ptr %arrayidx.i525.i.i.6 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx.i525.i.i.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %308)
  %cmp8.i526.i.i.6 = icmp ugt i32 %308, 7
  br i1 %cmp8.i526.i.i.6, label %for.body.i527.i.i.6.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.6

for.body.i527.i.i.6.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.6:                              ; preds = %for.body.i527.i.i.6
  %shl.i528.i.i.6 = shl nuw nsw i32 1, %308
  %309 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %assoc_select.i.i, align 1
  %311 = trunc i32 %shl.i528.i.i.6 to i8
  %conv12.i529.i.i.6 = or i8 %310, %311
  store i8 %conv12.i529.i.i.6, ptr %assoc_select.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i.i515.i.i)
  %exitcond.not.i531.i.i.6 = icmp eq i32 %call.i.i515.i.i, 7
  br i1 %exitcond.not.i531.i.i.6, label %if.end10.i532.i.i.6.if.end224.i.i_crit_edge, label %for.body.i527.i.i.7

if.end10.i532.i.i.6.if.end224.i.i_crit_edge:      ; preds = %if.end10.i532.i.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end224.i.i

for.body.i527.i.i.7:                              ; preds = %if.end10.i532.i.i.6
  %312 = ptrtoint ptr %arrayidx.i525.i.i.7 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %arrayidx.i525.i.i.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %313)
  %cmp8.i526.i.i.7 = icmp ugt i32 %313, 7
  br i1 %cmp8.i526.i.i.7, label %for.body.i527.i.i.7.do.end222.i.i_crit_edge, label %if.end10.i532.i.i.7

for.body.i527.i.i.7.do.end222.i.i_crit_edge:      ; preds = %for.body.i527.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end222.i.i

if.end10.i532.i.i.7:                              ; preds = %for.body.i527.i.i.7
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i528.i.i.7 = shl nuw nsw i32 1, %313
  %314 = ptrtoint ptr %assoc_select.i.i to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %assoc_select.i.i, align 1
  %316 = trunc i32 %shl.i528.i.i.7 to i8
  %conv12.i529.i.i.7 = or i8 %315, %316
  store i8 %conv12.i529.i.i.7, ptr %assoc_select.i.i, align 1
  br label %if.end224.i.i

do.end222.i.i:                                    ; preds = %for.body.i527.i.i.7.do.end222.i.i_crit_edge, %for.body.i527.i.i.6.do.end222.i.i_crit_edge, %for.body.i527.i.i.5.do.end222.i.i_crit_edge, %for.body.i527.i.i.4.do.end222.i.i_crit_edge, %for.body.i527.i.i.3.do.end222.i.i_crit_edge, %for.body.i527.i.i.2.do.end222.i.i_crit_edge, %for.body.i527.i.i.1.do.end222.i.i_crit_edge, %for.body.i527.i.i.do.end222.i.i_crit_edge, %if.end3.i521.i.i.do.end222.i.i_crit_edge, %if.end.i518.i.i.do.end222.i.i_crit_edge
  %retval.0.i533.i.i = phi i32 [ -22, %for.body.i527.i.i.7.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.6.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.5.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.4.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.3.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.2.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.1.do.end222.i.i_crit_edge ], [ -22, %for.body.i527.i.i.do.end222.i.i_crit_edge ], [ -22, %if.end.i518.i.i.do.end222.i.i_crit_edge ], [ %call4.i519.i.i, %if.end3.i521.i.i.do.end222.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i514.i.i) #6
  %dev223.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %317 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev223.i.i, ptr noundef nonnull @.str.134, i32 noundef %318, i32 noundef %retval.0.i533.i.i) #9
  br label %if.then325.i

if.end224.i.i:                                    ; preds = %if.end10.i532.i.i.7, %if.end10.i532.i.i.6.if.end224.i.i_crit_edge, %if.end10.i532.i.i.5.if.end224.i.i_crit_edge, %if.end10.i532.i.i.4.if.end224.i.i_crit_edge, %if.end10.i532.i.i.3.if.end224.i.i_crit_edge, %if.end10.i532.i.i.2.if.end224.i.i_crit_edge, %if.end10.i532.i.i.1.if.end224.i.i_crit_edge, %if.end10.i532.i.i.if.end224.i.i_crit_edge, %if.end6.i523.i.i.if.end224.i.i_crit_edge, %if.end216.i.i.if.end224.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %val.i514.i.i) #6
  %call.i535.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef %ch_node.0699.i, ptr noundef nonnull @.str.136, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i535.i.i)
  %tobool226.not.i.i = icmp eq i32 %call.i535.i.i, 0
  br i1 %tobool226.not.i.i, label %if.then227.i.i, label %if.end224.i.i.if.end237.i.i_crit_edge

if.end224.i.i.if.end237.i.i_crit_edge:            ; preds = %if.end224.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i.i

if.then227.i.i:                                   ; preds = %if.end224.i.i
  %319 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %320)
  %cmp228.i.i = icmp ugt i32 %320, 255
  br i1 %cmp228.i.i, label %do.end233.i.i, label %if.end235.i.i

do.end233.i.i:                                    ; preds = %if.then227.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev234.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %321 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev234.i.i, ptr noundef nonnull @.str.138, i32 noundef %322, i32 noundef %320) #9
  br label %if.then325.i

if.end235.i.i:                                    ; preds = %if.then227.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv236.i.i = trunc i32 %320 to i8
  %assoc_weight.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 8
  %323 = ptrtoint ptr %assoc_weight.i.i to i32
  call void @__asan_store1_noabort(i32 %323)
  store i8 %conv236.i.i, ptr %assoc_weight.i.i, align 1
  br label %if.end237.i.i

if.end237.i.i:                                    ; preds = %if.end235.i.i, %if.end224.i.i.if.end237.i.i_crit_edge
  %hyst263.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end237.i.i
  %i.0556.i.i = phi i32 [ 0, %if.end237.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx240.i.i = getelementptr [6 x %struct.iqs269_event_desc], ptr @iqs269_events, i32 0, i32 %i.0556.i.i
  %324 = ptrtoint ptr %arrayidx240.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %arrayidx240.i.i, align 4
  %call241.i.i = call ptr @fwnode_get_named_child_node(ptr noundef %ch_node.0699.i, ptr noundef %325) #6
  %tobool242.not.i.i = icmp eq ptr %call241.i.i, null
  br i1 %tobool242.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end244.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end244.i.i:                                    ; preds = %for.body.i.i
  %call.i536.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call241.i.i, ptr noundef nonnull @.str.140, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i536.i.i)
  %tobool246.not.i.i = icmp eq i32 %call.i536.i.i, 0
  br i1 %tobool246.not.i.i, label %if.then247.i.i, label %if.end244.i.i.if.end259.i.i_crit_edge

if.end244.i.i.if.end259.i.i_crit_edge:            ; preds = %if.end244.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end259.i.i

if.then247.i.i:                                   ; preds = %if.end244.i.i
  %326 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %327)
  %cmp248.i.i = icmp ugt i32 %327, 255
  br i1 %cmp248.i.i, label %do.end253.i.i, label %if.end255.i.i

do.end253.i.i:                                    ; preds = %if.then247.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev254.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %328 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev254.i.i, ptr noundef nonnull @.str.142, i32 noundef %329, i32 noundef %327) #9
  br label %if.then325.i

if.end255.i.i:                                    ; preds = %if.then247.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv256.i.i = trunc i32 %327 to i8
  %th_offs.i.i = getelementptr [6 x %struct.iqs269_event_desc], ptr @iqs269_events, i32 0, i32 %i.0556.i.i, i32 2
  %330 = ptrtoint ptr %th_offs.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %th_offs.i.i, align 4
  %arrayidx258.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 4, i32 %119, i32 5, i32 %331
  %332 = ptrtoint ptr %arrayidx258.i.i to i32
  call void @__asan_store1_noabort(i32 %332)
  store i8 %conv256.i.i, ptr %arrayidx258.i.i, align 1
  br label %if.end259.i.i

if.end259.i.i:                                    ; preds = %if.end255.i.i, %if.end244.i.i.if.end259.i.i_crit_edge
  %call.i537.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call241.i.i, ptr noundef nonnull @.str.144, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i537.i.i)
  %tobool261.not.i.i = icmp eq i32 %call.i537.i.i, 0
  br i1 %tobool261.not.i.i, label %if.then262.i.i, label %if.end259.i.i.if.end299.i.i_crit_edge

if.end259.i.i.if.end299.i.i_crit_edge:            ; preds = %if.end259.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end299.i.i

if.then262.i.i:                                   ; preds = %if.end259.i.i
  %333 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %val.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %334)
  %cmp264.i.i = icmp ugt i32 %334, 15
  br i1 %cmp264.i.i, label %do.end269.i.i, label %if.end271.i.i

do.end269.i.i:                                    ; preds = %if.then262.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev270.i.i = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 4
  %335 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %reg.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev270.i.i, ptr noundef nonnull @.str.146, i32 noundef %336, i32 noundef %334) #9
  br label %if.then325.i

if.end271.i.i:                                    ; preds = %if.then262.i.i
  %337 = zext i32 %i.0556.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %337, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %i.0556.i.i, label %if.end271.i.i.if.end299.i.i_crit_edge [
    i32 4, label %if.end271.i.i.if.then276.i.i_crit_edge
    i32 5, label %if.end271.i.i.if.then276.i.i_crit_edge788
    i32 2, label %if.end271.i.i.if.then290.i.i_crit_edge
    i32 3, label %if.end271.i.i.if.then290.i.i_crit_edge789
  ]

if.end271.i.i.if.then290.i.i_crit_edge789:        ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then290.i.i

if.end271.i.i.if.then290.i.i_crit_edge:           ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then290.i.i

if.end271.i.i.if.then276.i.i_crit_edge788:        ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then276.i.i

if.end271.i.i.if.then276.i.i_crit_edge:           ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then276.i.i

if.end271.i.i.if.end299.i.i_crit_edge:            ; preds = %if.end271.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end299.i.i

if.then276.i.i:                                   ; preds = %if.end271.i.i.if.then276.i.i_crit_edge, %if.end271.i.i.if.then276.i.i_crit_edge788
  %338 = ptrtoint ptr %hyst263.i.i to i32
  call void @__asan_load1_noabort(i32 %338)
  %339 = load i8, ptr %hyst263.i.i, align 1
  %340 = and i8 %339, 15
  %.tr463.i.i = trunc i32 %334 to i8
  %341 = shl nuw i8 %.tr463.i.i, 4
  %conv283.i.i = or i8 %340, %341
  br label %if.end299.sink.split.i.i

if.then290.i.i:                                   ; preds = %if.end271.i.i.if.then290.i.i_crit_edge, %if.end271.i.i.if.then290.i.i_crit_edge789
  %342 = ptrtoint ptr %hyst263.i.i to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %hyst263.i.i, align 1
  %344 = and i8 %343, -16
  %345 = trunc i32 %334 to i8
  %conv296.i.i = or i8 %344, %345
  br label %if.end299.sink.split.i.i

if.end299.sink.split.i.i:                         ; preds = %if.then290.i.i, %if.then276.i.i
  %conv296.sink.i.i = phi i8 [ %conv296.i.i, %if.then290.i.i ], [ %conv283.i.i, %if.then276.i.i ]
  %346 = ptrtoint ptr %hyst263.i.i to i32
  call void @__asan_store1_noabort(i32 %346)
  store i8 %conv296.sink.i.i, ptr %hyst263.i.i, align 1
  br label %if.end299.i.i

if.end299.i.i:                                    ; preds = %if.end299.sink.split.i.i, %if.end271.i.i.if.end299.i.i_crit_edge, %if.end259.i.i.if.end299.i.i_crit_edge
  %call.i538.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call241.i.i, ptr noundef nonnull @.str.148, ptr noundef nonnull %val.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i538.i.i)
  %tobool301.not.i.i = icmp eq i32 %call.i538.i.i, 0
  br i1 %tobool301.not.i.i, label %if.end303.i.i, label %if.end299.i.i.for.inc.i.i_crit_edge

if.end299.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end299.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end303.i.i:                                    ; preds = %if.end299.i.i
  %347 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %reg.i.i, align 4
  %349 = zext i32 %348 to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %348, label %if.end303.i.i.sw.default316.i.i_crit_edge [
    i32 7, label %sw.bb304.i.i
    i32 6, label %if.end303.i.i.sw.bb311.i.i_crit_edge
  ]

if.end303.i.i.sw.bb311.i.i_crit_edge:             ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb311.i.i

if.end303.i.i.sw.default316.i.i_crit_edge:        ; preds = %if.end303.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default316.i.i

sw.bb304.i.i:                                     ; preds = %if.end303.i.i
  %350 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_load1_noabort(i32 %350)
  %351 = load i8, ptr %hall_enable.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %351)
  %tobool305.not.i.i = icmp eq i8 %351, 0
  br i1 %tobool305.not.i.i, label %sw.bb304.i.i.sw.default316.i.i_crit_edge, label %if.then306.i.i

sw.bb304.i.i.sw.default316.i.i_crit_edge:         ; preds = %sw.bb304.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default316.i.i

if.then306.i.i:                                   ; preds = %sw.bb304.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %352 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %val.i.i, align 4
  %arrayidx307.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 3, i32 %i.0556.i.i
  %354 = ptrtoint ptr %arrayidx307.i.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 %353, ptr %arrayidx307.i.i, align 4
  %enabled.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 3, i32 %i.0556.i.i, i32 1
  %355 = ptrtoint ptr %enabled.i.i to i32
  call void @__asan_store1_noabort(i32 %355)
  store i8 1, ptr %enabled.i.i, align 4
  br label %sw.bb311.i.i

sw.bb311.i.i:                                     ; preds = %if.then306.i.i, %if.end303.i.i.sw.bb311.i.i_crit_edge
  %356 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_load1_noabort(i32 %356)
  %.pr.i.i = load i8, ptr %hall_enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i)
  %tobool313.not.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %tobool313.not.i.i, label %sw.bb311.i.i.sw.default316.i.i_crit_edge, label %sw.bb311.i.i.sw.epilog320.i.i_crit_edge

sw.bb311.i.i.sw.epilog320.i.i_crit_edge:          ; preds = %sw.bb311.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog320.i.i

sw.bb311.i.i.sw.default316.i.i_crit_edge:         ; preds = %sw.bb311.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default316.i.i

sw.default316.i.i:                                ; preds = %sw.bb311.i.i.sw.default316.i.i_crit_edge, %sw.bb304.i.i.sw.default316.i.i_crit_edge, %if.end303.i.i.sw.default316.i.i_crit_edge
  %357 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %val.i.i, align 4
  %mul317.i.i = shl nuw nsw i32 %i.0556.i.i, 3
  %add318.i.i = add i32 %348, %mul317.i.i
  %arrayidx319.i.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 8, i32 %add318.i.i
  %359 = ptrtoint ptr %arrayidx319.i.i to i32
  call void @__asan_store4_noabort(i32 %359)
  store i32 %358, ptr %arrayidx319.i.i, align 4
  br label %sw.epilog320.i.i

sw.epilog320.i.i:                                 ; preds = %sw.default316.i.i, %sw.bb311.i.i.sw.epilog320.i.i_crit_edge
  %mask.i.i = getelementptr [6 x %struct.iqs269_event_desc], ptr @iqs269_events, i32 0, i32 %i.0556.i.i, i32 4
  %360 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %mask.i.i, align 1
  %neg.i.i = xor i8 %361, -1
  %362 = ptrtoint ptr %event_mask.i to i32
  call void @__asan_load1_noabort(i32 %362)
  %363 = load i8, ptr %event_mask.i, align 1
  %and325.i.i = and i8 %363, %neg.i.i
  store i8 %and325.i.i, ptr %event_mask.i, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %sw.epilog320.i.i, %if.end299.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0556.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 6
  br i1 %exitcond.not.i.i, label %for.inc.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.then325.i:                                     ; preds = %do.end269.i.i, %do.end253.i.i, %do.end233.i.i, %do.end222.i.i, %do.end213.i.i, %do.end201.i.i, %do.end189.i.i, %do.end159.i.i, %do.end141.i.i, %do.end122.i.i, %do.end102.i.i, %do.end62.i.i, %do.end54.i.i, %if.end42.i.i.if.then325.i_crit_edge, %do.end5.i.i, %do.end.i.i
  %retval.4.i.ph.i = phi i32 [ -22, %do.end269.i.i ], [ -22, %do.end102.i.i ], [ -22, %do.end122.i.i ], [ -22, %do.end141.i.i ], [ -22, %do.end159.i.i ], [ -22, %do.end189.i.i ], [ -22, %do.end201.i.i ], [ -22, %do.end213.i.i ], [ -22, %do.end233.i.i ], [ -22, %do.end253.i.i ], [ %retval.0.i533.i.i, %do.end222.i.i ], [ %retval.0.i487.i.i, %do.end62.i.i ], [ %retval.0.i.i.i, %do.end54.i.i ], [ -22, %do.end5.i.i ], [ %call.i.i.i, %do.end.i.i ], [ %call45.i.i, %if.end42.i.i.if.then325.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  call void @fwnode_handle_put(ptr noundef nonnull %ch_node.0699.i) #6
  br label %iqs269_parse_prop.exit.thread

for.inc.i:                                        ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  %call328.i = call ptr @device_get_next_child_node(ptr noundef %dev.i, ptr noundef nonnull %ch_node.0699.i) #6
  %tobool322.not.i = icmp eq ptr %call328.i, null
  br i1 %tobool322.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end315.i.for.end.i_crit_edge
  %364 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %active.i, align 1
  %redo_ati.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 5, i32 19
  %366 = ptrtoint ptr %redo_ati.i to i32
  call void @__asan_store1_noabort(i32 %366)
  store i8 %365, ptr %redo_ati.i, align 1
  %367 = ptrtoint ptr %sys_reg1.i to i32
  call void @__asan_loadN_noabort(i32 %367, i32 2)
  %368 = load i16, ptr %sys_reg1.i, align 1
  %call332.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.76) #6
  %369 = and i16 %368, 32767
  %.sink.i = select i1 %call332.i, i32 4, i32 1
  %masksel924.i = select i1 %call332.i, i16 -32768, i16 0
  %general.0.i = or i16 %masksel924.i, %369
  %370 = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 10
  %371 = ptrtoint ptr %370 to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %.sink.i, ptr %370, align 4
  %372 = and i16 %general.0.i, -30721
  %call.i579.i = call i32 @device_property_read_u32_array(ptr noundef %dev.i, ptr noundef nonnull @.str.77, ptr noundef nonnull %val.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i579.i)
  %tobool353.not.i = icmp eq i32 %call.i579.i, 0
  br i1 %tobool353.not.i, label %if.then354.i, label %for.end.i.if.end370.i_crit_edge

for.end.i.if.end370.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end370.i

if.then354.i:                                     ; preds = %for.end.i
  %373 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %374)
  %cmp355.i = icmp ugt i32 %374, 7
  br i1 %cmp355.i, label %do.end360.i, label %if.end362.i

do.end360.i:                                      ; preds = %if.then354.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.79, i32 noundef %374) #9
  br label %iqs269_parse_prop.exit.thread

if.end362.i:                                      ; preds = %if.then354.i
  call void @__sanitizer_cov_trace_pc() #8
  %375 = and i16 %general.0.i, -32513
  %.tr561.i = trunc i32 %374 to i16
  %376 = shl nuw nsw i16 %.tr561.i, 8
  %conv369.i = or i16 %376, %375
  br label %if.end370.i

if.end370.i:                                      ; preds = %if.end362.i, %for.end.i.if.end370.i_crit_edge
  %general.1.i = phi i16 [ %372, %for.end.i.if.end370.i_crit_edge ], [ %conv369.i, %if.end362.i ]
  %377 = and i16 %general.1.i, -65
  %call375.i = call zeroext i1 @device_property_present(ptr noundef %dev.i, ptr noundef nonnull @.str.81) #6
  %masksel589.i = select i1 %call375.i, i16 64, i16 0
  %spec.select565.i = or i16 %masksel589.i, %377
  %378 = ptrtoint ptr %slider_select.i to i32
  call void @__asan_load1_noabort(i32 %378)
  %379 = load i8, ptr %slider_select.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %379)
  %tobool387.not.i = icmp eq i8 %379, 0
  br i1 %tobool387.not.i, label %lor.lhs.false.i, label %if.end370.i.if.then392.i_crit_edge

if.end370.i.if.then392.i_crit_edge:               ; preds = %if.end370.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then392.i

lor.lhs.false.i:                                  ; preds = %if.end370.i
  %380 = or i16 %spec.select565.i, 32
  %381 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %arrayidx319.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %382)
  %tobool391.not.i = icmp eq i8 %382, 0
  br i1 %tobool391.not.i, label %lor.lhs.false.i.if.end30_crit_edge, label %lor.lhs.false.i.if.then392.i_crit_edge

lor.lhs.false.i.if.then392.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then392.i

lor.lhs.false.i.if.end30_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then392.i:                                     ; preds = %lor.lhs.false.i.if.then392.i_crit_edge, %if.end370.i.if.then392.i_crit_edge
  %383 = or i16 %spec.select565.i, 48
  br label %if.end30

iqs269_parse_prop.exit.thread:                    ; preds = %do.end360.i, %if.then325.i, %do.end306.i, %do.end276.i, %do.end246.i, %do.end216.i, %do.end159.i, %do.end144.i, %do.end130.i, %do.end116.i, %do.end102.i, %do.end81.i, %do.end59.i, %do.end37.i, %do.end20.i, %if.end7.i.iqs269_parse_prop.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call8.i, %if.end7.i.iqs269_parse_prop.exit.thread_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end20.i ], [ -22, %do.end37.i ], [ -22, %do.end59.i ], [ -22, %do.end81.i ], [ -22, %do.end102.i ], [ -22, %do.end116.i ], [ -22, %do.end130.i ], [ -22, %do.end144.i ], [ -22, %do.end159.i ], [ -22, %do.end216.i ], [ -22, %do.end246.i ], [ -22, %do.end276.i ], [ -22, %do.end306.i ], [ -22, %do.end360.i ], [ %retval.4.i.ph.i, %if.then325.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup

if.end30:                                         ; preds = %if.then392.i, %lor.lhs.false.i.if.end30_crit_edge
  %general.3.i = phi i16 [ %383, %if.then392.i ], [ %380, %lor.lhs.false.i.if.end30_crit_edge ]
  %384 = or i16 %general.3.i, 5
  %385 = ptrtoint ptr %sys_reg1.i to i32
  call void @__asan_storeN_noabort(i32 %385, i32 2)
  store i16 %384, ptr %sys_reg1.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call31 = call fastcc i32 @iqs269_dev_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call31) #9
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %386 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags.i) #6
  %388 = getelementptr inbounds %struct.iqs269_flags, ptr %flags.i, i32 0, i32 3, i32 1
  %dev.i104 = getelementptr inbounds %struct.i2c_client, ptr %387, i32 0, i32 4
  %389 = ptrtoint ptr %flags.i to i32
  call void @__asan_store8_noabort(i32 %389)
  store i64 -1, ptr %flags.i, align 8
  %call.i105 = call ptr @devm_input_allocate_device(ptr noundef %dev.i104) #6
  %keypad.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 6
  %390 = ptrtoint ptr %keypad.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store ptr %call.i105, ptr %keypad.i, align 4
  %tobool.not.i106 = icmp eq ptr %call.i105, null
  br i1 %tobool.not.i106, label %if.end38.iqs269_input_init.exit.thread_crit_edge, label %if.end.i108

if.end38.iqs269_input_init.exit.thread_crit_edge: ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_input_init.exit.thread

if.end.i108:                                      ; preds = %if.end38
  %keycodemax.i = getelementptr inbounds %struct.input_dev, ptr %call.i105, i32 0, i32 15
  %391 = ptrtoint ptr %keycodemax.i to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 48, ptr %keycodemax.i, align 4
  %keycode4.i = getelementptr inbounds %struct.iqs269_private, ptr %call.i, i32 0, i32 8
  %392 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load ptr, ptr %keypad.i, align 4
  %keycode6.i = getelementptr inbounds %struct.input_dev, ptr %393, i32 0, i32 17
  %394 = ptrtoint ptr %keycode6.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store ptr %keycode4.i, ptr %keycode6.i, align 4
  %395 = load ptr, ptr %keypad.i, align 4
  %keycodesize.i = getelementptr inbounds %struct.input_dev, ptr %395, i32 0, i32 16
  %396 = ptrtoint ptr %keycodesize.i to i32
  call void @__asan_store4_noabort(i32 %396)
  store i32 4, ptr %keycodesize.i, align 8
  %397 = load ptr, ptr %keypad.i, align 4
  %398 = ptrtoint ptr %397 to i32
  call void @__asan_store4_noabort(i32 %398)
  store ptr @.str.155, ptr %397, align 8
  %399 = load ptr, ptr %keypad.i, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %399, i32 0, i32 3
  %400 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 24, ptr %id.i, align 4
  %401 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %hall_enable.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %402)
  %tobool10.not.i = icmp eq i8 %402, 0
  br i1 %tobool10.not.i, label %if.end.i108.for.body.i112.preheader_crit_edge, label %if.then11.i

if.end.i108.for.body.i112.preheader_crit_edge:    ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i112.preheader

for.body.i112.preheader:                          ; preds = %if.then11.i.for.body.i112.preheader_crit_edge, %if.end.i108.for.body.i112.preheader_crit_edge
  br label %for.body.i112

if.then11.i:                                      ; preds = %if.end.i108
  %403 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_raw_read(ptr noundef %404, i32 noundef 2, ptr noundef nonnull %flags.i, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.then11.i.for.body.i112.preheader_crit_edge, label %do.end.i110

if.then11.i.for.body.i112.preheader_crit_edge:    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i112.preheader

do.end.i110:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104, ptr noundef nonnull @.str.156, i32 noundef %call12.i) #9
  br label %iqs269_input_init.exit.thread

for.body.i112:                                    ; preds = %for.inc59.i.for.body.i112_crit_edge, %for.body.i112.preheader
  %i.0192.i = phi i32 [ %inc60.i, %for.inc59.i.for.body.i112_crit_edge ], [ 0, %for.body.i112.preheader ]
  %405 = ptrtoint ptr %388 to i32
  call void @__asan_load1_noabort(i32 %405)
  %406 = load i8, ptr %388, align 1
  %407 = lshr i32 21, %i.0192.i
  %408 = trunc i32 %407 to i8
  %409 = and i8 %408, 1
  %neg.i = sub nsw i8 0, %409
  %spec.select.i111 = xor i8 %406, %neg.i
  %st_offs.i = getelementptr [6 x %struct.iqs269_event_desc], ptr @iqs269_events, i32 0, i32 %i.0192.i, i32 1
  %410 = ptrtoint ptr %st_offs.i to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %st_offs.i, align 4
  %arrayidx25.i = getelementptr %struct.iqs269_flags, ptr %flags.i, i32 0, i32 3, i32 %411
  %412 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %arrayidx25.i, align 1
  %and186.i = and i8 %spec.select.i111, %413
  %arrayidx29.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 3, i32 %i.0192.i
  %414 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx29.i, align 4
  %mul.i = shl i32 %i.0192.i, 3
  %enabled.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 3, i32 %i.0192.i, i32 1
  %416 = lshr i8 %and186.i, 7
  %417 = zext i8 %416 to i32
  br label %for.body33.i

for.body33.i:                                     ; preds = %for.inc.i113.for.body33.i_crit_edge, %for.body.i112
  %j.0188.i = phi i32 [ 0, %for.body.i112 ], [ %inc.i, %for.inc.i113.for.body33.i_crit_edge ]
  %add.i = add nuw nsw i32 %j.0188.i, %mul.i
  %arrayidx35.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 8, i32 %add.i
  %418 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %arrayidx35.i, align 4
  %420 = zext i32 %j.0188.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %420, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %j.0188.i, label %sw.default.i [
    i32 7, label %sw.bb.i
    i32 6, label %for.body33.i.sw.bb49.i_crit_edge
  ]

for.body33.i.sw.bb49.i_crit_edge:                 ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49.i

sw.bb.i:                                          ; preds = %for.body33.i
  %421 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_load1_noabort(i32 %421)
  %422 = load i8, ptr %hall_enable.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %422)
  %tobool37.not.i = icmp eq i8 %422, 0
  br i1 %tobool37.not.i, label %sw.bb.i.sw.bb49.i_crit_edge, label %land.lhs.true.i

sw.bb.i.sw.bb49.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49.i

land.lhs.true.i:                                  ; preds = %sw.bb.i
  %423 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %423)
  %424 = load i8, ptr %enabled.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %424)
  %tobool41.not.i = icmp eq i8 %424, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.sw.bb49.i_crit_edge, label %if.then43.i

land.lhs.true.i.sw.bb49.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb49.i

if.then43.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %425 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %keypad.i, align 4
  call void @input_set_capability(ptr noundef %426, i32 noundef 5, i32 noundef %415) #6
  %427 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %keypad.i, align 4
  call void @input_event(ptr noundef %428, i32 noundef 5, i32 noundef %415, i32 noundef %417) #6
  br label %sw.bb49.i

sw.bb49.i:                                        ; preds = %if.then43.i, %land.lhs.true.i.sw.bb49.i_crit_edge, %sw.bb.i.sw.bb49.i_crit_edge, %for.body33.i.sw.bb49.i_crit_edge
  %429 = ptrtoint ptr %hall_enable.i to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %hall_enable.i, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %430)
  %tobool51.not.i = icmp ne i8 %430, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %cmp54.not.i = icmp eq i32 %419, 0
  %or.cond.i = select i1 %tobool51.not.i, i1 true, i1 %cmp54.not.i
  br i1 %or.cond.i, label %sw.bb49.i.for.inc.i113_crit_edge, label %sw.bb49.i.if.then56.i_crit_edge

sw.bb49.i.if.then56.i_crit_edge:                  ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then56.i

sw.bb49.i.for.inc.i113_crit_edge:                 ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i113

sw.default.i:                                     ; preds = %for.body33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %cmp54.not.old.i = icmp eq i32 %419, 0
  br i1 %cmp54.not.old.i, label %sw.default.i.for.inc.i113_crit_edge, label %sw.default.i.if.then56.i_crit_edge

sw.default.i.if.then56.i_crit_edge:               ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then56.i

sw.default.i.for.inc.i113_crit_edge:              ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i113

if.then56.i:                                      ; preds = %sw.default.i.if.then56.i_crit_edge, %sw.bb49.i.if.then56.i_crit_edge
  %431 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load ptr, ptr %keypad.i, align 4
  call void @input_set_capability(ptr noundef %432, i32 noundef 1, i32 noundef %419) #6
  br label %for.inc.i113

for.inc.i113:                                     ; preds = %if.then56.i, %sw.default.i.for.inc.i113_crit_edge, %sw.bb49.i.for.inc.i113_crit_edge
  %inc.i = add nuw nsw i32 %j.0188.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.inc59.i, label %for.inc.i113.for.body33.i_crit_edge

for.inc.i113.for.body33.i_crit_edge:              ; preds = %for.inc.i113
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body33.i

for.inc59.i:                                      ; preds = %for.inc.i113
  %inc60.i = add nuw nsw i32 %i.0192.i, 1
  %exitcond196.not.i = icmp eq i32 %inc60.i, 6
  br i1 %exitcond196.not.i, label %for.end61.i, label %for.inc59.i.for.body.i112_crit_edge

for.inc59.i.for.body.i112_crit_edge:              ; preds = %for.inc59.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i112

for.end61.i:                                      ; preds = %for.inc59.i
  %433 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %keypad.i, align 4
  call void @input_event(ptr noundef %434, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %435 = ptrtoint ptr %keypad.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %keypad.i, align 4
  %call64.i = call i32 @input_register_device(ptr noundef %436) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %for.body75.preheader.i, label %do.end69.i

for.body75.preheader.i:                           ; preds = %for.end61.i
  %437 = ptrtoint ptr %slider_select.i to i32
  call void @__asan_load1_noabort(i32 %437)
  %438 = load i8, ptr %slider_select.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %438)
  %tobool77.not.i = icmp eq i8 %438, 0
  br i1 %tobool77.not.i, label %for.body75.preheader.i.for.inc110.i_crit_edge, label %if.end79.i

for.body75.preheader.i.for.inc110.i_crit_edge:    ; preds = %for.body75.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc110.i

do.end69.i:                                       ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104, ptr noundef nonnull @.str.159, i32 noundef %call64.i) #9
  br label %iqs269_input_init.exit.thread

if.end79.i:                                       ; preds = %for.body75.preheader.i
  %call81.i = call ptr @devm_input_allocate_device(ptr noundef %dev.i104) #6
  %arrayidx82.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 7, i32 0
  %439 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_store4_noabort(i32 %439)
  store ptr %call81.i, ptr %arrayidx82.i, align 4
  %tobool85.not.i = icmp eq ptr %call81.i, null
  br i1 %tobool85.not.i, label %if.end79.i.iqs269_input_init.exit.thread_crit_edge, label %if.end87.i

if.end79.i.iqs269_input_init.exit.thread_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_input_init.exit.thread

if.end87.i:                                       ; preds = %if.end79.i
  %440 = ptrtoint ptr %call81.i to i32
  call void @__asan_store4_noabort(i32 %440)
  store ptr @.str.162, ptr %call81.i, align 8
  %441 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %441)
  %442 = load ptr, ptr %arrayidx82.i, align 4
  %id94.i = getelementptr inbounds %struct.input_dev, ptr %442, i32 0, i32 3
  %443 = ptrtoint ptr %id94.i to i32
  call void @__asan_store2_noabort(i32 %443)
  store i16 24, ptr %id94.i, align 4
  %444 = load ptr, ptr %arrayidx82.i, align 4
  call void @input_set_capability(ptr noundef %444, i32 noundef 1, i32 noundef 330) #6
  %445 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load ptr, ptr %arrayidx82.i, align 4
  call void @input_set_abs_params(ptr noundef %446, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %447 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %arrayidx82.i, align 4
  %call102.i = call i32 @input_register_device(ptr noundef %448) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.i)
  %tobool103.not.i = icmp eq i32 %call102.i, 0
  br i1 %tobool103.not.i, label %if.end87.i.for.inc110.i_crit_edge, label %if.end87.i.do.end107.i_crit_edge

if.end87.i.do.end107.i_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107.i

if.end87.i.for.inc110.i_crit_edge:                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc110.i

do.end107.i:                                      ; preds = %if.end87.1.i.do.end107.i_crit_edge, %if.end87.i.do.end107.i_crit_edge
  %i.1193.lcssa195.i = phi i32 [ 0, %if.end87.i.do.end107.i_crit_edge ], [ 1, %if.end87.1.i.do.end107.i_crit_edge ]
  %call102.lcssa.i = phi i32 [ %call102.i, %if.end87.i.do.end107.i_crit_edge ], [ %call102.1.i, %if.end87.1.i.do.end107.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i104, ptr noundef nonnull @.str.164, i32 noundef %i.1193.lcssa195.i, i32 noundef %call102.lcssa.i) #9
  br label %iqs269_input_init.exit.thread

for.inc110.i:                                     ; preds = %if.end87.i.for.inc110.i_crit_edge, %for.body75.preheader.i.for.inc110.i_crit_edge
  %449 = ptrtoint ptr %arrayidx319.i to i32
  call void @__asan_load1_noabort(i32 %449)
  %450 = load i8, ptr %arrayidx319.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %450)
  %tobool77.not.1.i = icmp eq i8 %450, 0
  br i1 %tobool77.not.1.i, label %for.inc110.i.if.end42_crit_edge, label %if.end79.1.i

for.inc110.i.if.end42_crit_edge:                  ; preds = %for.inc110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.end79.1.i:                                     ; preds = %for.inc110.i
  %call81.1.i = call ptr @devm_input_allocate_device(ptr noundef %dev.i104) #6
  %arrayidx82.1.i = getelementptr %struct.iqs269_private, ptr %call.i, i32 0, i32 7, i32 1
  %451 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_store4_noabort(i32 %451)
  store ptr %call81.1.i, ptr %arrayidx82.1.i, align 4
  %tobool85.not.1.i = icmp eq ptr %call81.1.i, null
  br i1 %tobool85.not.1.i, label %if.end79.1.i.iqs269_input_init.exit.thread_crit_edge, label %if.end87.1.i

if.end79.1.i.iqs269_input_init.exit.thread_crit_edge: ; preds = %if.end79.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iqs269_input_init.exit.thread

if.end87.1.i:                                     ; preds = %if.end79.1.i
  %452 = ptrtoint ptr %call81.1.i to i32
  call void @__asan_store4_noabort(i32 %452)
  store ptr @.str.161, ptr %call81.1.i, align 8
  %453 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %arrayidx82.1.i, align 4
  %id94.1.i = getelementptr inbounds %struct.input_dev, ptr %454, i32 0, i32 3
  %455 = ptrtoint ptr %id94.1.i to i32
  call void @__asan_store2_noabort(i32 %455)
  store i16 24, ptr %id94.1.i, align 4
  %456 = load ptr, ptr %arrayidx82.1.i, align 4
  call void @input_set_capability(ptr noundef %456, i32 noundef 1, i32 noundef 330) #6
  %457 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %arrayidx82.1.i, align 4
  call void @input_set_abs_params(ptr noundef %458, i32 noundef 0, i32 noundef 0, i32 noundef 255, i32 noundef 0, i32 noundef 0) #6
  %459 = ptrtoint ptr %arrayidx82.1.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %arrayidx82.1.i, align 4
  %call102.1.i = call i32 @input_register_device(ptr noundef %460) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102.1.i)
  %tobool103.not.1.i = icmp eq i32 %call102.1.i, 0
  br i1 %tobool103.not.1.i, label %if.end87.1.i.if.end42_crit_edge, label %if.end87.1.i.do.end107.i_crit_edge

if.end87.1.i.do.end107.i_crit_edge:               ; preds = %if.end87.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107.i

if.end87.1.i.if.end42_crit_edge:                  ; preds = %if.end87.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

iqs269_input_init.exit.thread:                    ; preds = %if.end79.1.i.iqs269_input_init.exit.thread_crit_edge, %do.end107.i, %if.end79.i.iqs269_input_init.exit.thread_crit_edge, %do.end69.i, %do.end.i110, %if.end38.iqs269_input_init.exit.thread_crit_edge
  %retval.0.i114.ph = phi i32 [ -12, %if.end79.1.i.iqs269_input_init.exit.thread_crit_edge ], [ -12, %if.end79.i.iqs269_input_init.exit.thread_crit_edge ], [ -12, %if.end38.iqs269_input_init.exit.thread_crit_edge ], [ %call102.lcssa.i, %do.end107.i ], [ %call64.i, %do.end69.i ], [ %call12.i, %do.end.i110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags.i) #6
  br label %cleanup

if.end42:                                         ; preds = %if.end87.1.i.if.end42_crit_edge, %for.inc110.i.if.end42_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags.i) #6
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %461 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %irq, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call44 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %462, ptr noundef null, ptr noundef nonnull @iqs269_irq, i32 noundef 8192, ptr noundef %name, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %call44) #9
  br label %cleanup

if.end51:                                         ; preds = %if.end42
  %call53 = call i32 @devm_device_add_group(ptr noundef %dev, ptr noundef nonnull @iqs269_attr_group) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.end51.cleanup_crit_edge, label %do.end58

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call53) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end58, %if.end51.cleanup_crit_edge, %do.end49, %iqs269_input_init.exit.thread, %do.end36, %iqs269_parse_prop.exit.thread, %do.end22, %do.body10.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ -22, %do.end22 ], [ %call31, %do.end36 ], [ %call44, %do.end49 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %do.body10.cleanup_crit_edge ], [ %call53, %do.end58 ], [ 0, %if.end51.cleanup_crit_edge ], [ %retval.0.i.ph, %iqs269_parse_prop.exit.thread ], [ %retval.0.i114.ph, %iqs269_input_init.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver_info) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs269_dev_init(ptr noundef %iqs269) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sys_reg1 = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !353
  %lock = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %hall_enable = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 12
  %3 = ptrtoint ptr %hall_enable to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %hall_enable, align 4, !range !354
  %sext = sub nsw i8 0, %4
  %cond = sext i8 %sext to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 245, i32 noundef 32768, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %for.cond.preheader, label %entry.err_mutex_crit_edge

entry.err_mutex_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

for.cond.preheader:                               ; preds = %entry
  %active = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %active, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool3.not = icmp eq i8 %7, 0
  br i1 %tobool3.not, label %for.cond.preheader.for.inc_crit_edge, label %if.end5

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end5:                                          ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 0
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_raw_write(ptr noundef %9, i32 noundef 140, ptr noundef %arrayidx, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end5.for.inc_crit_edge, label %if.end5.err_mutex_crit_edge

if.end5.err_mutex_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end5.for.inc_crit_edge, %for.cond.preheader.for.inc_crit_edge
  %10 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %active, align 1
  %12 = and i8 %11, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not.1 = icmp eq i8 %12, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end5.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end5.1:                                        ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call8.1 = tail call i32 @regmap_raw_write(ptr noundef %14, i32 noundef 147, ptr noundef %arrayidx.1, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1)
  %tobool9.not.1 = icmp eq i32 %call8.1, 0
  br i1 %tobool9.not.1, label %if.end5.1.for.inc.1_crit_edge, label %if.end5.1.err_mutex_crit_edge

if.end5.1.err_mutex_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.1.for.inc.1_crit_edge:                    ; preds = %if.end5.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end5.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %15 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %active, align 1
  %17 = and i8 %16, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.2 = icmp eq i8 %17, 0
  br i1 %tobool3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end5.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.end5.2:                                        ; preds = %for.inc.1
  %arrayidx.2 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call8.2 = tail call i32 @regmap_raw_write(ptr noundef %19, i32 noundef 154, ptr noundef %arrayidx.2, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.2)
  %tobool9.not.2 = icmp eq i32 %call8.2, 0
  br i1 %tobool9.not.2, label %if.end5.2.for.inc.2_crit_edge, label %if.end5.2.err_mutex_crit_edge

if.end5.2.err_mutex_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.2.for.inc.2_crit_edge:                    ; preds = %if.end5.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end5.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %20 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %active, align 1
  %22 = and i8 %21, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool3.not.3 = icmp eq i8 %22, 0
  br i1 %tobool3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end5.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.end5.3:                                        ; preds = %for.inc.2
  %arrayidx.3 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 3
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call8.3 = tail call i32 @regmap_raw_write(ptr noundef %24, i32 noundef 161, ptr noundef %arrayidx.3, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.3)
  %tobool9.not.3 = icmp eq i32 %call8.3, 0
  br i1 %tobool9.not.3, label %if.end5.3.for.inc.3_crit_edge, label %if.end5.3.err_mutex_crit_edge

if.end5.3.err_mutex_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.3.for.inc.3_crit_edge:                    ; preds = %if.end5.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end5.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %25 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %active, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool3.not.4 = icmp eq i8 %27, 0
  br i1 %tobool3.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end5.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.end5.4:                                        ; preds = %for.inc.3
  %arrayidx.4 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call8.4 = tail call i32 @regmap_raw_write(ptr noundef %29, i32 noundef 168, ptr noundef %arrayidx.4, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.4)
  %tobool9.not.4 = icmp eq i32 %call8.4, 0
  br i1 %tobool9.not.4, label %if.end5.4.for.inc.4_crit_edge, label %if.end5.4.err_mutex_crit_edge

if.end5.4.err_mutex_crit_edge:                    ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.4.for.inc.4_crit_edge:                    ; preds = %if.end5.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end5.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %30 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %active, align 1
  %32 = and i8 %31, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool3.not.5 = icmp eq i8 %32, 0
  br i1 %tobool3.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end5.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.end5.5:                                        ; preds = %for.inc.4
  %arrayidx.5 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 5
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call8.5 = tail call i32 @regmap_raw_write(ptr noundef %34, i32 noundef 175, ptr noundef %arrayidx.5, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.5)
  %tobool9.not.5 = icmp eq i32 %call8.5, 0
  br i1 %tobool9.not.5, label %if.end5.5.for.inc.5_crit_edge, label %if.end5.5.err_mutex_crit_edge

if.end5.5.err_mutex_crit_edge:                    ; preds = %if.end5.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.5.for.inc.5_crit_edge:                    ; preds = %if.end5.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end5.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %35 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %active, align 1
  %37 = and i8 %36, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool3.not.6 = icmp eq i8 %37, 0
  br i1 %tobool3.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end5.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.end5.6:                                        ; preds = %for.inc.5
  %arrayidx.6 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 6
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call8.6 = tail call i32 @regmap_raw_write(ptr noundef %39, i32 noundef 182, ptr noundef %arrayidx.6, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.6)
  %tobool9.not.6 = icmp eq i32 %call8.6, 0
  br i1 %tobool9.not.6, label %for.inc.6thread-pre-split, label %if.end5.6.err_mutex_crit_edge

if.end5.6.err_mutex_crit_edge:                    ; preds = %if.end5.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

for.inc.6thread-pre-split:                        ; preds = %if.end5.6
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %40)
  %.pr = load i8, ptr %active, align 1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.inc.6thread-pre-split, %for.inc.5.for.inc.6_crit_edge
  %41 = phi i8 [ %.pr, %for.inc.6thread-pre-split ], [ %36, %for.inc.5.for.inc.6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %41)
  %tobool3.not.7 = icmp sgt i8 %41, -1
  br i1 %tobool3.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.end5.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

if.end5.7:                                        ; preds = %for.inc.6
  %arrayidx.7 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 4, i32 7
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call8.7 = tail call i32 @regmap_raw_write(ptr noundef %43, i32 noundef 189, ptr noundef %arrayidx.7, i32 noundef 14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.7)
  %tobool9.not.7 = icmp eq i32 %call8.7, 0
  br i1 %tobool9.not.7, label %if.end5.7.for.inc.7_crit_edge, label %if.end5.7.err_mutex_crit_edge

if.end5.7.err_mutex_crit_edge:                    ; preds = %if.end5.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end5.7.for.inc.7_crit_edge:                    ; preds = %if.end5.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.end5.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_raw_write(ptr noundef %45, i32 noundef 128, ptr noundef %sys_reg1, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %for.inc.7.err_mutex_crit_edge

for.inc.7.err_mutex_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end16:                                         ; preds = %for.inc.7
  %delay_mult = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 10
  %46 = ptrtoint ptr %delay_mult to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %delay_mult, align 4
  %mul17 = mul i32 %47, 500000
  %conv18 = zext i32 %mul17 to i64
  %mul20 = mul i32 %47, 10000
  %call21 = tail call i64 @ktime_get() #6
  %mul.i = mul nuw nsw i64 %conv18, 1000
  %add.i = add i64 %mul.i, %call21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul20)
  %cmp23.not = icmp eq i32 %mul20, 0
  br i1 %cmp23.not, label %if.end16.do.end32_crit_edge, label %do.body26

if.end16.do.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.body26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1075) #6
  br label %do.end32

do.end32:                                         ; preds = %do.body26, %if.end16.do.end32_crit_edge
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call35110 = call i32 @regmap_read(ptr noundef %49, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35110)
  %tobool36.not111 = icmp eq i32 %call35110, 0
  br i1 %tobool36.not111, label %lor.lhs.false.lr.ph, label %do.end32.err_mutex_crit_edge

do.end32.err_mutex_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

lor.lhs.false.lr.ph:                              ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul17)
  %tobool41.not = icmp eq i32 %mul17, 0
  %shr = lshr exact i32 %mul20, 2
  %add52 = or i32 %shr, 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end53.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %and37 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end40

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

if.end40:                                         ; preds = %lor.lhs.false
  br i1 %tobool41.not, label %if.end40.if.end49_crit_edge, label %land.lhs.true

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true:                                    ; preds = %if.end40
  %call42 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %for.end54, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end49:                                         ; preds = %land.lhs.true.if.end49_crit_edge, %if.end40.if.end49_crit_edge
  br i1 %cmp23.not, label %if.end49.if.end53_crit_edge, label %if.then51

if.end49.if.end53_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add52, i32 noundef %mul20, i32 noundef 2) #6
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %if.end49.if.end53_crit_edge
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call35 = call i32 @regmap_read(ptr noundef %53, i32 noundef 2, ptr noundef nonnull %val) #6
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end53.lor.lhs.false_crit_edge, label %if.end53.err_mutex_crit_edge

if.end53.err_mutex_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end53.lor.lhs.false_crit_edge:                 ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end54:                                        ; preds = %land.lhs.true
  %54 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap, align 4
  %call48 = call i32 @regmap_read(ptr noundef %55, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool55.not = icmp eq i32 %call48, 0
  br i1 %tobool55.not, label %for.end54.lor.rhs_crit_edge, label %for.end54.err_mutex_crit_edge

for.end54.err_mutex_crit_edge:                    ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

for.end54.lor.rhs_crit_edge:                      ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end54.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %56 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %val, align 4
  %and56 = and i32 %57, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end64, label %lor.rhs.err_mutex_crit_edge

lor.rhs.err_mutex_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_mutex

if.end64:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %delay_mult to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay_mult, align 4
  %mul66 = mul i32 %59, 150
  call void @msleep(i32 noundef %mul66) #6
  %ati_current = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 13
  %60 = ptrtoint ptr %ati_current to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %ati_current, align 1
  br label %err_mutex

err_mutex:                                        ; preds = %if.end64, %lor.rhs.err_mutex_crit_edge, %for.end54.err_mutex_crit_edge, %if.end53.err_mutex_crit_edge, %do.end32.err_mutex_crit_edge, %for.inc.7.err_mutex_crit_edge, %if.end5.7.err_mutex_crit_edge, %if.end5.6.err_mutex_crit_edge, %if.end5.5.err_mutex_crit_edge, %if.end5.4.err_mutex_crit_edge, %if.end5.3.err_mutex_crit_edge, %if.end5.2.err_mutex_crit_edge, %if.end5.1.err_mutex_crit_edge, %if.end5.err_mutex_crit_edge, %entry.err_mutex_crit_edge
  %error.0 = phi i32 [ %call.i, %entry.err_mutex_crit_edge ], [ %call13, %for.inc.7.err_mutex_crit_edge ], [ 0, %if.end64 ], [ %call8, %if.end5.err_mutex_crit_edge ], [ %call8.1, %if.end5.1.err_mutex_crit_edge ], [ %call8.2, %if.end5.2.err_mutex_crit_edge ], [ %call8.3, %if.end5.3.err_mutex_crit_edge ], [ %call8.4, %if.end5.4.err_mutex_crit_edge ], [ %call8.5, %if.end5.5.err_mutex_crit_edge ], [ %call8.6, %if.end5.6.err_mutex_crit_edge ], [ %call8.7, %if.end5.7.err_mutex_crit_edge ], [ %call35110, %do.end32.err_mutex_crit_edge ], [ -110, %lor.rhs.err_mutex_crit_edge ], [ %call48, %for.end54.err_mutex_crit_edge ], [ %call35, %if.end53.err_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %error.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs269_irq(i32 noundef %irq, ptr noundef %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @iqs269_report(ptr noundef %context)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_device_add_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iqs269_report(ptr noundef %iqs269) unnamed_addr #2 align 64 {
entry:
  %flags = alloca %struct.iqs269_flags, align 8
  %slider_x = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iqs269 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iqs269, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %flags) #6
  %2 = getelementptr inbounds %struct.iqs269_flags, ptr %flags, i32 0, i32 3, i32 1
  %3 = getelementptr inbounds %struct.iqs269_flags, ptr %flags, i32 0, i32 3, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %flags, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %slider_x) #6
  %5 = ptrtoint ptr %slider_x to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %slider_x, align 1, !annotation !353
  %6 = getelementptr inbounds [2 x i8], ptr %slider_x, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !353
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_raw_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %flags, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.166, i32 noundef %call) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %11)
  %tobool2.not = icmp sgt i16 %11, -1
  br i1 %tobool2.not, label %if.end16, label %do.end6

do.end6:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.169) #9
  %call8 = call fastcc i32 @iqs269_dev_init(ptr noundef %iqs269)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end6.cleanup_crit_edge, label %do.end13

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end13:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev7, ptr noundef nonnull @.str.172, i32 noundef %call8) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call18 = call i32 @regmap_raw_read(ptr noundef %13, i32 noundef 48, ptr noundef nonnull %slider_x, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %for.body.preheader, label %do.end23

for.body.preheader:                               ; preds = %if.end16
  %arrayidx = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 5, i32 15, i32 0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool27.not = icmp eq i8 %15, 0
  br i1 %tobool27.not, label %for.body.preheader.for.inc_crit_edge, label %if.end29

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.175, i32 noundef %call18) #9
  br label %cleanup

if.end29:                                         ; preds = %for.body.preheader
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %3, align 2
  %and36161 = and i8 %17, %15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and36161)
  %tobool37.not = icmp eq i8 %and36161, 0
  %arrayidx45 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 7, i32 0
  %18 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx45, align 4
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %20 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx45, align 4
  %22 = ptrtoint ptr %slider_x to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %slider_x, align 1
  %conv43 = zext i8 %23 to i32
  call void @input_event(ptr noundef %21, i32 noundef 3, i32 noundef 0, i32 noundef %conv43) #6
  br label %if.end46

if.else:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then38
  %arrayidx48 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 7, i32 0
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx48, align 4
  call void @input_event(ptr noundef %25, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end46, %for.body.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 5, i32 15, i32 1
  %26 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool27.not.1 = icmp eq i8 %27, 0
  br i1 %tobool27.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end29.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.end29.1:                                       ; preds = %for.inc
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %3, align 2
  %and36161.1 = and i8 %29, %27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and36161.1)
  %tobool37.not.1 = icmp eq i8 %and36161.1, 0
  %arrayidx45.1 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 7, i32 1
  %30 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx45.1, align 4
  br i1 %tobool37.not.1, label %if.else.1, label %if.then38.1

if.then38.1:                                      ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 1) #6
  %32 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx45.1, align 4
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %6, align 1
  %conv43.1 = zext i8 %35 to i32
  call void @input_event(ptr noundef %33, i32 noundef 3, i32 noundef 0, i32 noundef %conv43.1) #6
  br label %if.end46.1

if.else.1:                                        ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @input_event(ptr noundef %31, i32 noundef 1, i32 noundef 330, i32 noundef 0) #6
  br label %if.end46.1

if.end46.1:                                       ; preds = %if.else.1, %if.then38.1
  %arrayidx48.1 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx48.1, align 4
  call void @input_event(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end46.1, %for.inc.for.inc.1_crit_edge
  %hall_enable = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 12
  %keypad = getelementptr inbounds %struct.iqs269_private, ptr %iqs269, i32 0, i32 6
  br label %for.body52

for.body52:                                       ; preds = %for.inc97.for.body52_crit_edge, %for.inc.1
  %i.1171 = phi i32 [ 0, %for.inc.1 ], [ %inc98, %for.inc97.for.body52_crit_edge ]
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %2, align 1
  %40 = lshr i32 21, %i.1171
  %41 = trunc i32 %40 to i8
  %42 = and i8 %41, 1
  %neg = sub nsw i8 0, %42
  %spec.select = xor i8 %39, %neg
  %st_offs = getelementptr [6 x %struct.iqs269_event_desc], ptr @iqs269_events, i32 0, i32 %i.1171, i32 1
  %43 = ptrtoint ptr %st_offs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %st_offs, align 4
  %arrayidx63 = getelementptr %struct.iqs269_flags, ptr %flags, i32 0, i32 3, i32 %44
  %45 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx63, align 1
  %and66160 = and i8 %46, %spec.select
  %arrayidx68 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 3, i32 %i.1171
  %47 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx68, align 4
  %mul = shl i32 %i.1171, 3
  %enabled = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 3, i32 %i.1171, i32 1
  %conv82 = zext i8 %and66160 to i32
  %49 = lshr i32 %conv82, 7
  br label %for.body72

for.body72:                                       ; preds = %for.inc94.for.body72_crit_edge, %for.body52
  %j.0167 = phi i32 [ 0, %for.body52 ], [ %inc95, %for.inc94.for.body72_crit_edge ]
  %add = add nuw nsw i32 %j.0167, %mul
  %arrayidx74 = getelementptr %struct.iqs269_private, ptr %iqs269, i32 0, i32 8, i32 %add
  %50 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx74, align 4
  %52 = zext i32 %j.0167 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %j.0167, label %for.body72.sw.default_crit_edge [
    i32 7, label %sw.bb
    i32 6, label %for.body72.sw.bb85_crit_edge
  ]

for.body72.sw.bb85_crit_edge:                     ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb85

for.body72.sw.default_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb:                                            ; preds = %for.body72
  %53 = ptrtoint ptr %hall_enable to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %hall_enable, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool75.not = icmp eq i8 %54, 0
  br i1 %tobool75.not, label %sw.bb.sw.default_crit_edge, label %land.lhs.true

sw.bb.sw.default_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

land.lhs.true:                                    ; preds = %sw.bb
  %55 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %enabled, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool79.not = icmp eq i8 %56, 0
  br i1 %tobool79.not, label %land.lhs.true.for.inc97_crit_edge, label %if.then81

land.lhs.true.for.inc97_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc97

if.then81:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %keypad, align 4
  call void @input_event(ptr noundef %58, i32 noundef 5, i32 noundef %48, i32 noundef %49) #6
  br label %sw.bb85

sw.bb85:                                          ; preds = %if.then81, %for.body72.sw.bb85_crit_edge
  %59 = ptrtoint ptr %hall_enable to i32
  call void @__asan_load1_noabort(i32 %59)
  %.pr = load i8, ptr %hall_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool87.not = icmp eq i8 %.pr, 0
  br i1 %tobool87.not, label %sw.bb85.sw.default_crit_edge, label %sw.bb85.for.inc94_crit_edge

sw.bb85.for.inc94_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc94

sw.bb85.sw.default_crit_edge:                     ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.default:                                       ; preds = %sw.bb85.sw.default_crit_edge, %sw.bb.sw.default_crit_edge, %for.body72.sw.default_crit_edge
  %60 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %keypad, align 4
  %62 = lshr i32 %conv82, %j.0167
  %63 = and i32 %62, 1
  call void @input_event(ptr noundef %61, i32 noundef 1, i32 noundef %51, i32 noundef %63) #6
  br label %for.inc94

for.inc94:                                        ; preds = %sw.default, %sw.bb85.for.inc94_crit_edge
  %inc95 = add nuw nsw i32 %j.0167, 1
  %exitcond.not = icmp eq i32 %inc95, 8
  br i1 %exitcond.not, label %for.inc94.for.inc97_crit_edge, label %for.inc94.for.body72_crit_edge

for.inc94.for.body72_crit_edge:                   ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body72

for.inc94.for.inc97_crit_edge:                    ; preds = %for.inc94
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc97

for.inc97:                                        ; preds = %for.inc94.for.inc97_crit_edge, %land.lhs.true.for.inc97_crit_edge
  %inc98 = add nuw nsw i32 %i.1171, 1
  %exitcond172.not = icmp eq i32 %inc98, 6
  br i1 %exitcond172.not, label %for.end99, label %for.inc97.for.body52_crit_edge

for.inc97.for.body52_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body52

for.end99:                                        ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %keypad to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %keypad, align 4
  call void @input_event(ptr noundef %65, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end99, %do.end23, %do.end13, %do.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call18, %do.end23 ], [ 0, %for.end99 ], [ %call8, %do.end13 ], [ 0, %do.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %slider_x) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %flags) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %counts = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %counts) #6
  %4 = ptrtoint ptr %counts to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %counts, align 2, !annotation !353
  %ati_current = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %5 = ptrtoint ptr %ati_current to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ati_current, align 1, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %hall_enable = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 12
  %7 = ptrtoint ptr %hall_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %hall_enable, align 4, !range !354
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.not = icmp eq i8 %8, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %10) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %13 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch_num, align 4
  %mul = shl i32 %14, 1
  %add = add i32 %mul, 8
  %call3 = call i32 @regmap_raw_read(ptr noundef %12, i32 noundef %add, ptr noundef nonnull %counts, i32 noundef 2) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool5.not = icmp eq i32 %call3, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %counts to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %counts, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %conv = zext i16 %19 to i32
  %call8 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %counts) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hall_bin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !353
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %6) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 53, ptr noundef nonnull %val) #6
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 2
  %arrayidx5 = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 6
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx5, align 4
  %and21 = and i8 %14, %12
  %15 = zext i8 %and21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.192)
  switch i8 %and21, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and8 = lshr i32 %17, 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %and10 = lshr i32 %19, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %storemerge.in = phi i32 [ %and10, %sw.bb9 ], [ %and8, %sw.bb ]
  %storemerge = and i32 %storemerge.in, 15
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %val, align 4
  %call12 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %storemerge) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.epilog ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hall_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hall_enable = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %hall_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hall_enable, align 4, !range !354
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %4) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hall_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp ne i32 %4, 0
  %hall_enable = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 12
  %frombool = zext i1 %tobool2 to i8
  %5 = ptrtoint ptr %hall_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %hall_enable, align 4
  %ati_current = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ati_current to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ati_current, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_number_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %3) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch_number_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp = icmp ugt i32 %4, 7
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %ch_num to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %ch_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  %arrayidx = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch_num, align 4
  %arrayidx = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 2
  %ati_current = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %10 = ptrtoint ptr %ati_current to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ati_current, align 1
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i = icmp ugt i32 %3, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_a1.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %3, i32 2
  %4 = ptrtoint ptr %engine_a1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %engine_a1.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %6 = lshr i16 %5, 8
  %7 = and i16 %6, 3
  %8 = zext i16 %7 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %8) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_mode_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch_num, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp.i = icmp ugt i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 3
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

7:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_a4.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %4, i32 2
  %8 = ptrtoint ptr %engine_a4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %engine_a4.i, align 2
  %10 = and i16 %9, -769
  %mode.tr.i = trunc i32 %6 to i16
  %11 = shl nuw nsw i16 %mode.tr.i, 8
  %conv7.i = or i16 %10, %11
  store i16 %conv7.i, ptr %engine_a4.i, align 2
  %ati_current.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ati_current.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ati_current.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %7 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_base_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i = icmp ugt i32 %3, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_b1.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %3, i32 3
  %4 = ptrtoint ptr %engine_b1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %engine_b1.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %6 = lshr i16 %5, 6
  %7 = and i16 %6, 3
  %8 = zext i16 %7 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ati_base_show, i32 0, i32 %8
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %switch.load) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end.i ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_base_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp.i = icmp ugt i32 %4, 7
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %6, label %if.end.i.cleanup_crit_edge [
    i32 75, label %if.end.i._crit_edge
    i32 100, label %sw.bb1.i
    i32 150, label %sw.bb2.i
    i32 200, label %sw.bb3.i
  ]

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %8

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %8

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %8

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %8

8:                                                ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.i._crit_edge
  %base.addr.0.i = phi i16 [ 192, %sw.bb3.i ], [ 128, %sw.bb2.i ], [ 64, %sw.bb1.i ], [ 0, %if.end.i._crit_edge ]
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_b4.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %4, i32 3
  %9 = ptrtoint ptr %engine_b4.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %engine_b4.i, align 2
  %11 = and i16 %10, -193
  %or.i = or i16 %11, %base.addr.0.i
  store i16 %or.i, ptr %engine_b4.i, align 2
  %ati_current.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ati_current.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ati_current.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %8, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %8 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_target_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp.i = icmp ugt i32 %3, 7
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_b1.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %3, i32 3
  %4 = ptrtoint ptr %engine_b1.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %engine_b1.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #6
  %6 = shl i16 %5, 5
  %7 = and i16 %6, 2016
  %mul.i = zext i16 %7 to i32
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %mul.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_target_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ch_num = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ch_num, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %4)
  %cmp.i = icmp ugt i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2016, i32 %6)
  %cmp1.i = icmp ugt i32 %6, 2016
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.end.cleanup_crit_edge, label %7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

7:                                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %lock.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #6
  %engine_b4.i = getelementptr %struct.iqs269_private, ptr %1, i32 0, i32 4, i32 %4, i32 3
  %8 = ptrtoint ptr %engine_b4.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %engine_b4.i, align 2
  %10 = and i16 %9, -64
  %div21.i = lshr i32 %6, 5
  %11 = trunc i32 %div21.i to i16
  %conv7.i = or i16 %10, %11
  store i16 %conv7.i, ptr %engine_b4.i, align 2
  %ati_current.i = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %ati_current.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %ati_current.i, align 1
  call void @mutex_unlock(ptr noundef %lock.i) #6
  br label %cleanup

cleanup:                                          ; preds = %7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %count, %7 ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_trigger_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ati_current = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ati_current to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ati_current, align 1, !range !354
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.178, i32 noundef %4) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ati_trigger_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !353
  %call2 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  call void @disable_irq(i32 noundef %8) #6
  %call6 = call fastcc i32 @iqs269_dev_init(ptr noundef %1)
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool8.not = icmp eq i32 %call6, 0
  %count.call6 = select i1 %tobool8.not, i32 %count, i32 %call6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %count, %if.end.cleanup_crit_edge ], [ %count.call6, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs269_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !353
  %suspend_mode = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 8192, i32 noundef -1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end5:                                          ; preds = %if.end
  %delay_mult = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %delay_mult to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay_mult, align 4
  %mul = mul i32 %12, 500000
  %conv = zext i32 %mul to i64
  %mul7 = mul i32 %12, 10000
  %call8 = tail call i64 @ktime_get() #6
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7)
  %cmp.not = icmp eq i32 %mul7, 0
  br i1 %cmp.not, label %if.end5.do.end18_crit_edge, label %do.body12

if.end5.do.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1729) #6
  br label %do.end18

do.end18:                                         ; preds = %do.body12, %if.end5.do.end18_crit_edge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call20186 = call i32 @regmap_read(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20186)
  %tobool21.not187 = icmp eq i32 %call20186, 0
  br i1 %tobool21.not187, label %lor.lhs.false.lr.ph, label %do.end18.err_irq_crit_edge

do.end18.err_irq_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

lor.lhs.false.lr.ph:                              ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool25.not = icmp eq i32 %mul, 0
  %shr = lshr exact i32 %mul7, 2
  %add = or i32 %shr, 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end24

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

if.end24:                                         ; preds = %lor.lhs.false
  br i1 %tobool25.not, label %if.end24.if.end33_crit_edge, label %land.lhs.true

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end24
  %call26 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  br i1 %cmp.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul7, i32 noundef 2) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %val) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end36.lor.lhs.false_crit_edge, label %if.end36.err_irq_crit_edge

if.end36.err_irq_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end36.lor.lhs.false_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_read(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool37.not = icmp eq i32 %call32, 0
  br i1 %tobool37.not, label %for.end.lor.rhs_crit_edge, label %for.end.err_irq_crit_edge

for.end.err_irq_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and38 = and i32 %22, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end45, label %lor.rhs.err_irq_crit_edge

lor.rhs.err_irq_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end45:                                         ; preds = %lor.rhs
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %25 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %suspend_mode, align 4
  %shl = shl i32 %26, 11
  %call.i157 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 128, i32 noundef 6144, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool49.not = icmp eq i32 %call.i157, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.err_irq_crit_edge

if.end45.err_irq_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end51:                                         ; preds = %if.end45
  %27 = ptrtoint ptr %delay_mult to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %delay_mult, align 4
  %mul56 = mul i32 %28, 500000
  %conv57 = zext i32 %mul56 to i64
  %mul60 = mul i32 %28, 10000
  %call62 = call i64 @ktime_get() #6
  %mul.i158 = mul nuw nsw i64 %conv57, 1000
  %add.i159 = add i64 %mul.i158, %call62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul60)
  %cmp65.not = icmp eq i32 %mul60, 0
  br i1 %cmp65.not, label %if.end51.do.end76_crit_edge, label %do.body68

if.end51.do.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end76

do.body68:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1750) #6
  br label %do.end76

do.end76:                                         ; preds = %do.body68, %if.end51.do.end76_crit_edge
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call79188 = call i32 @regmap_read(ptr noundef %30, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79188)
  %tobool80.not189 = icmp eq i32 %call79188, 0
  br i1 %tobool80.not189, label %lor.lhs.false81.lr.ph, label %do.end76.err_irq_crit_edge

do.end76.err_irq_crit_edge:                       ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

lor.lhs.false81.lr.ph:                            ; preds = %do.end76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul56)
  %tobool89.not = icmp eq i32 %mul56, 0
  %shr101 = lshr exact i32 %mul60, 2
  %add102 = or i32 %shr101, 1
  br label %lor.lhs.false81

lor.lhs.false81:                                  ; preds = %if.end103.lor.lhs.false81_crit_edge, %lor.lhs.false81.lr.ph
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %and82 = and i32 %32, 6144
  %33 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %suspend_mode, align 4
  %shl84 = shl i32 %34, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %and82, i32 %shl84)
  %cmp85 = icmp eq i32 %and82, %shl84
  br i1 %cmp85, label %lor.lhs.false81.lor.rhs107_crit_edge, label %if.end88

lor.lhs.false81.lor.rhs107_crit_edge:             ; preds = %lor.lhs.false81
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs107

if.end88:                                         ; preds = %lor.lhs.false81
  br i1 %tobool89.not, label %if.end88.if.end98_crit_edge, label %land.lhs.true90

if.end88.if.end98_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

land.lhs.true90:                                  ; preds = %if.end88
  %call91 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call91, i64 %add.i159)
  %cmp3.i161 = icmp sgt i64 %call91, %add.i159
  br i1 %cmp3.i161, label %for.end104, label %land.lhs.true90.if.end98_crit_edge

land.lhs.true90.if.end98_crit_edge:               ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end98

if.end98:                                         ; preds = %land.lhs.true90.if.end98_crit_edge, %if.end88.if.end98_crit_edge
  br i1 %cmp65.not, label %if.end98.if.end103_crit_edge, label %if.then100

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then100:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add102, i32 noundef %mul60, i32 noundef 2) #6
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end98.if.end103_crit_edge
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regmap_read(ptr noundef %36, i32 noundef 2, ptr noundef nonnull %val) #6
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end103.lor.lhs.false81_crit_edge, label %if.end103.err_irq_crit_edge

if.end103.err_irq_crit_edge:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end103.lor.lhs.false81_crit_edge:              ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false81

for.end104:                                       ; preds = %land.lhs.true90
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regmap_read(ptr noundef %38, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool106.not = icmp eq i32 %call97, 0
  br i1 %tobool106.not, label %for.end104.lor.rhs107_crit_edge, label %for.end104.err_irq_crit_edge

for.end104.err_irq_crit_edge:                     ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

for.end104.lor.rhs107_crit_edge:                  ; preds = %for.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs107

lor.rhs107:                                       ; preds = %for.end104.lor.rhs107_crit_edge, %lor.lhs.false81.lor.rhs107_crit_edge
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %and108 = and i32 %40, 6144
  %41 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %suspend_mode, align 4
  %shl110 = shl i32 %42, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %and108, i32 %shl110)
  %cmp111 = icmp eq i32 %and108, %shl110
  %phi.sel155 = select i1 %cmp111, i32 0, i32 -110
  br label %err_irq

err_irq:                                          ; preds = %lor.rhs107, %for.end104.err_irq_crit_edge, %if.end103.err_irq_crit_edge, %do.end76.err_irq_crit_edge, %if.end45.err_irq_crit_edge, %lor.rhs.err_irq_crit_edge, %for.end.err_irq_crit_edge, %if.end36.err_irq_crit_edge, %do.end18.err_irq_crit_edge, %if.end.err_irq_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.err_irq_crit_edge ], [ %call.i157, %if.end45.err_irq_crit_edge ], [ %call97, %for.end104.err_irq_crit_edge ], [ %phi.sel155, %lor.rhs107 ], [ %call79188, %do.end76.err_irq_crit_edge ], [ %call20186, %do.end18.err_irq_crit_edge ], [ -110, %lor.rhs.err_irq_crit_edge ], [ %call32, %for.end.err_irq_crit_edge ], [ %call79, %if.end103.err_irq_crit_edge ], [ %call20, %if.end36.err_irq_crit_edge ]
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %44) #6
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_irq ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iqs269_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !353
  %suspend_mode = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %suspend_mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %suspend_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %8) #6
  %regmap = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 128, i32 noundef 6144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.err_irq_crit_edge

if.end.err_irq_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end5:                                          ; preds = %if.end
  %delay_mult = getelementptr inbounds %struct.iqs269_private, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %delay_mult to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay_mult, align 4
  %mul = mul i32 %12, 500000
  %conv = zext i32 %mul to i64
  %mul7 = mul i32 %12, 10000
  %call8 = tail call i64 @ktime_get() #6
  %mul.i = mul nuw nsw i64 %conv, 1000
  %add.i = add i64 %mul.i, %call8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul7)
  %cmp.not = icmp eq i32 %mul7, 0
  br i1 %cmp.not, label %if.end5.do.end18_crit_edge, label %do.body12

if.end5.do.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end18

do.body12:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 1783) #6
  br label %do.end18

do.end18:                                         ; preds = %do.body12, %if.end5.do.end18_crit_edge
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call2086 = call i32 @regmap_read(ptr noundef %14, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2086)
  %tobool21.not87 = icmp eq i32 %call2086, 0
  br i1 %tobool21.not87, label %lor.lhs.false.lr.ph, label %do.end18.err_irq_crit_edge

do.end18.err_irq_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

lor.lhs.false.lr.ph:                              ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool25.not = icmp eq i32 %mul, 0
  %shr = lshr exact i32 %mul7, 2
  %add = or i32 %shr, 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %lor.lhs.false.lor.rhs_crit_edge, label %if.end24

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

if.end24:                                         ; preds = %lor.lhs.false
  br i1 %tobool25.not, label %if.end24.if.end33_crit_edge, label %land.lhs.true

if.end24.if.end33_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

land.lhs.true:                                    ; preds = %if.end24
  %call26 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call26, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call26, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.if.end33_crit_edge

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %land.lhs.true.if.end33_crit_edge, %if.end24.if.end33_crit_edge
  br i1 %cmp.not, label %if.end33.if.end36_crit_edge, label %if.then35

if.end33.if.end36_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  call void @usleep_range_state(i32 noundef %add, i32 noundef %mul7, i32 noundef 2) #6
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end33.if.end36_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %18, i32 noundef 2, ptr noundef nonnull %val) #6
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end36.lor.lhs.false_crit_edge, label %if.end36.err_irq_crit_edge

if.end36.err_irq_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end36.lor.lhs.false_crit_edge:                 ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call32 = call i32 @regmap_read(ptr noundef %20, i32 noundef 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool37.not = icmp eq i32 %call32, 0
  br i1 %tobool37.not, label %for.end.lor.rhs_crit_edge, label %for.end.err_irq_crit_edge

for.end.err_irq_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and38 = and i32 %22, 6144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end45, label %lor.rhs.err_irq_crit_edge

lor.rhs.err_irq_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end45:                                         ; preds = %lor.rhs
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call.i74 = call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 128, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool48.not = icmp eq i32 %call.i74, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.err_irq_crit_edge

if.end45.err_irq_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_irq

if.end50:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  %call51 = call fastcc i32 @iqs269_report(ptr noundef %1)
  br label %err_irq

err_irq:                                          ; preds = %if.end50, %if.end45.err_irq_crit_edge, %lor.rhs.err_irq_crit_edge, %for.end.err_irq_crit_edge, %if.end36.err_irq_crit_edge, %do.end18.err_irq_crit_edge, %if.end.err_irq_crit_edge
  %error.0 = phi i32 [ %call.i, %if.end.err_irq_crit_edge ], [ %call.i74, %if.end45.err_irq_crit_edge ], [ %call51, %if.end50 ], [ %call2086, %do.end18.err_irq_crit_edge ], [ -110, %lor.rhs.err_irq_crit_edge ], [ %call32, %for.end.err_irq_crit_edge ], [ %call20, %if.end36.err_irq_crit_edge ]
  call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %25 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq, align 4
  call void @enable_irq(i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %err_irq, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %error.0, %err_irq ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 174)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !63, !65, !66, !68, !70, !71, !73, !75, !76, !78, !80, !81, !82, !84, !86, !87, !89, !91, !92, !94, !96, !97, !98, !100, !102, !103, !105, !107, !109, !111, !113, !115, !116, !117, !119, !121, !123, !124, !125, !127, !129, !131, !132, !133, !135, !137, !139, !140, !142, !144, !146, !147, !148, !150, !152, !154, !155, !156, !157, !159, !160, !161, !163, !165, !167, !169, !171, !173, !174, !175, !177, !179, !180, !181, !183, !185, !187, !189, !190, !191, !193, !195, !197, !198, !199, !201, !203, !204, !205, !207, !209, !210, !211, !213, !215, !217, !218, !219, !221, !223, !224, !225, !227, !229, !230, !231, !233, !235, !236, !237, !239, !241, !242, !243, !245, !247, !248, !249, !251, !253, !254, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !276, !277, !278, !280, !281, !282, !284, !286, !288, !289, !290, !292, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !311, !313, !314, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350, !351}
!llvm.ident = !{!352}

!0 = !{ptr @__initcall__kmod_iqs269a__288_1822_iqs269_i2c_driver_init6, !1, !"__initcall__kmod_iqs269a__288_1822_iqs269_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/iqs269a.c", i32 1822, i32 1}
!2 = !{ptr @__exitcall_iqs269_i2c_driver_exit, !1, !"__exitcall_iqs269_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/iqs269a.c", i32 1824, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/iqs269a.c", i32 1825, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/iqs269a.c", i32 1826, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/iqs269a.c", i32 1816, i32 11}
!12 = !{ptr @iqs269_i2c_driver, !13, !"iqs269_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/iqs269a.c", i32 1814, i32 26}
!14 = !{ptr @iqs269_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/iqs269a.c", i32 1649, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/misc/iqs269a.c", i32 1652, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @iqs269_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @iqs269_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @iqs269_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/iqs269a.c", i32 1657, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/iqs269a.c", i32 1665, i32 3}
!30 = !{ptr @iqs269_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @iqs269_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/misc/iqs269a.c", i32 1676, i32 3}
!34 = !{ptr @iqs269_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @iqs269_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/iqs269a.c", i32 1689, i32 3}
!38 = !{ptr @iqs269_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @iqs269_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/iqs269a.c", i32 1695, i32 3}
!42 = !{ptr @iqs269_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @iqs269_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @iqs269_regmap_config, !45, !"iqs269_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/input/misc/iqs269a.c", i32 1630, i32 35}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/iqs269a.c", i32 760, i32 13}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/iqs269a.c", i32 762, i32 46}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/iqs269a.c", i32 765, i32 4}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iqs269_parse_prop._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @iqs269_parse_prop._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/misc/iqs269a.c", i32 778, i32 46}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/misc/iqs269a.c", i32 781, i32 4}
!59 = !{ptr @iqs269_parse_prop._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @iqs269_parse_prop._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/misc/iqs269a.c", i32 790, i32 46}
!63 = !{ptr @iqs269_parse_prop._entry.29, !64, !"_entry", i1 false, i1 false}
!64 = !{!"../drivers/input/misc/iqs269a.c", i32 793, i32 4}
!65 = !{ptr @iqs269_parse_prop._entry_ptr.30, !64, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/iqs269a.c", i32 802, i32 46}
!68 = !{ptr @iqs269_parse_prop._entry.32, !69, !"_entry", i1 false, i1 false}
!69 = !{!"../drivers/input/misc/iqs269a.c", i32 805, i32 4}
!70 = !{ptr @iqs269_parse_prop._entry_ptr.33, !69, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/iqs269a.c", i32 814, i32 46}
!73 = !{ptr @iqs269_parse_prop._entry.35, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/input/misc/iqs269a.c", i32 817, i32 4}
!75 = !{ptr @iqs269_parse_prop._entry_ptr.36, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/misc/iqs269a.c", i32 826, i32 46}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/input/misc/iqs269a.c", i32 829, i32 4}
!80 = !{ptr @iqs269_parse_prop._entry.38, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @iqs269_parse_prop._entry_ptr.40, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/input/misc/iqs269a.c", i32 836, i32 46}
!84 = !{ptr @iqs269_parse_prop._entry.42, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../drivers/input/misc/iqs269a.c", i32 839, i32 4}
!86 = !{ptr @iqs269_parse_prop._entry_ptr.43, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/iqs269a.c", i32 846, i32 46}
!89 = !{ptr @iqs269_parse_prop._entry.45, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../drivers/input/misc/iqs269a.c", i32 849, i32 4}
!91 = !{ptr @iqs269_parse_prop._entry_ptr.46, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/misc/iqs269a.c", i32 856, i32 46}
!94 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/input/misc/iqs269a.c", i32 859, i32 4}
!96 = !{ptr @iqs269_parse_prop._entry.48, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @iqs269_parse_prop._entry_ptr.50, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.51, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/input/misc/iqs269a.c", i32 866, i32 46}
!100 = !{ptr @iqs269_parse_prop._entry.52, !101, !"_entry", i1 false, i1 false}
!101 = !{!"../drivers/input/misc/iqs269a.c", i32 869, i32 4}
!102 = !{ptr @iqs269_parse_prop._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/input/misc/iqs269a.c", i32 880, i32 44}
!105 = !{ptr @.str.55, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/misc/iqs269a.c", i32 884, i32 44}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/input/misc/iqs269a.c", i32 888, i32 44}
!109 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/misc/iqs269a.c", i32 892, i32 44}
!111 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/input/misc/iqs269a.c", i32 895, i32 46}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/misc/iqs269a.c", i32 898, i32 4}
!115 = !{ptr @iqs269_parse_prop._entry.59, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @iqs269_parse_prop._entry_ptr.61, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.62, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/input/misc/iqs269a.c", i32 908, i32 44}
!119 = !{ptr @.str.63, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/misc/iqs269a.c", i32 911, i32 46}
!121 = !{ptr @.str.65, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/input/misc/iqs269a.c", i32 913, i32 4}
!123 = !{ptr @iqs269_parse_prop._entry.64, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @iqs269_parse_prop._entry_ptr.66, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.67, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/input/misc/iqs269a.c", i32 923, i32 44}
!127 = !{ptr @.str.68, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/input/misc/iqs269a.c", i32 926, i32 46}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/misc/iqs269a.c", i32 929, i32 4}
!131 = !{ptr @iqs269_parse_prop._entry.69, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @iqs269_parse_prop._entry_ptr.71, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.72, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/input/misc/iqs269a.c", i32 939, i32 44}
!135 = !{ptr @.str.73, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/input/misc/iqs269a.c", i32 942, i32 46}
!137 = !{ptr @iqs269_parse_prop._entry.74, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/input/misc/iqs269a.c", i32 945, i32 4}
!139 = !{ptr @iqs269_parse_prop._entry_ptr.75, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/misc/iqs269a.c", i32 983, i32 44}
!142 = !{ptr @.str.77, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/input/misc/iqs269a.c", i32 1000, i32 46}
!144 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/misc/iqs269a.c", i32 1003, i32 4}
!146 = !{ptr @iqs269_parse_prop._entry.78, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @iqs269_parse_prop._entry_ptr.80, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.81, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/misc/iqs269a.c", i32 1012, i32 44}
!150 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/misc/iqs269a.c", i32 511, i32 44}
!152 = !{ptr @.str.83, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/input/misc/iqs269a.c", i32 513, i32 3}
!154 = !{ptr @.str.84, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @iqs269_parse_chan._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @iqs269_parse_chan._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.86, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/input/misc/iqs269a.c", i32 517, i32 3}
!159 = !{ptr @iqs269_parse_chan._entry.85, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @iqs269_parse_chan._entry_ptr.87, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.88, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/input/misc/iqs269a.c", i32 522, i32 40}
!163 = !{ptr @.str.89, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/input/misc/iqs269a.c", i32 525, i32 39}
!165 = !{ptr @.str.90, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/input/misc/iqs269a.c", i32 528, i32 39}
!167 = !{ptr @.str.91, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/input/misc/iqs269a.c", i32 531, i32 39}
!169 = !{ptr @.str.92, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/input/misc/iqs269a.c", i32 542, i32 37}
!171 = !{ptr @.str.94, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/input/misc/iqs269a.c", i32 545, i32 3}
!173 = !{ptr @iqs269_parse_chan._entry.93, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @iqs269_parse_chan._entry_ptr.95, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.96, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/input/misc/iqs269a.c", i32 550, i32 37}
!177 = !{ptr @.str.98, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/input/misc/iqs269a.c", i32 553, i32 3}
!179 = !{ptr @iqs269_parse_chan._entry.97, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @iqs269_parse_chan._entry_ptr.99, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.100, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/input/misc/iqs269a.c", i32 562, i32 39}
!183 = !{ptr @.str.101, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/input/misc/iqs269a.c", i32 566, i32 39}
!185 = !{ptr @.str.102, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/input/misc/iqs269a.c", i32 571, i32 41}
!187 = !{ptr @.str.104, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/input/misc/iqs269a.c", i32 585, i32 4}
!189 = !{ptr @iqs269_parse_chan._entry.103, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @iqs269_parse_chan._entry_ptr.105, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/input/misc/iqs269a.c", i32 593, i32 39}
!193 = !{ptr @.str.107, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/input/misc/iqs269a.c", i32 596, i32 41}
!195 = !{ptr @.str.109, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/input/misc/iqs269a.c", i32 598, i32 4}
!197 = !{ptr @iqs269_parse_chan._entry.108, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @iqs269_parse_chan._entry_ptr.110, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.111, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/input/misc/iqs269a.c", i32 608, i32 41}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/input/misc/iqs269a.c", i32 610, i32 4}
!203 = !{ptr @iqs269_parse_chan._entry.112, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @iqs269_parse_chan._entry_ptr.114, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/input/misc/iqs269a.c", i32 620, i32 41}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/input/misc/iqs269a.c", i32 622, i32 4}
!209 = !{ptr @iqs269_parse_chan._entry.116, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @iqs269_parse_chan._entry_ptr.118, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.119, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/input/misc/iqs269a.c", i32 633, i32 39}
!213 = !{ptr @.str.120, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/input/misc/iqs269a.c", i32 639, i32 41}
!215 = !{ptr @.str.122, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/input/misc/iqs269a.c", i32 642, i32 4}
!217 = !{ptr @iqs269_parse_chan._entry.121, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @iqs269_parse_chan._entry_ptr.123, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/input/misc/iqs269a.c", i32 648, i32 41}
!221 = !{ptr @.str.126, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/input/misc/iqs269a.c", i32 651, i32 4}
!223 = !{ptr @iqs269_parse_chan._entry.125, !222, !"_entry", i1 false, i1 false}
!224 = !{ptr @iqs269_parse_chan._entry_ptr.127, !222, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.128, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/input/misc/iqs269a.c", i32 657, i32 41}
!227 = !{ptr @.str.130, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/input/misc/iqs269a.c", i32 660, i32 4}
!229 = !{ptr @iqs269_parse_chan._entry.129, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @iqs269_parse_chan._entry_ptr.131, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.132, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/input/misc/iqs269a.c", i32 667, i32 37}
!233 = !{ptr @.str.134, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/input/misc/iqs269a.c", i32 670, i32 3}
!235 = !{ptr @iqs269_parse_chan._entry.133, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @iqs269_parse_chan._entry_ptr.135, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.136, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/input/misc/iqs269a.c", i32 675, i32 41}
!239 = !{ptr @.str.138, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/input/misc/iqs269a.c", i32 677, i32 4}
!241 = !{ptr @iqs269_parse_chan._entry.137, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @iqs269_parse_chan._entry_ptr.139, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.140, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/input/misc/iqs269a.c", i32 692, i32 42}
!245 = !{ptr @.str.142, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/input/misc/iqs269a.c", i32 694, i32 5}
!247 = !{ptr @iqs269_parse_chan._entry.141, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @iqs269_parse_chan._entry_ptr.143, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.144, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/input/misc/iqs269a.c", i32 703, i32 42}
!251 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/input/misc/iqs269a.c", i32 707, i32 5}
!253 = !{ptr @iqs269_parse_chan._entry.145, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @iqs269_parse_chan._entry_ptr.147, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.148, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/input/misc/iqs269a.c", i32 724, i32 41}
!257 = !{ptr @.str.149, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/input/misc/iqs269a.c", i32 201, i32 11}
!259 = !{ptr @.str.150, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/input/misc/iqs269a.c", i32 207, i32 11}
!261 = !{ptr @.str.151, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/input/misc/iqs269a.c", i32 214, i32 11}
!263 = !{ptr @.str.152, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/input/misc/iqs269a.c", i32 220, i32 11}
!265 = !{ptr @.str.153, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/input/misc/iqs269a.c", i32 227, i32 11}
!267 = !{ptr @.str.154, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/input/misc/iqs269a.c", i32 233, i32 11}
!269 = !{ptr @iqs269_events, !270, !"iqs269_events", i1 false, i1 false}
!270 = !{!"../drivers/input/misc/iqs269a.c", i32 199, i32 39}
!271 = !{ptr @.str.155, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/input/misc/iqs269a.c", i32 1104, i32 25}
!273 = !{ptr @.str.156, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/input/misc/iqs269a.c", i32 1111, i32 4}
!275 = !{ptr @.str.157, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @iqs269_input_init._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @iqs269_input_init._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.159, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/input/misc/iqs269a.c", i32 1162, i32 3}
!280 = !{ptr @iqs269_input_init._entry.158, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @iqs269_input_init._entry_ptr.160, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.161, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/input/misc/iqs269a.c", i32 1174, i32 33}
!284 = !{ptr @.str.162, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/input/misc/iqs269a.c", i32 1175, i32 12}
!286 = !{ptr @.str.164, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/input/misc/iqs269a.c", i32 1183, i32 4}
!288 = !{ptr @iqs269_input_init._entry.163, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @iqs269_input_init._entry_ptr.165, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.166, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/input/misc/iqs269a.c", i32 1204, i32 3}
!292 = !{ptr @.str.167, !291, !"<string literal>", i1 false, i1 false}
!293 = !{ptr @iqs269_report._entry, !291, !"_entry", i1 false, i1 false}
!294 = !{ptr @iqs269_report._entry_ptr, !291, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.169, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/input/misc/iqs269a.c", i32 1215, i32 3}
!297 = !{ptr @iqs269_report._entry.168, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @iqs269_report._entry_ptr.170, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.172, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/input/misc/iqs269a.c", i32 1219, i32 4}
!301 = !{ptr @iqs269_report._entry.171, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @iqs269_report._entry_ptr.173, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.175, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/input/misc/iqs269a.c", i32 1228, i32 3}
!305 = !{ptr @iqs269_report._entry.174, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @iqs269_report._entry_ptr.176, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @iqs269_attr_group, !308, !"iqs269_attr_group", i1 false, i1 false}
!308 = !{!"../drivers/input/misc/iqs269a.c", i32 1626, i32 37}
!309 = !{ptr @iqs269_attrs, !310, !"iqs269_attrs", i1 false, i1 false}
!310 = !{!"../drivers/input/misc/iqs269a.c", i32 1613, i32 26}
!311 = !{ptr @.str.177, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/input/misc/iqs269a.c", i32 1603, i32 8}
!313 = !{ptr @dev_attr_counts, !312, !"dev_attr_counts", i1 false, i1 false}
!314 = !{ptr @.str.178, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/input/misc/iqs269a.c", i32 1335, i32 35}
!316 = !{ptr @.str.179, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/input/misc/iqs269a.c", i32 1604, i32 8}
!318 = !{ptr @dev_attr_hall_bin, !317, !"dev_attr_hall_bin", i1 false, i1 false}
!319 = !{ptr @.str.180, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/input/misc/iqs269a.c", i32 1605, i32 8}
!321 = !{ptr @dev_attr_hall_enable, !320, !"dev_attr_hall_enable", i1 false, i1 false}
!322 = !{ptr @.str.181, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/input/misc/iqs269a.c", i32 1606, i32 8}
!324 = !{ptr @dev_attr_ch_number, !323, !"dev_attr_ch_number", i1 false, i1 false}
!325 = !{ptr @.str.182, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/input/misc/iqs269a.c", i32 1607, i32 8}
!327 = !{ptr @dev_attr_rx_enable, !326, !"dev_attr_rx_enable", i1 false, i1 false}
!328 = !{ptr @.str.183, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/input/misc/iqs269a.c", i32 1608, i32 8}
!330 = !{ptr @dev_attr_ati_mode, !329, !"dev_attr_ati_mode", i1 false, i1 false}
!331 = !{ptr @.str.184, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/input/misc/iqs269a.c", i32 1609, i32 8}
!333 = !{ptr @dev_attr_ati_base, !332, !"dev_attr_ati_base", i1 false, i1 false}
!334 = !{ptr @.str.185, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/input/misc/iqs269a.c", i32 1610, i32 8}
!336 = !{ptr @dev_attr_ati_target, !335, !"dev_attr_ati_target", i1 false, i1 false}
!337 = !{ptr @.str.186, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/input/misc/iqs269a.c", i32 1611, i32 8}
!339 = !{ptr @dev_attr_ati_trigger, !338, !"dev_attr_ati_trigger", i1 false, i1 false}
!340 = !{ptr @iqs269_of_match, !341, !"iqs269_of_match", i1 false, i1 false}
!341 = !{!"../drivers/input/misc/iqs269a.c", i32 1808, i32 34}
!342 = !{ptr @iqs269_pm, !343, !"iqs269_pm", i1 false, i1 false}
!343 = !{!"../drivers/input/misc/iqs269a.c", i32 1806, i32 8}
!344 = !{i32 1, !"wchar_size", i32 2}
!345 = !{i32 1, !"min_enum_size", i32 4}
!346 = !{i32 8, !"branch-target-enforcement", i32 0}
!347 = !{i32 8, !"sign-return-address", i32 0}
!348 = !{i32 8, !"sign-return-address-all", i32 0}
!349 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!350 = !{i32 7, !"uwtable", i32 1}
!351 = !{i32 7, !"frame-pointer", i32 2}
!352 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!353 = !{!"auto-init"}
!354 = !{i8 0, i8 2}
