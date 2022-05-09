; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/arche-apb-ctrl.c_pt.bc'
source_filename = "../drivers/staging/greybus/arche-apb-ctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.arche_apb_ctrl_drvdata = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }

@arche_apb_ctrl_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arche_apb_ctrl_probe, ptr @arche_apb_ctrl_remove, ptr @arche_apb_ctrl_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arche_apb_ctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arche_apb_ctrl_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@coldboot_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to enable core regulator\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"coldboot_seq\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/greybus/arche-apb-ctrl.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@coldboot_seq._entry_ptr = internal global ptr @coldboot_seq._entry, section ".printk_index", align 4
@coldboot_seq._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 94, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to enable IO regulator\0A\00", [33 x i8] zeroinitializer }, align 32
@coldboot_seq._entry_ptr.7 = internal global ptr @coldboot_seq._entry.5, section ".printk_index", align 4
@fw_flashing_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.8, ptr @.str.2, i32 127, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fw_flashing_seq\00", [16 x i8] zeroinitializer }, align 32
@fw_flashing_seq._entry_ptr = internal global ptr @fw_flashing_seq._entry, section ".printk_index", align 4
@fw_flashing_seq._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.2, i32 133, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@fw_flashing_seq._entry_ptr.10 = internal global ptr @fw_flashing_seq._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi-en\00", [25 x i8] zeroinitializer }, align 32
@fw_flashing_seq._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 149, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed requesting SPI bus en GPIO: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@fw_flashing_seq._entry_ptr.14 = internal global ptr @fw_flashing_seq._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arche-apb-ctrl\00", [17 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"usbffff,2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @arche_apb_ctrl_suspend, ptr @arche_apb_ctrl_resume, ptr @arche_apb_ctrl_suspend, ptr @arche_apb_ctrl_resume, ptr @arche_apb_ctrl_suspend, ptr @arche_apb_ctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 399, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get apb devicetree data %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arche_apb_ctrl_probe\00", [43 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_probe._entry_ptr = internal global ptr @arche_apb_ctrl_probe._entry, section ".printk_index", align 4
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arche,init-disable\00", [45 x i8] zeroinitializer }, align 32
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr @state_store }, [36 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.2, i32 414, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create state file in sysfs\0A\00", [58 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_probe._entry_ptr.21 = internal global ptr @arche_apb_ctrl_probe._entry.19, section ".printk_index", align 4
@arche_apb_ctrl_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.17, ptr @.str.2, i32 418, ptr @.str.24, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device registered successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arche_apb_ctrl_probe._entry_ptr.25 = internal global ptr @arche_apb_ctrl_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 326, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed requesting reset GPIO: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"apb_ctrl_get_devtree_data\00", [38 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr = internal global ptr @apb_ctrl_get_devtree_data._entry, section ".printk_index", align 4
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"boot-ret\00", [23 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 333, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed requesting bootret GPIO: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.32 = internal global ptr @apb_ctrl_get_devtree_data._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwr-off\00", [24 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.28, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed requesting pwroff_n GPIO: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.36 = internal global ptr @apb_ctrl_get_devtree_data._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clock-en\00", [23 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 349, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed requesting APB clock en GPIO: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.40 = internal global ptr @apb_ctrl_get_devtree_data._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pwr-down\00", [23 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.28, ptr @.str.2, i32 356, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed requesting power down GPIO: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.45 = internal global ptr @apb_ctrl_get_devtree_data._entry.42, section ".printk_index", align 4
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vcore\00", [26 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.28, ptr @.str.2, i32 363, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no core regulator found\0A\00", [39 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.49 = internal global ptr @apb_ctrl_get_devtree_data._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vio\00", [28 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.28, ptr @.str.2, i32 367, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no IO regulator found\0A\00", [41 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.53 = internal global ptr @apb_ctrl_get_devtree_data._entry.51, section ".printk_index", align 4
@apb_ctrl_get_devtree_data._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.28, ptr @.str.2, i32 371, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not get pinctrl handle\0A\00", [34 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.56 = internal global ptr @apb_ctrl_get_devtree_data._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.28, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not get default pin state\0A\00", [63 x i8] zeroinitializer }, align 32
@apb_ctrl_get_devtree_data._entry_ptr.60 = internal global ptr @apb_ctrl_get_devtree_data._entry.58, section ".printk_index", align 4
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gb,spi-en-active-high\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"off%s\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",disabled\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standby\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_flashing\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown state\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_flashing\00", [20 x i8] zeroinitializer }, align 32
@state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.74, ptr @.str.2, i32 288, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"state_store\00", [20 x i8] zeroinitializer }, align 32
@state_store._entry_ptr = internal global ptr @state_store._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@___asan_gen_.78 = private unnamed_addr constant [29 x i8] c"arche_apb_ctrl_device_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 472, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 86, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 94, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 127, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 133, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 145, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 148, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 477, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [24 x i8] c"arche_apb_ctrl_of_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 467, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [22 x i8] c"arche_apb_ctrl_pm_ops\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 464, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 399, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 406, i32 47 }
@___asan_gen_.144 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 414, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 418, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 323, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 326, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 330, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 333, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 338, i32 45 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 341, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 346, i32 45 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 349, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 353, i32 35 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 356, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 361, i32 39 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 363, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 365, i32 37 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 367, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 371, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 374, i32 56 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 376, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 381, i32 47 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 315, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 302, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 303, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 303, i32 40 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 307, i32 23 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 309, i32 23 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 311, i32 23 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 257, i32 23 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 262, i32 30 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 272, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 277, i32 30 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.286 = private constant [44 x i8] c"../drivers/staging/greybus/arche-apb-ctrl.c\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.286, i32 288, i32 3 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @apb_ctrl_get_devtree_data._entry, ptr @apb_ctrl_get_devtree_data._entry.30, ptr @apb_ctrl_get_devtree_data._entry.34, ptr @apb_ctrl_get_devtree_data._entry.38, ptr @apb_ctrl_get_devtree_data._entry.42, ptr @apb_ctrl_get_devtree_data._entry.47, ptr @apb_ctrl_get_devtree_data._entry.51, ptr @apb_ctrl_get_devtree_data._entry.54, ptr @apb_ctrl_get_devtree_data._entry.58, ptr @apb_ctrl_get_devtree_data._entry_ptr, ptr @apb_ctrl_get_devtree_data._entry_ptr.32, ptr @apb_ctrl_get_devtree_data._entry_ptr.36, ptr @apb_ctrl_get_devtree_data._entry_ptr.40, ptr @apb_ctrl_get_devtree_data._entry_ptr.45, ptr @apb_ctrl_get_devtree_data._entry_ptr.49, ptr @apb_ctrl_get_devtree_data._entry_ptr.53, ptr @apb_ctrl_get_devtree_data._entry_ptr.56, ptr @apb_ctrl_get_devtree_data._entry_ptr.60, ptr @arche_apb_ctrl_probe._entry, ptr @arche_apb_ctrl_probe._entry.19, ptr @arche_apb_ctrl_probe._entry.22, ptr @arche_apb_ctrl_probe._entry_ptr, ptr @arche_apb_ctrl_probe._entry_ptr.21, ptr @arche_apb_ctrl_probe._entry_ptr.25, ptr @arche_apb_exit, ptr @coldboot_seq._entry, ptr @coldboot_seq._entry.5, ptr @coldboot_seq._entry_ptr, ptr @coldboot_seq._entry_ptr.7, ptr @fw_flashing_seq._entry, ptr @fw_flashing_seq._entry.12, ptr @fw_flashing_seq._entry.9, ptr @fw_flashing_seq._entry_ptr, ptr @fw_flashing_seq._entry_ptr.10, ptr @fw_flashing_seq._entry_ptr.14, ptr @state_store._entry, ptr @state_store._entry_ptr, ptr @arche_apb_ctrl_device_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @arche_apb_ctrl_of_match, ptr @arche_apb_ctrl_pm_ops, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @dev_attr_state, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coldboot_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coldboot_seq._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_flashing_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_flashing_seq._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_flashing_seq._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_apb_ctrl_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_ctrl_get_devtree_data._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apb_ctrl_coldboot(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call fastcc i32 @coldboot_seq(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @coldboot_seq(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init_disabled, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_raw_value(ptr noundef %7, i32 noundef 0) #7
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp3 = icmp eq i32 %9, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %spi_en = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %spi_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_en, align 4
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_gpiod_put(ptr noundef %dev1, ptr noundef nonnull %11) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %vcore = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %vcore to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vcore, align 4
  %cmp.i = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.if.end15_crit_edge, label %if.then9

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 @regulator_enable(ptr noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then9.if.end15_crit_edge, label %do.end

if.then9.if.end15_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end15:                                         ; preds = %if.then9.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %vio = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vio, align 4
  %cmp.i56 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.end15.if.end26_crit_edge, label %if.then17

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then17:                                        ; preds = %if.end15
  %call19 = tail call i32 @regulator_enable(ptr noundef %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then17.if.end26_crit_edge, label %do.end24

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.end24:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end26:                                         ; preds = %if.then17.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i, align 4
  %boot_ret.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %boot_ret.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %boot_ret.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 0) #7
  %clk_en = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_en, align 4
  %tobool27.not = icmp eq ptr %21, null
  br i1 %tobool27.not, label %if.end26.if.end30_crit_edge, label %if.then28

if.end26.if.end30_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %21, i32 noundef 1) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end26.if.end30_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_raw_value(ptr noundef %23, i32 noundef 1) #7
  %24 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end24, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end30 ], [ %call19, %do.end24 ], [ %call11, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apb_ctrl_fw_flashing(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call fastcc i32 @fw_flashing_seq(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_flashing_seq(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init_disabled, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp = icmp eq i32 %5, 3
  br i1 %cmp, label %lor.lhs.false.cleanup31_crit_edge, label %if.end

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup31

if.end:                                           ; preds = %lor.lhs.false
  %vcore = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %vcore to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vcore, align 4
  %call2 = tail call i32 @regulator_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str) #10
  br label %cleanup31

if.end5:                                          ; preds = %if.end
  %vio = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vio, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end12, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #10
  br label %cleanup31

if.end12:                                         ; preds = %if.end5
  %spi_en = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %spi_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spi_en, align 4
  %tobool13.not = icmp eq ptr %11, null
  br i1 %tobool13.not, label %if.end12.if.end29_crit_edge, label %if.then14

if.end12.if.end29_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then14:                                        ; preds = %if.end12
  %spi_en_polarity_high = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %spi_en_polarity_high to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %spi_en_polarity_high, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  %. = select i1 %tobool15.not, i32 3, i32 7
  %call18 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %.) #7
  %14 = ptrtoint ptr %spi_en to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call18, ptr %spi_en, align 4
  %cmp.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %if.then14.if.end29_crit_edge

if.then14.if.end29_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

cleanup.thread:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call18 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %15) #10
  br label %cleanup31

if.end29:                                         ; preds = %if.then14.if.end29_crit_edge, %if.end12.if.end29_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_raw_value(ptr noundef %17, i32 noundef 0) #7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %state, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.end29, %cleanup.thread, %do.end11, %do.end, %lor.lhs.false.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.1 = phi i32 [ %call2, %do.end ], [ %call6, %do.end11 ], [ 0, %if.end29 ], [ 0, %lor.lhs.false.cleanup31_crit_edge ], [ 0, %entry.cleanup31_crit_edge ], [ %15, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @apb_ctrl_standby_boot(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %init_disabled.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_disabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init_disabled.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.standby_boot_seq.exit_crit_edge

entry.standby_boot_seq.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %standby_boot_seq.exit

if.end.i:                                         ; preds = %entry
  %state.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.i.if.end11.i_crit_edge [
    i32 2, label %if.end.i.standby_boot_seq.exit_crit_edge
    i32 0, label %if.end.i.standby_boot_seq.exit_crit_edge1
    i32 3, label %land.lhs.true.i
  ]

if.end.i.standby_boot_seq.exit_crit_edge1:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %standby_boot_seq.exit

if.end.i.standby_boot_seq.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %standby_boot_seq.exit

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %spi_en.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %spi_en.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_en.i, align 4
  %tobool8.not.i = icmp eq ptr %8, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_gpiod_put(ptr noundef %dev, ptr noundef nonnull %8) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %state.i, align 4
  br label %standby_boot_seq.exit

standby_boot_seq.exit:                            ; preds = %if.end11.i, %if.end.i.standby_boot_seq.exit_crit_edge, %if.end.i.standby_boot_seq.exit_crit_edge1, %entry.standby_boot_seq.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @apb_ctrl_poweroff(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call fastcc void @poweroff_seq(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @poweroff_seq(ptr noundef %pdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %init_disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %init_disabled, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %5, label %lor.lhs.false.if.end7_crit_edge [
    i32 0, label %lor.lhs.false.cleanup_crit_edge
    i32 3, label %land.lhs.true
  ]

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

land.lhs.true:                                    ; preds = %lor.lhs.false
  %spi_en = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 14
  %7 = ptrtoint ptr %spi_en to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spi_en, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %land.lhs.true.if.end7_crit_edge, label %if.then5

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_gpiod_put(ptr noundef %dev1, ptr noundef nonnull %8) #7
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true.if.end7_crit_edge, %lor.lhs.false.if.end7_crit_edge
  %clk_en = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %clk_en to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_en, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.if.end11_crit_edge, label %if.then9

if.end7.if.end11_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef nonnull %10, i32 noundef 0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end7.if.end11_crit_edge
  %vcore = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %vcore to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vcore, align 4
  %cmp.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.if.end20_crit_edge, label %land.lhs.true13

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

land.lhs.true13:                                  ; preds = %if.end11
  %call15 = tail call i32 @regulator_is_enabled(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %land.lhs.true13.if.end20_crit_edge

land.lhs.true13.if.end20_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %vcore to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vcore, align 4
  %call19 = tail call i32 @regulator_disable(ptr noundef %14) #7
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true13.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %vio = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vio, align 4
  %cmp.i49 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.end20.if.end29_crit_edge, label %land.lhs.true22

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

land.lhs.true22:                                  ; preds = %if.end20
  %call24 = tail call i32 @regulator_is_enabled(ptr noundef %16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp sgt i32 %call24, 0
  br i1 %cmp25, label %if.then26, label %land.lhs.true22.if.end29_crit_edge

land.lhs.true22.if.end29_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %vio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vio, align 4
  %call28 = tail call i32 @regulator_disable(ptr noundef %18) #7
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true22.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_raw_value(ptr noundef %20, i32 noundef 0) #7
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arche_apb_init() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arche_apb_ctrl_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @arche_apb_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arche_apb_ctrl_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_gpiod_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_apb_ctrl_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i39 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 3) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i39, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call.i39 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %1) #10
  br label %apb_ctrl_get_devtree_data.exit

if.end.i:                                         ; preds = %if.end
  %call6.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef 3) #7
  %boot_ret.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %boot_ret.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call6.i, ptr %boot_ret.i, align 4
  %cmp.i143.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i143.i, label %if.then9.i, label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call6.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef %3) #10
  br label %apb_ctrl_get_devtree_data.exit

if.end15.i:                                       ; preds = %if.end.i
  %call16.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef 1) #7
  %pwroff.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %pwroff.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16.i, ptr %pwroff.i, align 4
  %cmp.i144.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144.i, label %if.then19.i, label %if.end25.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call16.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %5) #10
  br label %apb_ctrl_get_devtree_data.exit

if.end25.i:                                       ; preds = %if.end15.i
  %call26.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef 3) #7
  %clk_en.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %clk_en.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call26.i, ptr %clk_en.i, align 4
  %cmp.i145.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145.i, label %if.then29.i, label %if.end35.i

if.then29.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call26.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %7) #10
  br label %apb_ctrl_get_devtree_data.exit

if.end35.i:                                       ; preds = %if.end25.i
  %call36.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.41, i32 noundef 3) #7
  %pwrdn.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %pwrdn.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call36.i, ptr %pwrdn.i, align 4
  %cmp.i146.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146.i, label %if.then39.i, label %if.end45.i

