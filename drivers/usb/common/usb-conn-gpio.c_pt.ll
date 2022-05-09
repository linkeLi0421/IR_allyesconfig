; ModuleID = '/llk/IR_all_yes/drivers/usb/common/usb-conn-gpio.c_pt.bc'
source_filename = "../drivers/usb/common/usb-conn-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.usb_conn_info = type { ptr, ptr, i32, ptr, %struct.delayed_work, i32, ptr, ptr, i32, i32, %struct.power_supply_desc, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_usb_conn_gpio__290_348_usb_conn_driver_init6 = internal global ptr @usb_conn_driver_init, section ".initcall6.init", align 4
@usb_conn_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @usb_conn_probe, ptr @usb_conn_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @usb_conn_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_conn_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_usb_conn_driver_exit = internal global ptr @usb_conn_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [62 x i8] c"usb_conn_gpio.author=Chunfeng Yun <chunfeng.yun@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [69 x i8] c"usb_conn_gpio.description=USB GPIO based connection detection driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [52 x i8] c"usb_conn_gpio.file=drivers/usb/common/usb-conn-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"usb_conn_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb-conn-gpio\00", [18 x i8] zeroinitializer }, align 32
@usb_conn_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-usb-b-connector\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@usb_conn_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr @usb_conn_suspend, ptr @usb_conn_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 195, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get gpios\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb_conn_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/usb/common/usb-conn-gpio.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry_ptr = internal global ptr @usb_conn_probe._entry, section ".printk_index", align 4
@usb_conn_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"(work_completion)(&(&info->dw_det)->work)\00", [54 x i8] zeroinitializer }, align 32
@usb_conn_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&(&info->dw_det)->timer\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vbus-supply\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get vbus :%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get role switch\0A\00", [37 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 242, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to get ID IRQ\0A\00", [42 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry_ptr.16 = internal global ptr @usb_conn_probe._entry.14, section ".printk_index", align 4
@usb_conn_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 251, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to request ID IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry_ptr.19 = internal global ptr @usb_conn_probe._entry.17, section ".printk_index", align 4
@usb_conn_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get VBUS IRQ\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry_ptr.22 = internal global ptr @usb_conn_probe._entry.20, section ".printk_index", align 4
@usb_conn_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 268, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to request VBUS IRQ\0A\00", [36 x i8] zeroinitializer }, align 32
@usb_conn_probe._entry_ptr.25 = internal global ptr @usb_conn_probe._entry.23, section ".printk_index", align 4
@usb_conn_detect_cable.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.5, ptr @.str.28, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_conn_gpio\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_conn_detect_cable\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"role %s -> %s, gpios: id %d, vbus %d\0A\00", [58 x i8] zeroinitializer }, align 32
@usb_conn_detect_cable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.5, i32 90, ptr @.str.30, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"repeated role: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@usb_conn_detect_cable._entry_ptr = internal global ptr @usb_conn_detect_cable._entry, section ".printk_index", align 4
@usb_conn_detect_cable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.5, i32 99, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to set role: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@usb_conn_detect_cable._entry_ptr.33 = internal global ptr @usb_conn_detect_cable._entry.31, section ".printk_index", align 4
@usb_conn_detect_cable._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.27, ptr @.str.5, i32 104, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enable vbus regulator failed\0A\00", [34 x i8] zeroinitializer }, align 32
@usb_conn_detect_cable._entry_ptr.36 = internal global ptr @usb_conn_detect_cable._entry.34, section ".printk_index", align 4
@usb_conn_detect_cable.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.26, ptr @.str.27, ptr @.str.5, ptr @.str.37, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vbus regulator is %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb-charger\00", [20 x i8] zeroinitializer }, align 32
@usb_charger_properties = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 4], [28 x i8] zeroinitializer }, align 32
@usb_conn_psy_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.5, i32 169, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to register charger\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"usb_conn_psy_register\00", [42 x i8] zeroinitializer }, align 32
@usb_conn_psy_register._entry_ptr = internal global ptr @usb_conn_psy_register._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"usb_conn_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 338, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 342, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"usb_conn_dt_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 332, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"usb_conn_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 329, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 186, i32 48 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 190, i32 50 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 195, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 206, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 213, i32 46 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 227, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 233, i32 10 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 242, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 251, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 259, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 268, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 86, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 90, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 99, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 104, i32 4 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 110, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 160, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant [23 x i8] c"usb_charger_properties\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 131, i32 35 }
@___asan_gen_.169 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.176 = private constant [38 x i8] c"../drivers/usb/common/usb-conn-gpio.c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 169, i32 3 }
@llvm.compiler.used = appending global [61 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_usb_conn_driver_exit, ptr @__initcall__kmod_usb_conn_gpio__290_348_usb_conn_driver_init6, ptr @usb_conn_detect_cable._entry, ptr @usb_conn_detect_cable._entry.31, ptr @usb_conn_detect_cable._entry.34, ptr @usb_conn_detect_cable._entry_ptr, ptr @usb_conn_detect_cable._entry_ptr.33, ptr @usb_conn_detect_cable._entry_ptr.36, ptr @usb_conn_driver_exit, ptr @usb_conn_probe._entry, ptr @usb_conn_probe._entry.14, ptr @usb_conn_probe._entry.17, ptr @usb_conn_probe._entry.20, ptr @usb_conn_probe._entry.23, ptr @usb_conn_probe._entry_ptr, ptr @usb_conn_probe._entry_ptr.16, ptr @usb_conn_probe._entry_ptr.19, ptr @usb_conn_probe._entry_ptr.22, ptr @usb_conn_probe._entry_ptr.25, ptr @usb_conn_psy_register._entry, ptr @usb_conn_psy_register._entry_ptr, ptr @usb_conn_driver, ptr @.str, ptr @usb_conn_dt_match, ptr @usb_conn_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @usb_conn_probe.__key, ptr @.str.8, ptr @usb_conn_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @usb_charger_properties, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_detect_cable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_detect_cable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_detect_cable._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_charger_properties to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_conn_psy_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @usb_conn_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @usb_conn_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @usb_conn_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg.i = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 192, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 1) #5
  %id_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %id_gpiod, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 1) #5
  %vbus_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 7
  %3 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %vbus_gpiod, align 4
  %cmp.i232 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i232, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %5 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %id_gpiod, align 4
  %tobool18.not = icmp eq ptr %6, null
  br i1 %tobool18.not, label %land.lhs.true, label %if.end28

