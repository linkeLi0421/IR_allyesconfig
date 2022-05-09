; ModuleID = '/llk/IR_all_yes/drivers/staging/greybus/arche-platform.c_pt.bc'
source_filename = "../drivers/staging/greybus/arche-platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.arche_platform_drvdata = type { ptr, i8, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.mutex, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_gb_arche__290_657_arche_init6 = internal global ptr @arche_init, section ".initcall6.init", align 4
@arche_platform_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @arche_platform_probe, ptr @arche_platform_remove, ptr @arche_platform_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @arche_platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @arche_platform_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_arche_exit = internal global ptr @arche_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file291 = internal constant [47 x i8] c"gb_arche.file=drivers/staging/greybus/gb-arche\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"gb_arche.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [63 x i8] c"gb_arche.author=Vaibhav Hiremath <vaibhav.hiremath@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [43 x i8] c"gb_arche.description=Arche Platform Driver\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"arche-platform-ctrl\00", [44 x i8] zeroinitializer }, align 32
@arche_platform_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,arche-platform\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@arche_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @arche_platform_suspend, ptr @arche_platform_resume, ptr @arche_platform_suspend, ptr @arche_platform_resume, ptr @arche_platform_suspend, ptr @arche_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"svc,reset-active-high\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"svc,reset\00", [22 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 447, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request svc-reset GPIO: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arche_platform_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/staging/greybus/arche-platform.c\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr = internal global ptr @arche_platform_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc,sysboot\00", [20 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 456, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to request sysboot0 GPIO: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.11 = internal global ptr @arche_platform_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"svc,refclk-req\00", [17 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 465, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to request svc-clk-req GPIO: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.15 = internal global ptr @arche_platform_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"svc_ref_clk\00", [20 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 473, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get svc_ref_clk: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.19 = internal global ptr @arche_platform_probe._entry.17, section ".printk_index", align 4
@arche_platform_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.4, ptr @.str.5, ptr @.str.21, i8 0, i8 120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gb_arche\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Number of APB's available - %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"svc,wake-detect\00", [16 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 486, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed requesting wake_detect GPIO: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.25 = internal global ptr @arche_platform_probe._entry.23, section ".printk_index", align 4
@arche_platform_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&arche_pdata->wake_lock\00", [40 x i8] zeroinitializer }, align 32
@arche_platform_probe.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"&arche_pdata->platform_state_mutex\00", [61 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 506, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to request wake detect IRQ %d\0A\00", [58 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.31 = internal global ptr @arche_platform_probe._entry.29, section ".printk_index", align 4
@dev_attr_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @state_show, ptr @state_store }, [36 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.4, ptr @.str.5, i32 513, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to create state file in sysfs\0A\00", [58 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.34 = internal global ptr @arche_platform_probe._entry.32, section ".printk_index", align 4
@arche_platform_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.4, ptr @.str.5, i32 519, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to populate child nodes %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.37 = internal global ptr @arche_platform_probe._entry.35, section ".printk_index", align 4
@arche_platform_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.4, ptr @.str.5, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register pm notifier %d\0A\00", [61 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.40 = internal global ptr @arche_platform_probe._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"arche,init-off\00", [17 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.4, ptr @.str.5, i32 536, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to cold boot svc %d\0A\00", [36 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.44 = internal global ptr @arche_platform_probe._entry.42, section ".printk_index", align 4
@arche_platform_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.4, ptr @.str.5, i32 543, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Device registered successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@arche_platform_probe._entry_ptr.48 = internal global ptr @arche_platform_probe._entry.45, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arche_platform_wd_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.5, i32 144, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to control hub device\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arche_platform_wd_irq_thread\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@arche_platform_wd_irq_thread._entry_ptr = internal global ptr @arche_platform_wd_irq_thread._entry, section ".printk_index", align 4
@apb_poweroff._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.52, ptr @.str.5, i32 109, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apb_poweroff\00", [19 x i8] zeroinitializer }, align 32
@apb_poweroff._entry_ptr = internal global ptr @apb_poweroff._entry, section ".printk_index", align 4
@apb_cold_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.5, i32 97, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to coldboot\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apb_cold_boot\00", [18 x i8] zeroinitializer }, align 32
@apb_cold_boot._entry_ptr = internal global ptr @apb_cold_boot._entry, section ".printk_index", align 4
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"state\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"off\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"standby\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw_flashing\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unknown state\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"active\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@state_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 342, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"standby state not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"state_store\00", [20 x i8] zeroinitializer }, align 32
@state_store._entry_ptr = internal global ptr @state_store._entry, section ".printk_index", align 4
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw_flashing\00", [20 x i8] zeroinitializer }, align 32
@state_store._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.65, ptr @.str.5, i32 360, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@state_store._entry_ptr.68 = internal global ptr @state_store._entry.67, section ".printk_index", align 4
@arche_platform_fw_flashing_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.5, i32 254, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Switching to FW flashing state\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"arche_platform_fw_flashing_seq\00", [33 x i8] zeroinitializer }, align 32
@arche_platform_fw_flashing_seq._entry_ptr = internal global ptr @arche_platform_fw_flashing_seq._entry, section ".printk_index", align 4
@arche_platform_fw_flashing_seq._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.5, i32 265, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to enable svc_ref_clk: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@arche_platform_fw_flashing_seq._entry_ptr.73 = internal global ptr @arche_platform_fw_flashing_seq._entry.71, section ".printk_index", align 4
@arche_platform_coldboot_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 221, ptr @.str.47, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Booting from cold boot state\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arche_platform_coldboot_seq\00", [36 x i8] zeroinitializer }, align 32
@arche_platform_coldboot_seq._entry_ptr = internal global ptr @arche_platform_coldboot_seq._entry, section ".printk_index", align 4
@arche_platform_coldboot_seq._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.75, ptr @.str.5, i32 231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@arche_platform_coldboot_seq._entry_ptr.77 = internal global ptr @arche_platform_coldboot_seq._entry.76, section ".printk_index", align 4
@arche_platform_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.78, ptr @.str.5, i32 572, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"arche_platform_remove\00", [42 x i8] zeroinitializer }, align 32
@arche_platform_remove._entry_ptr = internal global ptr @arche_platform_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.81 = private unnamed_addr constant [29 x i8] c"arche_platform_device_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 632, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 637, i32 11 }
@___asan_gen_.87 = private unnamed_addr constant [24 x i8] c"arche_platform_of_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 618, i32 34 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"arche_platform_pm_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 614, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 438, i32 13 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 444, i32 47 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 447, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 452, i32 49 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 456, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 461, i32 52 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 465, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 470, i32 47 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 473, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 480, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 482, i32 49 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 486, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 494, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 495, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 506, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [15 x i8] c"dev_attr_state\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 513, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 519, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 527, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 532, i32 48 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 536, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 543, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 144, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 109, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 97, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 388, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 376, i32 23 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 380, i32 23 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 382, i32 23 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 384, i32 23 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 314, i32 23 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 323, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 338, i32 30 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 342, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 343, i32 30 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 360, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 254, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 264, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 221, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 230, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private constant [44 x i8] c"../drivers/staging/greybus/arche-platform.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 572, i32 3 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_arche_exit, ptr @__initcall__kmod_gb_arche__290_657_arche_init6, ptr @apb_cold_boot._entry, ptr @apb_cold_boot._entry_ptr, ptr @apb_poweroff._entry, ptr @apb_poweroff._entry_ptr, ptr @arche_exit, ptr @arche_platform_coldboot_seq._entry, ptr @arche_platform_coldboot_seq._entry.76, ptr @arche_platform_coldboot_seq._entry_ptr, ptr @arche_platform_coldboot_seq._entry_ptr.77, ptr @arche_platform_fw_flashing_seq._entry, ptr @arche_platform_fw_flashing_seq._entry.71, ptr @arche_platform_fw_flashing_seq._entry_ptr, ptr @arche_platform_fw_flashing_seq._entry_ptr.73, ptr @arche_platform_probe._entry, ptr @arche_platform_probe._entry.13, ptr @arche_platform_probe._entry.17, ptr @arche_platform_probe._entry.23, ptr @arche_platform_probe._entry.29, ptr @arche_platform_probe._entry.32, ptr @arche_platform_probe._entry.35, ptr @arche_platform_probe._entry.38, ptr @arche_platform_probe._entry.42, ptr @arche_platform_probe._entry.45, ptr @arche_platform_probe._entry.9, ptr @arche_platform_probe._entry_ptr, ptr @arche_platform_probe._entry_ptr.11, ptr @arche_platform_probe._entry_ptr.15, ptr @arche_platform_probe._entry_ptr.19, ptr @arche_platform_probe._entry_ptr.25, ptr @arche_platform_probe._entry_ptr.31, ptr @arche_platform_probe._entry_ptr.34, ptr @arche_platform_probe._entry_ptr.37, ptr @arche_platform_probe._entry_ptr.40, ptr @arche_platform_probe._entry_ptr.44, ptr @arche_platform_probe._entry_ptr.48, ptr @arche_platform_remove._entry, ptr @arche_platform_remove._entry_ptr, ptr @arche_platform_wd_irq_thread._entry, ptr @arche_platform_wd_irq_thread._entry_ptr, ptr @state_store._entry, ptr @state_store._entry.67, ptr @state_store._entry_ptr, ptr @state_store._entry_ptr.68, ptr @arche_platform_device_driver, ptr @.str, ptr @arche_platform_of_match, ptr @arche_platform_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @arche_platform_probe.__key, ptr @.str.26, ptr @arche_platform_probe.__key.27, ptr @.str.28, ptr @.str.30, ptr @dev_attr_state, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.78], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_wd_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_poweroff._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apb_cold_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @state_store._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_fw_flashing_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_fw_flashing_seq._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_coldboot_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_coldboot_seq._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arche_platform_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @arche_platform_device_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @arche_apb_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @arche_platform_device_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @arche_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @arche_apb_exit() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @arche_platform_device_driver) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @arche_apb_exit() local_unnamed_addr #1 section ".exit.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @arche_apb_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_platform_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i219 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i219, null
  %is_reset_act_hi = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 1
  %frombool = zext i1 %tobool.i to i8
  %2 = ptrtoint ptr %is_reset_act_hi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %frombool, ptr %is_reset_act_hi, align 4
  %. = select i1 %tobool.i, i32 7, i32 3
  %call8 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %.) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %4) #10
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %state1.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %state1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state1.i, align 4
  %call15 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 3) #7
  %svc_sysboot = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %svc_sysboot to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %svc_sysboot, align 4
  %cmp.i220 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then18, label %if.end24

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call15 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %7) #10
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %call25 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef 1) #7
  %svc_refclk_req = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %svc_refclk_req to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call25, ptr %svc_refclk_req, align 4
  %cmp.i221 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i221, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call25 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %9) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end24
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  %svc_ref_clk = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %svc_ref_clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call35, ptr %svc_ref_clk, align 4
  %cmp.i222 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i222, label %if.then38, label %if.end44

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call35 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %11) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end34
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call45 = tail call fastcc i32 @of_get_child_count(ptr noundef %1)
  %num_apbs = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %num_apbs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call45, ptr %num_apbs, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @arche_platform_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@arche_platform_probe, %if.then52)) #7
          to label %do.end56 [label %if.then52], !srcloc !166

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %num_apbs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_apbs, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @arche_platform_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef %15) #7
  br label %do.end56

