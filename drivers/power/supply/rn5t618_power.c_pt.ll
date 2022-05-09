; ModuleID = '/llk/IR_all_yes/drivers/power/supply/rn5t618_power.c_pt.bc'
source_filename = "../drivers/power/supply/rn5t618_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
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
%struct.rn5t618_power_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rn5t618 = type { ptr, ptr, i32, i32, ptr }

@__initcall__kmod_rn5t618_power__188_826_rn5t618_power_driver_init6 = internal global ptr @rn5t618_power_driver_init, section ".initcall6.init", align 4
@rn5t618_power_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rn5t618_power_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rn5t618_power_driver_exit = internal global ptr @rn5t618_power_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias189 = internal constant [43 x i8] c"rn5t618_power.alias=platform:rn5t618-power\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [64 x i8] c"rn5t618_power.description=Power supply driver for RICOH RN5T618\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [54 x i8] c"rn5t618_power.file=drivers/power/supply/rn5t618_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [26 x i8] c"rn5t618_power.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rn5t618-power\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vusb\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vadp\00", [27 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 762, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Fuel gauge not enabled, enabling now\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rn5t618_power_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/power/supply/rn5t618_power.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr = internal global ptr @rn5t618_power_probe._entry, section ".printk_index", align 4
@rn5t618_power_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 763, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Expect imprecise results\0A\00", [38 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr.10 = internal global ptr @rn5t618_power_probe._entry.8, section ".printk_index", align 4
@rn5t618_battery_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.25, i32 1, ptr null, i32 0, ptr @rn5t618_battery_props, i32 12, ptr @rn5t618_battery_get_property, ptr @rn5t618_battery_set_property, ptr @rn5t618_battery_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 774, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to register battery: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr.14 = internal global ptr @rn5t618_power_probe._entry.11, section ".printk_index", align 4
@rn5t618_adp_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.26, i32 3, ptr null, i32 0, ptr @rn5t618_adp_props, i32 4, ptr @rn5t618_adp_get_property, ptr @rn5t618_adp_set_property, ptr @rn5t618_adp_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 783, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register adp: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr.17 = internal global ptr @rn5t618_power_probe._entry.15, section ".printk_index", align 4
@rn5t618_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.27, i32 4, ptr @rn5t618_usb_types, i32 4, ptr @rn5t618_usb_props, i32 5, ptr @rn5t618_usb_get_property, ptr @rn5t618_usb_set_property, ptr @rn5t618_usb_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 792, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register usb: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr.20 = internal global ptr @rn5t618_power_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rn5t618_power\00", [18 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 811, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"request IRQ:%d fail\0A\00", [43 x i8] zeroinitializer }, align 32
@rn5t618_power_probe._entry_ptr.24 = internal global ptr @rn5t618_power_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rn5t618-battery\00", [16 x i8] zeroinitializer }, align 32
@rn5t618_battery_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 0, i32 3, i32 12, i32 17, i32 47, i32 52, i32 60, i32 62, i32 6, i32 33, i32 24, i32 26], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rn5t618-adp\00", [20 x i8] zeroinitializer }, align 32
@rn5t618_adp_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 38, i32 12, i32 0, i32 4], [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rn5t618-usb\00", [20 x i8] zeroinitializer }, align 32
@rn5t618_usb_types = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 0], [16 x i8] zeroinitializer }, align 32
@rn5t618_usb_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 38, i32 12, i32 0, i32 65, i32 4], [44 x i8] zeroinitializer }, align 32
@rn5t618_charger_irq.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.28, ptr @.str.5, ptr @.str.29, i8 0, i8 -78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rn5t618_charger_irq\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"chgerr: %x chgctrl: %x chgstat: %x chgstat2: %x\0A\00", [47 x i8] zeroinitializer }, align 32
@switch.table.rn5t618_battery_get_property = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 2, i32 3, i32 1, i32 1, i32 4, i32 2, i32 2, i32 3, i32 3, i32 3, i32 3, i32 3, i32 2], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 3, i64 6, i64 12, i64 17, i64 24, i64 26, i64 33, i64 47, i64 52, i64 60, i64 62]
@__sancov_gen_cov_switch_values.30 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4, i64 12, i64 38]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 4, i64 12, i64 38, i64 65]
@__sancov_gen_cov_switch_values.32 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 16, i64 32]
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"rn5t618_power_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 819, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 821, i32 13 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 738, i32 56 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 745, i32 56 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 762, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 763, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"rn5t618_battery_desc\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 662, i32 39 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 774, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"rn5t618_adp_desc\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 672, i32 39 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 783, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"rn5t618_usb_desc\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 682, i32 39 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 792, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 806, i32 7 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 810, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 663, i32 28 }
@___asan_gen_.111 = private unnamed_addr constant [22 x i8] c"rn5t618_battery_props\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 99, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 673, i32 28 }
@___asan_gen_.117 = private unnamed_addr constant [18 x i8] c"rn5t618_adp_props\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 90, i32 35 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 683, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant [18 x i8] c"rn5t618_usb_types\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 74, i32 35 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"rn5t618_usb_props\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 81, i32 35 }
@___asan_gen_.132 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.133 = private constant [40 x i8] c"../drivers/power/supply/rn5t618_power.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 711, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [42 x i8] c"switch.table.rn5t618_battery_get_property\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_rn5t618_power_driver_exit, ptr @__initcall__kmod_rn5t618_power__188_826_rn5t618_power_driver_init6, ptr @rn5t618_power_driver_exit, ptr @rn5t618_power_probe._entry, ptr @rn5t618_power_probe._entry.11, ptr @rn5t618_power_probe._entry.15, ptr @rn5t618_power_probe._entry.18, ptr @rn5t618_power_probe._entry.22, ptr @rn5t618_power_probe._entry.8, ptr @rn5t618_power_probe._entry_ptr, ptr @rn5t618_power_probe._entry_ptr.10, ptr @rn5t618_power_probe._entry_ptr.14, ptr @rn5t618_power_probe._entry_ptr.17, ptr @rn5t618_power_probe._entry_ptr.20, ptr @rn5t618_power_probe._entry_ptr.24, ptr @rn5t618_power_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @rn5t618_battery_desc, ptr @.str.12, ptr @.str.13, ptr @rn5t618_adp_desc, ptr @.str.16, ptr @rn5t618_usb_desc, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @rn5t618_battery_props, ptr @.str.26, ptr @rn5t618_adp_props, ptr @.str.27, ptr @rn5t618_usb_types, ptr @rn5t618_usb_props, ptr @.str.28, ptr @.str.29, ptr @switch.table.rn5t618_battery_get_property], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_adp_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_power_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_battery_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_adp_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_usb_types to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rn5t618_usb_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.rn5t618_battery_get_property to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_power_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rn5t618_power_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rn5t618_power_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @rn5t618_power_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_power_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #7
  %0 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %1 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev1 = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev1, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call5 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #7
  %channel_vusb = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %channel_vusb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5, ptr %channel_vusb, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call5 to i32
  %cmp = icmp eq ptr %call5, inttoptr (i32 -19 to ptr)
  %spec.select = select i1 %cmp, i32 -517, i32 %11
  br label %cleanup