land.lhs.true:                                    ; preds = %if.end16
  %tobool20.not = icmp eq ptr %call10, null
  br i1 %tobool20.not, label %do.end, label %land.lhs.true.land.lhs.true30_crit_edge

land.lhs.true.land.lhs.true30_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true30

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end16
  %call27 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %6, i32 noundef 20000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool29.not = icmp eq i32 %call27, 0
  br i1 %tobool29.not, label %if.end28.land.lhs.true30_crit_edge, label %if.end28.if.end36_crit_edge

if.end28.if.end36_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end28.land.lhs.true30_crit_edge:               ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true30

land.lhs.true30:                                  ; preds = %if.end28.land.lhs.true30_crit_edge, %land.lhs.true.land.lhs.true30_crit_edge
  %7 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vbus_gpiod, align 4
  %tobool32.not = icmp eq ptr %8, null
  br i1 %tobool32.not, label %land.lhs.true30.do.body41_crit_edge, label %if.then33

land.lhs.true30.do.body41_crit_edge:              ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

if.then33:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #7
  %call35 = tail call i32 @gpiod_set_debounce(ptr noundef nonnull %8, i32 noundef 20000) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end28.if.end36_crit_edge
  %ret.1 = phi i32 [ %call27, %if.end28.if.end36_crit_edge ], [ %call35, %if.then33 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp slt i32 %ret.1, 0
  br i1 %cmp, label %if.then37, label %if.end36.do.body41_crit_edge

if.end36.do.body41_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body41

if.then37:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_jiffies = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %debounce_jiffies, align 4
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %if.end36.do.body41_crit_edge, %land.lhs.true30.do.body41_crit_edge
  %dw_det = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4
  tail call void @__init_work(ptr noundef %dw_det, i32 noundef 0) #5
  %10 = ptrtoint ptr %dw_det to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %dw_det, align 4
  %lockdep_map = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.8, ptr noundef nonnull @usb_conn_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry48 = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry48, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4, i32 0, i32 2
  %13 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @usb_conn_detect_cable, ptr %func, align 4
  %timer = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.10, ptr noundef nonnull @usb_conn_probe.__key.9) #5
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  %tobool59.not = icmp eq ptr %15, null
  br i1 %tobool59.not, label %do.body41.if.else_crit_edge, label %land.lhs.true60

