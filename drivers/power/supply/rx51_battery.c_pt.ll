; ModuleID = '/llk/IR_all_yes/drivers/power/supply/rx51_battery.c_pt.bc'
source_filename = "../drivers/power/supply/rx51_battery.c"
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
%struct.rx51_device_info = type { ptr, ptr, %struct.power_supply_desc, ptr, ptr, ptr }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@__initcall__kmod_rx51_battery__183_278_rx51_battery_driver_init6 = internal global ptr @rx51_battery_driver_init, section ".initcall6.init", align 4
@rx51_battery_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rx51_battery_probe, ptr @rx51_battery_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @n900_battery_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rx51_battery_driver_exit = internal global ptr @rx51_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias184 = internal constant [41 x i8] c"rx51_battery.alias=platform:rx51-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_author185 = internal constant [50 x i8] c"rx51_battery.author=Pali Roh\C3\A1r <pali@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [52 x i8] c"rx51_battery.description=Nokia RX-51 battery driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [52 x i8] c"rx51_battery.file=drivers/power/supply/rx51_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [25 x i8] c"rx51_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rx51-battery\00", [19 x i8] zeroinitializer }, align 32
@n900_battery_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nokia,n900-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rx51_battery_props = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 6, i32 10, i32 3, i32 12, i32 52, i32 22], [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"temp\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bsi\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbat\00", [27 x i8] zeroinitializer }, align 32
@rx51_battery_read_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 46, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not read ADC: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rx51_battery_read_voltage\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/power/supply/rx51_battery.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rx51_battery_read_voltage._entry_ptr = internal global ptr @rx51_battery_read_voltage._entry, section ".printk_index", align 4
@rx51_battery_read_temperature._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.9, ptr @.str.6, i32 100, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx51_battery_read_temperature\00", [34 x i8] zeroinitializer }, align 32
@rx51_battery_read_temperature._entry_ptr = internal global ptr @rx51_battery_read_temperature._entry, section ".printk_index", align 4
@rx51_temp_table1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\FF\C9\9F\8A|rjc^YURNKIFDB@>=;987", [39 x i8] zeroinitializer }, align 32
@rx51_temp_table2 = internal constant { [87 x i16], [50 x i8] } { [87 x i16] [i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 39, i16 40, i16 41, i16 43, i16 44, i16 46, i16 48, i16 49, i16 51, i16 53, i16 55, i16 57, i16 59, i16 61, i16 64, i16 66, i16 69, i16 71, i16 74, i16 77, i16 80, i16 83, i16 86, i16 90, i16 94, i16 97, i16 101, i16 106, i16 110, i16 115, i16 119, i16 125, i16 130, i16 136, i16 141, i16 148, i16 154, i16 161, i16 168, i16 176, i16 184, i16 202, i16 211, i16 221, i16 231, i16 242, i16 254, i16 266, i16 279, i16 293, i16 308, i16 323, i16 340, i16 357, i16 375, i16 395, i16 415, i16 437, i16 460, i16 485, i16 511, i16 539, i16 568, i16 600, i16 633, i16 669, i16 706, i16 747, i16 790, i16 836, i16 885, i16 937, i16 993, i16 1024], [50 x i8] zeroinitializer }, align 32
@rx51_battery_read_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.10, ptr @.str.6, i32 137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rx51_battery_read_capacity\00", [37 x i8] zeroinitializer }, align 32
@rx51_battery_read_capacity._entry_ptr = internal global ptr @rx51_battery_read_capacity._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 6, i64 10, i64 12, i64 22, i64 52]
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"rx51_battery_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 270, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 274, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [22 x i8] c"n900_battery_of_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 263, i32 34 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"rx51_battery_props\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 182, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 212, i32 46 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 218, i32 46 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 224, i32 46 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 46, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 100, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"rx51_temp_table1\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 67, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"rx51_temp_table2\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 79, i32 12 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private constant [39 x i8] c"../drivers/power/supply/rx51_battery.c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 137, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias184, ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_rx51_battery_driver_exit, ptr @__initcall__kmod_rx51_battery__183_278_rx51_battery_driver_init6, ptr @rx51_battery_driver_exit, ptr @rx51_battery_read_capacity._entry, ptr @rx51_battery_read_capacity._entry_ptr, ptr @rx51_battery_read_temperature._entry, ptr @rx51_battery_read_temperature._entry_ptr, ptr @rx51_battery_read_voltage._entry, ptr @rx51_battery_read_voltage._entry_ptr, ptr @rx51_battery_driver, ptr @.str, ptr @n900_battery_of_match, ptr @rx51_battery_props, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @rx51_temp_table1, ptr @rx51_temp_table2, ptr @.str.10], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_battery_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n900_battery_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_battery_props to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_battery_read_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_battery_read_temperature._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_temp_table1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_temp_table2 to i32), i32 174, i32 224, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx51_battery_read_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rx51_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rx51_battery_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rx51_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rx51_battery_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx51_battery_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #5
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %bat_desc = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %bat_desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str, ptr %bat_desc, align 4
  %type = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %type, align 4
  %properties = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rx51_battery_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 2, i32 5
  %6 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 2, i32 6
  %7 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @rx51_battery_get_property, ptr %get_property, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %8 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %drv_data, align 4
  %call8 = tail call ptr @iio_channel_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #5
  %channel_temp = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %channel_temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8, ptr %channel_temp, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call16 = tail call ptr @iio_channel_get(ptr noundef %12, ptr noundef nonnull @.str.2) #5
  %channel_bsi = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %channel_bsi to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call16, ptr %channel_bsi, align 4
  %cmp.i75 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i75, label %if.end14.error_channel_temp_crit_edge, label %if.end22