if.end15:                                         ; preds = %if.end
  %call17 = tail call ptr @devm_iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %channel_vadp = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %channel_vadp to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call17, ptr %channel_vadp, align 4
  %cmp.i167 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i167, label %if.then20, label %if.end28

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call17 to i32
  %cmp23 = icmp eq ptr %call17, inttoptr (i32 -19 to ptr)
  %spec.select172 = select i1 %cmp23, i32 -517, i32 %13
  br label %cleanup

if.end28:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call30 = call i32 @regmap_read(ptr noundef %17, i32 noundef 224, ptr noundef nonnull %v) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end33:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %v, align 4
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  br i1 %tobool34.not, label %do.end, label %if.end33.if.end44_crit_edge

if.end33.if.end44_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

do.end:                                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %call.i168 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 224, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end44

if.end44:                                         ; preds = %do.end, %if.end33.if.end44_crit_edge
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %24 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %drv_data, align 4
  %call46 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @rn5t618_battery_desc, ptr noundef nonnull %psy_cfg) #7
  %battery = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46, ptr %battery, align 4
  %cmp.i169 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i169, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %26) #10
  br label %cleanup

if.end56:                                         ; preds = %if.end44
  %call58 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @rn5t618_adp_desc, ptr noundef nonnull %psy_cfg) #7
  %adp = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 4
  %27 = ptrtoint ptr %adp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call58, ptr %adp, align 4
  %cmp.i170 = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170, label %if.then61, label %if.end68

if.then61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call58 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %28) #10
  br label %cleanup

if.end68:                                         ; preds = %if.end56
  %call70 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @rn5t618_usb_desc, ptr noundef nonnull %psy_cfg) #7
  %usb = getelementptr inbounds %struct.rn5t618_power_info, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call70, ptr %usb, align 4
  %cmp.i171 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i171, label %if.then73, label %if.end80

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %call70 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %30) #10
  br label %cleanup

if.end80:                                         ; preds = %if.end68
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %irq_data = getelementptr inbounds %struct.rn5t618, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %irq_data, align 4
  %tobool82.not = icmp eq ptr %34, null
  br i1 %tobool82.not, label %if.end88thread-pre-split, label %if.then83

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %call86 = call i32 @regmap_irq_get_virq(ptr noundef nonnull %34, i32 noundef 5) #7
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call86, ptr %irq, align 4
  br label %if.end88