do.body41.if.else_crit_edge:                      ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true60:                                  ; preds = %do.body41
  %of_node = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %tobool62.not = icmp eq ptr %17, null
  br i1 %tobool62.not, label %land.lhs.true60.if.else_crit_edge, label %if.then63

land.lhs.true60.if.else_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then63:                                        ; preds = %land.lhs.true60
  %call66 = tail call ptr @of_find_property(ptr noundef nonnull %17, ptr noundef nonnull @.str.11, ptr noundef null) #5
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.then63.if.else_crit_edge, label %if.then72

if.then63.if.else_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then72:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  %call73 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %vbus = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 3
  %cmp76 = icmp eq ptr %call73, inttoptr (i32 -19 to ptr)
  %spec.store.select = select i1 %cmp76, ptr null, ptr %call73
  %18 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.store.select, ptr %vbus, align 4
  br label %if.end82

if.else:                                          ; preds = %if.then63.if.else_crit_edge, %land.lhs.true60.if.else_crit_edge, %do.body41.if.else_crit_edge
  %call80 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #5
  %vbus81 = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 3
  %19 = ptrtoint ptr %vbus81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call80, ptr %vbus81, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else, %if.then72
  %vbus83 = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %vbus83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vbus83, align 4
  %cmp.i233 = icmp ugt ptr %21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i233, label %if.then85, label %if.end89

if.then85:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %21 to i32
  %call88 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %22, ptr noundef nonnull @.str.12, i32 noundef %22) #5
  br label %cleanup

if.end89:                                         ; preds = %if.end82
  %call90 = tail call ptr @usb_role_switch_get(ptr noundef %dev1) #5
  %role_sw = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %role_sw to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call90, ptr %role_sw, align 4
  %cmp.i234 = icmp ugt ptr %call90, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i234, label %if.then93, label %if.end97

if.then93:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %call90 to i32
  %call96 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %24, ptr noundef nonnull @.str.13) #5
  br label %cleanup

if.end97:                                         ; preds = %if.end89
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %desc2.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cfg.i) #5
  %27 = getelementptr inbounds %struct.power_supply_config, ptr %cfg.i, i32 0, i32 2
  %28 = getelementptr inbounds i8, ptr %cfg.i, i32 4
  %29 = call ptr @memset(ptr %28, i32 0, i32 20)
  %of_node3.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 27
  %30 = ptrtoint ptr %of_node3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node3.i, align 8
  %32 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %cfg.i, align 4
  %33 = ptrtoint ptr %desc2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.40, ptr %desc2.i, align 4
  %properties.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 10, i32 4
  %34 = ptrtoint ptr %properties.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @usb_charger_properties, ptr %properties.i, align 4
  %num_properties.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 10, i32 5
  %35 = ptrtoint ptr %num_properties.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_properties.i, align 4
  %get_property.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 10, i32 6
  %36 = ptrtoint ptr %get_property.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @usb_charger_get_property, ptr %get_property.i, align 4
  %type.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %type.i, align 4
  %38 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %27, align 4
  %call.i235 = call ptr @devm_power_supply_register(ptr noundef %26, ptr noundef %desc2.i, ptr noundef nonnull %cfg.i) #5
  %charger.i = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i235, ptr %charger.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i235, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end97.usb_conn_psy_register.exit_crit_edge

if.end97.usb_conn_psy_register.exit_crit_edge:    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %usb_conn_psy_register.exit

do.end.i:                                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.41) #8
  %40 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load ptr, ptr %charger.i, align 4
  br label %usb_conn_psy_register.exit

usb_conn_psy_register.exit:                       ; preds = %do.end.i, %if.end97.usb_conn_psy_register.exit_crit_edge
  %41 = phi ptr [ %call.i235, %if.end97.usb_conn_psy_register.exit_crit_edge ], [ %.pr, %do.end.i ]
  %cmp.i.i.i.not = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  %42 = ptrtoint ptr %41 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cfg.i) #5
  br i1 %cmp.i.i.i.not, label %usb_conn_psy_register.exit.put_role_sw_crit_edge, label %if.end101