do.end56:                                         ; preds = %if.then52, %if.end44
  %call57 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.22, i32 noundef 1) #7
  %wake_detect = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %wake_detect to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call57, ptr %wake_detect, align 4
  %cmp.i223 = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %if.then60, label %if.end66

if.then60:                                        ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call57 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef %17) #10
  br label %cleanup

if.end66:                                         ; preds = %do.end56
  %wake_detect_state.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 10
  %18 = ptrtoint ptr %wake_detect_state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %wake_detect_state.i, align 4
  %dev68 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 16
  %19 = ptrtoint ptr %dev68 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev1, ptr %dev68, align 4
  %wake_lock = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %wake_lock, ptr noundef nonnull @.str.26, ptr noundef nonnull @arche_platform_probe.__key, i16 noundef signext 3) #7
  %platform_state_mutex = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %platform_state_mutex, ptr noundef nonnull @.str.28, ptr noundef nonnull @arche_platform_probe.__key.27) #7
  %20 = ptrtoint ptr %wake_detect to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wake_detect, align 4
  %call77 = tail call i32 @gpiod_to_irq(ptr noundef %21) #7
  %wake_detect_irq = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 11
  %22 = ptrtoint ptr %wake_detect_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call77, ptr %wake_detect_irq, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.dev_name.exit_crit_edge

