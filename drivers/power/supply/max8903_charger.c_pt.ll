; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max8903_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max8903_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.max8903_data = type { ptr, ptr, %struct.power_supply_desc, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_max8903_charger__189_418_max8903_driver_init6 = internal global ptr @max8903_driver_init, section ".initcall6.init", align 4
@max8903_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max8903_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max8903_match_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max8903_driver_exit = internal global ptr @max8903_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file190 = internal constant [58 x i8] c"max8903_charger.file=drivers/power/supply/max8903_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license191 = internal constant [28 x i8] c"max8903_charger.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [51 x i8] c"max8903_charger.description=MAX8903 Charger Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author193 = internal constant [63 x i8] c"max8903_charger.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias194 = internal constant [47 x i8] c"max8903_charger.alias=platform:max8903-charger\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8903-charger\00", [16 x i8] zeroinitializer }, align 32
@max8903_match_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max8903\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max8903_charger\00", [16 x i8] zeroinitializer }, align 32
@max8903_charger_props = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 2], [20 x i8] zeroinitializer }, align 32
@max8903_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 358, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed: power supply register.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8903_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/max8903_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8903_probe._entry_ptr = internal global ptr @max8903_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAX8903 DC IN\00", [18 x i8] zeroinitializer }, align 32
@max8903_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 370, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot request irq %d for DC (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@max8903_probe._entry_ptr.10 = internal global ptr @max8903_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MAX8903 USB IN\00", [17 x i8] zeroinitializer }, align 32
@max8903_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 383, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot request irq %d for USB (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@max8903_probe._entry_ptr.14 = internal global ptr @max8903_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MAX8903 Fault\00", [18 x i8] zeroinitializer }, align 32
@max8903_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 396, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot request irq %d for Fault (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@max8903_probe._entry_ptr.18 = internal global ptr @max8903_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dok\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get DOK GPIO\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"uok\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get UOK GPIO\00", [41 x i8] zeroinitializer }, align 32
@max8903_setup_gpios._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 265, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no valid power source\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max8903_setup_gpios\00", [44 x i8] zeroinitializer }, align 32
@max8903_setup_gpios._entry_ptr = internal global ptr @max8903_setup_gpios._entry, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cen\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get CEN GPIO\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dcm\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get DCM GPIO\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"chg\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get CHG GPIO\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"flt\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get FLT GPIO\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"usus\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get USUS GPIO\00", [40 x i8] zeroinitializer }, align 32
@max8903_dcin.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.4, ptr @.str.36, i8 0, i8 31, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max8903_dcin\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TA(DC-IN) Charger %s.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Disconnected\00", [19 x i8] zeroinitializer }, align 32
@max8903_usbin.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.39, ptr @.str.4, ptr @.str.40, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8903_usbin\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"USB Charger %s.\0A\00", [47 x i8] zeroinitializer }, align 32
@max8903_fault._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Charger suffers a fault and stops.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max8903_fault\00", [18 x i8] zeroinitializer }, align 32
@max8903_fault._entry_ptr = internal global ptr @max8903_fault._entry, section ".printk_index", align 4
@max8903_fault._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.4, i32 220, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Charger recovered from a fault.\0A\00", [63 x i8] zeroinitializer }, align 32
@max8903_fault._entry_ptr.45 = internal global ptr @max8903_fault._entry.43, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"max8903_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 410, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 413, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"max8903_match_ids\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 404, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 345, i32 24 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"max8903_charger_props\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 40, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 358, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 367, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 369, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 380, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 382, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 393, i32 6 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 395, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 233, i32 43 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 236, i32 10 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 248, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 251, i32 10 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 265, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 282, i32 34 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 285, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 296, i32 43 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 299, i32 10 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 302, i32 43 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 305, i32 10 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 308, i32 43 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 311, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 314, i32 44 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 317, i32 10 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 123, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 180, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 218, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [42 x i8] c"../drivers/power/supply/max8903_charger.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 220, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias194, ptr @__UNIQUE_ID_author193, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file190, ptr @__UNIQUE_ID_license191, ptr @__exitcall_max8903_driver_exit, ptr @__initcall__kmod_max8903_charger__189_418_max8903_driver_init6, ptr @max8903_driver_exit, ptr @max8903_fault._entry, ptr @max8903_fault._entry.43, ptr @max8903_fault._entry_ptr, ptr @max8903_fault._entry_ptr.45, ptr @max8903_probe._entry, ptr @max8903_probe._entry.12, ptr @max8903_probe._entry.16, ptr @max8903_probe._entry.8, ptr @max8903_probe._entry_ptr, ptr @max8903_probe._entry_ptr.10, ptr @max8903_probe._entry_ptr.14, ptr @max8903_probe._entry_ptr.18, ptr @max8903_setup_gpios._entry, ptr @max8903_setup_gpios._entry_ptr, ptr @max8903_driver, ptr @.str, ptr @max8903_match_ids, ptr @.str.1, ptr @max8903_charger_props, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_match_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_charger_props to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_setup_gpios._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_fault._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8903_fault._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max8903_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max8903_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @max8903_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 92, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call2.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef 1) #5
  %dok.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %dok.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2.i, ptr %dok.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.max8903_setup_gpios.exit_crit_edge, label %if.end.i

