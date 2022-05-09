; ModuleID = '/llk/IR_all_yes/drivers/input/misc/pm8941-pwrkey.c_pt.bc'
source_filename = "../drivers/input/misc/pm8941-pwrkey.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pm8941_data = type { i32, i32, i8, i8, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm8941_pwrkey = type { ptr, i32, i32, ptr, ptr, i32, %struct.notifier_block, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pm8941_pwrkey__229_368_pm8941_pwrkey_driver_init6 = internal global ptr @pm8941_pwrkey_driver_init, section ".initcall6.init", align 4
@pm8941_pwrkey_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8941_pwrkey_probe, ptr @pm8941_pwrkey_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8941_pwr_key_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8941_pwr_key_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8941_pwrkey_driver_exit = internal global ptr @pm8941_pwrkey_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description230 = internal constant [50 x i8] c"pm8941_pwrkey.description=PM8941 Power Key driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [52 x i8] c"pm8941_pwrkey.file=drivers/input/misc/pm8941-pwrkey\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [29 x i8] c"pm8941_pwrkey.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm8941-pwrkey\00", [18 x i8] zeroinitializer }, align 32
@pm8941_pwr_key_id_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-pwrkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pwrkey_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-resin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @resin_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmk8350-pwrkey\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pon_gen3_pwrkey_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmk8350-resin\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @pon_gen3_resin_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@pm8941_pwr_key_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm8941_pwrkey_suspend, ptr @pm8941_pwrkey_resume, ptr @pm8941_pwrkey_suspend, ptr @pm8941_pwrkey_resume, ptr @pm8941_pwrkey_suspend, ptr @pm8941_pwrkey_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debounce\00", [23 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 181, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid debounce time: %u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8941_pwrkey_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/misc/pm8941-pwrkey.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr = internal global ptr @pm8941_pwrkey_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bias-pull-up\00", [19 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 204, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to locate regmap\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.10 = internal global ptr @pm8941_pwrkey_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set debounce: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.14 = internal global ptr @pm8941_pwrkey_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.3, ptr @.str.4, ptr @.str.17, i8 0, i8 58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm8941_pwrkey\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"no linux,code assuming power (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.3, ptr @.str.4, ptr @.str.18, i8 0, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 257, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.20 = internal global ptr @pm8941_pwrkey_probe._entry.19, section ".printk_index", align 4
@pm8941_pwrkey_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 269, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set pull: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.23 = internal global ptr @pm8941_pwrkey_probe._entry.21, section ".printk_index", align 4
@pm8941_pwrkey_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 279, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed requesting IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.26 = internal global ptr @pm8941_pwrkey_probe._entry.24, section ".printk_index", align 4
@pm8941_pwrkey_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 286, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to register input device: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.29 = internal global ptr @pm8941_pwrkey_probe._entry.27, section ".printk_index", align 4
@pm8941_pwrkey_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to register reboot notifier: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@pm8941_pwrkey_probe._entry_ptr.32 = internal global ptr @pm8941_pwrkey_probe._entry.30, section ".printk_index", align 4
@pm8941_reboot_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.4, i32 88, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to clear ps hold reset enable: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8941_reboot_notify\00", [43 x i8] zeroinitializer }, align 32
@pm8941_reboot_notify._entry_ptr = internal global ptr @pm8941_reboot_notify._entry, section ".printk_index", align 4
@reboot_mode = external dso_local local_unnamed_addr global i32, align 4
@pm8941_reboot_notify._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to set ps hold reset type: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@pm8941_reboot_notify._entry_ptr.37 = internal global ptr @pm8941_reboot_notify._entry.35, section ".printk_index", align 4
@pm8941_reboot_notify._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.4, i32 123, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to re-set enable: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@pm8941_reboot_notify._entry_ptr.40 = internal global ptr @pm8941_reboot_notify._entry.38, section ".printk_index", align 4
@pwrkey_data = internal constant { %struct.pm8941_data, [44 x i8] } { %struct.pm8941_data { i32 2, i32 1, i8 1, i8 1, ptr @.str.16, ptr @.str.41 }, [44 x i8] zeroinitializer }, align 32
@resin_data = internal constant { %struct.pm8941_data, [44 x i8] } { %struct.pm8941_data { i32 1, i32 2, i8 1, i8 1, ptr @.str.42, ptr @.str.43 }, [44 x i8] zeroinitializer }, align 32
@pon_gen3_pwrkey_data = internal constant { %struct.pm8941_data, [44 x i8] } { %struct.pm8941_data { i32 0, i32 128, i8 0, i8 0, ptr @.str.44, ptr @.str.45 }, [44 x i8] zeroinitializer }, align 32
@pon_gen3_resin_data = internal constant { %struct.pm8941_data, [44 x i8] } { %struct.pm8941_data { i32 0, i32 64, i8 0, i8 0, ptr @.str.46, ptr @.str.47 }, [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pm8941_pwrkey/input0\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm8941_resin\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8941_resin/input0\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmic_pwrkey\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pmic_pwrkey/input0\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmic_resin\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic_resin/input0\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant [21 x i8] c"pm8941_pwrkey_driver\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 359, i32 31 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 363, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [24 x i8] c"pm8941_pwr_key_id_table\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 350, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"pm8941_pwr_key_pm_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 166, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 177, i32 46 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 181, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 185, i32 53 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 204, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 209, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 224, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 228, i32 50 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 231, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 238, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 256, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 269, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 279, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 285, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 294, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 86, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 115, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 123, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant [12 x i8] c"pwrkey_data\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 316, i32 33 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"resin_data\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 325, i32 33 }
@___asan_gen_.165 = private unnamed_addr constant [21 x i8] c"pon_gen3_pwrkey_data\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 334, i32 33 }
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c"pon_gen3_resin_data\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 342, i32 33 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 320, i32 10 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 328, i32 10 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 329, i32 10 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 336, i32 10 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 337, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 344, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.190 = private constant [38 x i8] c"../drivers/input/misc/pm8941-pwrkey.c\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.190, i32 345, i32 10 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pm8941_pwrkey_driver_exit, ptr @__initcall__kmod_pm8941_pwrkey__229_368_pm8941_pwrkey_driver_init6, ptr @pm8941_pwrkey_driver_exit, ptr @pm8941_pwrkey_probe._entry, ptr @pm8941_pwrkey_probe._entry.12, ptr @pm8941_pwrkey_probe._entry.19, ptr @pm8941_pwrkey_probe._entry.21, ptr @pm8941_pwrkey_probe._entry.24, ptr @pm8941_pwrkey_probe._entry.27, ptr @pm8941_pwrkey_probe._entry.30, ptr @pm8941_pwrkey_probe._entry.8, ptr @pm8941_pwrkey_probe._entry_ptr, ptr @pm8941_pwrkey_probe._entry_ptr.10, ptr @pm8941_pwrkey_probe._entry_ptr.14, ptr @pm8941_pwrkey_probe._entry_ptr.20, ptr @pm8941_pwrkey_probe._entry_ptr.23, ptr @pm8941_pwrkey_probe._entry_ptr.26, ptr @pm8941_pwrkey_probe._entry_ptr.29, ptr @pm8941_pwrkey_probe._entry_ptr.32, ptr @pm8941_reboot_notify._entry, ptr @pm8941_reboot_notify._entry.35, ptr @pm8941_reboot_notify._entry.38, ptr @pm8941_reboot_notify._entry_ptr, ptr @pm8941_reboot_notify._entry_ptr.37, ptr @pm8941_reboot_notify._entry_ptr.40, ptr @pm8941_pwrkey_driver, ptr @.str, ptr @pm8941_pwr_key_id_table, ptr @pm8941_pwr_key_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @pwrkey_data, ptr @resin_data, ptr @pon_gen3_pwrkey_data, ptr @pon_gen3_resin_data, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwr_key_id_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwr_key_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_pwrkey_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_reboot_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_reboot_notify._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8941_reboot_notify._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrkey_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resin_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pon_gen3_pwrkey_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pon_gen3_resin_data to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8941_pwrkey_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8941_pwrkey_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8941_pwrkey_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %req_delay = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req_delay) #6
  %0 = ptrtoint ptr %req_delay to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %req_delay, align 4, !annotation !110
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %req_delay, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %req_delay to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 15625, ptr %req_delay, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %req_delay to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %req_delay, align 4
  %6 = add i32 %5, -2000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2000000, i32 %6)
  %7 = icmp ult i32 %6, -2000000
  br i1 %7, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %5) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call.i = call ptr @of_find_property(ptr noundef %9, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  %call.i284 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool10.not = icmp eq ptr %call.i284, null
  br i1 %tobool10.not, label %if.end4.cleanup_crit_edge, label %if.end12

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %call.i284 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call.i284, align 4
  %call16 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %data = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %data, align 4
  %parent18 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent18, align 8
  %call19 = call ptr @dev_get_regmap(ptr noundef %13, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 3
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %regmap, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.then22, label %if.end12.if.end40_crit_edge

if.end12.if.end40_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then22:                                        ; preds = %if.end12
  %parent23 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %parent23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent23, align 8
  %call24 = call ptr @dev_get_regmap(ptr noundef %16, ptr noundef null) #6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %regmap, align 4
  %tobool27.not = icmp eq ptr %call24, null
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end33:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  %of_node34 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  br label %if.end40

if.end40:                                         ; preds = %if.end33, %if.end12.if.end40_crit_edge
  %of_node.sink = phi ptr [ %of_node34, %if.end33 ], [ %of_node, %if.end12.if.end40_crit_edge ]
  %18 = ptrtoint ptr %of_node.sink to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.sink, align 8
  %baseaddr38 = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 2
  %call.i.i286 = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.11, ptr noundef %baseaddr38, i32 noundef 1, i32 noundef 0) #6
  %20 = call i32 @llvm.smin.i32(i32 %call.i.i286, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i286)
  %tobool41.not = icmp sgt i32 %call.i.i286, -1
  br i1 %tobool41.not, label %if.end43, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end40
  %call44 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %irq = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 1
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call44, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp46 = icmp slt i32 %call44, 0
  br i1 %cmp46, label %if.end43.cleanup_crit_edge, label %if.end49

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end43
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %baseaddr51 = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 2
  %24 = ptrtoint ptr %baseaddr51 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %baseaddr51, align 4
  %add = add i32 %25, 1
  %revision = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 5
  %call52 = call i32 @regmap_read(ptr noundef %23, i32 noundef %add, ptr noundef %revision) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call52) #9
  br label %cleanup

