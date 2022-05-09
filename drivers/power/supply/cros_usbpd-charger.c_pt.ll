; ModuleID = '/llk/IR_all_yes/drivers/power/supply/cros_usbpd-charger.c_pt.bc'
source_filename = "../drivers/power/supply/cros_usbpd-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
%struct.ec_response_get_features = type { [2 x i32] }
%struct.charger_data = type { ptr, ptr, ptr, i32, i32, i32, [8 x ptr], %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.port_data = type { i32, [23 x i8], [32 x i8], [32 x i8], ptr, %struct.power_supply_desc, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }

@__initcall__kmod_cros_usbpd_charger__187_722_cros_usbpd_charger_driver_init6 = internal global ptr @cros_usbpd_charger_driver_init, section ".initcall6.init", align 4
@cros_usbpd_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cros_usbpd_charger_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cros_usbpd_charger_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cros_usbpd_charger_driver_exit = internal global ptr @cros_usbpd_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file188 = internal constant [64 x i8] c"cros_usbpd_charger.file=drivers/power/supply/cros_usbpd-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license189 = internal constant [31 x i8] c"cros_usbpd_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [57 x i8] c"cros_usbpd_charger.description=ChromeOS EC USBPD charger\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [53 x i8] c"cros_usbpd_charger.alias=platform:cros-usbpd-charger\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros-usbpd-charger\00", [45 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @cros_usbpd_charger_resume, ptr null, ptr @cros_usbpd_charger_resume, ptr null, ptr @cros_usbpd_charger_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No USB PD charging ports found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cros_usbpd_charger_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/power/supply/cros_usbpd-charger.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr = internal global ptr @cros_usbpd_charger_probe._entry, section ".printk_index", align 4
@cros_usbpd_charger_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Could not get charger port count\0A\00", [62 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.8 = internal global ptr @cros_usbpd_charger_probe._entry.6, section ".printk_index", align 4
@cros_usbpd_charger_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 595, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No charging ports found\0A\00", [39 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.11 = internal global ptr @cros_usbpd_charger_probe._entry.9, section ".printk_index", align 4
@cros_usbpd_charger_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 606, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unexpected number of charge port count\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.15 = internal global ptr @cros_usbpd_charger_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CROS_DEDICATED_CHARGER\00", [41 x i8] zeroinitializer }, align 32
@cros_usbpd_dedicated_charger_props = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 0, i32 12], [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CROS_USBPD_CHARGER%d\00", [43 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_props = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 38, i32 39, i32 4, i32 0, i32 16, i32 10, i32 12, i32 73, i32 74, i32 65], [56 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_usb_types = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 6, i32 7, i32 9], [32 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 655, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.20 = internal global ptr @cros_usbpd_charger_probe._entry.18, section ".printk_index", align 4
@cros_usbpd_charger_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 665, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No power supplies registered\0A\00", [34 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.23 = internal global ptr @cros_usbpd_charger_probe._entry.21, section ".printk_index", align 4
@cros_usbpd_charger_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 673, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register notifier\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.27 = internal global ptr @cros_usbpd_charger_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failing probe (err:0x%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 688, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failing probe (err:0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_probe._entry_ptr.31 = internal global ptr @cros_usbpd_charger_probe._entry.29, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@cros_usbpd_charger_get_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 393, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get port status (err:0x%x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cros_usbpd_charger_get_prop\00", [36 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_prop._entry_ptr = internal global ptr @cros_usbpd_charger_get_prop._entry, section ".printk_index", align 4
@input_current_limit = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@input_voltage_limit = internal global { i16, [30 x i8] } { i16 -1, [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@cros_usbpd_charger_get_power_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 198, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unable to query PD power info (err:0x%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cros_usbpd_charger_get_power_info\00", [62 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_power_info._entry_ptr = internal global ptr @cros_usbpd_charger_get_power_info._entry, section ".printk_index", align 4
@cros_usbpd_charger_get_power_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 223, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Unknown role %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_power_info._entry_ptr.38 = internal global ptr @cros_usbpd_charger_get_power_info._entry.36, section ".printk_index", align 4
@cros_usbpd_charger_get_power_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 279, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Port %d: default case!\0A\00", [40 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_power_info._entry_ptr.41 = internal global ptr @cros_usbpd_charger_get_power_info._entry.39, section ".printk_index", align 4
@cros_usbpd_charger_get_power_info.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.35, ptr @.str.3, ptr @.str.43, i8 0, i8 73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cros_usbpd_charger\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Port %d: type=%d vmax=%d vnow=%d cmax=%d clim=%d pmax=%d\0A\00", [38 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_discovery_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 169, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Unable to query discovery info (err:0x%x)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cros_usbpd_charger_get_discovery_info\00", [58 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_get_discovery_info._entry_ptr = internal global ptr @cros_usbpd_charger_get_discovery_info._entry, section ".printk_index", align 4
@cros_usbpd_charger_get_discovery_info.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Port %d: VID = 0x%x, PID=0x%x, PTYPE=0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%x\00", [29 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 474, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"External Current Limit cleared for all ports\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cros_usbpd_charger_set_prop\00", [36 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_prop._entry_ptr = internal global ptr @cros_usbpd_charger_set_prop._entry, section ".printk_index", align 4
@cros_usbpd_charger_set_prop._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"External Current Limit set to %dmA for all ports\0A\00", [46 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_prop._entry_ptr.52 = internal global ptr @cros_usbpd_charger_set_prop._entry.50, section ".printk_index", align 4
@cros_usbpd_charger_set_prop._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.49, ptr @.str.3, i32 490, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"External Voltage Limit cleared for all ports\0A\00", [50 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_prop._entry_ptr.55 = internal global ptr @cros_usbpd_charger_set_prop._entry.53, section ".printk_index", align 4
@cros_usbpd_charger_set_prop._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.49, ptr @.str.3, i32 494, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"External Voltage Limit set to %dmV for all ports\0A\00", [46 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_prop._entry_ptr.58 = internal global ptr @cros_usbpd_charger_set_prop._entry.56, section ".printk_index", align 4
@cros_usbpd_charger_set_ext_power_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 343, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Unable to set the 'External Power Limit': %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cros_usbpd_charger_set_ext_power_limit\00", [57 x i8] zeroinitializer }, align 32
@cros_usbpd_charger_set_ext_power_limit._entry_ptr = internal global ptr @cros_usbpd_charger_set_ext_power_limit._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.61 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 4, i64 10, i64 12, i64 16, i64 38, i64 39, i64 65, i64 73, i64 74]
@__sancov_gen_cov_switch_values.62 = internal global [4 x i64] [i64 2, i64 32, i64 38, i64 39]
@__sancov_gen_cov_switch_values.63 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [12 x i64] [i64 10, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.65 = private unnamed_addr constant [26 x i8] c"cros_usbpd_charger_driver\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 714, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 716, i32 11 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"cros_usbpd_charger_pm_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 711, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 573, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 585, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 595, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 606, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 633, i32 24 }
@___asan_gen_.116 = private unnamed_addr constant [35 x i8] c"cros_usbpd_dedicated_charger_props\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 69, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 640, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"cros_usbpd_charger_props\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 56, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"cros_usbpd_charger_usb_types\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 75, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 655, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 665, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 673, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 685, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 688, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 392, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"input_current_limit\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 88, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c"input_voltage_limit\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 87, i32 12 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 198, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 223, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 279, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 288, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 168, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 173, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 176, i32 59 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 473, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 476, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 489, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 492, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [45 x i8] c"../drivers/power/supply/cros_usbpd-charger.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 342, i32 3 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file188, ptr @__UNIQUE_ID_license189, ptr @__exitcall_cros_usbpd_charger_driver_exit, ptr @__initcall__kmod_cros_usbpd_charger__187_722_cros_usbpd_charger_driver_init6, ptr @cros_usbpd_charger_driver_exit, ptr @cros_usbpd_charger_get_discovery_info._entry, ptr @cros_usbpd_charger_get_discovery_info._entry_ptr, ptr @cros_usbpd_charger_get_power_info._entry, ptr @cros_usbpd_charger_get_power_info._entry.36, ptr @cros_usbpd_charger_get_power_info._entry.39, ptr @cros_usbpd_charger_get_power_info._entry_ptr, ptr @cros_usbpd_charger_get_power_info._entry_ptr.38, ptr @cros_usbpd_charger_get_power_info._entry_ptr.41, ptr @cros_usbpd_charger_get_prop._entry, ptr @cros_usbpd_charger_get_prop._entry_ptr, ptr @cros_usbpd_charger_probe._entry, ptr @cros_usbpd_charger_probe._entry.12, ptr @cros_usbpd_charger_probe._entry.18, ptr @cros_usbpd_charger_probe._entry.21, ptr @cros_usbpd_charger_probe._entry.24, ptr @cros_usbpd_charger_probe._entry.29, ptr @cros_usbpd_charger_probe._entry.6, ptr @cros_usbpd_charger_probe._entry.9, ptr @cros_usbpd_charger_probe._entry_ptr, ptr @cros_usbpd_charger_probe._entry_ptr.11, ptr @cros_usbpd_charger_probe._entry_ptr.15, ptr @cros_usbpd_charger_probe._entry_ptr.20, ptr @cros_usbpd_charger_probe._entry_ptr.23, ptr @cros_usbpd_charger_probe._entry_ptr.27, ptr @cros_usbpd_charger_probe._entry_ptr.31, ptr @cros_usbpd_charger_probe._entry_ptr.8, ptr @cros_usbpd_charger_set_ext_power_limit._entry, ptr @cros_usbpd_charger_set_ext_power_limit._entry_ptr, ptr @cros_usbpd_charger_set_prop._entry, ptr @cros_usbpd_charger_set_prop._entry.50, ptr @cros_usbpd_charger_set_prop._entry.53, ptr @cros_usbpd_charger_set_prop._entry.56, ptr @cros_usbpd_charger_set_prop._entry_ptr, ptr @cros_usbpd_charger_set_prop._entry_ptr.52, ptr @cros_usbpd_charger_set_prop._entry_ptr.55, ptr @cros_usbpd_charger_set_prop._entry_ptr.58, ptr @cros_usbpd_charger_driver, ptr @.str, ptr @cros_usbpd_charger_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @cros_usbpd_dedicated_charger_props, ptr @.str.17, ptr @cros_usbpd_charger_props, ptr @cros_usbpd_charger_usb_types, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @input_current_limit, ptr @input_voltage_limit, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_dedicated_charger_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_props to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_usb_types to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_get_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_current_limit to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_voltage_limit to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_get_power_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_get_power_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_get_power_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_get_discovery_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_set_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_set_prop._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_set_prop._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_set_prop._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_usbpd_charger_set_ext_power_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cros_usbpd_charger_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cros_usbpd_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @cros_usbpd_charger_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_probe(ptr noundef %pd) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev1, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 68, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup114_crit_edge, label %if.end

entry.cleanup114_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call.i, align 4
  %ec_dev6 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ec_dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %3, ptr %ec_dev6, align 4
  %ec_device7 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %ec_device7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %ec_device7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 21) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end.cros_usbpd_charger_get_usbpd_num_ports.exit.thread_crit_edge, label %if.end.i.i

if.end.cros_usbpd_charger_get_usbpd_num_ports.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_get_usbpd_num_ports.exit.thread

if.end.i.i:                                       ; preds = %if.end
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 258
  %command4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %command4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add3.i.i, ptr %command4.i.i, align 4
  %outsize5.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %outsize5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %outsize5.i.i, align 8
  %insize6.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %insize6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %insize6.i.i, align 4
  %17 = ptrtoint ptr %ec_device7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ec_device7, align 4
  %call10.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %18, ptr noundef nonnull %call7.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp11.i.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp11.i.i, label %cros_usbpd_charger_ec_command.exit.thread6.i, label %cros_usbpd_charger_get_usbpd_num_ports.exit

cros_usbpd_charger_ec_command.exit.thread6.i:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  br label %cros_usbpd_charger_get_usbpd_num_ports.exit.thread

cros_usbpd_charger_get_usbpd_num_ports.exit.thread: ; preds = %cros_usbpd_charger_ec_command.exit.thread6.i, %if.end.cros_usbpd_charger_get_usbpd_num_ports.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.cros_usbpd_charger_get_usbpd_num_ports.exit.thread_crit_edge ], [ %call10.i.i, %cros_usbpd_charger_ec_command.exit.thread6.i ]
  %num_usbpd_ports224 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %num_usbpd_ports224 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.ph, ptr %num_usbpd_ports224, align 4
  br label %do.end

cros_usbpd_charger_get_usbpd_num_ports.exit:      ; preds = %if.end.i.i
  %data15.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %20 = ptrtoint ptr %data15.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %resp.sroa.0.0.copyload.i = load i8, ptr %data15.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  %conv.i = zext i8 %resp.sroa.0.0.copyload.i to i32
  %num_usbpd_ports = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %num_usbpd_ports to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i, ptr %num_usbpd_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %resp.sroa.0.0.copyload.i)
  %cmp = icmp eq i8 %resp.sroa.0.0.copyload.i, 0
  br i1 %cmp, label %cros_usbpd_charger_get_usbpd_num_ports.exit.do.end_crit_edge, label %cros_usbpd_charger_get_usbpd_num_ports.exit.if.end11_crit_edge

cros_usbpd_charger_get_usbpd_num_ports.exit.if.end11_crit_edge: ; preds = %cros_usbpd_charger_get_usbpd_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

cros_usbpd_charger_get_usbpd_num_ports.exit.do.end_crit_edge: ; preds = %cros_usbpd_charger_get_usbpd_num_ports.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %cros_usbpd_charger_get_usbpd_num_ports.exit.do.end_crit_edge, %cros_usbpd_charger_get_usbpd_num_ports.exit.thread
  %num_usbpd_ports227 = phi ptr [ %num_usbpd_ports224, %cros_usbpd_charger_get_usbpd_num_ports.exit.thread ], [ %num_usbpd_ports, %cros_usbpd_charger_get_usbpd_num_ports.exit.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %if.end11

if.end11:                                         ; preds = %do.end, %cros_usbpd_charger_get_usbpd_num_ports.exit.if.end11_crit_edge
  %num_usbpd_ports226 = phi ptr [ %num_usbpd_ports227, %do.end ], [ %num_usbpd_ports, %cros_usbpd_charger_get_usbpd_num_ports.exit.if.end11_crit_edge ]
  %22 = ptrtoint ptr %ec_dev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ec_dev6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i198 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 21) #12
  %tobool.not.i.i199 = icmp eq ptr %call7.i.i.i.i198, null
  br i1 %tobool.not.i.i199, label %if.end11.cros_usbpd_charger_get_num_ports.exit.thread_crit_edge, label %if.end.i.i209

if.end11.cros_usbpd_charger_get_num_ports.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_get_num_ports.exit.thread

if.end.i.i209:                                    ; preds = %if.end11
  %25 = ptrtoint ptr %call7.i.i.i.i198 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %call7.i.i.i.i198, align 8
  %cmd_offset.i.i200 = getelementptr inbounds %struct.cros_ec_dev, ptr %23, i32 0, i32 5
  %26 = ptrtoint ptr %cmd_offset.i.i200 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cmd_offset.i.i200, align 2
  %conv.i.i201 = zext i16 %27 to i32
  %add3.i.i202 = add nuw nsw i32 %conv.i.i201, 261
  %command4.i.i203 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i198, i32 0, i32 1
  %28 = ptrtoint ptr %command4.i.i203 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add3.i.i202, ptr %command4.i.i203, align 4
  %outsize5.i.i204 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i198, i32 0, i32 2
  %29 = ptrtoint ptr %outsize5.i.i204 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %outsize5.i.i204, align 8
  %insize6.i.i205 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i198, i32 0, i32 3
  %30 = ptrtoint ptr %insize6.i.i205 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %insize6.i.i205, align 4
  %31 = ptrtoint ptr %ec_device7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ec_device7, align 4
  %call10.i.i207 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %32, ptr noundef nonnull %call7.i.i.i.i198) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i207)
  %cmp11.i.i208 = icmp slt i32 %call10.i.i207, 0
  br i1 %cmp11.i.i208, label %cros_usbpd_charger_ec_command.exit.thread6.i210, label %cros_usbpd_charger_get_num_ports.exit

cros_usbpd_charger_ec_command.exit.thread6.i210:  ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i198) #9
  br label %cros_usbpd_charger_get_num_ports.exit.thread

cros_usbpd_charger_get_num_ports.exit.thread:     ; preds = %cros_usbpd_charger_ec_command.exit.thread6.i210, %if.end11.cros_usbpd_charger_get_num_ports.exit.thread_crit_edge
  %retval.0.i215.ph = phi i32 [ -12, %if.end11.cros_usbpd_charger_get_num_ports.exit.thread_crit_edge ], [ %call10.i.i207, %cros_usbpd_charger_ec_command.exit.thread6.i210 ]
  %num_charger_ports230 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %num_charger_ports230 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i215.ph, ptr %num_charger_ports230, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  %34 = ptrtoint ptr %num_usbpd_ports226 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_usbpd_ports226, align 4
  %36 = ptrtoint ptr %num_charger_ports230 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %num_charger_ports230, align 4
  br label %if.end21

cros_usbpd_charger_get_num_ports.exit:            ; preds = %if.end.i.i209
  call void @__sanitizer_cov_trace_pc() #11
  %data15.i.i211 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i198, i32 0, i32 5
  %37 = ptrtoint ptr %data15.i.i211 to i32
  call void @__asan_load1_noabort(i32 %37)
  %resp.sroa.0.0.copyload.i212 = load i8, ptr %data15.i.i211, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i198) #9
  %conv.i213 = zext i8 %resp.sroa.0.0.copyload.i212 to i32
  %num_charger_ports = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %num_charger_ports to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv.i213, ptr %num_charger_ports, align 4
  br label %if.end21

if.end21:                                         ; preds = %cros_usbpd_charger_get_num_ports.exit, %cros_usbpd_charger_get_num_ports.exit.thread
  %39 = phi i32 [ %35, %cros_usbpd_charger_get_num_ports.exit.thread ], [ %conv.i213, %cros_usbpd_charger_get_num_ports.exit ]
  %num_charger_ports233 = phi ptr [ %num_charger_ports230, %cros_usbpd_charger_get_num_ports.exit.thread ], [ %num_charger_ports, %cros_usbpd_charger_get_num_ports.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp23 = icmp slt i32 %39, 1
  br i1 %cmp23, label %do.end27, label %if.end28

do.end27:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10) #13
  br label %do.end113

if.end28:                                         ; preds = %if.end21
  %40 = ptrtoint ptr %num_usbpd_ports226 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_usbpd_ports226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp31 = icmp slt i32 %39, %41
  %add = add i32 %41, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add)
  %cmp34 = icmp sgt i32 %39, %add
  %or.cond = or i1 %cmp31, %cmp34
  br i1 %or.cond, label %do.end38, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  %42 = ptrtoint ptr %num_charger_ports233 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_charger_ports233, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp41238 = icmp sgt i32 %43, 0
  br i1 %cmp41238, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %num_registered_psy = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 5
  br label %for.body

do.end38:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %do.end113

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0239 = phi i32 [ 0, %for.body.lr.ph ], [ %inc69, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #9
  %44 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i216 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 184, i32 noundef 3520) #9
  %tobool43.not = icmp eq ptr %call.i216, null
  br i1 %tobool43.not, label %cleanup, label %if.end45

if.end45:                                         ; preds = %for.body
  %charger46 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 13
  %45 = ptrtoint ptr %charger46 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i, ptr %charger46, align 4
  %46 = ptrtoint ptr %call.i216 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0239, ptr %call.i216, align 4
  %psy_desc47 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5
  %get_property = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 6
  %47 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @cros_usbpd_charger_get_prop, ptr %get_property, align 4
  %set_property = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 7
  %48 = ptrtoint ptr %set_property to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @cros_usbpd_charger_set_prop, ptr %set_property, align 4
  %property_is_writeable = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 8
  %49 = ptrtoint ptr %property_is_writeable to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @cros_usbpd_charger_property_is_writeable, ptr %property_is_writeable, align 4
  %external_power_changed = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 9
  %50 = ptrtoint ptr %external_power_changed to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @cros_usbpd_charger_power_changed, ptr %external_power_changed, align 4
  %51 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i216, ptr %drv_data, align 4
  %52 = ptrtoint ptr %num_usbpd_ports226 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_usbpd_ports226, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0239, i32 %53)
  %cmp.i.not = icmp slt i32 %i.0239, %53
  %name51 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 1
  br i1 %cmp.i.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %54 = call ptr @memcpy(ptr %name51, ptr @.str.16, i32 23)
  br label %if.end57

if.else:                                          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name51, ptr noundef nonnull @.str.17, i32 noundef %i.0239)
  %usb_types = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %usb_types to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @cros_usbpd_charger_usb_types, ptr %usb_types, align 4
  %num_usb_types = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 3
  %56 = ptrtoint ptr %num_usb_types to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %num_usb_types, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then49
  %.sink241 = phi i32 [ 4, %if.else ], [ 3, %if.then49 ]
  %cros_usbpd_dedicated_charger_props.sink = phi ptr [ @cros_usbpd_charger_props, %if.else ], [ @cros_usbpd_dedicated_charger_props, %if.then49 ]
  %.sink = phi i32 [ 10, %if.else ], [ 3, %if.then49 ]
  %57 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink241, ptr %57, align 4
  %59 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %cros_usbpd_dedicated_charger_props.sink, ptr %59, align 4
  %61 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 5, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %.sink, ptr %61, align 4
  %name58 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 1
  %63 = ptrtoint ptr %psy_desc47 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %name58, ptr %psy_desc47, align 4
  %call61 = call ptr @devm_power_supply_register_no_ws(ptr noundef %dev, ptr noundef %psy_desc47, ptr noundef nonnull %psy_cfg) #9
  %cmp.i217 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i217, label %do.end66, label %if.end67

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #13
  br label %for.inc