if.end88thread-pre-split:                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pr = load i32, ptr %irq, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88thread-pre-split, %if.then83
  %37 = phi i32 [ %.pr, %if.end88thread-pre-split ], [ %call86, %if.then83 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp90 = icmp slt i32 %37, 0
  br i1 %cmp90, label %if.then91, label %if.else

if.then91:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %irq, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end88
  %call96 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %37, ptr noundef null, ptr noundef nonnull @rn5t618_charger_irq, i32 noundef 8192, ptr noundef nonnull @.str.21, ptr noundef %dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end101, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end101:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %40) #10
  %41 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %irq, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end101, %if.else.cleanup_crit_edge, %if.then91, %if.then73, %if.then61, %if.then49, %if.end28.cleanup_crit_edge, %if.then20, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then49 ], [ %28, %if.then61 ], [ %30, %if.then73 ], [ -12, %entry.cleanup_crit_edge ], [ %call30, %if.end28.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %do.end101 ], [ 0, %if.then91 ], [ %spec.select, %if.then8 ], [ %spec.select172, %if.then20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_charger_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %ctrl = alloca i32, align 4
  %stat1 = alloca i32, align 4
  %stat2 = alloca i32, align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %data, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl) #7
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %ctrl, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat1) #7
  %3 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stat1, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat2) #7
  %4 = ptrtoint ptr %stat2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %stat2, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #7
  %5 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %err, align 4, !annotation !82
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call1 = call i32 @regmap_read(ptr noundef %9, i32 noundef 197, ptr noundef nonnull %err) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = call i32 @regmap_read(ptr noundef %13, i32 noundef 194, ptr noundef nonnull %ctrl) #7
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call7 = call i32 @regmap_read(ptr noundef %17, i32 noundef 195, ptr noundef nonnull %stat1) #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %call10 = call i32 @regmap_read(ptr noundef %21, i32 noundef 196, ptr noundef nonnull %stat2) #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %call13 = call i32 @regmap_write(ptr noundef %25, i32 noundef 197, i32 noundef 0) #7
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call16 = call i32 @regmap_write(ptr noundef %29, i32 noundef 194, i32 noundef 0) #7
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %call19 = call i32 @regmap_write(ptr noundef %33, i32 noundef 195, i32 noundef 0) #7
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %call22 = call i32 @regmap_write(ptr noundef %37, i32 noundef 196, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rn5t618_charger_irq.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rn5t618_charger_irq, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !83

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %err, align 4
  %40 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctrl, align 4
  %42 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stat1, align 4
  %44 = ptrtoint ptr %stat2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %stat2, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rn5t618_charger_irq.__UNIQUE_ID_ddebug187, ptr noundef %data, ptr noundef nonnull @.str.29, i32 noundef %39, i32 noundef %41, i32 noundef %43, i32 noundef %45) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %usb = getelementptr inbounds %struct.rn5t618_power_info, ptr %1, i32 0, i32 3
  %46 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %47) #7
  %adp = getelementptr inbounds %struct.rn5t618_power_info, ptr %1, i32 0, i32 4
  %48 = ptrtoint ptr %adp to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adp, align 4
  call void @power_supply_changed(ptr noundef %49) #7
  %battery = getelementptr inbounds %struct.rn5t618_power_info, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %51) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl) #7
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %res.i96 = alloca i16, align 2
  %res.i90 = alloca i16, align 2
  %regval.i = alloca i32, align 4
  %res.i75 = alloca i16, align 2
  %res.i69 = alloca i16, align 2
  %res.i62 = alloca i16, align 2
  %v.i58 = alloca i32, align 4
  %res.i53 = alloca i16, align 2
  %res.i = alloca i16, align 2
  %v.i45 = alloca i32, align 4
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 12, label %sw.bb4
    i32 17, label %sw.bb6
    i32 47, label %sw.bb8
    i32 52, label %sw.bb10
    i32 60, label %sw.bb12
    i32 62, label %sw.bb14
    i32 6, label %sw.bb16
    i32 33, label %sw.bb17
    i32 24, label %sw.bb19
    i32 26, label %sw.bb21
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #7
  %1 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v.i, align 4, !annotation !82
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = call i32 @regmap_read(ptr noundef %5, i32 noundef 189, ptr noundef nonnull %v.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.rn5t618_battery_status.exit_crit_edge

sw.bb.rn5t618_battery_status.exit_crit_edge:      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_status.exit

if.end.i:                                         ; preds = %sw.bb
  %6 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %v.i, align 4
  %and.i = and i32 %7, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  %and.i.i = and i32 %7, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i.i)
  %8 = icmp ult i32 %and.i.i, 13
  br i1 %8, label %switch.lookup, label %if.then2.i.if.end4.i_crit_edge

if.then2.i.if.end4.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

switch.lookup:                                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.rn5t618_battery_get_property, i32 0, i32 %and.i.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end4.i

if.end4.i:                                        ; preds = %switch.lookup, %if.then2.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %storemerge.i = phi i32 [ 2, %if.end.i.if.end4.i_crit_edge ], [ %switch.load, %switch.lookup ], [ 3, %if.then2.i.if.end4.i_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge.i, ptr %val, align 4
  br label %rn5t618_battery_status.exit

rn5t618_battery_status.exit:                      ; preds = %if.end4.i, %sw.bb.rn5t618_battery_status.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i45) #7
  %11 = ptrtoint ptr %v.i45 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %v.i45, align 4, !annotation !82
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i46 = call i32 @regmap_read(ptr noundef %15, i32 noundef 189, ptr noundef nonnull %v.i45) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %tobool.not.i47 = icmp eq i32 %call.i46, 0
  br i1 %tobool.not.i47, label %if.end.i49, label %sw.bb2.rn5t618_battery_present.exit_crit_edge