if.end.max8903_setup_gpios.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end.i:                                         ; preds = %if.end
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %if.end.i.if.end15.i_crit_edge, label %if.then9.i

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end15.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %psy_desc.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %psy_desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy_desc.i, align 4
  %call11.i = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call2.i, ptr noundef %5) #5
  %6 = ptrtoint ptr %dok.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dok.i, align 4
  %call13.i = tail call i32 @gpiod_get_value(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.i = icmp ne i32 %call13.i, 0
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then9.i, %if.end.i.if.end15.i_crit_edge
  %ta_in.0.off0.i = phi i1 [ %tobool14.i, %if.then9.i ], [ false, %if.end.i.if.end15.i_crit_edge ]
  %call16.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.21, i32 noundef 1) #5
  %uok.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %uok.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call16.i, ptr %uok.i, align 4
  %cmp.i179.i = icmp ugt ptr %call16.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179.i, label %if.end15.i.max8903_setup_gpios.exit_crit_edge, label %if.end23.i

if.end15.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end23.i:                                       ; preds = %if.end15.i
  %tobool25.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end35.i_crit_edge, label %if.then26.i

if.end23.i.if.end35.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %psy_desc28.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %psy_desc28.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %psy_desc28.i, align 4
  %call30.i = tail call i32 @gpiod_set_consumer_name(ptr noundef nonnull %call16.i, ptr noundef %10) #5
  %11 = ptrtoint ptr %uok.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %uok.i, align 4
  %call32.i = tail call i32 @gpiod_get_value(ptr noundef %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.i = icmp ne i32 %call32.i, 0
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end35.i_crit_edge
  %usb_in.0.off0.i = phi i1 [ %tobool33.i, %if.then26.i ], [ false, %if.end23.i.if.end35.i_crit_edge ]
  %13 = ptrtoint ptr %dok.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dok.i, align 4
  %tobool37.not.i = icmp eq ptr %14, null
  br i1 %tobool37.not.i, label %land.lhs.true.i, label %if.end35.i.if.end41.i_crit_edge

if.end35.i.if.end41.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

land.lhs.true.i:                                  ; preds = %if.end35.i
  %15 = ptrtoint ptr %uok.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %uok.i, align 4
  %tobool39.not.i = icmp eq ptr %16, null
  br i1 %tobool39.not.i, label %max8903_setup_gpios.exit.thread120, label %land.lhs.true.i.if.end41.i_crit_edge

land.lhs.true.i.if.end41.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

max8903_setup_gpios.exit.thread120:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end41.i:                                       ; preds = %land.lhs.true.i.if.end41.i_crit_edge, %if.end35.i.if.end41.i_crit_edge
  %spec.select.i = select i1 %ta_in.0.off0.i, i1 true, i1 %usb_in.0.off0.i
  %cond.i = select i1 %spec.select.i, i32 7, i32 3
  %call44.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %cond.i) #5
  %cen.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %cen.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call44.i, ptr %cen.i, align 4
  %cmp.i180.i = icmp ugt ptr %call44.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180.i, label %if.end41.i.max8903_setup_gpios.exit_crit_edge, label %if.end51.i