if.end67:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %psy68 = getelementptr inbounds %struct.port_data, ptr %call.i216, i32 0, i32 4
  %64 = ptrtoint ptr %psy68 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call61, ptr %psy68, align 4
  %65 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_registered_psy, align 4
  %inc = add i32 %66, 1
  store i32 %inc, ptr %num_registered_psy, align 4
  %arrayidx = getelementptr %struct.charger_data, ptr %call.i, i32 0, i32 6, i32 %66
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call.i216, ptr %arrayidx, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #9
  br label %do.end97

for.inc:                                          ; preds = %if.end67, %do.end66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #9
  %inc69 = add nuw nsw i32 %i.0239, 1
  %68 = ptrtoint ptr %num_charger_ports233 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_charger_ports233, align 4
  %cmp41 = icmp slt i32 %inc69, %69
  br i1 %cmp41, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %num_registered_psy70 = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 5
  %70 = ptrtoint ptr %num_registered_psy70 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_registered_psy70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool71.not = icmp eq i32 %71, 0
  br i1 %tobool71.not, label %if.then72, label %if.end76

if.then72:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %do.end97

if.end76:                                         ; preds = %for.end
  %notifier = getelementptr inbounds %struct.charger_data, ptr %call.i, i32 0, i32 7
  %72 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @cros_usbpd_charger_ec_event, ptr %notifier, align 4
  %call78 = call i32 @cros_usbpd_register_notify(ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end83, label %if.else84

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  br label %cleanup114

if.else84:                                        ; preds = %if.end76
  %call.i218 = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @cros_usbpd_charger_unregister_notifier, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %tobool.not.i = icmp eq i32 %call.i218, 0
  br i1 %tobool.not.i, label %if.else84.cleanup114_crit_edge, label %devm_add_action_or_reset.exit

if.else84.cleanup114_crit_edge:                   ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

devm_add_action_or_reset.exit:                    ; preds = %if.else84
  call void @cros_usbpd_unregister_notify(ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp86 = icmp slt i32 %call.i218, 0
  br i1 %cmp86, label %devm_add_action_or_reset.exit.do.end97_crit_edge, label %devm_add_action_or_reset.exit.cleanup114_crit_edge

devm_add_action_or_reset.exit.cleanup114_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup114

devm_add_action_or_reset.exit.do.end97_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end97

do.end97:                                         ; preds = %devm_add_action_or_reset.exit.do.end97_crit_edge, %if.then72, %cleanup
  %ret.2 = phi i32 [ -12, %cleanup ], [ %call.i218, %devm_add_action_or_reset.exit.do.end97_crit_edge ], [ -19, %if.then72 ]
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pd, i32 0, i32 3, i32 3
  %73 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i220 = icmp eq ptr %74, null
  br i1 %tobool.not.i220, label %if.end.i221, label %do.end97.dev_name.exit_crit_edge

do.end97.dev_name.exit_crit_edge:                 ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i221:                                      ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i221, %do.end97.dev_name.exit_crit_edge
  %retval.0.i222 = phi ptr [ %76, %if.end.i221 ], [ %74, %do.end97.dev_name.exit_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 685, i32 noundef 9, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i222, i32 noundef %ret.2) #9
  br label %do.end113

do.end113:                                        ; preds = %dev_name.exit, %do.end38, %do.end27
  %ret.3 = phi i32 [ -19, %do.end27 ], [ -71, %do.end38 ], [ %ret.2, %dev_name.exit ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %ret.3) #13
  br label %cleanup114

cleanup114:                                       ; preds = %do.end113, %devm_add_action_or_reset.exit.cleanup114_crit_edge, %if.else84.cleanup114_crit_edge, %do.end83, %entry.cleanup114_crit_edge
  %retval.0 = phi i32 [ %ret.3, %do.end113 ], [ -12, %entry.cleanup114_crit_edge ], [ 0, %devm_add_action_or_reset.exit.cleanup114_crit_edge ], [ 0, %do.end83 ], [ 0, %if.else84.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_get_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %charger1 = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = add i32 %psp, -4
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 31)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 6, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb5_crit_edge78
    i32 4, label %entry.sw.bb5_crit_edge79
  ]

entry.sw.bb5_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ec_device2 = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ec_device2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ec_device2, align 4
  %mkbp_event_supported = getelementptr inbounds %struct.cros_ec_device, ptr %8, i32 0, i32 20
  %9 = ptrtoint ptr %mkbp_event_supported to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mkbp_event_supported, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false:                                    ; preds = %sw.bb
  %psy_online = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %psy_online to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %psy_online, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool4.not = icmp eq i32 %12, 0
  br i1 %tobool4.not, label %lor.lhs.false.sw.bb5_crit_edge, label %lor.lhs.false.sw.epilog_crit_edge

lor.lhs.false.sw.epilog_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

lor.lhs.false.sw.bb5_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5

sw.bb5:                                           ; preds = %lor.lhs.false.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge78, %entry.sw.bb5_crit_edge79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %last_update.i = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 14
  %14 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %last_update.i, align 4
  %add.neg.i = add i32 %13, -50
  %sub.i = sub i32 %add.neg.i, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %sw.bb5.sw.epilog_crit_edge, label %if.end.i

sw.bb5.sw.epilog_crit_edge:                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb5
  %call1.i = tail call fastcc i32 @cros_usbpd_charger_get_power_info(ptr noundef %call) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.do.end_crit_edge, label %if.end4.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end4.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %call, align 4
  %18 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %charger1, align 4
  %num_usbpd_ports.i.i = getelementptr inbounds %struct.charger_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %num_usbpd_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_usbpd_ports.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp.i.not.i = icmp slt i32 %17, %21
  br i1 %cmp.i.not.i, label %cros_usbpd_charger_get_port_status.exit, label %cros_usbpd_charger_get_port_status.exit.thread75

cros_usbpd_charger_get_port_status.exit.thread75: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_update.i, align 4
  br label %sw.epilog

cros_usbpd_charger_get_port_status.exit:          ; preds = %if.end4.i
  %call7.i = tail call fastcc i32 @cros_usbpd_charger_get_discovery_info(ptr noundef %call) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_update.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp = icmp slt i32 %call7.i, 0
  br i1 %cmp, label %cros_usbpd_charger_get_port_status.exit.do.end_crit_edge, label %cros_usbpd_charger_get_port_status.exit.sw.epilog_crit_edge

cros_usbpd_charger_get_port_status.exit.sw.epilog_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

cros_usbpd_charger_get_port_status.exit.do.end_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %cros_usbpd_charger_get_port_status.exit.do.end_crit_edge, %if.end.i.do.end_crit_edge
  %retval.0.i71 = phi i32 [ %call7.i, %cros_usbpd_charger_get_port_status.exit.do.end_crit_edge ], [ %call1.i, %if.end.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i71) #13
  br label %cleanup

sw.epilog:                                        ; preds = %cros_usbpd_charger_get_port_status.exit.sw.epilog_crit_edge, %cros_usbpd_charger_get_port_status.exit.thread75, %sw.bb5.sw.epilog_crit_edge, %lor.lhs.false.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %26 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %psp, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb10
    i32 0, label %sw.bb12
    i32 16, label %sw.bb13
    i32 10, label %sw.bb14
    i32 12, label %sw.bb16
    i32 65, label %sw.bb18
    i32 38, label %sw.bb19
    i32 39, label %sw.bb27
    i32 73, label %sw.bb36
    i32 74, label %sw.bb37
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb10:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_online11 = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 7
  %27 = ptrtoint ptr %psy_online11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %psy_online11, align 4
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_status = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 8
  %30 = ptrtoint ptr %psy_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %psy_status, align 4
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_current_max = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 9
  %33 = ptrtoint ptr %psy_current_max to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %psy_current_max, align 4
  %mul = mul i32 %34, 1000
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_voltage_max_design = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 10
  %36 = ptrtoint ptr %psy_voltage_max_design to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %psy_voltage_max_design, align 4
  %mul15 = mul i32 %37, 1000
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul15, ptr %val, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_voltage_now = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 11
  %39 = ptrtoint ptr %psy_voltage_now to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %psy_voltage_now, align 4
  %mul17 = mul i32 %40, 1000
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul17, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %psy_usb_type = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 6
  %42 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %psy_usb_type, align 4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %sw.epilog
  %45 = load i16, ptr @input_current_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %45)
  %cmp21 = icmp eq i16 %45, -1
  br i1 %cmp21, label %if.then23, label %if.else

