; ModuleID = '/llk/IR_all_yes/drivers/power/supply/ingenic-battery.c_pt.bc'
source_filename = "../drivers/power/supply/ingenic-battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.ingenic_battery = type { ptr, ptr, %struct.power_supply_desc, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_ingenic_battery__170_186_ingenic_battery_driver_init6 = internal global ptr @ingenic_battery_driver_init, section ".initcall6.init", align 4
@ingenic_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_battery_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ingenic_battery_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ingenic_battery_driver_exit = internal global ptr @ingenic_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description171 = internal constant [67 x i8] c"ingenic_battery.description=Battery driver for Ingenic JZ47xx SoCs\00", section ".modinfo", align 1
@__UNIQUE_ID_author172 = internal constant [60 x i8] c"ingenic_battery.author=Artur Rojek <contact@artur-rojek.eu>\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [58 x i8] c"ingenic_battery.file=drivers/power/supply/ingenic-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [28 x i8] c"ingenic_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ingenic-battery\00", [16 x i8] zeroinitializer }, align 32
@ingenic_battery_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"battery\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz-battery\00", [21 x i8] zeroinitializer }, align 32
@ingenic_battery_properties = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 12, i32 11, i32 10], [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to register battery\0A\00", [36 x i8] zeroinitializer }, align 32
@ingenic_battery_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 156, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unable to get battery info: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ingenic_battery_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/ingenic-battery.c\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ingenic_battery_probe._entry_ptr = internal global ptr @ingenic_battery_probe._entry, section ".printk_index", align 4
@ingenic_battery_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 160, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get voltage min design\0A\00", [62 x i8] zeroinitializer }, align 32
@ingenic_battery_probe._entry_ptr.11 = internal global ptr @ingenic_battery_probe._entry.9, section ".printk_index", align 4
@ingenic_battery_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 164, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get voltage max design\0A\00", [62 x i8] zeroinitializer }, align 32
@ingenic_battery_probe._entry_ptr.14 = internal global ptr @ingenic_battery_probe._entry.12, section ".printk_index", align 4
@ingenic_battery_set_scale._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 69, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to read max raw channel value\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ingenic_battery_set_scale\00", [38 x i8] zeroinitializer }, align 32
@ingenic_battery_set_scale._entry_ptr = internal global ptr @ingenic_battery_set_scale._entry, section ".printk_index", align 4
@ingenic_battery_set_scale._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 77, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unable to read channel avail scale\0A\00", [60 x i8] zeroinitializer }, align 32
@ingenic_battery_set_scale._entry_ptr.19 = internal global ptr @ingenic_battery_set_scale._entry.17, section ".printk_index", align 4
@ingenic_battery_set_scale._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 99, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to find matching voltage scale\0A\00", [57 x i8] zeroinitializer }, align 32
@ingenic_battery_set_scale._entry_ptr.22 = internal global ptr @ingenic_battery_set_scale._entry.20, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 10, i64 11, i64 12]
@___asan_gen_.23 = private unnamed_addr constant [23 x i8] c"ingenic_battery_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 179, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 181, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [25 x i8] c"ingenic_battery_of_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 172, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 136, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 141, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant [27 x i8] c"ingenic_battery_properties\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 116, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 152, i32 10 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 156, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 160, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 164, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 69, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 77, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private constant [42 x i8] c"../drivers/power/supply/ingenic-battery.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 99, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author172, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_ingenic_battery_driver_exit, ptr @__initcall__kmod_ingenic_battery__170_186_ingenic_battery_driver_init6, ptr @ingenic_battery_driver_exit, ptr @ingenic_battery_probe._entry, ptr @ingenic_battery_probe._entry.12, ptr @ingenic_battery_probe._entry.9, ptr @ingenic_battery_probe._entry_ptr, ptr @ingenic_battery_probe._entry_ptr.11, ptr @ingenic_battery_probe._entry_ptr.14, ptr @ingenic_battery_set_scale._entry, ptr @ingenic_battery_set_scale._entry.17, ptr @ingenic_battery_set_scale._entry.20, ptr @ingenic_battery_set_scale._entry_ptr, ptr @ingenic_battery_set_scale._entry_ptr.19, ptr @ingenic_battery_set_scale._entry_ptr.22, ptr @ingenic_battery_driver, ptr @.str, ptr @ingenic_battery_of_match, ptr @.str.1, ptr @.str.2, ptr @ingenic_battery_properties, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_properties to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_set_scale._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_set_scale._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingenic_battery_set_scale._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ingenic_battery_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ingenic_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ingenic_battery_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %scale_raw.i = alloca ptr, align 4
  %scale_len.i = alloca i32, align 4
  %scale_type.i = alloca i32, align 4
  %max_raw.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_iio_channel_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #5
  %channel = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %channel, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %desc10 = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %desc10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.2, ptr %desc10, align 4
  %type = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 2, i32 4
  %7 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ingenic_battery_properties, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 2, i32 5
  %8 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ingenic_battery_get_property, ptr %get_property, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %10 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %13 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %psy_cfg, align 4
  %call12 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef %desc10, ptr noundef nonnull %psy_cfg) #5
  %battery = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call12, ptr %battery, align 4
  %cmp.i78 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call12 to i32
  %call18 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %15, ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end9
  %info = getelementptr inbounds %struct.ingenic_battery, ptr %call.i, i32 0, i32 4
  %call21 = call i32 @power_supply_get_battery_info(ptr noundef %call12, ptr noundef %info) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %call21) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info, align 4
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %voltage_min_design_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp = icmp slt i32 %19, 0
  br i1 %cmp, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %voltage_min_design_uv31 = getelementptr inbounds %struct.power_supply_battery_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %voltage_min_design_uv31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %voltage_min_design_uv31, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %17, i32 0, i32 4
  %24 = ptrtoint ptr %voltage_max_design_uv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %voltage_max_design_uv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34 = icmp slt i32 %25, 0
  br i1 %cmp34, label %do.end38, label %if.end41

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #8
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %voltage_max_design_uv40 = getelementptr inbounds %struct.power_supply_battery_info, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %voltage_max_design_uv40 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %voltage_max_design_uv40, align 4
  br label %cleanup