if.end41.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end51.i:                                       ; preds = %if.end41.i
  %psy_desc53.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %psy_desc53.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %psy_desc53.i, align 4
  %call55.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call44.i, ptr noundef %19) #5
  %cond57.i = select i1 %ta_in.0.off0.i, i32 7, i32 3
  %call58.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef %cond57.i) #5
  %dcm.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 8
  %20 = ptrtoint ptr %dcm.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call58.i, ptr %dcm.i, align 4
  %cmp.i181.i = icmp ugt ptr %call58.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181.i, label %if.end51.i.max8903_setup_gpios.exit_crit_edge, label %if.end65.i

if.end51.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end65.i:                                       ; preds = %if.end51.i
  %21 = ptrtoint ptr %psy_desc53.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %psy_desc53.i, align 4
  %call69.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call58.i, ptr noundef %22) #5
  %call70.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef 1) #5
  %chg.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 6
  %23 = ptrtoint ptr %chg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call70.i, ptr %chg.i, align 4
  %cmp.i182.i = icmp ugt ptr %call70.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182.i, label %if.end65.i.max8903_setup_gpios.exit_crit_edge, label %if.end77.i

if.end65.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end77.i:                                       ; preds = %if.end65.i
  %24 = ptrtoint ptr %psy_desc53.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psy_desc53.i, align 4
  %call81.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call70.i, ptr noundef %25) #5
  %call82.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.31, i32 noundef 1) #5
  %flt.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %flt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call82.i, ptr %flt.i, align 4
  %cmp.i183.i = icmp ugt ptr %call82.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183.i, label %if.end77.i.max8903_setup_gpios.exit_crit_edge, label %if.end89.i

if.end77.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

if.end89.i:                                       ; preds = %if.end77.i
  %27 = ptrtoint ptr %psy_desc53.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %psy_desc53.i, align 4
  %call93.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call82.i, ptr noundef %28) #5
  %call94.i = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.33, i32 noundef 1) #5
  %usus.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %usus.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call94.i, ptr %usus.i, align 4
  %cmp.i184.i = icmp ugt ptr %call94.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i184.i, label %if.end89.i.max8903_setup_gpios.exit_crit_edge, label %max8903_setup_gpios.exit.thread

if.end89.i.max8903_setup_gpios.exit_crit_edge:    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %max8903_setup_gpios.exit

max8903_setup_gpios.exit.thread:                  ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %psy_desc53.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %psy_desc53.i, align 4
  %call105.i = tail call i32 @gpiod_set_consumer_name(ptr noundef %call94.i, ptr noundef %31) #5
  %fault.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %fault.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %fault.i, align 4
  %ta_in107.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 12
  %frombool108.i = zext i1 %ta_in.0.off0.i to i8
  %33 = ptrtoint ptr %ta_in107.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool108.i, ptr %ta_in107.i, align 2
  %usb_in110.i = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 11
  %frombool111.i = zext i1 %usb_in.0.off0.i to i8
  %34 = ptrtoint ptr %usb_in110.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %frombool111.i, ptr %usb_in110.i, align 1
  br label %if.end6

max8903_setup_gpios.exit:                         ; preds = %if.end89.i.max8903_setup_gpios.exit_crit_edge, %if.end77.i.max8903_setup_gpios.exit_crit_edge, %if.end65.i.max8903_setup_gpios.exit_crit_edge, %if.end51.i.max8903_setup_gpios.exit_crit_edge, %if.end41.i.max8903_setup_gpios.exit_crit_edge, %if.end15.i.max8903_setup_gpios.exit_crit_edge, %if.end.max8903_setup_gpios.exit_crit_edge
  %call2.i.sink = phi ptr [ %call2.i, %if.end.max8903_setup_gpios.exit_crit_edge ], [ %call16.i, %if.end15.i.max8903_setup_gpios.exit_crit_edge ], [ %call44.i, %if.end41.i.max8903_setup_gpios.exit_crit_edge ], [ %call58.i, %if.end51.i.max8903_setup_gpios.exit_crit_edge ], [ %call70.i, %if.end65.i.max8903_setup_gpios.exit_crit_edge ], [ %call82.i, %if.end77.i.max8903_setup_gpios.exit_crit_edge ], [ %call94.i, %if.end89.i.max8903_setup_gpios.exit_crit_edge ]
  %.str.20.sink = phi ptr [ @.str.20, %if.end.max8903_setup_gpios.exit_crit_edge ], [ @.str.22, %if.end15.i.max8903_setup_gpios.exit_crit_edge ], [ @.str.26, %if.end41.i.max8903_setup_gpios.exit_crit_edge ], [ @.str.28, %if.end51.i.max8903_setup_gpios.exit_crit_edge ], [ @.str.30, %if.end65.i.max8903_setup_gpios.exit_crit_edge ], [ @.str.32, %if.end77.i.max8903_setup_gpios.exit_crit_edge ], [ @.str.34, %if.end89.i.max8903_setup_gpios.exit_crit_edge ]
  %35 = ptrtoint ptr %call2.i.sink to i32
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %35, ptr noundef nonnull %.str.20.sink) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool4.not = icmp eq i32 %call7.i, 0
  br i1 %tobool4.not, label %max8903_setup_gpios.exit.if.end6_crit_edge, label %max8903_setup_gpios.exit.cleanup_crit_edge