if.then23:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %conv20 = zext i16 %45 to i32
  %mul25 = mul nuw nsw i32 %conv20, 1000
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul25, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %sw.epilog
  %48 = load i16, ptr @input_voltage_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp29 = icmp eq i16 %48, -1
  br i1 %cmp29, label %if.then31, label %if.else32

if.then31:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val, align 4
  br label %cleanup

if.else32:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #11
  %conv28 = zext i16 %48 to i32
  %mul34 = mul nuw nsw i32 %conv28, 1000
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul34, ptr %val, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %model_name = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 3
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %model_name, ptr %val, align 4
  br label %cleanup

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %manufacturer = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 2
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %manufacturer, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb37, %sw.bb36, %if.else32, %if.then31, %if.else, %if.then23, %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb10, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then31 ], [ 0, %if.else32 ], [ 0, %if.then23 ], [ 0, %if.else ], [ 0, %sw.bb37 ], [ 0, %sw.bb36 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ], [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ 0, %sw.bb12 ], [ 0, %sw.bb10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_set_prop(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %charger1 = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65534999, i32 %5)
  %cmp = icmp sgt i32 %5, 65534999
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3 = icmp slt i32 %5, 0
  %div = sdiv i32 %5, 1000
  %conv = trunc i32 %div to i16
  %intval.0 = select i1 %cmp3, i16 -1, i16 %conv
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 38, label %sw.bb
    i32 39, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %7 = load i16, ptr @input_voltage_limit, align 2
  %ec_dev1.i.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %ec_dev1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ec_dev1.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i, label %sw.bb.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge, label %cros_usbpd_charger_ec_command.exit.i

sw.bb.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_set_ext_power_limit.exit.thread

cros_usbpd_charger_ec_command.exit.i:             ; preds = %sw.bb
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %call7.i.i.i.i, align 8
  %cmd_offset.i.i = getelementptr inbounds %struct.cros_ec_dev, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %cmd_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %cmd_offset.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add3.i.i = add nuw nsw i32 %conv.i.i, 162
  %command4.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %command4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add3.i.i, ptr %command4.i.i, align 4
  %outsize5.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %outsize5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %outsize5.i.i, align 8
  %insize6.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %insize6.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %insize6.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %intval.0, ptr %data.i.i, align 4
  %req.sroa.5.0.data.i.sroa_idx.i = getelementptr inbounds i8, ptr %data.i.i, i32 2
  %18 = ptrtoint ptr %req.sroa.5.0.data.i.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %7, ptr %req.sroa.5.0.data.i.sroa_idx.i, align 2
  %ec_device.i.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %ec_device.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ec_device.i.i, align 4
  %call10.i.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %20, ptr noundef nonnull %call7.i.i.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %cmp.i = icmp slt i32 %call10.i.i, 0
  br i1 %cmp.i, label %cros_usbpd_charger_ec_command.exit.i.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge, label %if.end10

cros_usbpd_charger_ec_command.exit.i.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge: ; preds = %cros_usbpd_charger_ec_command.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_set_ext_power_limit.exit.thread

cros_usbpd_charger_set_ext_power_limit.exit.thread: ; preds = %cros_usbpd_charger_ec_command.exit.i.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge, %sw.bb.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge
  %retval.0.i9.i = phi i32 [ %call10.i.i, %cros_usbpd_charger_ec_command.exit.i.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge ], [ -12, %sw.bb.cros_usbpd_charger_set_ext_power_limit.exit.thread_crit_edge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i9.i) #13
  br label %cleanup

if.end10:                                         ; preds = %cros_usbpd_charger_ec_command.exit.i
  store i16 %intval.0, ptr @input_current_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %intval.0)
  %cmp12 = icmp eq i16 %intval.0, -1
  br i1 %cmp12, label %do.end, label %do.end18