usb_conn_psy_register.exit.put_role_sw_crit_edge: ; preds = %usb_conn_psy_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_role_sw

if.end101:                                        ; preds = %usb_conn_psy_register.exit
  %43 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %id_gpiod, align 4
  %tobool103.not = icmp eq ptr %44, null
  br i1 %tobool103.not, label %if.end101.if.end123_crit_edge, label %if.then104

if.end101.if.end123_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then104:                                       ; preds = %if.end101
  %call106 = call i32 @gpiod_to_irq(ptr noundef nonnull %44) #5
  %id_irq = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %id_irq to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call106, ptr %id_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %cmp108 = icmp slt i32 %call106, 0
  br i1 %cmp108, label %do.end112, label %if.end114

do.end112:                                        ; preds = %if.then104
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #8
  %46 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %id_irq, align 4
  br label %put_role_sw

if.end114:                                        ; preds = %if.then104
  %48 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev, align 8
  %call116 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call106, ptr noundef null, ptr noundef nonnull @usb_conn_isr, i32 noundef 8195, ptr noundef %49, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %do.end121, label %if.end114.if.end123_crit_edge

if.end114.if.end123_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

do.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #8
  br label %put_role_sw

if.end123:                                        ; preds = %if.end114.if.end123_crit_edge, %if.end101.if.end123_crit_edge
  %50 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vbus_gpiod, align 4
  %tobool125.not = icmp eq ptr %51, null
  br i1 %tobool125.not, label %if.end123.if.end146_crit_edge, label %if.then126

if.end123.if.end146_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

if.then126:                                       ; preds = %if.end123
  %call128 = call i32 @gpiod_to_irq(ptr noundef nonnull %51) #5
  %vbus_irq = getelementptr inbounds %struct.usb_conn_info, ptr %call.i, i32 0, i32 9
  %52 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call128, ptr %vbus_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %cmp130 = icmp slt i32 %call128, 0
  br i1 %cmp130, label %do.end134, label %if.end136

do.end134:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #8
  %53 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %vbus_irq, align 4
  br label %put_role_sw

if.end136:                                        ; preds = %if.then126
  %55 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pdev, align 8
  %call139 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call128, ptr noundef null, ptr noundef nonnull @usb_conn_isr, i32 noundef 8195, ptr noundef %56, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140 = icmp slt i32 %call139, 0
  br i1 %cmp140, label %do.end144, label %if.end136.if.end146_crit_edge

if.end136.if.end146_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end146

do.end144:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #8
  br label %put_role_sw

if.end146:                                        ; preds = %if.end136.if.end146_crit_edge, %if.end123.if.end146_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %57 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %58 = load ptr, ptr @system_power_efficient_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %dw_det, i32 noundef 0) #5
  br label %cleanup

put_role_sw:                                      ; preds = %do.end144, %do.end134, %do.end121, %do.end112, %usb_conn_psy_register.exit.put_role_sw_crit_edge
  %ret.2 = phi i32 [ %42, %usb_conn_psy_register.exit.put_role_sw_crit_edge ], [ %47, %do.end112 ], [ %call116, %do.end121 ], [ %54, %do.end134 ], [ %call139, %do.end144 ]
  %59 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %role_sw, align 4
  call void @usb_role_switch_put(ptr noundef %60) #5
  br label %cleanup

cleanup:                                          ; preds = %put_role_sw, %if.end146, %if.then93, %if.then85, %do.end, %if.then13, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %4, %if.then13 ], [ %call88, %if.then85 ], [ %call96, %if.then93 ], [ %ret.2, %put_role_sw ], [ 0, %if.end146 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dw_det = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 4
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %dw_det) #5
  %last_role = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %last_role to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %vbus = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vbus, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @regulator_disable(ptr noundef nonnull %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %role_sw = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %role_sw, align 4
  tail call void @usb_role_switch_put(ptr noundef %7) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @usb_conn_detect_cable(ptr nocapture noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -16
  %id_gpiod = getelementptr i8, ptr %work, i32 104
  %0 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %1) #5
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call2, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  %vbus_gpiod = getelementptr i8, ptr %work, i32 108
  %2 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vbus_gpiod, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %cond.end.cond.end8_crit_edge, label %cond.true4

cond.end.cond.end8_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end8

cond.true4:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #5
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true4, %cond.end.cond.end8_crit_edge
  %cond9 = phi i32 [ %call6, %cond.true4 ], [ %cond, %cond.end.cond.end8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool10.not = icmp eq i32 %cond, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond9)
  %tobool11.not = icmp eq i32 %cond9, 0
  %. = select i1 %tobool11.not, i32 0, i32 2
  %role.0 = select i1 %tobool10.not, i32 1, i32 %.
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_conn_detect_cable.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_conn_detect_cable, %if.then20)) #5
          to label %do.end [label %if.then20], !srcloc !98