max8903_setup_gpios.exit.cleanup_crit_edge:       ; preds = %max8903_setup_gpios.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

max8903_setup_gpios.exit.if.end6_crit_edge:       ; preds = %max8903_setup_gpios.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %max8903_setup_gpios.exit.if.end6_crit_edge, %max8903_setup_gpios.exit.thread
  %psy_desc = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2
  %36 = ptrtoint ptr %psy_desc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.1, ptr %psy_desc, align 4
  %ta_in = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %ta_in to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ta_in, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool7.not = icmp eq i8 %38, 0
  br i1 %tobool7.not, label %cond.false, label %if.end6.cond.end_crit_edge

if.end6.cond.end_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %usb_in = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 11
  %39 = ptrtoint ptr %usb_in to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %usb_in, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool8.not = icmp eq i8 %40, 0
  %cond = select i1 %tobool8.not, i32 1, i32 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end6.cond.end_crit_edge
  %cond9 = phi i32 [ %cond, %cond.false ], [ 3, %if.end6.cond.end_crit_edge ]
  %type = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %cond9, ptr %type, align 4
  %get_property = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2, i32 6
  %42 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @max8903_get_property, ptr %get_property, align 4
  %properties = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2, i32 4
  %43 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @max8903_charger_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 2, i32 5
  %44 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 3, ptr %num_properties, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %45 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node, align 8
  %47 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %48 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %drv_data, align 4
  %call16 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef %psy_desc, ptr noundef nonnull %psy_cfg) #5
  %psy = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call16, ptr %psy, align 4
  %cmp.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end22

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  %50 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %psy, align 4
  %52 = ptrtoint ptr %51 to i32
  br label %cleanup

if.end22:                                         ; preds = %cond.end
  %53 = ptrtoint ptr %dok.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dok.i, align 4
  %tobool23.not = icmp eq ptr %54, null
  br i1 %tobool23.not, label %if.end22.if.end36_crit_edge, label %if.then24

if.end22.if.end36_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then24:                                        ; preds = %if.end22
  %call26 = call i32 @gpiod_to_irq(ptr noundef nonnull %54) #5
  %call27 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call26, ptr noundef null, ptr noundef nonnull @max8903_dcin, i32 noundef 8195, ptr noundef nonnull @.str.7, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.if.end36_crit_edge, label %do.end32

if.then24.if.end36_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

do.end32:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  %55 = ptrtoint ptr %dok.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dok.i, align 4
  %call34 = call i32 @gpiod_to_irq(ptr noundef %56) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call34, i32 noundef %call27) #8
  br label %cleanup

if.end36:                                         ; preds = %if.then24.if.end36_crit_edge, %if.end22.if.end36_crit_edge
  %uok = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 5
  %57 = ptrtoint ptr %uok to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %uok, align 4
  %tobool37.not = icmp eq ptr %58, null
  br i1 %tobool37.not, label %if.end36.if.end50_crit_edge, label %if.then38

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.then38:                                        ; preds = %if.end36
  %call40 = call i32 @gpiod_to_irq(ptr noundef nonnull %58) #5
  %call41 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call40, ptr noundef null, ptr noundef nonnull @max8903_usbin, i32 noundef 8195, ptr noundef nonnull @.str.11, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then38.if.end50_crit_edge, label %do.end46

if.then38.if.end50_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

do.end46:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %uok to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %uok, align 4
  %call48 = call i32 @gpiod_to_irq(ptr noundef %60) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call48, i32 noundef %call41) #8
  br label %cleanup