sw.bb2.rn5t618_battery_present.exit_crit_edge:    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_present.exit

if.end.i49:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %v.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %v.i45, align 4
  %and.i48 = and i32 %17, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i48)
  %switch.selectcmp.case1.i = icmp ne i32 %and.i48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %and.i48)
  %switch.selectcmp.case2.i = icmp ne i32 %and.i48, 13
  %not.switch.selectcmp.i = and i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %18 = zext i1 %not.switch.selectcmp.i to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %rn5t618_battery_present.exit

rn5t618_battery_present.exit:                     ; preds = %if.end.i49, %sw.bb2.rn5t618_battery_present.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i45) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i) #7
  %20 = ptrtoint ptr %res.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %res.i, align 2, !annotation !82
  %call.i50 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -21, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %tobool.not.i51 = icmp eq i32 %call.i50, 0
  br i1 %tobool.not.i51, label %if.end.i52, label %sw.bb4.rn5t618_battery_voltage_now.exit_crit_edge

sw.bb4.rn5t618_battery_voltage_now.exit_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_voltage_now.exit

if.end.i52:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %res.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %res.i, align 2
  %conv.i = zext i16 %22 to i32
  %mul1.i = mul nuw nsw i32 %conv.i, 5000
  %div.i = udiv i32 %mul1.i, 4095
  %mul2.i = mul nuw nsw i32 %div.i, 1000
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul2.i, ptr %val, align 4
  br label %rn5t618_battery_voltage_now.exit

rn5t618_battery_voltage_now.exit:                 ; preds = %if.end.i52, %sw.bb4.rn5t618_battery_voltage_now.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i53) #7
  %24 = ptrtoint ptr %res.i53 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %res.i53, align 2, !annotation !82
  %call.i54 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -5, ptr noundef nonnull %res.i53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i55 = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i55, label %if.end.i57, label %sw.bb6.rn5t618_battery_current_now.exit_crit_edge

sw.bb6.rn5t618_battery_current_now.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_current_now.exit

if.end.i57:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %res.i53 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %res.i53, align 2
  %conv.i56 = zext i16 %26 to i32
  %shl.i.i = shl i32 %conv.i56, 18
  %shr.i.i = ashr exact i32 %shl.i.i, 18
  %mul.i = mul nsw i32 %shr.i.i, 1000
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %val, align 4
  br label %rn5t618_battery_current_now.exit

rn5t618_battery_current_now.exit:                 ; preds = %if.end.i57, %sw.bb6.rn5t618_battery_current_now.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i53) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i58) #7
  %28 = ptrtoint ptr %v.i58 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %v.i58, align 4, !annotation !82
  %29 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %call.i59 = call i32 @regmap_read(ptr noundef %32, i32 noundef 225, ptr noundef nonnull %v.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool.not.i60 = icmp eq i32 %call.i59, 0
  br i1 %tobool.not.i60, label %if.end.i61, label %sw.bb8.rn5t618_battery_capacity.exit_crit_edge

sw.bb8.rn5t618_battery_capacity.exit_crit_edge:   ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_capacity.exit

if.end.i61:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %v.i58 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %v.i58, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %val, align 4
  br label %rn5t618_battery_capacity.exit

rn5t618_battery_capacity.exit:                    ; preds = %if.end.i61, %sw.bb8.rn5t618_battery_capacity.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i58) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i62) #7
  %36 = ptrtoint ptr %res.i62 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %res.i62, align 2, !annotation !82
  %call.i63 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -19, ptr noundef nonnull %res.i62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i63)
  %tobool.not.i64 = icmp eq i32 %call.i63, 0
  br i1 %tobool.not.i64, label %if.end.i68, label %sw.bb10.rn5t618_battery_temp.exit_crit_edge

sw.bb10.rn5t618_battery_temp.exit_crit_edge:      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_temp.exit

if.end.i68:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %res.i62 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %res.i62, align 2
  %conv.i65 = zext i16 %38 to i32
  %shl.i.i66 = shl i32 %conv.i65, 20
  %shr.i.i67 = ashr exact i32 %shl.i.i66, 20
  %39 = trunc i32 %shr.i.i67 to i16
  %div.lhs.trunc.i = mul nsw i16 %39, 10
  %div4.i = sdiv i16 %div.lhs.trunc.i, 16
  %div.sext.i = sext i16 %div4.i to i32
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div.sext.i, ptr %val, align 4
  br label %rn5t618_battery_temp.exit

rn5t618_battery_temp.exit:                        ; preds = %if.end.i68, %sw.bb10.rn5t618_battery_temp.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i62) #7
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i69) #7
  %41 = ptrtoint ptr %res.i69 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 -1, ptr %res.i69, align 2, !annotation !82
  %call.i70 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -25, ptr noundef nonnull %res.i69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %if.end.i72, label %sw.bb12.rn5t618_battery_tte.exit_crit_edge