if.end59:                                         ; preds = %if.end49
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %code = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 7
  %call.i.i287 = call i32 @of_property_read_variable_u32_array(ptr noundef %27, ptr noundef nonnull @.str.15, ptr noundef %code, i32 noundef 1, i32 noundef 0) #6
  %28 = call i32 @llvm.smin.i32(i32 %call.i.i287, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i287)
  %tobool63.not = icmp sgt i32 %call.i.i287, -1
  br i1 %tobool63.not, label %if.end59.if.end77_crit_edge, label %do.body65

if.end59.if.end77_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

do.body65:                                        ; preds = %if.end59
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8941_pwrkey_probe, %if.then71)) #6
          to label %do.end75 [label %if.then71], !srcloc !111

if.then71:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %28) #6
  br label %do.end75

do.end75:                                         ; preds = %if.then71, %do.body65
  %29 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 116, ptr %code, align 4
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.end59.if.end77_crit_edge
  %call79 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %input = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 4
  %30 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call79, ptr %input, align 4
  %tobool81.not = icmp eq ptr %call79, null
  br i1 %tobool81.not, label %do.body83, label %if.end100

do.body83:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pm8941_pwrkey_probe, %if.then95)) #6
          to label %cleanup [label %if.then95], !srcloc !111

if.then95:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.18) #6
  br label %cleanup