if.end50:                                         ; preds = %if.then38.if.end50_crit_edge, %if.end36.if.end50_crit_edge
  %flt = getelementptr inbounds %struct.max8903_data, ptr %call.i, i32 0, i32 7
  %61 = ptrtoint ptr %flt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %flt, align 4
  %tobool51.not = icmp eq ptr %62, null
  br i1 %tobool51.not, label %if.end50.cleanup_crit_edge, label %if.then52

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then52:                                        ; preds = %if.end50
  %call54 = call i32 @gpiod_to_irq(ptr noundef nonnull %62) #5
  %call55 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call54, ptr noundef null, ptr noundef nonnull @max8903_fault, i32 noundef 8195, ptr noundef nonnull @.str.15, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.then52.cleanup_crit_edge, label %do.end60

if.then52.cleanup_crit_edge:                      ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end60:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %flt to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %flt, align 4
  %call62 = call i32 @gpiod_to_irq(ptr noundef %64) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call62, i32 noundef %call55) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end60, %if.then52.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %do.end46, %do.end32, %do.end, %max8903_setup_gpios.exit.cleanup_crit_edge, %max8903_setup_gpios.exit.thread120, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %52, %do.end ], [ %call27, %do.end32 ], [ %call41, %do.end46 ], [ %call55, %do.end60 ], [ -12, %entry.cleanup_crit_edge ], [ %call7.i, %max8903_setup_gpios.exit.cleanup_crit_edge ], [ 0, %if.then52.cleanup_crit_edge ], [ 0, %if.end50.cleanup_crit_edge ], [ -22, %max8903_setup_gpios.exit.thread120 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb11
    i32 2, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %val, align 4
  %chg = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %chg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chg, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.then

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  %call2 = tail call i32 @gpiod_get_value(ptr noundef nonnull %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.else, label %if.then.cleanup.sink.split_crit_edge

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

if.else:                                          ; preds = %if.then
  %usb_in = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 11
  %4 = ptrtoint ptr %usb_in to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %usb_in, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %ta_in = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 12
  %6 = ptrtoint ptr %ta_in to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ta_in, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  %spec.select = select i1 %tobool6.not, i32 2, i32 3
  br label %cleanup.sink.split

sw.bb11:                                          ; preds = %entry
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %usb_in12 = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 11
  %9 = ptrtoint ptr %usb_in12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %usb_in12, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool13.not = icmp eq i8 %10, 0
  br i1 %tobool13.not, label %lor.lhs.false14, label %sw.bb11.cleanup.sink.split_crit_edge

sw.bb11.cleanup.sink.split_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false14:                                  ; preds = %sw.bb11
  %ta_in15 = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 12
  %11 = ptrtoint ptr %ta_in15 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ta_in15, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool16.not = icmp eq i8 %12, 0
  br i1 %tobool16.not, label %lor.lhs.false14.cleanup_crit_edge, label %lor.lhs.false14.cleanup.sink.split_crit_edge

lor.lhs.false14.cleanup.sink.split_crit_edge:     ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split

lor.lhs.false14.cleanup_crit_edge:                ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %val, align 4
  %fault = getelementptr inbounds %struct.max8903_data, ptr %call, i32 0, i32 10
  %14 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fault, align 4, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool20.not = icmp eq i8 %15, 0
  %spec.store.select = select i1 %tobool20.not, i32 1, i32 5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb19, %lor.lhs.false14.cleanup.sink.split_crit_edge, %sw.bb11.cleanup.sink.split_crit_edge, %lor.lhs.false, %if.else.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %spec.store.select.sink = phi i32 [ %spec.store.select, %sw.bb19 ], [ 1, %if.then.cleanup.sink.split_crit_edge ], [ 3, %if.else.cleanup.sink.split_crit_edge ], [ 1, %lor.lhs.false14.cleanup.sink.split_crit_edge ], [ 1, %sw.bb11.cleanup.sink.split_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.store.select.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %lor.lhs.false14.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false14.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_dcin(i32 noundef %irq, ptr nocapture noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dok = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 4
  %0 = ptrtoint ptr %dok to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dok, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %conv = zext i1 %tobool to i32
  %ta_in2 = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 12
  %2 = ptrtoint ptr %ta_in2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ta_in2, align 2, !range !109
  %4 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %ta_in2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %ta_in2, align 2
  %dcm = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 8
  %6 = ptrtoint ptr %dcm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dcm, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef %conv) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  %cen = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 3
  %8 = ptrtoint ptr %cen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cen, align 4
  %tobool15.not = icmp eq ptr %9, null
  br i1 %tobool15.not, label %if.end14.do.body_crit_edge, label %if.then16

if.end14.do.body_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then16:                                        ; preds = %if.end14
  br i1 %tobool, label %if.then16.if.end23_crit_edge, label %if.else

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #7
  %usb_in = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 11
  %10 = ptrtoint ptr %usb_in to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %usb_in, align 1, !range !109
  %12 = zext i8 %11 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.else, %if.then16.if.end23_crit_edge
  %val.0 = phi i32 [ 1, %if.then16.if.end23_crit_edge ], [ %12, %if.else ]
  tail call void @gpiod_set_value(ptr noundef nonnull %9, i32 noundef %val.0) #5
  br label %do.body

do.body:                                          ; preds = %if.end23, %if.end14.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8903_dcin.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8903_dcin, %do.end)) #5
          to label %if.then32 [label %do.end], !srcloc !110

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %_data, align 4
  %cond = select i1 %tobool, ptr @.str.37, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8903_dcin.__UNIQUE_ID_ddebug187, ptr noundef %14, ptr noundef nonnull @.str.36, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %type = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %17 = ptrtoint ptr %ta_in2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ta_in2, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  br i1 %tobool37.not, label %if.else41, label %do.end.if.end51_crit_edge

do.end.if.end51_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

if.else41:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %usb_in42 = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 11
  %19 = ptrtoint ptr %usb_in42 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %usb_in42, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool43.not = icmp eq i8 %20, 0
  %. = select i1 %tobool43.not, i32 1, i32 4
  br label %if.end51

if.end51:                                         ; preds = %if.else41, %do.end.if.end51_crit_edge
  %.sink = phi i32 [ 3, %do.end.if.end51_crit_edge ], [ %., %if.else41 ]
  %21 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %.sink)
  %cmp54.not = icmp eq i32 %16, %.sink
  br i1 %cmp54.not, label %if.end51.cleanup_crit_edge, label %if.then56

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %psy = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 1
  %22 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end51.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_usbin(i32 noundef %irq, ptr nocapture noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uok = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 5
  %0 = ptrtoint ptr %uok to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uok, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %usb_in2 = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 11
  %2 = ptrtoint ptr %usb_in2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %usb_in2, align 1, !range !109
  %4 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %usb_in2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %usb_in2, align 1
  %cen = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 3
  %6 = ptrtoint ptr %cen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cen, align 4
  %tobool9.not = icmp eq ptr %7, null
  br i1 %tobool9.not, label %if.end.do.body_crit_edge, label %if.then10

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then10:                                        ; preds = %if.end
  br i1 %tobool, label %if.then10.if.end17_crit_edge, label %if.else

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %ta_in = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 12
  %8 = ptrtoint ptr %ta_in to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ta_in, align 2, !range !109
  %10 = zext i8 %9 to i32
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then10.if.end17_crit_edge
  %val.0 = phi i32 [ 1, %if.then10.if.end17_crit_edge ], [ %10, %if.else ]
  tail call void @gpiod_set_value(ptr noundef nonnull %7, i32 noundef %val.0) #5
  br label %do.body

do.body:                                          ; preds = %if.end17, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max8903_usbin.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max8903_usbin, %do.end)) #5
          to label %if.then26 [label %do.end], !srcloc !110

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %_data, align 4
  %cond = select i1 %tobool, ptr @.str.37, ptr @.str.38
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max8903_usbin.__UNIQUE_ID_ddebug188, ptr noundef %12, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond) #5
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %type = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  %ta_in30 = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 12
  %15 = ptrtoint ptr %ta_in30 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %ta_in30, align 2, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool31.not = icmp eq i8 %16, 0
  br i1 %tobool31.not, label %if.else35, label %do.end.if.end45_crit_edge

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.else35:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %usb_in2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %usb_in2, align 1, !range !109
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool37.not = icmp eq i8 %18, 0
  %. = select i1 %tobool37.not, i32 1, i32 4
  br label %if.end45