if.end41:                                         ; preds = %if.end32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale_raw.i) #5
  %30 = ptrtoint ptr %scale_raw.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %scale_raw.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale_len.i) #5
  %31 = ptrtoint ptr %scale_len.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %scale_len.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale_type.i) #5
  %32 = ptrtoint ptr %scale_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %scale_type.i, align 4, !annotation !62
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max_raw.i) #5
  %33 = ptrtoint ptr %max_raw.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %max_raw.i, align 4, !annotation !62
  %34 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %channel, align 4
  %call.i79 = call i32 @iio_read_max_channel_raw(ptr noundef %35, ptr noundef nonnull %max_raw.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool.not.i = icmp eq i32 %call.i79, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.15) #8
  br label %ingenic_battery_set_scale.exit

if.end.i:                                         ; preds = %if.end41
  %38 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %channel, align 4
  %call2.i = call i32 @iio_read_avail_channel_attribute(ptr noundef %39, ptr noundef nonnull %scale_raw.i, ptr noundef nonnull %scale_type.i, ptr noundef nonnull %scale_len.i, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i80 = icmp slt i32 %call2.i, 0
  br i1 %cmp.i80, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.18) #8
  br label %ingenic_battery_set_scale.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp9.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp9.not.i, label %lor.lhs.false.i, label %if.end8.i.ingenic_battery_set_scale.exit_crit_edge

if.end8.i.ingenic_battery_set_scale.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ingenic_battery_set_scale.exit

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %42 = ptrtoint ptr %scale_type.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %scale_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %43)
  %cmp10.not.i = icmp eq i32 %43, 11
  br i1 %cmp10.not.i, label %if.end12.i, label %lor.lhs.false.i.ingenic_battery_set_scale.exit_crit_edge

lor.lhs.false.i.ingenic_battery_set_scale.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ingenic_battery_set_scale.exit

if.end12.i:                                       ; preds = %lor.lhs.false.i
  %44 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %info, align 4
  %voltage_max_design_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %voltage_max_design_uv.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %voltage_max_design_uv.i, align 4
  %div.i = sdiv i32 %47, 1000
  %48 = ptrtoint ptr %scale_len.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %scale_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp1381.i = icmp sgt i32 %49, 0
  br i1 %cmp1381.i, label %for.body.lr.ph.i, label %if.end12.i.do.end35.i_crit_edge