if.end66.dev_name.exit_crit_edge:                 ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end66.dev_name.exit_crit_edge
  %retval.0.i224 = phi ptr [ %26, %if.end.i ], [ %24, %if.end66.dev_name.exit_crit_edge ]
  %call80 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call77, ptr noundef nonnull @arche_platform_wd_irq, ptr noundef nonnull @arche_platform_wd_irq_thread, i32 noundef 8195, ptr noundef %retval.0.i224, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end86, label %do.end85

do.end85:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30, i32 noundef %call80) #10
  br label %cleanup

if.end86:                                         ; preds = %dev_name.exit
  %27 = ptrtoint ptr %wake_detect_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %wake_detect_irq, align 4
  tail call void @disable_irq(i32 noundef %28) #7
  %call88 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.end94, label %do.end93

do.end93:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end94:                                         ; preds = %if.end86
  %call95 = tail call i32 @of_platform_populate(ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef %dev1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end101, label %do.end100

do.end100:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %call95) #10
  br label %err_device_remove

if.end101:                                        ; preds = %if.end94
  %pm_notifier = getelementptr inbounds %struct.arche_platform_drvdata, ptr %call.i, i32 0, i32 15
  %29 = ptrtoint ptr %pm_notifier to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @arche_platform_pm_notifier, ptr %pm_notifier, align 4
  %call103 = tail call i32 @register_pm_notifier(ptr noundef %pm_notifier) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %if.end109, label %do.end108