if.end45:                                         ; preds = %if.else35, %do.end.if.end45_crit_edge
  %.sink = phi i32 [ 3, %do.end.if.end45_crit_edge ], [ %., %if.else35 ]
  %19 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %.sink)
  %cmp48.not = icmp eq i32 %14, %.sink
  br i1 %cmp48.not, label %if.end45.cleanup_crit_edge, label %if.then50

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then50:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %psy = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 1
  %20 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %21) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %if.end45.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8903_fault(i32 noundef %irq, ptr nocapture noundef %_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flt = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 7
  %0 = ptrtoint ptr %flt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flt, align 4
  %call = tail call i32 @gpiod_get_value(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool = icmp ne i32 %call, 0
  %fault2 = getelementptr inbounds %struct.max8903_data, ptr %_data, i32 0, i32 10
  %2 = ptrtoint ptr %fault2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fault2, align 4, !range !109
  %4 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %fault2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %fault2, align 4
  %6 = ptrtoint ptr %_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_data, align 4
  %.str.41..str.44 = select i1 %tobool, ptr @.str.41, ptr @.str.44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull %.str.41..str.44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__initcall__kmod_max8903_charger__189_418_max8903_driver_init6, !1, !"__initcall__kmod_max8903_charger__189_418_max8903_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max8903_charger.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_max8903_driver_exit, !1, !"__exitcall_max8903_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file190, !4, !"__UNIQUE_ID_file190", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max8903_charger.c", i32 420, i32 1}
!5 = !{ptr @__UNIQUE_ID_license191, !4, !"__UNIQUE_ID_license191", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/max8903_charger.c", i32 421, i32 1}
!8 = !{ptr @__UNIQUE_ID_author193, !9, !"__UNIQUE_ID_author193", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/max8903_charger.c", i32 422, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias194, !11, !"__UNIQUE_ID_alias194", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max8903_charger.c", i32 423, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max8903_charger.c", i32 413, i32 11}
!14 = !{ptr @max8903_driver, !15, !"max8903_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max8903_charger.c", i32 410, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/max8903_charger.c", i32 345, i32 24}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/max8903_charger.c", i32 358, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @max8903_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @max8903_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/max8903_charger.c", i32 367, i32 6}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/max8903_charger.c", i32 369, i32 4}
!30 = !{ptr @max8903_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max8903_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/max8903_charger.c", i32 380, i32 6}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/max8903_charger.c", i32 382, i32 4}
!36 = !{ptr @max8903_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @max8903_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/max8903_charger.c", i32 393, i32 6}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/max8903_charger.c", i32 395, i32 4}
!42 = !{ptr @max8903_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @max8903_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/max8903_charger.c", i32 233, i32 43}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/max8903_charger.c", i32 236, i32 10}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/max8903_charger.c", i32 248, i32 43}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/max8903_charger.c", i32 251, i32 10}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/max8903_charger.c", i32 265, i32 3}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @max8903_setup_gpios._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @max8903_setup_gpios._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max8903_charger.c", i32 282, i32 34}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/max8903_charger.c", i32 285, i32 10}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/max8903_charger.c", i32 296, i32 43}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/max8903_charger.c", i32 299, i32 10}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/max8903_charger.c", i32 302, i32 43}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/max8903_charger.c", i32 305, i32 10}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/max8903_charger.c", i32 308, i32 43}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/max8903_charger.c", i32 311, i32 10}
!73 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/max8903_charger.c", i32 314, i32 44}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/max8903_charger.c", i32 317, i32 10}
!77 = !{ptr @max8903_charger_props, !78, !"max8903_charger_props", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/max8903_charger.c", i32 40, i32 35}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/max8903_charger.c", i32 123, i32 2}
!81 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @max8903_dcin.__UNIQUE_ID_ddebug187, !80, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!83 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/max8903_charger.c", i32 180, i32 2}
!87 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @max8903_usbin.__UNIQUE_ID_ddebug188, !86, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!89 = !{ptr @.str.41, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/max8903_charger.c", i32 218, i32 3}
!91 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @max8903_fault._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @max8903_fault._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/max8903_charger.c", i32 220, i32 3}
!96 = !{ptr @max8903_fault._entry.43, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @max8903_fault._entry_ptr.45, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @max8903_match_ids, !99, !"max8903_match_ids", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/max8903_charger.c", i32 404, i32 34}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{i8 0, i8 2}
!110 = !{i64 2148176942, i64 2148176947, i64 2148176960, i64 2148177004, i64 2148177038, i64 2148177059}