do.end:                                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.48) #13
  br label %cleanup

do.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %conv11 = zext i16 %intval.0 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.51, i32 noundef %conv11) #13
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %23 = load i16, ptr @input_current_limit, align 2
  %ec_dev1.i.i56 = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %ec_dev1.i.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ec_dev1.i.i56, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i57 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 24) #12
  %tobool.not.i.i58 = icmp eq ptr %call7.i.i.i.i57, null
  br i1 %tobool.not.i.i58, label %sw.bb21.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge, label %cros_usbpd_charger_ec_command.exit.i70

sw.bb21.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_set_ext_power_limit.exit74.thread

cros_usbpd_charger_ec_command.exit.i70:           ; preds = %sw.bb21
  %27 = ptrtoint ptr %call7.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %call7.i.i.i.i57, align 8
  %cmd_offset.i.i59 = getelementptr inbounds %struct.cros_ec_dev, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %cmd_offset.i.i59 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %cmd_offset.i.i59, align 2
  %conv.i.i60 = zext i16 %29 to i32
  %add3.i.i61 = add nuw nsw i32 %conv.i.i60, 162
  %command4.i.i62 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i57, i32 0, i32 1
  %30 = ptrtoint ptr %command4.i.i62 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %add3.i.i61, ptr %command4.i.i62, align 4
  %outsize5.i.i63 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i57, i32 0, i32 2
  %31 = ptrtoint ptr %outsize5.i.i63 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %outsize5.i.i63, align 8
  %insize6.i.i64 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i57, i32 0, i32 3
  %32 = ptrtoint ptr %insize6.i.i64 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %insize6.i.i64, align 4
  %data.i.i65 = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i.i57, i32 0, i32 5
  %33 = ptrtoint ptr %data.i.i65 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %23, ptr %data.i.i65, align 4
  %req.sroa.5.0.data.i.sroa_idx.i66 = getelementptr inbounds i8, ptr %data.i.i65, i32 2
  %34 = ptrtoint ptr %req.sroa.5.0.data.i.sroa_idx.i66 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %intval.0, ptr %req.sroa.5.0.data.i.sroa_idx.i66, align 2
  %ec_device.i.i67 = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %ec_device.i.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ec_device.i.i67, align 4
  %call10.i.i68 = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %36, ptr noundef nonnull %call7.i.i.i.i57) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i68)
  %cmp.i69 = icmp slt i32 %call10.i.i68, 0
  br i1 %cmp.i69, label %cros_usbpd_charger_ec_command.exit.i70.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge, label %if.end26