if.then39.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call36.i to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %9) #10
  br label %apb_ctrl_get_devtree_data.exit

if.end45.i:                                       ; preds = %if.end35.i
  %call46.i = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.46) #7
  %vcore.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %vcore.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call46.i, ptr %vcore.i, align 4
  %cmp.i147.i = icmp ugt ptr %call46.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147.i, label %do.end52.i, label %if.end45.i.if.end53.i_crit_edge

if.end45.i.if.end53.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53.i

do.end52.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.48) #10
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end52.i, %if.end45.i.if.end53.i_crit_edge
  %call54.i = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.50) #7
  %vio.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %vio.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call54.i, ptr %vio.i, align 4
  %cmp.i148.i = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148.i, label %do.end60.i, label %if.end53.i.if.end61.i_crit_edge

if.end53.i.if.end61.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end61.i

do.end60.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.52) #10
  br label %if.end61.i

if.end61.i:                                       ; preds = %do.end60.i, %if.end53.i.if.end61.i_crit_edge
  %call63.i = tail call ptr @devm_pinctrl_get(ptr noundef %dev1) #7
  %pinctrl.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call63.i, ptr %pinctrl.i, align 4
  %cmp.i149.i = icmp ugt ptr %call63.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149.i, label %do.end69.i, label %if.end73.i