if.then20:                                        ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %last_role = getelementptr i8, ptr %work, i32 -8
  %6 = ptrtoint ptr %last_role to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_role, align 4
  %call21 = tail call ptr @usb_role_string(i32 noundef %7) #5
  %call22 = tail call ptr @usb_role_string(i32 noundef %role.0) #5
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_conn_detect_cable.__UNIQUE_ID_ddebug288, ptr noundef %5, ptr noundef nonnull @.str.28, ptr noundef %call21, ptr noundef %call22, i32 noundef %cond, i32 noundef %cond9) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %cond.end8
  %last_role24 = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %last_role24 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_role24, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %role.0)
  %cmp = icmp eq i32 %9, %role.0
  br i1 %cmp, label %do.end28, label %if.end31

do.end28:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  %call30 = tail call ptr @usb_role_string(i32 noundef %role.0) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef %call30) #8
  br label %cleanup

if.end31:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp33 = icmp eq i32 %9, 1
  br i1 %cmp33, label %land.lhs.true, label %if.end31.if.end39_crit_edge

if.end31.if.end39_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end31
  %vbus34 = getelementptr i8, ptr %work, i32 -4
  %12 = ptrtoint ptr %vbus34 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vbus34, align 4
  %tobool35.not = icmp eq ptr %13, null
  br i1 %tobool35.not, label %land.lhs.true.if.end39_crit_edge, label %if.then36

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call38 = tail call i32 @regulator_disable(ptr noundef nonnull %13) #5
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %land.lhs.true.if.end39_crit_edge, %if.end31.if.end39_crit_edge
  %role_sw = getelementptr i8, ptr %work, i32 -12
  %14 = ptrtoint ptr %role_sw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %role_sw, align 4
  %call40 = tail call i32 @usb_role_switch_set_role(ptr noundef %15, i32 noundef %role.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.if.end47_crit_edge, label %do.end45

if.end39.if.end47_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

do.end45:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.32, i32 noundef %call40) #8
  br label %if.end47

if.end47:                                         ; preds = %do.end45, %if.end39.if.end47_crit_edge
  br i1 %tobool10.not, label %land.lhs.true49, label %if.end47.if.end62_crit_edge

if.end47.if.end62_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

land.lhs.true49:                                  ; preds = %if.end47
  %vbus50 = getelementptr i8, ptr %work, i32 -4
  %18 = ptrtoint ptr %vbus50 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vbus50, align 4
  %tobool51.not = icmp eq ptr %19, null
  br i1 %tobool51.not, label %land.lhs.true49.if.end62_crit_edge, label %if.then52

land.lhs.true49.if.end62_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

if.then52:                                        ; preds = %land.lhs.true49
  %call54 = tail call i32 @regulator_enable(ptr noundef nonnull %19) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.then52.if.end62_crit_edge, label %do.end59

if.then52.if.end62_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end62

do.end59:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.35) #8
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %if.then52.if.end62_crit_edge, %land.lhs.true49.if.end62_crit_edge, %if.end47.if.end62_crit_edge
  %22 = ptrtoint ptr %last_role24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %role.0, ptr %last_role24, align 4
  %vbus64 = getelementptr i8, ptr %work, i32 -4
  %23 = ptrtoint ptr %vbus64 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vbus64, align 4
  %tobool65.not = icmp eq ptr %24, null
  br i1 %tobool65.not, label %if.end62.if.end88_crit_edge, label %do.body67