cros_usbpd_charger_ec_command.exit.i70.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge: ; preds = %cros_usbpd_charger_ec_command.exit.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_set_ext_power_limit.exit74.thread

cros_usbpd_charger_set_ext_power_limit.exit74.thread: ; preds = %cros_usbpd_charger_ec_command.exit.i70.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge, %sw.bb21.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge
  %retval.0.i9.i71 = phi i32 [ %call10.i.i68, %cros_usbpd_charger_ec_command.exit.i70.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge ], [ -12, %sw.bb21.cros_usbpd_charger_set_ext_power_limit.exit74.thread_crit_edge ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.59, i32 noundef %retval.0.i9.i71) #13
  br label %cleanup

if.end26:                                         ; preds = %cros_usbpd_charger_ec_command.exit.i70
  store i16 %intval.0, ptr @input_voltage_limit, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %intval.0)
  %cmp28 = icmp eq i16 %intval.0, -1
  br i1 %cmp28, label %do.end33, label %do.end37

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.54) #13
  br label %cleanup

do.end37:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = zext i16 %intval.0 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.57, i32 noundef %conv27) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end33, %cros_usbpd_charger_set_ext_power_limit.exit74.thread, %do.end18, %do.end, %cros_usbpd_charger_set_ext_power_limit.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call10.i.i68, %do.end33 ], [ %call10.i.i68, %do.end37 ], [ %call10.i.i, %do.end ], [ %call10.i.i, %do.end18 ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i9.i, %cros_usbpd_charger_set_ext_power_limit.exit.thread ], [ %retval.0.i9.i71, %cros_usbpd_charger_set_ext_power_limit.exit74.thread ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_usbpd_charger_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %psp, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %0)
  %switch = icmp eq i32 %0, 38
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_usbpd_charger_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %charger1 = getelementptr inbounds %struct.port_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %num_registered_psy = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_registered_psy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %cros_usbpd_charger_get_port_status.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %cros_usbpd_charger_get_port_status.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.charger_data, ptr %1, i32 0, i32 6, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1.i = tail call fastcc i32 @cros_usbpd_charger_get_power_info(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %for.body.cros_usbpd_charger_get_port_status.exit_crit_edge, label %if.end4.i

for.body.cros_usbpd_charger_get_port_status.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_get_port_status.exit

if.end4.i:                                        ; preds = %for.body
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %charger.i.i = getelementptr inbounds %struct.port_data, ptr %5, i32 0, i32 13
  %8 = ptrtoint ptr %charger.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charger.i.i, align 4
  %num_usbpd_ports.i.i = getelementptr inbounds %struct.charger_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %num_usbpd_ports.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_usbpd_ports.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp.i.not.i = icmp slt i32 %7, %11
  br i1 %cmp.i.not.i, label %if.then6.i, label %if.end4.i.if.end8.i_crit_edge

if.end4.i.if.end8.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = tail call fastcc i32 @cros_usbpd_charger_get_discovery_info(ptr noundef %5) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end4.i.if.end8.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %last_update9.i = getelementptr inbounds %struct.port_data, ptr %5, i32 0, i32 14
  %13 = ptrtoint ptr %last_update9.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update9.i, align 4
  br label %cros_usbpd_charger_get_port_status.exit

cros_usbpd_charger_get_port_status.exit:          ; preds = %if.end8.i, %for.body.cros_usbpd_charger_get_port_status.exit_crit_edge
  %inc = add nuw nsw i32 %i.07, 1
  %14 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_registered_psy, align 4
  %cmp = icmp slt i32 %inc, %15
  br i1 %cmp, label %cros_usbpd_charger_get_port_status.exit.for.body_crit_edge, label %cros_usbpd_charger_get_port_status.exit.for.end_crit_edge

cros_usbpd_charger_get_port_status.exit.for.end_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cros_usbpd_charger_get_port_status.exit.for.body_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cros_usbpd_charger_get_port_status.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register_no_ws(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_ec_event(ptr nocapture noundef readonly %nb, i32 noundef %host_event, ptr nocapture noundef readnone %_notify) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr i8, ptr %nb, i32 -32
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %psy = getelementptr inbounds %struct.port_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %psy, align 4
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %3) #9
  %charger1.i = getelementptr inbounds %struct.port_data, ptr %call.i, i32 0, i32 13
  %4 = ptrtoint ptr %charger1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %charger1.i, align 4
  %num_registered_psy.i = getelementptr inbounds %struct.charger_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %num_registered_psy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_registered_psy.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp6.i = icmp sgt i32 %7, 0
  br i1 %cmp6.i, label %entry.for.body.i_crit_edge, label %entry.cros_usbpd_charger_power_changed.exit_crit_edge

entry.cros_usbpd_charger_power_changed.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_power_changed.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %cros_usbpd_charger_get_port_status.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %cros_usbpd_charger_get_port_status.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.charger_data, ptr %5, i32 0, i32 6, i32 %i.07.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call1.i.i = tail call fastcc i32 @cros_usbpd_charger_get_power_info(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %for.body.i.cros_usbpd_charger_get_port_status.exit.i_crit_edge, label %if.end4.i.i

for.body.i.cros_usbpd_charger_get_port_status.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_get_port_status.exit.i

if.end4.i.i:                                      ; preds = %for.body.i
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %charger.i.i.i = getelementptr inbounds %struct.port_data, ptr %9, i32 0, i32 13
  %12 = ptrtoint ptr %charger.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %charger.i.i.i, align 4
  %num_usbpd_ports.i.i.i = getelementptr inbounds %struct.charger_data, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %num_usbpd_ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_usbpd_ports.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %15)
  %cmp.i.not.i.i = icmp slt i32 %11, %15
  br i1 %cmp.i.not.i.i, label %if.then6.i.i, label %if.end4.i.i.if.end8.i.i_crit_edge

if.end4.i.i.if.end8.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.then6.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i.i = tail call fastcc i32 @cros_usbpd_charger_get_discovery_info(ptr noundef %9) #9
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6.i.i, %if.end4.i.i.if.end8.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %last_update9.i.i = getelementptr inbounds %struct.port_data, ptr %9, i32 0, i32 14
  %17 = ptrtoint ptr %last_update9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_update9.i.i, align 4
  br label %cros_usbpd_charger_get_port_status.exit.i

cros_usbpd_charger_get_port_status.exit.i:        ; preds = %if.end8.i.i, %for.body.i.cros_usbpd_charger_get_port_status.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %18 = ptrtoint ptr %num_registered_psy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_registered_psy.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %cros_usbpd_charger_get_port_status.exit.i.for.body.i_crit_edge, label %cros_usbpd_charger_get_port_status.exit.i.cros_usbpd_charger_power_changed.exit_crit_edge

cros_usbpd_charger_get_port_status.exit.i.cros_usbpd_charger_power_changed.exit_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_usbpd_charger_power_changed.exit

cros_usbpd_charger_get_port_status.exit.i.for.body.i_crit_edge: ; preds = %cros_usbpd_charger_get_port_status.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cros_usbpd_charger_power_changed.exit:            ; preds = %cros_usbpd_charger_get_port_status.exit.i.cros_usbpd_charger_power_changed.exit_crit_edge, %entry.cros_usbpd_charger_power_changed.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_usbpd_register_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cros_usbpd_charger_unregister_notifier(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %notifier = getelementptr inbounds %struct.charger_data, ptr %data, i32 0, i32 7
  tail call void @cros_usbpd_unregister_notify(ptr noundef %notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_usbpd_charger_get_power_info(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %charger1 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 13
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  %ec_dev1.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ec_dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 36) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %5 to i8
  %9 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %11 to i32
  %add3.i = add nuw nsw i32 %conv.i, 259
  %command4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %command4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add3.i, ptr %command4.i, align 4
  %outsize5.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %outsize5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %outsize5.i, align 8
  %insize6.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %insize6.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %insize6.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %data.i, align 4
  %ec_device.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %ec_device.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ec_device.i, align 4
  %call10.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %cros_usbpd_charger_ec_command.exit.thread174, label %if.end

cros_usbpd_charger_ec_command.exit.thread174:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end

do.end:                                           ; preds = %cros_usbpd_charger_ec_command.exit.thread174, %entry.do.end_crit_edge
  %retval.0.i154173 = phi i32 [ %call10.i, %cros_usbpd_charger_ec_command.exit.thread174 ], [ -12, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.34, i32 noundef %retval.0.i154173) #13
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %resp.sroa.0.0.copyload = load i8, ptr %data.i, align 4
  %resp.sroa.6.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 1
  %19 = ptrtoint ptr %resp.sroa.6.0.data15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %19)
  %resp.sroa.6.0.copyload = load i8, ptr %resp.sroa.6.0.data15.i.sroa_idx, align 1
  %resp.sroa.9.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %20 = ptrtoint ptr %resp.sroa.9.0.data15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %resp.sroa.9.0.copyload = load i8, ptr %resp.sroa.9.0.data15.i.sroa_idx, align 2
  %resp.sroa.13.0.data15.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %21 = ptrtoint ptr %resp.sroa.13.0.data15.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %21)
  %resp.sroa.13.0.copyload = load i16, ptr %resp.sroa.13.0.data15.i.sroa_idx, align 8
  %resp.sroa.16.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 6
  %22 = ptrtoint ptr %resp.sroa.16.0.data15.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %22)
  %resp.sroa.16.0.copyload = load i16, ptr %resp.sroa.16.0.data15.i.sroa_idx, align 2
  %resp.sroa.19.0.data15.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 2
  %23 = ptrtoint ptr %resp.sroa.19.0.data15.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %23)
  %resp.sroa.19.0.copyload = load i16, ptr %resp.sroa.19.0.data15.i.sroa_idx, align 4
  %resp.sroa.22.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 10
  %24 = ptrtoint ptr %resp.sroa.22.0.data15.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %24)
  %resp.sroa.22.0.copyload = load i16, ptr %resp.sroa.22.0.data15.i.sroa_idx, align 2
  %resp.sroa.24.0.data15.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 3
  %25 = ptrtoint ptr %resp.sroa.24.0.data15.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %resp.sroa.24.0.copyload = load i32, ptr %resp.sroa.24.0.data15.i.sroa_idx, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  %psy_status = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 8
  %26 = ptrtoint ptr %psy_status to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %psy_status, align 4
  %psy_usb_type = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 6
  %28 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %psy_usb_type, align 4
  %30 = zext i8 %resp.sroa.0.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %resp.sroa.0.0.copyload, label %do.end18 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb7
    i8 2, label %sw.bb10
    i8 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %psy_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %psy_status, align 4
  %psy_online = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 7
  %32 = ptrtoint ptr %psy_online to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %psy_online, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %psy_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %psy_status, align 4
  %psy_online9 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 7
  %34 = ptrtoint ptr %psy_online9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %psy_online9, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %psy_status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %psy_status, align 4
  %psy_online12 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 7
  %36 = ptrtoint ptr %psy_online12 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %psy_online12, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %psy_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %psy_status, align 4
  %psy_online15 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 7
  %38 = ptrtoint ptr %psy_online15 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %psy_online15, align 4
  br label %sw.epilog

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv5 = zext i8 %resp.sroa.0.0.copyload to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.37, i32 noundef %conv5) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end18, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb
  %conv21 = zext i16 %resp.sroa.13.0.copyload to i32
  %psy_voltage_max_design = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 10
  %39 = ptrtoint ptr %psy_voltage_max_design to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv21, ptr %psy_voltage_max_design, align 4
  %conv23 = zext i16 %resp.sroa.16.0.copyload to i32
  %psy_voltage_now = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 11
  %40 = ptrtoint ptr %psy_voltage_now to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv23, ptr %psy_voltage_now, align 4
  %conv25 = zext i16 %resp.sroa.19.0.copyload to i32
  %psy_current_max = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 9
  %41 = ptrtoint ptr %psy_current_max to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv25, ptr %psy_current_max, align 4
  %psy_power_max = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 12
  %42 = ptrtoint ptr %psy_power_max to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %resp.sroa.24.0.copyload, ptr %psy_power_max, align 4
  %43 = zext i8 %resp.sroa.6.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %resp.sroa.6.0.copyload, label %do.end62 [
    i8 6, label %sw.epilog.sw.bb27_crit_edge
    i8 8, label %sw.epilog.sw.bb27_crit_edge185
    i8 0, label %sw.bb29
    i8 7, label %sw.epilog.sw.bb39_crit_edge
    i8 3, label %sw.epilog.sw.bb39_crit_edge186
    i8 2, label %sw.bb41
    i8 4, label %sw.bb43
    i8 5, label %sw.bb45
    i8 1, label %sw.bb47
    i8 9, label %sw.bb55
  ]