do.end69.i:                                       ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.55) #10
  %13 = ptrtoint ptr %pinctrl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pinctrl.i, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %apb_ctrl_get_devtree_data.exit

if.end73.i:                                       ; preds = %if.end61.i
  %call75.i = tail call ptr @pinctrl_lookup_state(ptr noundef %call63.i, ptr noundef nonnull @.str.57) #7
  %pin_default.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 13
  %16 = ptrtoint ptr %pin_default.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call75.i, ptr %pin_default.i, align 4
  %cmp.i150.i = icmp ugt ptr %call75.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150.i, label %do.end81.i, label %if.end85.i

do.end81.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.59) #10
  %17 = ptrtoint ptr %pin_default.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pin_default.i, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %apb_ctrl_get_devtree_data.exit

if.end85.i:                                       ; preds = %if.end73.i
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %20 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %21, ptr noundef nonnull @.str.61, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end85.i.if.end6_crit_edge, label %if.then88.i

if.end85.i.if.end6_crit_edge:                     ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then88.i:                                      ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %spi_en_polarity_high.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %spi_en_polarity_high.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %spi_en_polarity_high.i, align 4
  br label %if.end6

apb_ctrl_get_devtree_data.exit:                   ; preds = %do.end81.i, %do.end69.i, %if.then39.i, %if.then29.i, %if.then19.i, %if.then9.i, %if.then.i
  %retval.0.i = phi i32 [ %1, %if.then.i ], [ %3, %if.then9.i ], [ %5, %if.then19.i ], [ %7, %if.then29.i ], [ %9, %if.then39.i ], [ %15, %do.end69.i ], [ %19, %do.end81.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool4.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool4.not, label %apb_ctrl_get_devtree_data.exit.if.end6_crit_edge, label %do.end

apb_ctrl_get_devtree_data.exit.if.end6_crit_edge: ; preds = %apb_ctrl_get_devtree_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

do.end:                                           ; preds = %apb_ctrl_get_devtree_data.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i) #10
  br label %cleanup