sw.bb12.rn5t618_battery_tte.exit_crit_edge:       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_tte.exit

if.end.i72:                                       ; preds = %sw.bb12
  %42 = ptrtoint ptr %res.i69 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %res.i69, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %43)
  %cmp.i = icmp eq i16 %43, -1
  br i1 %cmp.i, label %if.end.i72.rn5t618_battery_tte.exit_crit_edge, label %if.end3.i

if.end.i72.rn5t618_battery_tte.exit_crit_edge:    ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_tte.exit

if.end3.i:                                        ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i73 = zext i16 %43 to i32
  %mul.i74 = mul nuw nsw i32 %conv.i73, 60
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i74, ptr %val, align 4
  br label %rn5t618_battery_tte.exit

rn5t618_battery_tte.exit:                         ; preds = %if.end3.i, %if.end.i72.rn5t618_battery_tte.exit_crit_edge, %sw.bb12.rn5t618_battery_tte.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end3.i ], [ %call.i70, %sw.bb12.rn5t618_battery_tte.exit_crit_edge ], [ -61, %if.end.i72.rn5t618_battery_tte.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i69) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i75) #7
  %45 = ptrtoint ptr %res.i75 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 -1, ptr %res.i75, align 2, !annotation !82
  %call.i76 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -23, ptr noundef nonnull %res.i75) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %if.end.i79, label %sw.bb14.rn5t618_battery_ttf.exit_crit_edge

sw.bb14.rn5t618_battery_ttf.exit_crit_edge:       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_ttf.exit

if.end.i79:                                       ; preds = %sw.bb14
  %46 = ptrtoint ptr %res.i75 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %res.i75, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %47)
  %cmp.i78 = icmp eq i16 %47, -1
  br i1 %cmp.i78, label %if.end.i79.rn5t618_battery_ttf.exit_crit_edge, label %if.end3.i82

if.end.i79.rn5t618_battery_ttf.exit_crit_edge:    ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_ttf.exit

if.end3.i82:                                      ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i80 = zext i16 %47 to i32
  %mul.i81 = mul nuw nsw i32 %conv.i80, 60
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul.i81, ptr %val, align 4
  br label %rn5t618_battery_ttf.exit

rn5t618_battery_ttf.exit:                         ; preds = %if.end3.i82, %if.end.i79.rn5t618_battery_ttf.exit_crit_edge, %sw.bb14.rn5t618_battery_ttf.exit_crit_edge
  %retval.0.i83 = phi i32 [ 0, %if.end3.i82 ], [ %call.i76, %sw.bb14.rn5t618_battery_ttf.exit_crit_edge ], [ -61, %if.end.i79.rn5t618_battery_ttf.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i75) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %50 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %regval.i, align 4, !annotation !82
  %51 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %call.i84 = call i32 @regmap_read(ptr noundef %54, i32 noundef 184, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp.i85 = icmp slt i32 %call.i84, 0
  br i1 %cmp.i85, label %sw.bb17.rn5t618_battery_get_current_limit.exit_crit_edge, label %if.end.i88

sw.bb17.rn5t618_battery_get_current_limit.exit_crit_edge: ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_get_current_limit.exit

if.end.i88:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %regval.i, align 4
  %and.i86 = and i32 %56, 31
  %57 = mul nuw nsw i32 %and.i86, 100000
  %mul.i87 = add nuw nsw i32 %57, 100000
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul.i87, ptr %val, align 4
  br label %rn5t618_battery_get_current_limit.exit

rn5t618_battery_get_current_limit.exit:           ; preds = %if.end.i88, %sw.bb17.rn5t618_battery_get_current_limit.exit_crit_edge
  %retval.0.i89 = phi i32 [ 0, %if.end.i88 ], [ %call.i84, %sw.bb17.rn5t618_battery_get_current_limit.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i90) #7
  %59 = ptrtoint ptr %res.i90 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 -1, ptr %res.i90, align 2, !annotation !82
  %call.i91 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -28, ptr noundef nonnull %res.i90) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i92 = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i92, label %if.end.i95, label %sw.bb19.rn5t618_battery_charge_full.exit_crit_edge

sw.bb19.rn5t618_battery_charge_full.exit_crit_edge: ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_charge_full.exit

if.end.i95:                                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %res.i90 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %res.i90, align 2
  %conv.i93 = zext i16 %61 to i32
  %mul.i94 = mul nuw nsw i32 %conv.i93, 1000
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul.i94, ptr %val, align 4
  br label %rn5t618_battery_charge_full.exit