sw.epilog.sw.bb39_crit_edge186:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb39

sw.epilog.sw.bb39_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb39

sw.epilog.sw.bb27_crit_edge185:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

sw.epilog.sw.bb27_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb27

sw.bb27:                                          ; preds = %sw.epilog.sw.bb27_crit_edge, %sw.epilog.sw.bb27_crit_edge185
  %44 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %resp.sroa.0.0.copyload)
  %cmp32 = icmp ne i8 %resp.sroa.0.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %resp.sroa.9.0.copyload)
  %tobool.not = icmp eq i8 %resp.sroa.9.0.copyload, 0
  %or.cond = select i1 %cmp32, i1 true, i1 %tobool.not
  br i1 %or.cond, label %if.else, label %if.then35

if.then35:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 7, ptr %psy_usb_type, align 4
  br label %sw.epilog65

if.else:                                          ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb39:                                          ; preds = %sw.epilog.sw.bb39_crit_edge, %sw.epilog.sw.bb39_crit_edge186
  %47 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 9, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb41:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 5, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb43:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb45:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb47:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %resp.sroa.9.0.copyload)
  %tobool49.not = icmp eq i8 %resp.sroa.9.0.copyload, 0
  br i1 %tobool49.not, label %if.else52, label %if.then50

if.then50:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 7, ptr %psy_usb_type, align 4
  br label %sw.epilog65