if.end14.error_channel_temp_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_channel_temp

if.end22:                                         ; preds = %if.end14
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call24 = tail call ptr @iio_channel_get(ptr noundef %15, ptr noundef nonnull @.str.3) #5
  %channel_vbat = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call24, ptr %channel_vbat, align 4
  %cmp.i76 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.end22.error_channel_bsi_crit_edge, label %if.end30

if.end22.error_channel_bsi_crit_edge:             ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_channel_bsi

if.end30:                                         ; preds = %if.end22
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call33 = call ptr @power_supply_register(ptr noundef %18, ptr noundef %bat_desc, ptr noundef nonnull %psy_cfg) #5
  %bat = getelementptr inbounds %struct.rx51_device_info, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call33, ptr %bat, align 4
  %cmp.i77 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %channel_vbat, align 4
  call void @iio_channel_release(ptr noundef %21) #5
  br label %error_channel_bsi

error_channel_bsi:                                ; preds = %if.then36, %if.end22.error_channel_bsi_crit_edge
  %ret.0.in = phi ptr [ %call33, %if.then36 ], [ %call24, %if.end22.error_channel_bsi_crit_edge ]
  %22 = ptrtoint ptr %channel_bsi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %channel_bsi, align 4
  call void @iio_channel_release(ptr noundef %23) #5
  br label %error_channel_temp

error_channel_temp:                               ; preds = %error_channel_bsi, %if.end14.error_channel_temp_crit_edge
  %ret.1.in = phi ptr [ %ret.0.in, %error_channel_bsi ], [ %call16, %if.end14.error_channel_temp_crit_edge ]
  %ret.1 = ptrtoint ptr %ret.1.in to i32
  %24 = ptrtoint ptr %channel_temp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel_temp, align 4
  call void @iio_channel_release(ptr noundef %25) #5
  br label %cleanup

cleanup:                                          ; preds = %error_channel_temp, %if.end30.cleanup_crit_edge, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ], [ %10, %if.then11 ], [ %ret.1, %error_channel_temp ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx51_battery_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bat = getelementptr inbounds %struct.rx51_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bat, align 4
  tail call void @power_supply_unregister(ptr noundef %3) #5
  %channel_vbat = getelementptr inbounds %struct.rx51_device_info, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %channel_vbat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_vbat, align 4
  tail call void @iio_channel_release(ptr noundef %5) #5
  %channel_bsi = getelementptr inbounds %struct.rx51_device_info, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %channel_bsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_bsi, align 4
  tail call void @iio_channel_release(ptr noundef %7) #5
  %channel_temp = getelementptr inbounds %struct.rx51_device_info, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %channel_temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_temp, align 4
  tail call void @iio_channel_release(ptr noundef %9) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rx51_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef %val) #2 align 64 {