if.end62.if.end88_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end88

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb_conn_detect_cable.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb_conn_detect_cable, %if.then79)) #5
          to label %if.end88 [label %if.then79], !srcloc !98

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %27 = ptrtoint ptr %vbus64 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %vbus64, align 4
  %call82 = tail call i32 @regulator_is_enabled(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  %cond84 = select i1 %tobool83.not, ptr @.str.39, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb_conn_detect_cable.__UNIQUE_ID_ddebug289, ptr noundef %26, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond84) #5
  br label %if.end88

if.end88:                                         ; preds = %if.then79, %do.body67, %if.end62.if.end88_crit_edge
  %charger = getelementptr i8, ptr %work, i32 172
  %29 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %30) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end88, %do.end28
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debounce_jiffies = getelementptr inbounds %struct.usb_conn_info, ptr %dev_id, i32 0, i32 5
  %0 = ptrtoint ptr %debounce_jiffies to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debounce_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %2 = load ptr, ptr @system_power_efficient_wq, align 4
  %dw_det.i = getelementptr inbounds %struct.usb_conn_info, ptr %dev_id, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %dw_det.i, i32 noundef %1) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_role_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_role_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_role_switch_set_role(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %psp)
  %cond = icmp eq i32 %psp, 4
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %last_role = getelementptr inbounds %struct.usb_conn_info, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %last_role to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_role, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %conv = zext i1 %cmp to i32
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %id_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id_irq = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id_irq, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbus_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_gpiod, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %vbus_irq = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbus_irq, align 4
  tail call void @disable_irq(i32 noundef %9) #5
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %call4 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb_conn_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #5
  %id_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %id_gpiod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %id_gpiod, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %id_irq = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %id_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id_irq, align 4
  tail call void @enable_irq(i32 noundef %5) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vbus_gpiod = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %vbus_gpiod to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vbus_gpiod, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %vbus_irq = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %vbus_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vbus_irq, align 4
  tail call void @enable_irq(i32 noundef %9) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %10 = load ptr, ptr @system_power_efficient_wq, align 4
  %dw_det.i = getelementptr inbounds %struct.usb_conn_info, ptr %1, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %dw_det.i, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !78, !80, !81, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_usb_conn_gpio__290_348_usb_conn_driver_init6, !1, !"__initcall__kmod_usb_conn_gpio__290_348_usb_conn_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 348, i32 1}
!2 = !{ptr @__exitcall_usb_conn_driver_exit, !1, !"__exitcall_usb_conn_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 350, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 351, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 352, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 342, i32 11}
!12 = !{ptr @usb_conn_driver, !13, !"usb_conn_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 338, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 186, i32 48}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 190, i32 50}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 195, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @usb_conn_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @usb_conn_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @usb_conn_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 206, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @usb_conn_probe.__key.9, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 213, i32 46}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 227, i32 34}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 233, i32 10}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 242, i32 4}
!39 = !{ptr @usb_conn_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb_conn_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 251, i32 4}
!43 = !{ptr @usb_conn_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @usb_conn_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 259, i32 4}
!47 = !{ptr @usb_conn_probe._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @usb_conn_probe._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 268, i32 4}
!51 = !{ptr @usb_conn_probe._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usb_conn_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 86, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @usb_conn_detect_cable.__UNIQUE_ID_ddebug288, !54, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 90, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @usb_conn_detect_cable._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @usb_conn_detect_cable._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 99, i32 3}
!65 = !{ptr @usb_conn_detect_cable._entry.31, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @usb_conn_detect_cable._entry_ptr.33, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 104, i32 4}
!69 = !{ptr @usb_conn_detect_cable._entry.34, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @usb_conn_detect_cable._entry_ptr.36, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 110, i32 3}
!73 = !{ptr @usb_conn_detect_cable.__UNIQUE_ID_ddebug289, !72, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!74 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 160, i32 15}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 169, i32 3}
!80 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @usb_conn_psy_register._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @usb_conn_psy_register._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @usb_charger_properties, !84, !"usb_charger_properties", i1 false, i1 false}
!84 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 131, i32 35}
!85 = !{ptr @usb_conn_dt_match, !86, !"usb_conn_dt_match", i1 false, i1 false}
!86 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 332, i32 34}
!87 = !{ptr @usb_conn_pm_ops, !88, !"usb_conn_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/usb/common/usb-conn-gpio.c", i32 329, i32 8}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148284320, i64 2148284325, i64 2148284338, i64 2148284382, i64 2148284416, i64 2148284437}