if.else52:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 6, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.bb55:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %psy_usb_type, align 4
  %54 = ptrtoint ptr %psy_voltage_max_design to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %psy_voltage_max_design, align 4
  %55 = ptrtoint ptr %psy_current_max to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %psy_current_max, align 4
  br label %sw.epilog65

do.end62:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %57) #13
  %58 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %psy_usb_type, align 4
  br label %sw.epilog65

sw.epilog65:                                      ; preds = %do.end62, %sw.bb55, %if.else52, %if.then50, %sw.bb45, %sw.bb43, %sw.bb41, %sw.bb39, %if.else, %if.then35, %sw.bb27
  %59 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %port, align 4
  %61 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %charger1, align 4
  %num_usbpd_ports.i = getelementptr inbounds %struct.charger_data, ptr %62, i32 0, i32 4
  %63 = ptrtoint ptr %num_usbpd_ports.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_usbpd_ports.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %64)
  %cmp.i.not = icmp slt i32 %60, %64
  %spec.select = select i1 %cmp.i.not, i32 4, i32 3
  %65 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %spec.select, ptr %65, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_usbpd_charger_get_power_info.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cros_usbpd_charger_get_power_info, %do.end97)) #9
          to label %if.then79 [label %do.end97], !srcloc !133

if.then79:                                        ; preds = %sw.epilog65
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %conv82 = zext i8 %resp.sroa.6.0.copyload to i32
  %conv93 = zext i16 %resp.sroa.22.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_usbpd_charger_get_power_info.__UNIQUE_ID_ddebug186, ptr noundef %3, ptr noundef nonnull @.str.43, i32 noundef %68, i32 noundef %conv82, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25, i32 noundef %conv93, i32 noundef %resp.sroa.24.0.copyload) #9
  br label %do.end97

do.end97:                                         ; preds = %if.then79, %sw.epilog65
  %69 = ptrtoint ptr %psy_usb_type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %psy_usb_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %70)
  %cmp99.not = icmp eq i32 %29, %70
  br i1 %cmp99.not, label %lor.lhs.false, label %do.end97.if.then104_crit_edge

do.end97.if.then104_crit_edge:                    ; preds = %do.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

lor.lhs.false:                                    ; preds = %do.end97
  %71 = ptrtoint ptr %psy_status to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %psy_status, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %72)
  %cmp102.not = icmp eq i32 %27, %72
  br i1 %cmp102.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then104_crit_edge

lor.lhs.false.if.then104_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then104:                                       ; preds = %lor.lhs.false.if.then104_crit_edge, %do.end97.if.then104_crit_edge
  %psy = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 4
  %73 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then104, %lor.lhs.false.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i154173, %do.end ], [ 0, %if.then104 ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cros_usbpd_charger_get_discovery_info(ptr nocapture noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %charger1 = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 13
  %0 = ptrtoint ptr %charger1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %charger1, align 4
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %ec_dev1.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ec_dev1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ec_dev1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 25) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end.i:                                         ; preds = %entry
  %conv = trunc i32 %3 to i8
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %call7.i.i.i, align 8
  %cmd_offset.i = getelementptr inbounds %struct.cros_ec_dev, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %cmd_offset.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cmd_offset.i, align 2
  %conv.i = zext i16 %9 to i32
  %add3.i = add nuw nsw i32 %conv.i, 275
  %command4.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %command4.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add3.i, ptr %command4.i, align 4
  %outsize5.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %outsize5.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %outsize5.i, align 8
  %insize6.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %insize6.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %insize6.i, align 4
  %data.i = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %data.i, align 4
  %ec_device.i = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %ec_device.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_device.i, align 4
  %call10.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef nonnull %call7.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %cros_usbpd_charger_ec_command.exit.thread45, label %do.body4

cros_usbpd_charger_ec_command.exit.thread45:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %do.end

do.end:                                           ; preds = %cros_usbpd_charger_ec_command.exit.thread45, %entry.do.end_crit_edge
  %retval.0.i3644 = phi i32 [ %call10.i, %cros_usbpd_charger_ec_command.exit.thread45 ], [ -12, %entry.do.end_crit_edge ]
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i3644) #13
  br label %cleanup