if.end100:                                        ; preds = %if.end77
  %31 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code, align 4
  call void @input_set_capability(ptr noundef nonnull %call79, i32 noundef 1, i32 noundef %32) #6
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %name = getelementptr inbounds %struct.pm8941_data, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name, align 4
  %37 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %38, align 8
  %40 = load ptr, ptr %data, align 4
  %phys = getelementptr inbounds %struct.pm8941_data, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phys, align 4
  %43 = load ptr, ptr %input, align 4
  %phys108 = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %phys108 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %phys108, align 4
  %45 = load ptr, ptr %data, align 4
  %supports_debounce_config = getelementptr inbounds %struct.pm8941_data, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %supports_debounce_config to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %supports_debounce_config, align 1, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool110.not = icmp eq i8 %47, 0
  br i1 %tobool110.not, label %if.end100.if.end129_crit_edge, label %cond.end116

if.end100.if.end129_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

cond.end116:                                      ; preds = %if.end100
  %48 = ptrtoint ptr %req_delay to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %req_delay, align 4
  %shl = shl i32 %49, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %shl)
  %50 = icmp ult i32 %shl, 1000000
  %div = udiv i32 %shl, 1000000
  %51 = call i32 @llvm.ctlz.i32(i32 %div, i1 true) #6, !range !113
  %sub.i.op.i = xor i32 %51, 31
  %sub.i = select i1 %50, i32 -1, i32 %sub.i.op.i
  %52 = ptrtoint ptr %req_delay to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %sub.i, ptr %req_delay, align 4
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %55 = ptrtoint ptr %baseaddr51 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %baseaddr51, align 4
  %add120 = add i32 %56, 113
  %call.i288 = call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef %add120, i32 noundef 7, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool122.not = icmp eq i32 %call.i288, 0
  br i1 %tobool122.not, label %cond.end116.if.end129_crit_edge, label %do.end126