do.end108:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.39, i32 noundef %call103) #10
  br label %err_device_remove

if.end109:                                        ; preds = %if.end101
  %30 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node, align 8
  %call.i225 = tail call ptr @of_find_property(ptr noundef %31, ptr noundef nonnull @.str.41, ptr noundef null) #7
  %tobool.i226.not = icmp eq ptr %call.i225, null
  br i1 %tobool.i226.not, label %if.then113, label %if.end109.do.end126_crit_edge

if.end109.do.end126_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end126

if.then113:                                       ; preds = %if.end109
  tail call void @mutex_lock_nested(ptr noundef %platform_state_mutex, i32 noundef 0) #7
  %call115 = tail call fastcc i32 @arche_platform_coldboot_seq(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end121, label %do.end120

do.end120:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43, i32 noundef %call115) #10
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  br label %err_device_remove

if.end121:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %wake_detect_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wake_detect_irq, align 4
  tail call void @enable_irq(i32 noundef %33) #7
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  br label %do.end126

do.end126:                                        ; preds = %if.end121, %if.end109.do.end126_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.46) #10
  br label %cleanup

err_device_remove:                                ; preds = %do.end120, %do.end108, %do.end100
  %ret.0 = phi i32 [ %call95, %do.end100 ], [ %call103, %do.end108 ], [ %call115, %do.end120 ]
  tail call void @device_remove_file(ptr noundef %dev1, ptr noundef nonnull @dev_attr_state) #7
  br label %cleanup

cleanup:                                          ; preds = %err_device_remove, %do.end126, %do.end93, %do.end85, %if.then60, %if.then38, %if.then28, %if.then18, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then11 ], [ %7, %if.then18 ], [ %9, %if.then28 ], [ %11, %if.then38 ], [ %17, %if.then60 ], [ %call80, %do.end85 ], [ %call88, %do.end93 ], [ %ret.0, %err_device_remove ], [ 0, %do.end126 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_platform_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pm_notifier = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 15
  %call1 = tail call i32 @unregister_pm_notifier(ptr noundef %pm_notifier) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @device_remove_file(ptr noundef %dev, ptr noundef nonnull @dev_attr_state) #7
  %call3 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @arche_remove_child) #7
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arche_platform_shutdown(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @of_get_child_count(ptr noundef %np) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5 = icmp eq ptr %call, null
  br i1 %cmp.not5, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %num.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %child.06 = phi ptr [ %call1, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %inc = add i32 %num.07, 1
  %call1 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06) #7
  %cmp.not = icmp eq ptr %call1, null
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %inc, %for.body.for.end_crit_edge ]
  ret i32 %num.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_platform_wd_irq(i32 noundef %irq, ptr noundef %devid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_lock = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wake_lock) #7
  %wake_detect = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 3
  %0 = ptrtoint ptr %wake_detect to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wake_detect, align 4
  %call5 = tail call i32 @gpiod_get_value(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %wake_detect_state21 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 10
  %2 = ptrtoint ptr %wake_detect_state21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %wake_detect_state21, align 4
  br i1 %tobool.not, label %if.else20, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp6 = icmp eq i32 %3, 1
  br i1 %cmp6, label %if.then8, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then8:                                         ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %wake_detect_start = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 14
  %5 = ptrtoint ptr %wake_detect_start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wake_detect_start, align 4
  %add.neg = add i32 %4, -3
  %sub = sub i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp10 = icmp slt i32 %sub, 0
  br i1 %cmp10, label %if.then8.if.end27.sink.split_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then8.if.end27.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.sink.split

if.else20:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp22 = icmp eq i32 %3, 0
  br i1 %cmp22, label %if.then24, label %if.else20.cleanup_crit_edge

if.else20.cleanup_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %wake_detect_start25 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 14
  %8 = ptrtoint ptr %wake_detect_start25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %wake_detect_start25, align 4
  br label %if.end27.sink.split

if.end27.sink.split:                              ; preds = %if.then24, %if.then8.if.end27.sink.split_crit_edge
  %.sink = phi i32 [ 1, %if.then24 ], [ 0, %if.then8.if.end27.sink.split_crit_edge ]
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end27.sink.split, %if.then8.cleanup.sink.split_crit_edge
  %.sink.sink = phi i32 [ %.sink, %if.end27.sink.split ], [ 2, %if.then8.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 1, %if.end27.sink.split ], [ 2, %if.then8.cleanup.sink.split_crit_edge ]
  %9 = ptrtoint ptr %wake_detect_state21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.sink, ptr %wake_detect_state21, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.else20.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else20.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wake_lock, i32 noundef %call2) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_platform_wd_irq_thread(i32 noundef %irq, ptr noundef %devid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %wake_lock = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 12
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wake_lock) #7
  %wake_detect_state = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 10
  %0 = ptrtoint ptr %wake_detect_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wake_detect_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp5.not = icmp eq i32 %1, 2
  br i1 %cmp5.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %wake_detect_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %wake_detect_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wake_lock, i32 noundef %call2) #7
  %dev = getelementptr inbounds %struct.arche_platform_drvdata, ptr %devid, i32 0, i32 16
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call9 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @apb_poweroff) #7
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call11 = tail call i32 @device_for_each_child(ptr noundef %6, ptr noundef null, ptr noundef nonnull @apb_cold_boot) #7
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wake_lock) #7
  %7 = ptrtoint ptr %wake_detect_state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %wake_detect_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %call28.sink = phi i32 [ %call28, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wake_lock, i32 noundef %call28.sink) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_platform_pm_notifier(ptr noundef %notifier, i32 noundef %pm_event, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %notifier, i32 -188
  %platform_state_mutex = getelementptr i8, ptr %notifier, i32 -96
  tail call void @mutex_lock_nested(ptr noundef %platform_state_mutex, i32 noundef 0) #7
  %0 = zext i32 %pm_event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %pm_event, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %state = getelementptr i8, ptr %notifier, i32 -172
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not = icmp eq i32 %2, 1
  br i1 %cmp.not, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %notifier, i32 12
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  %call = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @apb_poweroff) #7
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %add.ptr)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %state2 = getelementptr i8, ptr %notifier, i32 -172
  %5 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp3.not = icmp eq i32 %6, 0
  br i1 %cmp3.not, label %if.end5, label %sw.bb1.sw.epilog_crit_edge