if.end12.i.do.end35.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %50 = ptrtoint ptr %max_raw.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_raw.i, align 4
  %52 = ptrtoint ptr %scale_raw.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %scale_raw.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.084.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add29.i, %cleanup.i.for.body.i_crit_edge ]
  %best_mV.083.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %best_mV.1.i, %cleanup.i.for.body.i_crit_edge ]
  %best_idx.082.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %best_idx.1.i, %cleanup.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %53, i32 %i.084.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  %mul.i = mul i32 %55, %51
  %add.i = or i32 %i.084.i, 1
  %arrayidx15.i = getelementptr i32, ptr %53, i32 %add.i
  %56 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx15.i, align 4
  %shr.i = ashr i32 %mul.i, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %div.i)
  %cmp17.i = icmp ult i32 %shr.i, %div.i
  br i1 %cmp17.i, label %for.body.i.cleanup.i_crit_edge, label %if.end20.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end20.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %best_idx.082.i)
  %cmp21.i = icmp sgt i32 %best_idx.082.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %best_mV.083.i)
  %cmp24.i = icmp ugt i32 %shr.i, %best_mV.083.i
  %or.cond.i = select i1 %cmp21.i, i1 %cmp24.i, i1 false
  %spec.select.i = select i1 %or.cond.i, i32 %best_idx.082.i, i32 %i.084.i
  %spec.select80.i = select i1 %or.cond.i, i32 %best_mV.083.i, i32 %shr.i
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end20.i, %for.body.i.cleanup.i_crit_edge
  %best_idx.1.i = phi i32 [ %best_idx.082.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select.i, %if.end20.i ]
  %best_mV.1.i = phi i32 [ %best_mV.083.i, %for.body.i.cleanup.i_crit_edge ], [ %spec.select80.i, %if.end20.i ]
  %add29.i = add i32 %i.084.i, 2
  %cmp13.i = icmp slt i32 %add29.i, %49
  br i1 %cmp13.i, label %cleanup.i.for.body.i_crit_edge, label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_idx.1.i)
  %cmp30.i = icmp slt i32 %best_idx.1.i, 0
  br i1 %cmp30.i, label %for.end.i.do.end35.i_crit_edge, label %if.end37.i

for.end.i.do.end35.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end35.i

do.end35.i:                                       ; preds = %for.end.i.do.end35.i_crit_edge, %if.end12.i.do.end35.i_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.21) #8
  br label %ingenic_battery_set_scale.exit

if.end37.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp38.i = icmp sgt i32 %49, 2
  br i1 %cmp38.i, label %if.then40.i, label %if.end37.i.if.end49.i_crit_edge