cond.end116.if.end129_crit_edge:                  ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

do.end126:                                        ; preds = %cond.end116
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i288) #9
  br label %cleanup

if.end129:                                        ; preds = %cond.end116.if.end129_crit_edge, %if.end100.if.end129_crit_edge
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool131.not = icmp eq i32 %60, 0
  br i1 %tobool131.not, label %if.end129.if.end154_crit_edge, label %if.then132

if.end129.if.end154_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

if.then132:                                       ; preds = %if.end129
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %63 = ptrtoint ptr %baseaddr51 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %baseaddr51, align 4
  %add135 = add i32 %64, 112
  %spec.select = select i1 %tobool.i.not, i32 0, i32 %60
  %call.i289 = call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef %add135, i32 noundef %60, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i289)
  %tobool147.not = icmp eq i32 %call.i289, 0
  br i1 %tobool147.not, label %if.then132.if.end154_crit_edge, label %do.end151

if.then132.if.end154_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end154

do.end151:                                        ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call.i289) #9
  br label %cleanup

if.end154:                                        ; preds = %if.then132.if.end154_crit_edge, %if.end129.if.end154_crit_edge
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data, align 4
  %name158 = getelementptr inbounds %struct.pm8941_data, ptr %68, i32 0, i32 4
  %69 = ptrtoint ptr %name158 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name158, align 4
  %call159 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %66, ptr noundef null, ptr noundef nonnull @pm8941_pwrkey_irq, i32 noundef 8192, ptr noundef %70, ptr noundef nonnull %call.i284) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %if.end166, label %do.end164

do.end164:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call159) #9
  br label %cleanup

if.end166:                                        ; preds = %if.end154
  %71 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input, align 4
  %call168 = call i32 @input_register_device(ptr noundef %72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.end175, label %do.end173

do.end173:                                        ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call168) #9
  br label %cleanup

if.end175:                                        ; preds = %if.end166
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 4
  %supports_ps_hold_poff_config = getelementptr inbounds %struct.pm8941_data, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %supports_ps_hold_poff_config to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %supports_ps_hold_poff_config, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool177.not = icmp eq i8 %76, 0
  br i1 %tobool177.not, label %if.end175.if.end188_crit_edge, label %if.then178

if.end175.if.end188_crit_edge:                    ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

if.then178:                                       ; preds = %if.end175
  %reboot_notifier = getelementptr inbounds %struct.pm8941_pwrkey, ptr %call.i284, i32 0, i32 6
  %77 = ptrtoint ptr %reboot_notifier to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @pm8941_reboot_notify, ptr %reboot_notifier, align 4
  %call180 = call i32 @register_reboot_notifier(ptr noundef %reboot_notifier) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.then178.if.end188_crit_edge, label %do.end185

if.then178.if.end188_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end188

do.end185:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call180) #9
  br label %cleanup