entry:
  %val.i.i46 = alloca i32, align 4
  %val.i.i36 = alloca i32, align 4
  %val.i.i21 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #5
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 6, label %entry.sw.epilog_crit_edge
    i32 10, label %sw.bb1
    i32 3, label %sw.bb2
    i32 12, label %sw.bb4
    i32 52, label %sw.bb6
    i32 22, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %channel_vbat.i = getelementptr inbounds %struct.rx51_device_info, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %channel_vbat.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %channel_vbat.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %3 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val.i.i, align 4, !annotation !55
  %call.i.i = call i32 @iio_read_channel_average_raw(ptr noundef %2, ptr noundef nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %rx51_battery_read_adc.exit.thread.i, label %rx51_battery_read_adc.exit.i

rx51_battery_read_adc.exit.thread.i:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  br label %do.end.i

rx51_battery_read_adc.exit.i:                     ; preds = %sw.bb2
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %rx51_battery_read_adc.exit.i.do.end.i_crit_edge, label %if.end.i

rx51_battery_read_adc.exit.i.do.end.i_crit_edge:  ; preds = %rx51_battery_read_adc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %rx51_battery_read_adc.exit.i.do.end.i_crit_edge, %rx51_battery_read_adc.exit.thread.i
  %retval.0.i8.i = phi i32 [ %call.i.i, %rx51_battery_read_adc.exit.thread.i ], [ %5, %rx51_battery_read_adc.exit.i.do.end.i_crit_edge ]
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i8.i) #8
  br label %rx51_battery_read_voltage.exit

if.end.i:                                         ; preds = %rx51_battery_read_adc.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i = mul i32 %5, 10000
  %div.i = sdiv i32 %mul.i, 1705
  %mul1.i = mul nsw i32 %div.i, 1000
  br label %rx51_battery_read_voltage.exit

rx51_battery_read_voltage.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i8.i, %do.end.i ], [ %mul1.i, %if.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp ne i32 %retval.0.i, 0
  %cond = zext i1 %tobool.not to i32
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %channel_vbat.i22 = getelementptr inbounds %struct.rx51_device_info, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %channel_vbat.i22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_vbat.i22, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i21) #5
  %10 = ptrtoint ptr %val.i.i21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i.i21, align 4, !annotation !55
  %call.i.i23 = call i32 @iio_read_channel_average_raw(ptr noundef %9, ptr noundef nonnull %val.i.i21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i23)
  %cmp.i.i24 = icmp slt i32 %call.i.i23, 0
  br i1 %cmp.i.i24, label %rx51_battery_read_adc.exit.thread.i25, label %rx51_battery_read_adc.exit.i27

rx51_battery_read_adc.exit.thread.i25:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i21) #5
  br label %do.end.i29

rx51_battery_read_adc.exit.i27:                   ; preds = %sw.bb4
  %11 = ptrtoint ptr %val.i.i21 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i.i21, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i26 = icmp slt i32 %12, 0
  br i1 %cmp.i26, label %rx51_battery_read_adc.exit.i27.do.end.i29_crit_edge, label %if.end.i33

rx51_battery_read_adc.exit.i27.do.end.i29_crit_edge: ; preds = %rx51_battery_read_adc.exit.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i29

do.end.i29:                                       ; preds = %rx51_battery_read_adc.exit.i27.do.end.i29_crit_edge, %rx51_battery_read_adc.exit.thread.i25
  %retval.0.i8.i28 = phi i32 [ %call.i.i23, %rx51_battery_read_adc.exit.thread.i25 ], [ %12, %rx51_battery_read_adc.exit.i27.do.end.i29_crit_edge ]
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i8.i28) #8
  br label %sw.epilog

if.end.i33:                                       ; preds = %rx51_battery_read_adc.exit.i27
  call void @__sanitizer_cov_trace_pc() #7
  %mul.i30 = mul i32 %12, 10000
  %div.i31 = sdiv i32 %mul.i30, 1705
  %mul1.i32 = mul nsw i32 %div.i31, 1000
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %channel_temp.i = getelementptr inbounds %struct.rx51_device_info, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %channel_temp.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %channel_temp.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i36) #5
  %17 = ptrtoint ptr %val.i.i36 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val.i.i36, align 4, !annotation !55
  %call.i.i37 = call i32 @iio_read_channel_average_raw(ptr noundef %16, ptr noundef nonnull %val.i.i36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i37)
  %cmp.i.i38 = icmp slt i32 %call.i.i37, 0
  br i1 %cmp.i.i38, label %rx51_battery_read_adc.exit.thread.i39, label %rx51_battery_read_adc.exit.i41

rx51_battery_read_adc.exit.thread.i39:            ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i36) #5
  br label %if.end.thread.i

rx51_battery_read_adc.exit.i41:                   ; preds = %sw.bb6
  %18 = ptrtoint ptr %val.i.i36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i.i36, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i40 = icmp slt i32 %19, 0
  br i1 %cmp.i40, label %rx51_battery_read_adc.exit.i41.if.end.thread.i_crit_edge, label %if.end.i42