sw.bb1.sw.epilog_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %wake_detect_irq.i = getelementptr i8, ptr %notifier, i32 -144
  %7 = ptrtoint ptr %wake_detect_irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wake_detect_irq.i, align 4
  tail call void @enable_irq(i32 noundef %8) #7
  %call6 = tail call fastcc i32 @arche_platform_coldboot_seq(ptr noundef %add.ptr)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end5, %sw.bb1.sw.epilog_crit_edge, %if.end, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb1.sw.epilog_crit_edge ], [ 0, %if.end5 ], [ 0, %if.end ], [ 32769, %sw.bb.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @arche_platform_coldboot_seq(ptr nocapture noundef %arche_pdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 16
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.74) #10
  %4 = ptrtoint ptr %arche_pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arche_pdata, align 4
  %is_reset_act_hi = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 1
  %6 = ptrtoint ptr %is_reset_act_hi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_reset_act_hi, align 4, !range !167
  %8 = zext i8 %7 to i32
  tail call void @gpiod_set_raw_value(ptr noundef %5, i32 noundef %8) #7
  %svc_sysboot = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 2
  %9 = ptrtoint ptr %svc_sysboot to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %svc_sysboot, align 4
  tail call void @gpiod_set_value(ptr noundef %10, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %svc_ref_clk = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 6
  %11 = ptrtoint ptr %svc_ref_clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %svc_ref_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.do.end5_crit_edge

do.end.do.end5_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

if.end.i:                                         ; preds = %do.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end7, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %12) #7
  br label %do.end5

do.end5:                                          ; preds = %if.then3.i, %do.end.do.end5_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %do.end.do.end5_crit_edge ]
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %arche_pdata to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arche_pdata, align 4
  %17 = ptrtoint ptr %is_reset_act_hi to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_reset_act_hi, align 4, !range !167
  %19 = xor i8 %18, 1
  %20 = zext i8 %19 to i32
  tail call void @gpiod_set_raw_value(ptr noundef %16, i32 noundef %20) #7
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end5 ], [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_poweroff(ptr noundef %dev, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @apb_ctrl_poweroff(ptr noundef %dev) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @apb_cold_boot(ptr noundef %dev, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @apb_ctrl_coldboot(ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.53) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @apb_ctrl_poweroff(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @apb_ctrl_coldboot(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %state = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.56, i32 5)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %6, i32 8)
  store i64 7017580640680086016, ptr %buf, align 1
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.58, i32 9)
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.59, i32 13)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.60, i32 15)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb6, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 14, %sw.default ], [ 12, %sw.bb6 ], [ 8, %sw.bb4 ], [ 7, %sw.bb2 ], [ 4, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @state_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %platform_state_mutex = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %platform_state_mutex, i32 noundef 0) #7
  %call1 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.61) #7
  br i1 %call1, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %state = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then.exit.thread_crit_edge, label %if.end