rn5t618_battery_charge_full.exit:                 ; preds = %if.end.i95, %sw.bb19.rn5t618_battery_charge_full.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i90) #7
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %res.i96) #7
  %63 = ptrtoint ptr %res.i96 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %res.i96, align 2, !annotation !82
  %call.i97 = call fastcc i32 @rn5t618_battery_read_doublereg(ptr noundef %call, i8 noundef zeroext -30, ptr noundef nonnull %res.i96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool.not.i98 = icmp eq i32 %call.i97, 0
  br i1 %tobool.not.i98, label %if.end.i101, label %sw.bb21.rn5t618_battery_charge_now.exit_crit_edge

sw.bb21.rn5t618_battery_charge_now.exit_crit_edge: ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %rn5t618_battery_charge_now.exit

if.end.i101:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %res.i96 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %res.i96, align 2
  %conv.i99 = zext i16 %65 to i32
  %mul.i100 = mul nuw nsw i32 %conv.i99, 1000
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %mul.i100, ptr %val, align 4
  br label %rn5t618_battery_charge_now.exit

rn5t618_battery_charge_now.exit:                  ; preds = %if.end.i101, %sw.bb21.rn5t618_battery_charge_now.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %res.i96) #7
  br label %cleanup

cleanup:                                          ; preds = %rn5t618_battery_charge_now.exit, %rn5t618_battery_charge_full.exit, %rn5t618_battery_get_current_limit.exit, %sw.bb16, %rn5t618_battery_ttf.exit, %rn5t618_battery_tte.exit, %rn5t618_battery_temp.exit, %rn5t618_battery_capacity.exit, %rn5t618_battery_current_now.exit, %rn5t618_battery_voltage_now.exit, %rn5t618_battery_present.exit, %rn5t618_battery_status.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i97, %rn5t618_battery_charge_now.exit ], [ %call.i91, %rn5t618_battery_charge_full.exit ], [ %retval.0.i89, %rn5t618_battery_get_current_limit.exit ], [ 0, %sw.bb16 ], [ %retval.0.i83, %rn5t618_battery_ttf.exit ], [ %retval.0.i, %rn5t618_battery_tte.exit ], [ %call.i63, %rn5t618_battery_temp.exit ], [ %call.i59, %rn5t618_battery_capacity.exit ], [ %call.i54, %rn5t618_battery_current_now.exit ], [ %call.i50, %rn5t618_battery_voltage_now.exit ], [ %call.i46, %rn5t618_battery_present.exit ], [ %call.i, %rn5t618_battery_status.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_battery_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %cond = icmp eq i32 %psp, 33
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = add i32 %1, -1800000
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1700000, i32 %2)
  %3 = icmp ult i32 %2, -1700000
  br i1 %3, label %sw.bb.cleanup_crit_edge, label %if.end3.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %div6.i = udiv i32 %1, 100000
  %sub.i = add nsw i32 %div6.i, -1
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 184, i32 noundef 31, i32 noundef %sub.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end3.i ], [ -22, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rn5t618_battery_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %cond = icmp eq i32 %psp, 33
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rn5t618_battery_read_doublereg(ptr nocapture noundef readonly %info, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %result) unnamed_addr #2 align 64 {
entry:
  %data = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %data) #7
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data, align 1, !annotation !82
  %1 = getelementptr inbounds [2 x i8], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !82
  %conv = zext i8 %reg to i32
  %3 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %6, i32 noundef %conv, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %if.end
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.1 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef %conv, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %for.cond
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data, align 1
  %conv1.1 = zext i8 %12 to i16
  %shl.1 = shl nuw i16 %conv1.1, 8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %1, align 1
  %conv4.1 = zext i8 %14 to i16
  %or.1 = or i16 %shl.1, %conv4.1
  call void @__sanitizer_cov_trace_cmp2(i16 %or.1, i16 %or)
  %cmp9.1 = icmp eq i16 %or.1, %or
  br i1 %cmp9.1, label %if.end.1.for.end_crit_edge, label %for.cond.1