if.end6:                                          ; preds = %apb_ctrl_get_devtree_data.exit.if.end6_crit_edge, %if.then88.i, %if.end85.i.if.end6_crit_edge
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %24 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %of_node, align 8
  %call.i40 = tail call ptr @of_find_property(ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef null) #7
  %tobool.i.not = icmp eq ptr %call.i40, null
  br i1 %tobool.i.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %init_disabled to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %init_disabled, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call11 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end20, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #10
  br label %cleanup

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %do.end ], [ %call11, %do.end16 ], [ 0, %do.end20 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_apb_ctrl_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_state) #7
  tail call fastcc void @poweroff_seq(ptr noundef %pdev)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arche_apb_ctrl_shutdown(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @poweroff_seq(ptr noundef %pdev) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %init_disabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %init_disabled, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.65, ptr @.str.64
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.63, ptr noundef nonnull %cond)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %7, i32 8)
  store i64 7017580640680086016, ptr %buf, align 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.67, i32 9)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.68, i32 13)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = call ptr @memcpy(ptr %buf, ptr @.str.69, i32 15)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 14, %sw.default ], [ 12, %sw.bb6 ], [ 8, %sw.bb4 ], [ 7, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.70) #7
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @poweroff_seq(ptr noundef %add.ptr)
  br label %if.end37.thread