if.then.exit.thread_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev3 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  %call4 = tail call i32 @device_for_each_child(ptr noundef %5, ptr noundef null, ptr noundef nonnull @apb_poweroff) #7
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %1)
  br label %exit.thread

if.else:                                          ; preds = %entry
  %call5 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.62) #7
  br i1 %call5, label %if.then6, label %if.else16

if.then6:                                         ; preds = %if.else
  %state7 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp8 = icmp eq i32 %7, 1
  br i1 %cmp8, label %if.then6.exit.thread_crit_edge, label %exit

if.then6.exit.thread_crit_edge:                   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

if.else16:                                        ; preds = %if.else
  %call17 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.63) #7
  br i1 %call17, label %if.then18, label %if.else24

if.then18:                                        ; preds = %if.else16
  %state19 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp20 = icmp eq i32 %9, 2
  br i1 %cmp20, label %if.then18.exit.thread_crit_edge, label %do.end

if.then18.exit.thread_crit_edge:                  ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

do.end:                                           ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %dev23 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 16
  %10 = ptrtoint ptr %dev23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev23, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.64) #10
  br label %exit.thread

if.else24:                                        ; preds = %if.else16
  %call25 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef nonnull @.str.66) #7
  br i1 %call25, label %if.then26, label %do.end38

if.then26:                                        ; preds = %if.else24
  %state27 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp28 = icmp eq i32 %13, 3
  br i1 %cmp28, label %if.then26.exit.thread_crit_edge, label %if.end30

if.then26.exit.thread_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

if.end30:                                         ; preds = %if.then26
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %1)
  %14 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %15)
  %cmp.i = icmp eq i32 %15, 3
  br i1 %cmp.i, label %if.end30.exit.thread_crit_edge, label %do.end.i

if.end30.exit.thread_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.thread

do.end.i:                                         ; preds = %if.end30
  %dev.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.69) #10
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %is_reset_act_hi.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %is_reset_act_hi.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_reset_act_hi.i, align 4, !range !167
  %22 = zext i8 %21 to i32
  tail call void @gpiod_set_raw_value(ptr noundef %19, i32 noundef %22) #7
  %svc_sysboot.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 2
  %23 = ptrtoint ptr %svc_sysboot.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %svc_sysboot.i, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef 1) #7
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 200, i32 noundef 2) #7
  %svc_ref_clk.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %svc_ref_clk.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %svc_ref_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.do.end5.i_crit_edge

do.end.i.do.end5.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5.i

if.end.i.i:                                       ; preds = %do.end.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end7.i, label %if.then3.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %26) #7
  br label %do.end5.i

do.end5.i:                                        ; preds = %if.then3.i.i, %do.end.i.do.end5.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call1.i.i, %if.then3.i.i ], [ %call.i.i, %do.end.i.do.end5.i_crit_edge ]
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.72, i32 noundef %retval.0.i.ph.i) #10
  br label %exit.thread68

if.end7.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = ptrtoint ptr %is_reset_act_hi.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_reset_act_hi.i, align 4, !range !167
  %33 = xor i8 %32, 1
  %34 = zext i8 %33 to i32
  tail call void @gpiod_set_raw_value(ptr noundef %30, i32 noundef %34) #7
  %35 = ptrtoint ptr %state27 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 3, ptr %state27, align 4
  br label %exit.thread

do.end38:                                         ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #9
  %dev39 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %dev39 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.60) #10
  br label %exit.thread68

exit.thread:                                      ; preds = %if.end7.i, %if.end30.exit.thread_crit_edge, %if.then26.exit.thread_crit_edge, %do.end, %if.then18.exit.thread_crit_edge, %if.then6.exit.thread_crit_edge, %if.end, %if.then.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  br label %42

exit.thread68:                                    ; preds = %do.end38, %do.end5.i
  %ret.0.ph = phi i32 [ %retval.0.i.ph.i, %do.end5.i ], [ -22, %do.end38 ]
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  br label %43