if.end188:                                        ; preds = %if.then178.if.end188_crit_edge, %if.end175.if.end188_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %78 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call.i284, ptr %driver_data.i.i, align 4
  %call190 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end188, %do.end185, %do.end173, %do.end164, %do.end151, %do.end126, %if.then95, %do.body83, %do.end57, %if.end43.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %do.end31, %if.end4.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call52, %do.end57 ], [ %call.i288, %do.end126 ], [ %call.i289, %do.end151 ], [ %call159, %do.end164 ], [ %call168, %do.end173 ], [ %call180, %do.end185 ], [ 0, %if.end188 ], [ -19, %do.end31 ], [ -12, %if.end4.cleanup_crit_edge ], [ %20, %if.end40.cleanup_crit_edge ], [ %call44, %if.end43.cleanup_crit_edge ], [ -12, %if.then95 ], [ -12, %do.body83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req_delay) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.pm8941_pwrkey, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %supports_ps_hold_poff_config = getelementptr inbounds %struct.pm8941_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %supports_ps_hold_poff_config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %supports_ps_hold_poff_config, align 4, !range !112
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %reboot_notifier = getelementptr inbounds %struct.pm8941_pwrkey, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @unregister_reboot_notifier(ptr noundef %reboot_notifier) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_irq(i32 noundef %irq, ptr nocapture noundef readonly %_data) #2 align 64 {
entry:
  %sts = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sts) #6
  %0 = ptrtoint ptr %sts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sts, align 4, !annotation !110
  %regmap = getelementptr inbounds %struct.pm8941_pwrkey, ptr %_data, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %baseaddr = getelementptr inbounds %struct.pm8941_pwrkey, ptr %_data, i32 0, i32 2
  %3 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %baseaddr, align 4
  %add = add i32 %4, 16
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %add, ptr noundef nonnull %sts) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.pm8941_pwrkey, ptr %_data, i32 0, i32 4
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %input, align 4
  %code = getelementptr inbounds %struct.pm8941_pwrkey, ptr %_data, i32 0, i32 7
  %7 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %code, align 4
  %9 = ptrtoint ptr %sts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sts, align 4
  %data = getelementptr inbounds %struct.pm8941_pwrkey, ptr %_data, i32 0, i32 8
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %status_bit = getelementptr inbounds %struct.pm8941_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %status_bit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status_bit, align 4
  %and = and i32 %14, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.i = icmp ne i32 %and, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  call void @input_event(ptr noundef %6, i32 noundef 1, i32 noundef %8, i32 noundef %lnot.ext.i) #6
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sts) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_reboot_notify(ptr nocapture noundef readonly %nb, i32 noundef %code, ptr nocapture noundef readnone %unused) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -24
  %revision = getelementptr i8, ptr %nb, i32 -4
  %0 = ptrtoint ptr %revision to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %. = select i1 %cmp, i32 90, i32 91
  %regmap = getelementptr i8, ptr %nb, i32 -12
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %baseaddr = getelementptr i8, ptr %nb, i32 -16
  %4 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %baseaddr, align 4
  %add = add i32 %5, %.
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %do.end

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.33, i32 noundef %call.i) #9
  br label %if.end2

if.end2:                                          ; preds = %do.end, %entry.if.end2_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #6
  %8 = and i32 %code, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %switch = icmp eq i32 %8, 2
  br i1 %switch, label %if.end2.sw.epilog_crit_edge, label %sw.default

if.end2.sw.epilog_crit_edge:                      ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @reboot_mode to i32))
  %9 = load i32, ptr @reboot_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp4 = icmp eq i32 %9, 1
  %.45 = select i1 %cmp4, i32 1, i32 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end2.sw.epilog_crit_edge
  %reset_type.0 = phi i32 [ 4, %if.end2.sw.epilog_crit_edge ], [ %.45, %sw.default ]
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %baseaddr, align 4
  %add10 = add i32 %13, 90
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %add10, i32 noundef 15, i32 noundef %reset_type.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool12.not = icmp eq i32 %call.i46, 0
  br i1 %tobool12.not, label %sw.epilog.if.end18_crit_edge, label %do.end16

sw.epilog.if.end18_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end16:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.36, i32 noundef %call.i46) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %sw.epilog.if.end18_crit_edge
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %18 = ptrtoint ptr %baseaddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %baseaddr, align 4
  %add21 = add i32 %19, %.
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef %add21, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool23.not = icmp eq i32 %call.i47, 0
  br i1 %tobool23.not, label %if.end18.if.end29_crit_edge, label %do.end27