do.body4:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %resp.sroa.0.0.copyload = load i16, ptr %data.i, align 4
  %resp.sroa.6.0.data15.i.sroa_idx = getelementptr inbounds i8, ptr %data.i, i32 2
  %19 = ptrtoint ptr %resp.sroa.6.0.data15.i.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %19)
  %resp.sroa.6.0.copyload = load i16, ptr %resp.sroa.6.0.data15.i.sroa_idx, align 2
  %resp.sroa.9.0.data15.i.sroa_idx = getelementptr inbounds %struct.cros_ec_command, ptr %call7.i.i.i, i32 1, i32 1
  %20 = ptrtoint ptr %resp.sroa.9.0.data15.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %20)
  %resp.sroa.9.0.copyload = load i8, ptr %resp.sroa.9.0.data15.i.sroa_idx, align 8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_usbpd_charger_get_discovery_info.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cros_usbpd_charger_get_discovery_info, %do.end17)) #9
          to label %if.then9 [label %do.end17], !srcloc !133

if.then9:                                         ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %conv12 = zext i16 %resp.sroa.0.0.copyload to i32
  %conv13 = zext i16 %resp.sroa.6.0.copyload to i32
  %conv14 = zext i8 %resp.sroa.9.0.copyload to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_usbpd_charger_get_discovery_info.__UNIQUE_ID_ddebug185, ptr noundef %22, ptr noundef nonnull @.str.46, i32 noundef %24, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then9, %do.body4
  %manufacturer = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 2
  %conv19 = zext i16 %resp.sroa.0.0.copyload to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %manufacturer, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %conv19)
  %model_name = getelementptr inbounds %struct.port_data, ptr %port, i32 0, i32 3
  %conv23 = zext i16 %resp.sroa.6.0.copyload to i32
  %call24 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %model_name, i32 noundef 32, ptr noundef nonnull @.str.47, i32 noundef %conv23)
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %do.end
  %retval.0 = phi i32 [ %retval.0.i3644, %do.end ], [ 0, %do.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cros_usbpd_unregister_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_usbpd_charger_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %num_registered_psy = getelementptr inbounds %struct.charger_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_registered_psy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp sgt i32 %3, 0
  br i1 %cmp11, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.charger_data, ptr %1, i32 0, i32 6, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %psy = getelementptr inbounds %struct.port_data, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %7) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %8, -50
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %last_update = getelementptr inbounds %struct.port_data, ptr %10, i32 0, i32 14
  %11 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %last_update, align 4
  %inc = add nuw nsw i32 %i.012, 1
  %12 = ptrtoint ptr %num_registered_psy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_registered_psy, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !80, !82, !83, !84, !85, !87, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_cros_usbpd_charger__187_722_cros_usbpd_charger_driver_init6, !1, !"__initcall__kmod_cros_usbpd_charger__187_722_cros_usbpd_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_cros_usbpd_charger_driver_exit, !1, !"__exitcall_cros_usbpd_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file188, !4, !"__UNIQUE_ID_file188", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 724, i32 1}
!5 = !{ptr @__UNIQUE_ID_license189, !4, !"__UNIQUE_ID_license189", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description190, !7, !"__UNIQUE_ID_description190", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 725, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias191, !9, !"__UNIQUE_ID_alias191", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 726, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 716, i32 11}
!12 = !{ptr @cros_usbpd_charger_driver, !13, !"cros_usbpd_charger_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 714, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 573, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @cros_usbpd_charger_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @cros_usbpd_charger_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 585, i32 3}
!24 = !{ptr @cros_usbpd_charger_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cros_usbpd_charger_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 595, i32 3}
!28 = !{ptr @cros_usbpd_charger_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cros_usbpd_charger_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 606, i32 3}
!32 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cros_usbpd_charger_probe._entry.12, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @cros_usbpd_charger_probe._entry_ptr.15, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 633, i32 24}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 640, i32 24}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 655, i32 4}
!41 = !{ptr @cros_usbpd_charger_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @cros_usbpd_charger_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 665, i32 3}
!45 = !{ptr @cros_usbpd_charger_probe._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cros_usbpd_charger_probe._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 673, i32 3}
!49 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @cros_usbpd_charger_probe._entry.24, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @cros_usbpd_charger_probe._entry_ptr.27, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 685, i32 2}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 688, i32 2}
!56 = !{ptr @cros_usbpd_charger_probe._entry.29, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @cros_usbpd_charger_probe._entry_ptr.31, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 392, i32 4}
!60 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @cros_usbpd_charger_get_prop._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @cros_usbpd_charger_get_prop._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 198, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cros_usbpd_charger_get_power_info._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @cros_usbpd_charger_get_power_info._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 223, i32 3}
!70 = !{ptr @cros_usbpd_charger_get_power_info._entry.36, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @cros_usbpd_charger_get_power_info._entry_ptr.38, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.40, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 279, i32 3}
!74 = !{ptr @cros_usbpd_charger_get_power_info._entry.39, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @cros_usbpd_charger_get_power_info._entry_ptr.41, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 288, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @cros_usbpd_charger_get_power_info.__UNIQUE_ID_ddebug186, !77, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!80 = !{ptr @.str.44, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 168, i32 3}
!82 = !{ptr @.str.45, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @cros_usbpd_charger_get_discovery_info._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @cros_usbpd_charger_get_discovery_info._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 173, i32 2}
!87 = !{ptr @cros_usbpd_charger_get_discovery_info.__UNIQUE_ID_ddebug185, !86, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 176, i32 59}
!90 = !{ptr @input_current_limit, !91, !"input_current_limit", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 88, i32 12}
!92 = !{ptr @input_voltage_limit, !93, !"input_voltage_limit", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 87, i32 12}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 473, i32 4}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @cros_usbpd_charger_set_prop._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @cros_usbpd_charger_set_prop._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 476, i32 4}
!101 = !{ptr @cros_usbpd_charger_set_prop._entry.50, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cros_usbpd_charger_set_prop._entry_ptr.52, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 489, i32 4}
!105 = !{ptr @cros_usbpd_charger_set_prop._entry.53, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cros_usbpd_charger_set_prop._entry_ptr.55, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 492, i32 4}
!109 = !{ptr @cros_usbpd_charger_set_prop._entry.56, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cros_usbpd_charger_set_prop._entry_ptr.58, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 342, i32 3}
!113 = !{ptr @.str.60, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cros_usbpd_charger_set_ext_power_limit._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cros_usbpd_charger_set_ext_power_limit._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @cros_usbpd_dedicated_charger_props, !117, !"cros_usbpd_dedicated_charger_props", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 69, i32 35}
!118 = !{ptr @cros_usbpd_charger_props, !119, !"cros_usbpd_charger_props", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 56, i32 35}
!120 = !{ptr @cros_usbpd_charger_usb_types, !121, !"cros_usbpd_charger_usb_types", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 75, i32 35}
!122 = !{ptr @cros_usbpd_charger_pm_ops, !123, !"cros_usbpd_charger_pm_ops", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/cros_usbpd-charger.c", i32 711, i32 8}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148971471, i64 2148971476, i64 2148971489, i64 2148971533, i64 2148971567, i64 2148971588}