exit:                                             ; preds = %if.then6
  %dev11 = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 16
  %38 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev11, align 4
  %call12 = tail call i32 @device_for_each_child(ptr noundef %39, ptr noundef null, ptr noundef nonnull @apb_poweroff) #7
  tail call fastcc void @arche_platform_poweroff_seq(ptr noundef %1)
  %wake_detect_irq.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %1, i32 0, i32 11
  %40 = ptrtoint ptr %wake_detect_irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %wake_detect_irq.i, align 4
  tail call void @enable_irq(i32 noundef %41) #7
  %call13 = tail call fastcc i32 @arche_platform_coldboot_seq(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %platform_state_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool45.not = icmp eq i32 %call13, 0
  br i1 %tobool45.not, label %exit._crit_edge, label %exit._crit_edge71

exit._crit_edge71:                                ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %43

exit._crit_edge:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %42

42:                                               ; preds = %exit._crit_edge, %exit.thread
  br label %43

43:                                               ; preds = %42, %exit._crit_edge71, %exit.thread68
  %44 = phi i32 [ %count, %42 ], [ %call13, %exit._crit_edge71 ], [ %ret.0.ph, %exit.thread68 ]
  ret i32 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @arche_platform_poweroff_seq(ptr noundef %arche_pdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %if.then3 [
    i32 0, label %entry.cleanup_crit_edge
    i32 3, label %entry.if.end10_crit_edge
  ]

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wake_detect_irq = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 11
  %3 = ptrtoint ptr %wake_detect_irq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wake_detect_irq, align 4
  tail call void @disable_irq(i32 noundef %4) #7
  %wake_lock = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 12
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wake_lock) #7
  %wake_detect_state.i = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 10
  %5 = ptrtoint ptr %wake_detect_state.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %wake_detect_state.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wake_lock, i32 noundef %call6) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then3, %entry.if.end10_crit_edge
  %svc_ref_clk = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 6
  %6 = ptrtoint ptr %svc_ref_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %svc_ref_clk, align 4
  tail call void @clk_disable(ptr noundef %7) #7
  tail call void @clk_unprepare(ptr noundef %7) #7
  %8 = ptrtoint ptr %arche_pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arche_pdata, align 4
  %is_reset_act_hi = getelementptr inbounds %struct.arche_platform_drvdata, ptr %arche_pdata, i32 0, i32 1
  %10 = ptrtoint ptr %is_reset_act_hi to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_reset_act_hi, align 4, !range !167
  %12 = zext i8 %11 to i32
  tail call void @gpiod_set_raw_value(ptr noundef %9, i32 noundef %12) #7
  %13 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_pm_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @arche_remove_child(ptr noundef %dev, ptr nocapture noundef readnone %unused) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  tail call void @platform_device_unregister(ptr noundef %add.ptr) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arche_platform_suspend(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @arche_platform_resume(ptr nocapture noundef readnone %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !81, !82, !83, !85, !86, !87, !88, !90, !91, !92, !93, !94, !96, !97, !98, !100, !101, !102, !103, !105, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !131, !132, !134, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !149, !151, !152, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__initcall__kmod_gb_arche__290_657_arche_init6, !1, !"__initcall__kmod_gb_arche__290_657_arche_init6", i1 false, i1 false}
!1 = !{!"../drivers/staging/greybus/arche-platform.c", i32 657, i32 1}
!2 = !{ptr @__exitcall_arche_exit, !3, !"__exitcall_arche_exit", i1 false, i1 false}
!3 = !{!"../drivers/staging/greybus/arche-platform.c", i32 664, i32 1}
!4 = !{ptr @__UNIQUE_ID_file291, !5, !"__UNIQUE_ID_file291", i1 false, i1 false}
!5 = !{!"../drivers/staging/greybus/arche-platform.c", i32 666, i32 1}
!6 = !{ptr @__UNIQUE_ID_license292, !5, !"__UNIQUE_ID_license292", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/staging/greybus/arche-platform.c", i32 667, i32 1}
!9 = !{ptr @__UNIQUE_ID_description294, !10, !"__UNIQUE_ID_description294", i1 false, i1 false}
!10 = !{!"../drivers/staging/greybus/arche-platform.c", i32 668, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/staging/greybus/arche-platform.c", i32 637, i32 11}
!13 = !{ptr @arche_platform_device_driver, !14, !"arche_platform_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/staging/greybus/arche-platform.c", i32 632, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/staging/greybus/arche-platform.c", i32 438, i32 13}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/staging/greybus/arche-platform.c", i32 444, i32 47}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/staging/greybus/arche-platform.c", i32 447, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @arche_platform_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @arche_platform_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/staging/greybus/arche-platform.c", i32 452, i32 49}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/staging/greybus/arche-platform.c", i32 456, i32 3}
!31 = !{ptr @arche_platform_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @arche_platform_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/staging/greybus/arche-platform.c", i32 461, i32 52}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/staging/greybus/arche-platform.c", i32 465, i32 3}
!37 = !{ptr @arche_platform_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @arche_platform_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/staging/greybus/arche-platform.c", i32 470, i32 47}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/staging/greybus/arche-platform.c", i32 473, i32 3}
!43 = !{ptr @arche_platform_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @arche_platform_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/staging/greybus/arche-platform.c", i32 480, i32 2}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @arche_platform_probe.__UNIQUE_ID_ddebug289, !46, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/staging/greybus/arche-platform.c", i32 482, i32 49}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/staging/greybus/arche-platform.c", i32 486, i32 3}
!53 = !{ptr @arche_platform_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @arche_platform_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @arche_platform_probe.__key, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/staging/greybus/arche-platform.c", i32 494, i32 2}
!57 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @arche_platform_probe.__key.27, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/staging/greybus/arche-platform.c", i32 495, i32 2}
!60 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/staging/greybus/arche-platform.c", i32 506, i32 3}
!63 = !{ptr @arche_platform_probe._entry.29, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @arche_platform_probe._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/staging/greybus/arche-platform.c", i32 513, i32 3}
!67 = !{ptr @arche_platform_probe._entry.32, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @arche_platform_probe._entry_ptr.34, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.36, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/greybus/arche-platform.c", i32 519, i32 3}
!71 = !{ptr @arche_platform_probe._entry.35, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @arche_platform_probe._entry_ptr.37, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.39, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/staging/greybus/arche-platform.c", i32 527, i32 3}
!75 = !{ptr @arche_platform_probe._entry.38, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @arche_platform_probe._entry_ptr.40, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/staging/greybus/arche-platform.c", i32 532, i32 48}
!79 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/greybus/arche-platform.c", i32 536, i32 4}
!81 = !{ptr @arche_platform_probe._entry.42, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @arche_platform_probe._entry_ptr.44, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/staging/greybus/arche-platform.c", i32 543, i32 2}
!85 = !{ptr @.str.47, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @arche_platform_probe._entry.45, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @arche_platform_probe._entry_ptr.48, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.49, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/staging/greybus/arche-platform.c", i32 144, i32 3}
!90 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @arche_platform_wd_irq_thread._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @arche_platform_wd_irq_thread._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.52, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/staging/greybus/arche-platform.c", i32 109, i32 3}
!96 = !{ptr @apb_poweroff._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @apb_poweroff._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.53, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/staging/greybus/arche-platform.c", i32 97, i32 3}
!100 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @apb_cold_boot._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @apb_cold_boot._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/staging/greybus/arche-platform.c", i32 388, i32 8}
!105 = !{ptr @dev_attr_state, !104, !"dev_attr_state", i1 false, i1 false}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/staging/greybus/arche-platform.c", i32 376, i32 23}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/staging/greybus/arche-platform.c", i32 378, i32 23}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/staging/greybus/arche-platform.c", i32 380, i32 23}
!112 = !{ptr @.str.59, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/staging/greybus/arche-platform.c", i32 382, i32 23}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/staging/greybus/arche-platform.c", i32 384, i32 23}
!116 = !{ptr @.str.61, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/staging/greybus/arche-platform.c", i32 314, i32 23}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/staging/greybus/arche-platform.c", i32 323, i32 30}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/staging/greybus/arche-platform.c", i32 338, i32 30}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/staging/greybus/arche-platform.c", i32 342, i32 3}
!124 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @state_store._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @state_store._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/staging/greybus/arche-platform.c", i32 343, i32 30}
!129 = !{ptr @state_store._entry.67, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/staging/greybus/arche-platform.c", i32 360, i32 3}
!131 = !{ptr @state_store._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/staging/greybus/arche-platform.c", i32 254, i32 2}
!134 = !{ptr @.str.70, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @arche_platform_fw_flashing_seq._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @arche_platform_fw_flashing_seq._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/staging/greybus/arche-platform.c", i32 264, i32 3}
!139 = !{ptr @arche_platform_fw_flashing_seq._entry.71, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @arche_platform_fw_flashing_seq._entry_ptr.73, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.74, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/staging/greybus/arche-platform.c", i32 221, i32 2}
!143 = !{ptr @.str.75, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @arche_platform_coldboot_seq._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @arche_platform_coldboot_seq._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @arche_platform_coldboot_seq._entry.76, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../drivers/staging/greybus/arche-platform.c", i32 230, i32 3}
!148 = !{ptr @arche_platform_coldboot_seq._entry_ptr.77, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.78, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/staging/greybus/arche-platform.c", i32 572, i32 3}
!151 = !{ptr @arche_platform_remove._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @arche_platform_remove._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @arche_platform_of_match, !154, !"arche_platform_of_match", i1 false, i1 false}
!154 = !{!"../drivers/staging/greybus/arche-platform.c", i32 618, i32 34}
!155 = !{ptr @arche_platform_pm_ops, !156, !"arche_platform_pm_ops", i1 false, i1 false}
!156 = !{!"../drivers/staging/greybus/arche-platform.c", i32 614, i32 8}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{i64 2148738171, i64 2148738176, i64 2148738189, i64 2148738233, i64 2148738267, i64 2148738288}
!167 = !{i8 0, i8 2}