rx51_battery_read_adc.exit.i41.if.end.thread.i_crit_edge: ; preds = %rx51_battery_read_adc.exit.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %rx51_battery_read_adc.exit.i41.if.end.thread.i_crit_edge, %rx51_battery_read_adc.exit.thread.i39
  %retval.0.i54.i = phi i32 [ %call.i.i37, %rx51_battery_read_adc.exit.thread.i39 ], [ %19, %rx51_battery_read_adc.exit.i41.if.end.thread.i_crit_edge ]
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i54.i) #8
  br label %sw.epilog

if.end.i42:                                       ; preds = %rx51_battery_read_adc.exit.i41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1.i = icmp eq i32 %19, 0
  br i1 %cmp1.i, label %if.end.i42.sw.epilog_crit_edge, label %if.end3.i

if.end.i42.sw.epilog_crit_edge:                   ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end3.i:                                        ; preds = %if.end.i42
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %19)
  %cmp4.i = icmp ugt i32 %19, 1023
  br i1 %cmp4.i, label %if.end3.i.sw.epilog_crit_edge, label %if.end6.i

if.end3.i.sw.epilog_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %19)
  %cmp7.i = icmp ult i32 %19, 25
  br i1 %cmp7.i, label %if.then8.i, label %if.end6.i.while.cond.i_crit_edge

if.end6.i.while.cond.i_crit_edge:                 ; preds = %if.end6.i
  br label %while.cond.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr [25 x i8], ptr @rx51_temp_table1, i32 0, i32 %19
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %23 to i32
  %mul.i43 = mul nuw nsw i32 %conv.i, 10
  br label %sw.epilog

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end6.i.while.cond.i_crit_edge
  %min.0.i = phi i32 [ %min.1.i, %while.body.i.while.cond.i_crit_edge ], [ 0, %if.end6.i.while.cond.i_crit_edge ]
  %max.0.i = phi i32 [ %max.1.i, %while.body.i.while.cond.i_crit_edge ], [ 86, %if.end6.i.while.cond.i_crit_edge ]
  %sub.i = sub i32 %max.0.i, %min.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp10.i = icmp sgt i32 %sub.i, 1
  br i1 %cmp10.i, label %while.body.i, label %while.cond.i.while.end.i_crit_edge

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %add.i = add i32 %max.0.i, %min.0.i
  %div.i44 = sdiv i32 %add.i, 2
  %arrayidx12.i = getelementptr [87 x i16], ptr @rx51_temp_table2, i32 0, i32 %div.i44
  %24 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %arrayidx12.i, align 2
  %conv13.i = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %conv13.i)
  %cmp14.not.i = icmp slt i32 %19, %conv13.i
  %min.1.i = select i1 %cmp14.not.i, i32 %min.0.i, i32 %div.i44
  %max.1.i = select i1 %cmp14.not.i, i32 %div.i44, i32 %max.0.i
  %cmp26.i = icmp eq i32 %19, %conv13.i
  br i1 %cmp26.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %min.2.i = phi i32 [ %min.1.i, %while.body.i.while.end.i_crit_edge ], [ %min.0.i, %while.cond.i.while.end.i_crit_edge ]
  %sub30.i = sub i32 53, %min.2.i
  %mul31.i = mul i32 %sub30.i, 10
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  %channel_bsi.i = getelementptr inbounds %struct.rx51_device_info, ptr %call, i32 0, i32 4
  %26 = ptrtoint ptr %channel_bsi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channel_bsi.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i46) #5
  %28 = ptrtoint ptr %val.i.i46 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %val.i.i46, align 4, !annotation !55
  %call.i.i47 = call i32 @iio_read_channel_average_raw(ptr noundef %27, ptr noundef nonnull %val.i.i46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47)
  %cmp.i.i48 = icmp slt i32 %call.i.i47, 0
  br i1 %cmp.i.i48, label %rx51_battery_read_adc.exit.thread.i49, label %rx51_battery_read_adc.exit.i51

rx51_battery_read_adc.exit.thread.i49:            ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i46) #5
  br label %do.end.i52

rx51_battery_read_adc.exit.i51:                   ; preds = %sw.bb8
  %29 = ptrtoint ptr %val.i.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i.i46, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i50 = icmp slt i32 %30, 0
  br i1 %cmp.i50, label %rx51_battery_read_adc.exit.i51.do.end.i52_crit_edge, label %if.end.i56