if.end18.if.end29_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.39, i32 noundef %call.i47) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %if.end18.if.end29_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_reboot_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.pm8941_pwrkey, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8941_pwrkey_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %device_may_wakeup.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %3 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %4, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.end_crit_edge, label %if.then

device_may_wakeup.exit.if.end_crit_edge:          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %irq = getelementptr inbounds %struct.pm8941_pwrkey, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %6, i32 noundef 0) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %device_may_wakeup.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_pm8941_pwrkey__229_368_pm8941_pwrkey_driver_init6, !1, !"__initcall__kmod_pm8941_pwrkey__229_368_pm8941_pwrkey_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 368, i32 1}
!2 = !{ptr @__exitcall_pm8941_pwrkey_driver_exit, !1, !"__exitcall_pm8941_pwrkey_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description230, !4, !"__UNIQUE_ID_description230", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 370, i32 1}
!5 = !{ptr @__UNIQUE_ID_file231, !6, !"__UNIQUE_ID_file231", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 371, i32 1}
!7 = !{ptr @__UNIQUE_ID_license232, !6, !"__UNIQUE_ID_license232", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 363, i32 11}
!10 = !{ptr @pm8941_pwrkey_driver, !11, !"pm8941_pwrkey_driver", i1 false, i1 false}
!11 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 359, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 177, i32 46}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 181, i32 3}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pm8941_pwrkey_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pm8941_pwrkey_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 185, i32 53}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 204, i32 4}
!26 = !{ptr @pm8941_pwrkey_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @pm8941_pwrkey_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 209, i32 11}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 224, i32 3}
!32 = !{ptr @pm8941_pwrkey_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pm8941_pwrkey_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 228, i32 50}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 231, i32 3}
!38 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug227, !37, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 238, i32 3}
!42 = !{ptr @pm8941_pwrkey_probe.__UNIQUE_ID_ddebug228, !41, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!43 = !{ptr @pm8941_pwrkey_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 256, i32 4}
!45 = !{ptr @pm8941_pwrkey_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 269, i32 4}
!48 = !{ptr @pm8941_pwrkey_probe._entry.21, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @pm8941_pwrkey_probe._entry_ptr.23, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 279, i32 3}
!52 = !{ptr @pm8941_pwrkey_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @pm8941_pwrkey_probe._entry_ptr.26, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 285, i32 3}
!56 = !{ptr @pm8941_pwrkey_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pm8941_pwrkey_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.31, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 294, i32 4}
!60 = !{ptr @pm8941_pwrkey_probe._entry.30, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pm8941_pwrkey_probe._entry_ptr.32, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 86, i32 3}
!64 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @pm8941_reboot_notify._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @pm8941_reboot_notify._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.36, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 115, i32 3}
!69 = !{ptr @pm8941_reboot_notify._entry.35, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @pm8941_reboot_notify._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 123, i32 3}
!73 = !{ptr @pm8941_reboot_notify._entry.38, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @pm8941_reboot_notify._entry_ptr.40, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @pm8941_pwr_key_id_table, !76, !"pm8941_pwr_key_id_table", i1 false, i1 false}
!76 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 350, i32 34}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 320, i32 10}
!79 = !{ptr @pwrkey_data, !80, !"pwrkey_data", i1 false, i1 false}
!80 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 316, i32 33}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 328, i32 10}
!83 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 329, i32 10}
!85 = !{ptr @resin_data, !86, !"resin_data", i1 false, i1 false}
!86 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 325, i32 33}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 336, i32 10}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 337, i32 10}
!91 = !{ptr @pon_gen3_pwrkey_data, !92, !"pon_gen3_pwrkey_data", i1 false, i1 false}
!92 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 334, i32 33}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 344, i32 10}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 345, i32 10}
!97 = !{ptr @pon_gen3_resin_data, !98, !"pon_gen3_resin_data", i1 false, i1 false}
!98 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 342, i32 33}
!99 = !{ptr @pm8941_pwr_key_pm_ops, !100, !"pm8941_pwr_key_pm_ops", i1 false, i1 false}
!100 = !{!"../drivers/input/misc/pm8941-pwrkey.c", i32 166, i32 8}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i64 2148764176, i64 2148764181, i64 2148764194, i64 2148764238, i64 2148764272, i64 2148764293}
!112 = !{i8 0, i8 2}
!113 = !{i32 0, i32 33}