if.end37.i.if.end49.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then40.i:                                      ; preds = %if.end37.i
  %60 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %channel, align 4
  %arrayidx42.i = getelementptr i32, ptr %53, i32 %best_idx.1.i
  %62 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx42.i, align 4
  %add43.i = add nuw i32 %best_idx.1.i, 1
  %arrayidx44.i = getelementptr i32, ptr %53, i32 %add43.i
  %64 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx44.i, align 4
  %call45.i = call i32 @iio_write_channel_attribute(ptr noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %tobool46.not.i = icmp eq i32 %call45.i, 0
  br i1 %tobool46.not.i, label %if.then40.i.if.end49.i_crit_edge, label %if.then40.i.ingenic_battery_set_scale.exit_crit_edge

if.then40.i.ingenic_battery_set_scale.exit_crit_edge: ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ingenic_battery_set_scale.exit

if.then40.i.if.end49.i_crit_edge:                 ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then40.i.if.end49.i_crit_edge, %if.end37.i.if.end49.i_crit_edge
  br label %ingenic_battery_set_scale.exit

ingenic_battery_set_scale.exit:                   ; preds = %if.end49.i, %if.then40.i.ingenic_battery_set_scale.exit_crit_edge, %do.end35.i, %lor.lhs.false.i.ingenic_battery_set_scale.exit_crit_edge, %if.end8.i.ingenic_battery_set_scale.exit_crit_edge, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %call.i79, %do.end.i ], [ %call2.i, %do.end6.i ], [ -22, %do.end35.i ], [ 0, %if.end49.i ], [ -22, %lor.lhs.false.i.ingenic_battery_set_scale.exit_crit_edge ], [ -22, %if.end8.i.ingenic_battery_set_scale.exit_crit_edge ], [ %call45.i, %if.then40.i.ingenic_battery_set_scale.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max_raw.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale_type.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale_len.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale_raw.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ingenic_battery_set_scale.exit, %do.end38, %do.end29, %do.end, %if.then15, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then6 ], [ %call18, %if.then15 ], [ %call21, %do.end ], [ %23, %do.end29 ], [ %29, %do.end38 ], [ %retval.0.i, %ingenic_battery_set_scale.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ingenic_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %info1 = getelementptr inbounds %struct.ingenic_battery, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info1, align 4
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb7
    i32 11, label %sw.bb11
    i32 10, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.ingenic_battery, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %channel, align 4
  %call2 = tail call i32 @iio_read_channel_processed(ptr noundef %4, ptr noundef %val) #5
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %mul = mul i32 %6, 1000
  store i32 %mul, ptr %val, align 4
  %voltage_min_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %voltage_min_design_uv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %voltage_min_design_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %8)
  %cmp = icmp slt i32 %mul, %8
  br i1 %cmp, label %sw.bb.cleanup.sink.split_crit_edge, label %if.else

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %voltage_max_design_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %voltage_max_design_uv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %voltage_max_design_uv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %10)
  %cmp3 = icmp sgt i32 %mul, %10
  %. = select i1 %cmp3, i32 4, i32 1
  br label %cleanup.sink.split

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %channel8 = getelementptr inbounds %struct.ingenic_battery, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %channel8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel8, align 4
  %call9 = tail call i32 @iio_read_channel_processed(ptr noundef %12, ptr noundef %val) #5
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %mul10 = mul i32 %14, 1000
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %voltage_min_design_uv12 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %voltage_min_design_uv12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %voltage_min_design_uv12, align 4
  br label %cleanup.sink.split

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %voltage_max_design_uv14 = getelementptr inbounds %struct.power_supply_battery_info, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %voltage_max_design_uv14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %voltage_max_design_uv14, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb13, %sw.bb11, %sw.bb7, %if.else, %sw.bb.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %18, %sw.bb13 ], [ %16, %sw.bb11 ], [ %mul10, %sw.bb7 ], [ 3, %sw.bb.cleanup.sink.split_crit_edge ], [ %., %if.else ]
  %retval.0.ph = phi i32 [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ %call9, %sw.bb7 ], [ %call2, %sw.bb.cleanup.sink.split_crit_edge ], [ %call2, %if.else ]
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_processed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_max_channel_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_avail_channel_attribute(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_write_channel_attribute(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ingenic_battery__170_186_ingenic_battery_driver_init6, !1, !"__initcall__kmod_ingenic_battery__170_186_ingenic_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/ingenic-battery.c", i32 186, i32 1}
!2 = !{ptr @__exitcall_ingenic_battery_driver_exit, !1, !"__exitcall_ingenic_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description171, !4, !"__UNIQUE_ID_description171", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/ingenic-battery.c", i32 188, i32 1}
!5 = !{ptr @__UNIQUE_ID_author172, !6, !"__UNIQUE_ID_author172", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/ingenic-battery.c", i32 189, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/ingenic-battery.c", i32 190, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/ingenic-battery.c", i32 181, i32 11}
!12 = !{ptr @ingenic_battery_driver, !13, !"ingenic_battery_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/ingenic-battery.c", i32 179, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/ingenic-battery.c", i32 136, i32 43}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/ingenic-battery.c", i32 141, i32 15}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/ingenic-battery.c", i32 152, i32 10}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/ingenic-battery.c", i32 156, i32 3}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ingenic_battery_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ingenic_battery_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/ingenic-battery.c", i32 160, i32 3}
!30 = !{ptr @ingenic_battery_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ingenic_battery_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/ingenic-battery.c", i32 164, i32 3}
!34 = !{ptr @ingenic_battery_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ingenic_battery_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @ingenic_battery_properties, !37, !"ingenic_battery_properties", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/ingenic-battery.c", i32 116, i32 35}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/ingenic-battery.c", i32 69, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ingenic_battery_set_scale._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ingenic_battery_set_scale._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/ingenic-battery.c", i32 77, i32 3}
!45 = !{ptr @ingenic_battery_set_scale._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ingenic_battery_set_scale._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/ingenic-battery.c", i32 99, i32 3}
!49 = !{ptr @ingenic_battery_set_scale._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @ingenic_battery_set_scale._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ingenic_battery_of_match, !52, !"ingenic_battery_of_match", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/ingenic-battery.c", i32 172, i32 34}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{!"auto-init"}