if.else:                                          ; preds = %entry
  %call3 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.71) #7
  br i1 %call3, label %if.then4, label %if.else17

if.then4:                                         ; preds = %if.else
  %state5 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  tail call fastcc void @poweroff_seq(ptr noundef %add.ptr)
  %init_disabled = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %init_disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %init_disabled, align 4, !range !143
  store i8 0, ptr %init_disabled, align 4
  %call10 = tail call fastcc i32 @coldboot_seq(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end8.if.end37.thread_crit_edge, label %if.then12

if.end8.if.end37.thread_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %init_disabled to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %init_disabled, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.else
  %call18 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.72) #7
  br i1 %call18, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else17
  %state20 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %state20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp21 = icmp eq i32 %10, 2
  br i1 %cmp21, label %if.then19.cleanup_crit_edge, label %if.end23

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.then19
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %init_disabled.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %12, i32 0, i32 7
  %13 = ptrtoint ptr %init_disabled.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %init_disabled.i, align 4, !range !143
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.if.end37.thread_crit_edge

if.end23.if.end37.thread_crit_edge:               ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread

if.end.i:                                         ; preds = %if.end23
  %state.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %12, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %16, label %if.end.i.if.end11.i_crit_edge [
    i32 2, label %if.end.i.if.end37.thread_crit_edge
    i32 0, label %if.end.i.if.end37.thread_crit_edge70
    i32 3, label %land.lhs.true.i
  ]