rx51_battery_read_adc.exit.i51.do.end.i52_crit_edge: ; preds = %rx51_battery_read_adc.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i52

do.end.i52:                                       ; preds = %rx51_battery_read_adc.exit.i51.do.end.i52_crit_edge, %rx51_battery_read_adc.exit.thread.i49
  %retval.0.i9.i = phi i32 [ %call.i.i47, %rx51_battery_read_adc.exit.thread.i49 ], [ %30, %rx51_battery_read_adc.exit.i51.do.end.i52_crit_edge ]
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i9.i) #8
  br label %sw.epilog

if.end.i56:                                       ; preds = %rx51_battery_read_adc.exit.i51
  call void @__sanitizer_cov_trace_pc() #7
  %mul1.i53 = mul i32 %30, 1536000
  %sub.i54 = sub nsw i32 1024, %30
  %div.i55 = sdiv i32 %mul1.i53, %sub.i54
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i56, %do.end.i52, %while.end.i, %if.then8.i, %if.end3.i.sw.epilog_crit_edge, %if.end.i42.sw.epilog_crit_edge, %if.end.thread.i, %if.end.i33, %do.end.i29, %rx51_battery_read_voltage.exit, %sw.bb1, %entry.sw.epilog_crit_edge
  %retval.0.i57.sink = phi i32 [ %cond, %rx51_battery_read_voltage.exit ], [ 4200000, %sw.bb1 ], [ 2, %entry.sw.epilog_crit_edge ], [ %retval.0.i8.i28, %do.end.i29 ], [ %mul1.i32, %if.end.i33 ], [ %mul.i43, %if.then8.i ], [ %mul31.i, %while.end.i ], [ 2147483647, %if.end.i42.sw.epilog_crit_edge ], [ -2147483648, %if.end3.i.sw.epilog_crit_edge ], [ 2147483647, %if.end.thread.i ], [ %retval.0.i9.i, %do.end.i52 ], [ %div.i55, %if.end.i56 ]
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i57.sink, ptr %val, align 4
  %.off = add i32 %retval.0.i57.sink, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %spec.select = select i1 %switch, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %spec.select, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iio_channel_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_channel_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_channel_average_raw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_rx51_battery__183_278_rx51_battery_driver_init6, !1, !"__initcall__kmod_rx51_battery__183_278_rx51_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/rx51_battery.c", i32 278, i32 1}
!2 = !{ptr @__exitcall_rx51_battery_driver_exit, !1, !"__exitcall_rx51_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias184, !4, !"__UNIQUE_ID_alias184", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/rx51_battery.c", i32 280, i32 1}
!5 = !{ptr @__UNIQUE_ID_author185, !6, !"__UNIQUE_ID_author185", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/rx51_battery.c", i32 281, i32 1}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/rx51_battery.c", i32 282, i32 1}
!9 = !{ptr @__UNIQUE_ID_file187, !10, !"__UNIQUE_ID_file187", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/rx51_battery.c", i32 283, i32 1}
!11 = !{ptr @__UNIQUE_ID_license188, !10, !"__UNIQUE_ID_license188", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/rx51_battery.c", i32 274, i32 11}
!14 = !{ptr @rx51_battery_driver, !15, !"rx51_battery_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/rx51_battery.c", i32 270, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/rx51_battery.c", i32 212, i32 46}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/rx51_battery.c", i32 218, i32 46}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/rx51_battery.c", i32 224, i32 46}
!22 = !{ptr @rx51_battery_props, !23, !"rx51_battery_props", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/rx51_battery.c", i32 182, i32 35}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/rx51_battery.c", i32 46, i32 3}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rx51_battery_read_voltage._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @rx51_battery_read_voltage._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/rx51_battery.c", i32 100, i32 3}
!34 = !{ptr @rx51_battery_read_temperature._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rx51_battery_read_temperature._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @rx51_temp_table1, !37, !"rx51_temp_table1", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/rx51_battery.c", i32 67, i32 11}
!38 = !{ptr @rx51_temp_table2, !39, !"rx51_temp_table2", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/rx51_battery.c", i32 79, i32 12}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/rx51_battery.c", i32 137, i32 3}
!42 = !{ptr @rx51_battery_read_capacity._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @rx51_battery_read_capacity._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @n900_battery_of_match, !45, !"n900_battery_of_match", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/rx51_battery.c", i32 263, i32 34}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