if.end.1.for.end_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %if.end.1
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %call.2 = call i32 @regmap_bulk_read(ptr noundef %18, i32 noundef %conv, ptr noundef nonnull %data, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %tobool.not.2 = icmp eq i32 %call.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  %conv1.2 = zext i8 %20 to i16
  %shl.2 = shl nuw i16 %conv1.2, 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %1, align 1
  %conv4.2 = zext i8 %22 to i16
  %or.2 = or i16 %shl.2, %conv4.2
  br label %for.end

if.end:                                           ; preds = %entry
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %data, align 1
  %conv1 = zext i8 %24 to i16
  %shl = shl nuw i16 %conv1, 8
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %1, align 1
  %conv4 = zext i8 %26 to i16
  %or = or i16 %shl, %conv4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or)
  %cmp9 = icmp eq i16 %or, 0
  br i1 %cmp9, label %if.end.for.end_crit_edge, label %for.cond

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %if.end.2, %if.end.1.for.end_crit_edge
  %or.lcssa = phi i16 [ 0, %if.end.for.end_crit_edge ], [ %or, %if.end.1.for.end_crit_edge ], [ %or.2, %if.end.2 ]
  %27 = ptrtoint ptr %result to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or.lcssa, ptr %result, align 2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %for.cond.cleanup_crit_edge ], [ %call.2, %for.cond.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %data) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_adp_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %chgstate = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chgstate) #7
  %0 = ptrtoint ptr %chgstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chgstate, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %regval, align 4, !annotation !82
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 189, ptr noundef nonnull %chgstate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %chgstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chgstate, align 4
  %and = and i32 %7, 64
  %8 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb5
    i32 38, label %sw.bb13
    i32 12, label %sw.bb22
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.lobit = lshr exact i32 %and, 6
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %if.end8

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = and i32 %7, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch = icmp eq i32 %9, 2
  %spec.select = select i1 %switch, i32 1, i32 3
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call16 = call i32 @regmap_read(ptr noundef %13, i32 noundef 182, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb13.cleanup_crit_edge, label %if.end20

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end20:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval, align 4
  %and21 = and i32 %15, 31
  %16 = mul nuw nsw i32 %and21, 100000
  %mul = add nuw nsw i32 %16, 100000
  br label %sw.epilog.sink.split

sw.bb22:                                          ; preds = %if.end
  %channel_vadp = getelementptr inbounds %struct.rn5t618_power_info, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %channel_vadp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_vadp, align 4
  %tobool23.not = icmp eq ptr %18, null
  br i1 %tobool23.not, label %sw.bb22.cleanup_crit_edge, label %if.end25

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb22
  %call27 = call i32 @iio_read_channel_processed_scale(ptr noundef nonnull %18, ptr noundef %val, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end25.cleanup_crit_edge, label %if.end25.sw.epilog_crit_edge

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end20, %if.end8, %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb
  %spec.select.sink = phi i32 [ %spec.select, %if.end8 ], [ %mul, %if.end20 ], [ %and.lobit, %sw.bb ], [ 3, %sw.bb5.sw.epilog.sink.split_crit_edge ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end25.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end25.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ %call16, %sw.bb13.cleanup_crit_edge ], [ -61, %sw.bb22.cleanup_crit_edge ], [ %call27, %if.end25.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chgstate) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_adp_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = add i32 %1, -2500001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2400001, i32 %2)
  %3 = icmp ult i32 %2, -2400001
  br i1 %3, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %div12 = udiv i32 %1, 100000
  %sub = add nsw i32 %div12, -1
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 182, i32 noundef %sub) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %8, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rn5t618_adp_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed_scale(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_usb_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  %chgstate = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chgstate) #7
  %0 = ptrtoint ptr %chgstate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chgstate, align 4, !annotation !82
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %1 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %regval, align 4, !annotation !82
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = call i32 @regmap_read(ptr noundef %5, i32 noundef 189, ptr noundef nonnull %chgstate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %chgstate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chgstate, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  %8 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 0, label %sw.bb5
    i32 65, label %sw.bb13
    i32 38, label %sw.bb21
    i32 12, label %sw.bb41
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and.lobit = lshr exact i32 %and, 7
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %if.end
  br i1 %tobool2.not, label %sw.bb5.sw.epilog.sink.split_crit_edge, label %if.end8

sw.bb5.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.end8:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = and i32 %7, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch = icmp eq i32 %9, 2
  %spec.select = select i1 %switch, i32 1, i32 3
  br label %sw.epilog.sink.split

sw.bb13:                                          ; preds = %if.end
  br i1 %tobool2.not, label %sw.bb13.cleanup_crit_edge, label %lor.lhs.false

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb13
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %variant = getelementptr inbounds %struct.rn5t618, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16.not = icmp eq i32 %13, 2
  br i1 %cmp16.not, label %if.end19, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call fastcc i32 @rc5t619_usb_get_type(ptr noundef %call, ptr noundef %val)
  br label %cleanup

sw.bb21:                                          ; preds = %if.end
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call24 = call i32 @regmap_read(ptr noundef %17, i32 noundef 179, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %sw.bb21.cleanup_crit_edge, label %if.end28

sw.bb21.cleanup_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %sw.bb21
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  %19 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval, align 4
  %and29 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end28.sw.epilog_crit_edge, label %if.then31

if.end28.sw.epilog_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then31:                                        ; preds = %if.end28
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %call34 = call i32 @regmap_read(ptr noundef %24, i32 noundef 183, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then31.cleanup_crit_edge, label %if.end38

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end38:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regval, align 4
  %and39 = and i32 %26, 31
  %27 = mul nuw nsw i32 %and39, 100000
  %mul = add nuw nsw i32 %27, 100000
  br label %sw.epilog.sink.split

sw.bb41:                                          ; preds = %if.end
  %channel_vusb = getelementptr inbounds %struct.rn5t618_power_info, ptr %call, i32 0, i32 5
  %28 = ptrtoint ptr %channel_vusb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %channel_vusb, align 4
  %tobool42.not = icmp eq ptr %29, null
  br i1 %tobool42.not, label %sw.bb41.cleanup_crit_edge, label %if.end44

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %sw.bb41
  %call46 = call i32 @iio_read_channel_processed_scale(ptr noundef nonnull %29, ptr noundef %val, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end44.cleanup_crit_edge, label %if.end44.sw.epilog_crit_edge

if.end44.sw.epilog_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.sink.split:                             ; preds = %if.end38, %if.end8, %sw.bb5.sw.epilog.sink.split_crit_edge, %sw.bb
  %spec.select.sink = phi i32 [ %spec.select, %if.end8 ], [ %mul, %if.end38 ], [ %and.lobit, %sw.bb ], [ 3, %sw.bb5.sw.epilog.sink.split_crit_edge ]
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %spec.select.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end44.sw.epilog_crit_edge, %if.end28.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end44.cleanup_crit_edge, %sw.bb41.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %sw.bb21.cleanup_crit_edge, %if.end19, %lor.lhs.false.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call20, %if.end19 ], [ %call1, %entry.cleanup_crit_edge ], [ -61, %lor.lhs.false.cleanup_crit_edge ], [ -61, %sw.bb13.cleanup_crit_edge ], [ %call24, %sw.bb21.cleanup_crit_edge ], [ %call34, %if.then31.cleanup_crit_edge ], [ -61, %sw.bb41.cleanup_crit_edge ], [ %call46, %if.end44.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chgstate) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rn5t618_usb_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %0 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %val, align 4
  %2 = add i32 %1, -1400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1300001, i32 %2)
  %3 = icmp ult i32 %2, -1300001
  br i1 %3, label %sw.bb.cleanup_crit_edge, label %if.end3

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %div12 = udiv i32 %1, 100000
  %sub = add nsw i32 %div12, -1
  %or = or i32 %sub, 224
  %call4 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 183, i32 noundef %or) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %call4, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ %8, %if.end3 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rn5t618_usb_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rc5t619_usb_get_type(ptr nocapture noundef readonly %info, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !82
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef 218, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = and i32 %6, 48
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %and, label %sw.default [
    i32 0, label %if.end.cleanup.sink.split_crit_edge
    i32 16, label %sw.bb1
    i32 32, label %sw.bb2
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.default, %sw.bb2, %sw.bb1, %if.end.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb1 ], [ 2, %sw.bb2 ], [ 0, %sw.default ], [ 1, %if.end.cleanup.sink.split_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_rn5t618_power__188_826_rn5t618_power_driver_init6, !1, !"__initcall__kmod_rn5t618_power__188_826_rn5t618_power_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/rn5t618_power.c", i32 826, i32 1}
!2 = !{ptr @__exitcall_rn5t618_power_driver_exit, !1, !"__exitcall_rn5t618_power_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias189, !4, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/rn5t618_power.c", i32 827, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/rn5t618_power.c", i32 828, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/rn5t618_power.c", i32 829, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/rn5t618_power.c", i32 821, i32 13}
!12 = !{ptr @rn5t618_power_driver, !13, !"rn5t618_power_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/rn5t618_power.c", i32 819, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/rn5t618_power.c", i32 738, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/rn5t618_power.c", i32 745, i32 56}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/rn5t618_power.c", i32 762, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rn5t618_power_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @rn5t618_power_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/rn5t618_power.c", i32 763, i32 3}
!28 = !{ptr @rn5t618_power_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @rn5t618_power_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/rn5t618_power.c", i32 774, i32 3}
!32 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @rn5t618_power_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @rn5t618_power_probe._entry_ptr.14, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/rn5t618_power.c", i32 783, i32 3}
!37 = !{ptr @rn5t618_power_probe._entry.15, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rn5t618_power_probe._entry_ptr.17, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/rn5t618_power.c", i32 792, i32 3}
!41 = !{ptr @rn5t618_power_probe._entry.18, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @rn5t618_power_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/rn5t618_power.c", i32 806, i32 7}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/rn5t618_power.c", i32 810, i32 4}
!47 = !{ptr @rn5t618_power_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @rn5t618_power_probe._entry_ptr.24, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/rn5t618_power.c", i32 663, i32 28}
!51 = !{ptr @rn5t618_battery_desc, !52, !"rn5t618_battery_desc", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/rn5t618_power.c", i32 662, i32 39}
!53 = !{ptr @rn5t618_battery_props, !54, !"rn5t618_battery_props", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/rn5t618_power.c", i32 99, i32 35}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/rn5t618_power.c", i32 673, i32 28}
!57 = !{ptr @rn5t618_adp_desc, !58, !"rn5t618_adp_desc", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/rn5t618_power.c", i32 672, i32 39}
!59 = !{ptr @rn5t618_adp_props, !60, !"rn5t618_adp_props", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/rn5t618_power.c", i32 90, i32 35}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/rn5t618_power.c", i32 683, i32 28}
!63 = !{ptr @rn5t618_usb_desc, !64, !"rn5t618_usb_desc", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/rn5t618_power.c", i32 682, i32 39}
!65 = !{ptr @rn5t618_usb_types, !66, !"rn5t618_usb_types", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/rn5t618_power.c", i32 74, i32 35}
!67 = !{ptr @rn5t618_usb_props, !68, !"rn5t618_usb_props", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/rn5t618_power.c", i32 81, i32 35}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/rn5t618_power.c", i32 711, i32 2}
!71 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @rn5t618_charger_irq.__UNIQUE_ID_ddebug187, !70, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i64 2148709584, i64 2148709589, i64 2148709602, i64 2148709646, i64 2148709680, i64 2148709701}