if.end.i.if.end37.thread_crit_edge70:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread

if.end.i.if.end37.thread_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %spi_en.i = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %12, i32 0, i32 14
  %18 = ptrtoint ptr %spi_en.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi_en.i, align 4
  %tobool8.not.i = icmp eq ptr %19, null
  br i1 %tobool8.not.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @devm_gpiod_put(ptr noundef %dev, ptr noundef nonnull %19) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %20 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %state.i, align 4
  br label %if.end37.thread

if.else25:                                        ; preds = %if.else17
  %call26 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.73) #7
  br i1 %call26, label %if.then27, label %do.end

if.then27:                                        ; preds = %if.else25
  %state28 = getelementptr inbounds %struct.arche_apb_ctrl_drvdata, ptr %1, i32 0, i32 6
  %21 = ptrtoint ptr %state28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp29 = icmp eq i32 %22, 3
  br i1 %cmp29, label %if.then27.cleanup_crit_edge, label %if.end37

if.then27.cleanup_crit_edge:                      ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.69) #10
  br label %cleanup

if.end37:                                         ; preds = %if.then27
  tail call fastcc void @poweroff_seq(ptr noundef %add.ptr)
  %call32 = tail call fastcc i32 @fw_flashing_seq(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool38.not = icmp eq i32 %call32, 0
  br i1 %tobool38.not, label %if.end37.if.end37.thread_crit_edge, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37.if.end37.thread_crit_edge:               ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37.thread

if.end37.thread:                                  ; preds = %if.end37.if.end37.thread_crit_edge, %if.end11.i, %if.end.i.if.end37.thread_crit_edge, %if.end.i.if.end37.thread_crit_edge70, %if.end23.if.end37.thread_crit_edge, %if.end8.if.end37.thread_crit_edge, %if.end
  br label %cleanup

cleanup:                                          ; preds = %if.end37.thread, %if.end37.cleanup_crit_edge, %do.end, %if.then27.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then12, %if.then4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then.cleanup_crit_edge ], [ %count, %if.then4.cleanup_crit_edge ], [ %count, %if.then19.cleanup_crit_edge ], [ %count, %if.then27.cleanup_crit_edge ], [ %count, %if.end37.thread ], [ %call32, %if.end37.cleanup_crit_edge ], [ -22, %do.end ], [ %call10, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arche_apb_ctrl_suspend(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arche_apb_ctrl_resume(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !24, !25, !27, !29, !31, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !74, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !92, !93, !95, !97, !98, !99, !101, !103, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !129, !130, !132}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140, !141}
!llvm.ident = !{!142}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 86, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @coldboot_seq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @coldboot_seq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 94, i32 4}
!10 = !{ptr @coldboot_seq._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @coldboot_seq._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 127, i32 3}
!14 = !{ptr @fw_flashing_seq._entry, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @fw_flashing_seq._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @fw_flashing_seq._entry.9, !17, !"_entry", i1 false, i1 false}
!17 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 133, i32 3}
!18 = !{ptr @fw_flashing_seq._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 145, i32 37}
!21 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 148, i32 4}
!23 = !{ptr @fw_flashing_seq._entry.12, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @fw_flashing_seq._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 477, i32 11}
!27 = !{ptr @arche_apb_ctrl_device_driver, !28, !"arche_apb_ctrl_device_driver", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 472, i32 31}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 399, i32 3}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @arche_apb_ctrl_probe._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @arche_apb_ctrl_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 406, i32 47}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 414, i32 3}
!38 = !{ptr @arche_apb_ctrl_probe._entry.19, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @arche_apb_ctrl_probe._entry_ptr.21, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 418, i32 2}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @arche_apb_ctrl_probe._entry.22, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @arche_apb_ctrl_probe._entry_ptr.25, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 323, i32 36}
!47 = !{ptr @.str.27, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 326, i32 3}
!49 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @apb_ctrl_get_devtree_data._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 330, i32 38}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 333, i32 3}
!56 = !{ptr @apb_ctrl_get_devtree_data._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 338, i32 45}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 341, i32 3}
!62 = !{ptr @apb_ctrl_get_devtree_data._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 346, i32 45}
!66 = !{ptr @.str.39, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 349, i32 3}
!68 = !{ptr @apb_ctrl_get_devtree_data._entry.38, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.40, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.41, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 353, i32 35}
!72 = !{ptr @.str.43, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 356, i32 3}
!74 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @apb_ctrl_get_devtree_data._entry.42, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.45, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 361, i32 39}
!79 = !{ptr @.str.48, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 363, i32 3}
!81 = !{ptr @apb_ctrl_get_devtree_data._entry.47, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.49, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.50, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 365, i32 37}
!85 = !{ptr @.str.52, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 367, i32 3}
!87 = !{ptr @apb_ctrl_get_devtree_data._entry.51, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.53, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.55, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 371, i32 3}
!91 = !{ptr @apb_ctrl_get_devtree_data._entry.54, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.56, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 374, i32 56}
!95 = !{ptr @.str.59, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 376, i32 3}
!97 = !{ptr @apb_ctrl_get_devtree_data._entry.58, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @apb_ctrl_get_devtree_data._entry_ptr.60, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.61, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 381, i32 47}
!101 = !{ptr @.str.62, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 315, i32 8}
!103 = !{ptr @dev_attr_state, !102, !"dev_attr_state", i1 false, i1 false}
!104 = !{ptr @.str.63, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 302, i32 23}
!106 = !{ptr @.str.64, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 303, i32 26}
!108 = !{ptr @.str.65, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 303, i32 40}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 305, i32 23}
!112 = !{ptr @.str.67, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 307, i32 23}
!114 = !{ptr @.str.68, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 309, i32 23}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 311, i32 23}
!118 = !{ptr @.str.70, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 257, i32 23}
!120 = !{ptr @.str.71, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 262, i32 30}
!122 = !{ptr @.str.72, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 272, i32 30}
!124 = !{ptr @.str.73, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 277, i32 30}
!126 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 288, i32 3}
!128 = !{ptr @state_store._entry, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @state_store._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @arche_apb_ctrl_of_match, !131, !"arche_apb_ctrl_of_match", i1 false, i1 false}
!131 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 467, i32 34}
!132 = !{ptr @arche_apb_ctrl_pm_ops, !133, !"arche_apb_ctrl_pm_ops", i1 false, i1 false}
!133 = !{!"../drivers/staging/greybus/arche-apb-ctrl.c", i32 464, i32 8}
!134 = !{i32 1, !"wchar_size", i32 2}
!135 = !{i32 1, !"min_enum_size", i32 4}
!136 = !{i32 8, !"branch-target-enforcement", i32 0}
!137 = !{i32 8, !"sign-return-address", i32 0}
!138 = !{i32 8, !"sign-return-address-all", i32 0}
!139 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!140 = !{i32 7, !"uwtable", i32 1}
!141 = !{i32 7, !"frame-pointer", i32 2}
!142 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!143 = !{i8 0, i8 2}
