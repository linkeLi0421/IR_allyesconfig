; ModuleID = '/llk/IR_all_yes/drivers/power/supply/apm_power.c_pt.bc'
source_filename = "../drivers/power/supply/apm_power.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.find_bat_param = type { ptr, ptr, ptr, ptr, %union.power_supply_propval, i32, i32 }
%union.power_supply_propval = type { i32 }
%struct.apm_power_info = type { i8, i8, i8, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }

@apm_get_power_status = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_apm_power__170_371_apm_battery_init6 = internal global ptr @apm_battery_init, section ".initcall6.init", align 4
@__exitcall_apm_battery_exit = internal global ptr @apm_battery_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [57 x i8] c"apm_power.author=Eugeny Boger <eugenyboger@dgap.mipt.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [72 x i8] c"apm_power.description=APM emulation driver for battery monitoring class\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [46 x i8] c"apm_power.file=drivers/power/supply/apm_power\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [22 x i8] c"apm_power.license=GPL\00", section ".modinfo", align 1
@apm_battery_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016APM Battery Driver\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apm_battery_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/power/supply/apm_power.c\00", [63 x i8] zeroinitializer }, align 32
@apm_battery_init._entry_ptr = internal global ptr @apm_battery_init._entry, section ".printk_index", align 4
@apm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @apm_mutex, i64 52), ptr getelementptr (i8, ptr @apm_mutex, i64 52) }, ptr @apm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@main_battery = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"apm_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apm_mutex\00", [22 x i8] zeroinitializer }, align 32
@power_supply_class = external dso_local local_unnamed_addr global ptr, align 4
@calculate_capacity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Unsupported source: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"calculate_capacity\00", [45 x i8] zeroinitializer }, align 32
@calculate_capacity._entry_ptr = internal global ptr @calculate_capacity._entry, section ".printk_index", align 4
@do_calculate_time._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 166, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"do_calculate_time\00", [46 x i8] zeroinitializer }, align 32
@do_calculate_time._entry_ptr = internal global ptr @do_calculate_time._entry, section ".printk_index", align 4
@switch.table.calculate_capacity = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 43, i32 24, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.calculate_capacity.8 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44, i32 25, i32 9], [20 x i8] zeroinitializer }, align 32
@switch.table.calculate_capacity.9 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 41, i32 22, i32 10], [20 x i8] zeroinitializer }, align 32
@switch.table.calculate_capacity.10 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 42, i32 23, i32 11], [20 x i8] zeroinitializer }, align 32
@switch.table.calculate_capacity.11 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 45, i32 26, i32 12], [20 x i8] zeroinitializer }, align 32
@switch.table.calculate_capacity.12 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 27, i32 13], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 43, i32 24, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time.13 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 41, i32 22, i32 10], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time.14 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 44, i32 25, i32 9], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time.15 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 25, i32 25, i32 11], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time.16 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 46, i32 27, i32 13], [20 x i8] zeroinitializer }, align 32
@switch.table.do_calculate_time.17 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 45, i32 26, i32 12], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 360, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"apm_mutex\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"main_battery\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 27, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 26, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 247, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [36 x i8] c"../drivers/power/supply/apm_power.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 166, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [32 x i8] c"switch.table.calculate_capacity\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [34 x i8] c"switch.table.calculate_capacity.8\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [34 x i8] c"switch.table.calculate_capacity.9\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [35 x i8] c"switch.table.calculate_capacity.10\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [35 x i8] c"switch.table.calculate_capacity.11\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [35 x i8] c"switch.table.calculate_capacity.12\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [31 x i8] c"switch.table.do_calculate_time\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [34 x i8] c"switch.table.do_calculate_time.13\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [34 x i8] c"switch.table.do_calculate_time.14\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [34 x i8] c"switch.table.do_calculate_time.15\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [34 x i8] c"switch.table.do_calculate_time.16\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [34 x i8] c"switch.table.do_calculate_time.17\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_apm_battery_exit, ptr @__initcall__kmod_apm_power__170_371_apm_battery_init6, ptr @apm_battery_exit, ptr @apm_battery_init._entry, ptr @apm_battery_init._entry_ptr, ptr @calculate_capacity._entry, ptr @calculate_capacity._entry_ptr, ptr @do_calculate_time._entry, ptr @do_calculate_time._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @apm_mutex, ptr @main_battery, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @switch.table.calculate_capacity, ptr @switch.table.calculate_capacity.8, ptr @switch.table.calculate_capacity.9, ptr @switch.table.calculate_capacity.10, ptr @switch.table.calculate_capacity.11, ptr @switch.table.calculate_capacity.12, ptr @switch.table.do_calculate_time, ptr @switch.table.do_calculate_time.13, ptr @switch.table.do_calculate_time.14, ptr @switch.table.do_calculate_time.15, ptr @switch.table.do_calculate_time.16, ptr @switch.table.do_calculate_time.17], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_battery_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_battery to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @calculate_capacity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_calculate_time._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.calculate_capacity.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.do_calculate_time.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @apm_battery_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @apm_get_power_status to i32))
  store ptr null, ptr @apm_get_power_status, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @apm_battery_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @apm_get_power_status to i32))
  store ptr @apm_battery_apm_get_power_status, ptr @apm_get_power_status, align 4
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @apm_battery_apm_get_power_status(ptr nocapture noundef %info) #3 align 64 {
entry:
  %bp.i = alloca %struct.find_bat_param, align 4
  %status = alloca %union.power_supply_propval, align 4
  %capacity = alloca %union.power_supply_propval, align 4
  %time_to_full = alloca %union.power_supply_propval, align 4
  %time_to_empty = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %capacity) #7
  %1 = ptrtoint ptr %capacity to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %capacity, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_to_full) #7
  %2 = ptrtoint ptr %time_to_full to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %time_to_full, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %time_to_empty) #7
  %3 = ptrtoint ptr %time_to_empty to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %time_to_empty, align 4, !annotation !41
  tail call void @mutex_lock_nested(ptr noundef nonnull @apm_mutex, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bp.i) #7
  %4 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 1
  %5 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 2
  %6 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 3
  %7 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 4
  %8 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 5
  %9 = getelementptr inbounds %struct.find_bat_param, ptr %bp.i, i32 0, i32 6
  %10 = call ptr @memset(ptr %4, i32 0, i32 24)
  store ptr null, ptr @main_battery, align 4
  %11 = ptrtoint ptr %bp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bp.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @power_supply_class to i32))
  %12 = load ptr, ptr @power_supply_class, align 4
  %call.i = call i32 @class_for_each_device(ptr noundef %12, ptr noundef null, ptr noundef nonnull %bp.i, ptr noundef nonnull @__find_main_battery) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bp.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bp.i, align 4
  br label %find_main_battery.exit

if.end.i:                                         ; preds = %entry
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %6, align 4
  %tobool2.not.i = icmp eq ptr %16, null
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pr.i = load ptr, ptr %5, align 4
  %tobool39.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool2.not.i, label %if.else37.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %cmp.not.i = icmp eq ptr %16, %.pr.i
  %or.cond.i = select i1 %tobool39.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.else37.thread.i, label %if.then7.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %call9.i = call i32 @power_supply_get_property(ptr noundef nonnull %.pr.i, i32 noundef 10, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.else18.i

if.then11.i:                                      ; preds = %if.then7.i
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %9, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %8, align 4
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %7, align 4
  %mul.i = mul i32 %23, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %mul.i)
  %cmp13.i = icmp sgt i32 %19, %mul.i
  br i1 %cmp13.i, label %if.then14.i, label %if.else.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %6, align 4
  br label %find_main_battery.exit

if.else.i:                                        ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %5, align 4
  br label %find_main_battery.exit

if.else18.i:                                      ; preds = %if.then7.i
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %6, align 4
  %call21.i = call i32 @power_supply_get_property(ptr noundef %29, i32 noundef 10, ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.else33.i

if.then23.i:                                      ; preds = %if.else18.i
  %30 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %8, align 4
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %9, align 4
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %7, align 4
  %div.i = sdiv i32 %33, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %div.i)
  %cmp27.i = icmp sgt i32 %31, %div.i
  br i1 %cmp27.i, label %if.then28.i, label %if.else30.i

if.then28.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  br label %find_main_battery.exit

if.else30.i:                                      ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %6, align 4
  br label %find_main_battery.exit

if.else33.i:                                      ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %6, align 4
  br label %find_main_battery.exit

if.else37.i:                                      ; preds = %if.end.i
  br i1 %tobool39.not.i, label %if.else47.i, label %if.else37.i.find_main_battery.exit.thread_crit_edge

if.else37.i.find_main_battery.exit.thread_crit_edge: ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %find_main_battery.exit.thread

if.else37.thread.i:                               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %tobool39.not.i, ptr %16, ptr %.pr.i
  br label %find_main_battery.exit.thread

if.else47.i:                                      ; preds = %if.else37.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %4, align 4
  br label %find_main_battery.exit

find_main_battery.exit.thread:                    ; preds = %if.else37.thread.i, %if.else37.i.find_main_battery.exit.thread_crit_edge
  %.sink.i.ph = phi ptr [ %.pr.i, %if.else37.i.find_main_battery.exit.thread_crit_edge ], [ %spec.select, %if.else37.thread.i ]
  store ptr %.sink.i.ph, ptr @main_battery, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp.i) #7
  br label %if.end

find_main_battery.exit:                           ; preds = %if.else47.i, %if.else33.i, %if.else30.i, %if.then28.i, %if.else.i, %if.then14.i, %if.then.i
  %.sink.i = phi ptr [ %41, %if.else33.i ], [ %39, %if.else30.i ], [ %37, %if.then28.i ], [ %25, %if.then14.i ], [ %27, %if.else.i ], [ %43, %if.else47.i ], [ %14, %if.then.i ]
  store ptr %.sink.i, ptr @main_battery, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bp.i) #7
  %tobool.not = icmp eq ptr %.sink.i, null
  br i1 %tobool.not, label %find_main_battery.exit.cleanup_crit_edge, label %find_main_battery.exit.if.end_crit_edge

find_main_battery.exit.if.end_crit_edge:          ; preds = %find_main_battery.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

find_main_battery.exit.cleanup_crit_edge:         ; preds = %find_main_battery.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %find_main_battery.exit.if.end_crit_edge, %find_main_battery.exit.thread
  %.sink.i112 = phi ptr [ %.sink.i.ph, %find_main_battery.exit.thread ], [ %.sink.i, %find_main_battery.exit.if.end_crit_edge ]
  %call = call i32 @power_supply_get_property(ptr noundef nonnull %.sink.i112, i32 noundef 0, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end3.thread

if.end3.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %status, align 4
  br label %if.end9

if.end3:                                          ; preds = %if.end
  %45 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %status, align 4
  %switch.tableidx = add i32 %.pr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %46 = icmp ult i32 %switch.tableidx, 4
  br i1 %46, label %switch.lookup, label %if.end3.if.end9_crit_edge

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

switch.lookup:                                    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %switch.shiftamt = shl i32 %switch.tableidx, 3
  %switch.downshift = lshr i32 16842753, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %if.end3.if.end9_crit_edge, %if.end3.thread
  %storemerge = phi i8 [ %switch.masked, %switch.lookup ], [ 0, %if.end3.if.end9_crit_edge ], [ 0, %if.end3.thread ]
  %47 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %storemerge, ptr %info, align 4
  %48 = load ptr, ptr @main_battery, align 4
  %call10 = call i32 @power_supply_get_property(ptr noundef %48, i32 noundef 47, ptr noundef nonnull %capacity) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %capacity, align 4
  %battery_life = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 3
  %51 = ptrtoint ptr %battery_life to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %battery_life, align 4
  br label %if.end28

if.else13:                                        ; preds = %if.end9
  %call14 = call fastcc i32 @calculate_capacity(i32 noundef 0)
  %battery_life15 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 3
  %52 = ptrtoint ptr %battery_life15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call14, ptr %battery_life15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call14)
  %cmp17 = icmp eq i32 %call14, -1
  br i1 %cmp17, label %if.end21, label %if.else13.if.end28_crit_edge

if.else13.if.end28_crit_edge:                     ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end21:                                         ; preds = %if.else13
  %call19 = call fastcc i32 @calculate_capacity(i32 noundef 1)
  %53 = ptrtoint ptr %battery_life15 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %call19, ptr %battery_life15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp23 = icmp eq i32 %call19, -1
  br i1 %cmp23, label %if.then24, label %if.end21.if.end28_crit_edge

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call25 = call fastcc i32 @calculate_capacity(i32 noundef 2)
  %54 = ptrtoint ptr %battery_life15 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call25, ptr %battery_life15, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21.if.end28_crit_edge, %if.else13.if.end28_crit_edge, %if.then12
  %55 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp29 = icmp eq i32 %56, 1
  br i1 %cmp29, label %if.then48, label %if.else31

if.else31:                                        ; preds = %if.end28
  %battery_life32 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 3
  %57 = ptrtoint ptr %battery_life32 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %battery_life32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %58)
  %cmp33 = icmp sgt i32 %58, 50
  br i1 %cmp33, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %battery_status35 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 1
  %59 = ptrtoint ptr %battery_status35 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %battery_status35, align 1
  br label %if.else59

if.else36:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp38 = icmp sgt i32 %58, 5
  %battery_status40 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 1
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %battery_status40 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %battery_status40, align 1
  br label %if.else59

if.else41:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %battery_status40 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %battery_status40, align 1
  br label %if.else59

if.then48:                                        ; preds = %if.end28
  %battery_status = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 1
  %62 = ptrtoint ptr %battery_status to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 3, ptr %battery_status, align 1
  %battery_flag = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 2
  %63 = ptrtoint ptr %battery_flag to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 3, ptr %battery_flag, align 2
  %units = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 5
  %64 = ptrtoint ptr %units to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %units, align 4
  %65 = load ptr, ptr @main_battery, align 4
  %call49 = call i32 @power_supply_get_property(ptr noundef %65, i32 noundef 63, ptr noundef nonnull %time_to_full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then48.if.then54_crit_edge, label %lor.lhs.false51

if.then48.if.then54_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

lor.lhs.false51:                                  ; preds = %if.then48
  %66 = load ptr, ptr @main_battery, align 4
  %call52 = call i32 @power_supply_get_property(ptr noundef %66, i32 noundef 62, ptr noundef nonnull %time_to_full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %lor.lhs.false51.if.then54_crit_edge, label %if.else55

lor.lhs.false51.if.then54_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false51.if.then54_crit_edge, %if.then48.if.then54_crit_edge
  %67 = ptrtoint ptr %time_to_full to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %time_to_full, align 4
  %div = sdiv i32 %68, 60
  br label %if.end72

if.else55:                                        ; preds = %lor.lhs.false51
  %69 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %status, align 4
  %call.i98 = call fastcc i32 @do_calculate_time(i32 noundef %70, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i98)
  %cmp.not.i99 = icmp eq i32 %call.i98, -1
  br i1 %cmp.not.i99, label %if.end.i100, label %if.else55.if.end72_crit_edge

if.else55.if.end72_crit_edge:                     ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i100:                                      ; preds = %if.else55
  %call1.i = call fastcc i32 @do_calculate_time(i32 noundef %70, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.not.i = icmp eq i32 %call1.i, -1
  br i1 %cmp2.not.i, label %if.end4.i, label %if.end.i100.if.end72_crit_edge

if.end.i100.if.end72_crit_edge:                   ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end4.i:                                        ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i = call fastcc i32 @do_calculate_time(i32 noundef %70, i32 noundef 2) #7
  br label %if.end72

if.else59:                                        ; preds = %if.else41, %if.then39, %if.then34
  %battery_status46114 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 1
  %71 = ptrtoint ptr %battery_status46114 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %battery_status46114, align 1
  %battery_flag115 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 2
  %73 = ptrtoint ptr %battery_flag115 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %battery_flag115, align 2
  %units116 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 5
  %74 = ptrtoint ptr %units116 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %units116, align 4
  %75 = load ptr, ptr @main_battery, align 4
  %call60 = call i32 @power_supply_get_property(ptr noundef %75, i32 noundef 61, ptr noundef nonnull %time_to_empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else59.if.then65_crit_edge, label %lor.lhs.false62

if.else59.if.then65_crit_edge:                    ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

lor.lhs.false62:                                  ; preds = %if.else59
  %76 = load ptr, ptr @main_battery, align 4
  %call63 = call i32 @power_supply_get_property(ptr noundef %76, i32 noundef 60, ptr noundef nonnull %time_to_empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %lor.lhs.false62.if.then65_crit_edge, label %if.else68

lor.lhs.false62.if.then65_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false62.if.then65_crit_edge, %if.else59.if.then65_crit_edge
  %77 = ptrtoint ptr %time_to_empty to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %time_to_empty, align 4
  %div66 = sdiv i32 %78, 60
  br label %if.end72

if.else68:                                        ; preds = %lor.lhs.false62
  %79 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %status, align 4
  %call.i101 = call fastcc i32 @do_calculate_time(i32 noundef %80, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i101)
  %cmp.not.i102 = icmp eq i32 %call.i101, -1
  br i1 %cmp.not.i102, label %if.end.i105, label %if.else68.if.end72_crit_edge

if.else68.if.end72_crit_edge:                     ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end.i105:                                      ; preds = %if.else68
  %call1.i103 = call fastcc i32 @do_calculate_time(i32 noundef %80, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i103)
  %cmp2.not.i104 = icmp eq i32 %call1.i103, -1
  br i1 %cmp2.not.i104, label %if.end4.i107, label %if.end.i105.if.end72_crit_edge

if.end.i105.if.end72_crit_edge:                   ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.end4.i107:                                     ; preds = %if.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  %call5.i106 = call fastcc i32 @do_calculate_time(i32 noundef %80, i32 noundef 2) #7
  br label %if.end72

if.end72:                                         ; preds = %if.end4.i107, %if.end.i105.if.end72_crit_edge, %if.else68.if.end72_crit_edge, %if.then65, %if.end4.i, %if.end.i100.if.end72_crit_edge, %if.else55.if.end72_crit_edge, %if.then54
  %div66.sink = phi i32 [ %div66, %if.then65 ], [ %div, %if.then54 ], [ %call.i98, %if.else55.if.end72_crit_edge ], [ %call1.i, %if.end.i100.if.end72_crit_edge ], [ %call5.i, %if.end4.i ], [ %call.i101, %if.else68.if.end72_crit_edge ], [ %call1.i103, %if.end.i105.if.end72_crit_edge ], [ %call5.i106, %if.end4.i107 ]
  %time67 = getelementptr inbounds %struct.apm_power_info, ptr %info, i32 0, i32 4
  %81 = ptrtoint ptr %time67 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %div66.sink, ptr %time67, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %find_main_battery.exit.cleanup_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @apm_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_to_empty) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %time_to_full) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %capacity) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_property(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calculate_capacity(i32 noundef %source) unnamed_addr #3 align 64 {
entry:
  %empty = alloca %union.power_supply_propval, align 4
  %full = alloca %union.power_supply_propval, align 4
  %cur = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %empty) #7
  %0 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %empty, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %full) #7
  %1 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %full, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #7
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cur, align 4, !annotation !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %3 = icmp ult i32 %source, 3
  br i1 %3, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %source) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity, i32 0, i32 %source
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep47 = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity.8, i32 0, i32 %source
  %5 = ptrtoint ptr %switch.gep47 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load48 = load i32, ptr %switch.gep47, align 4
  %switch.gep49 = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity.9, i32 0, i32 %source
  %6 = ptrtoint ptr %switch.gep49 to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load50 = load i32, ptr %switch.gep49, align 4
  %switch.gep51 = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity.10, i32 0, i32 %source
  %7 = ptrtoint ptr %switch.gep51 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load52 = load i32, ptr %switch.gep51, align 4
  %switch.gep53 = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity.11, i32 0, i32 %source
  %8 = ptrtoint ptr %switch.gep53 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load54 = load i32, ptr %switch.gep53, align 4
  %switch.gep55 = getelementptr inbounds [3 x i32], ptr @switch.table.calculate_capacity.12, i32 0, i32 %source
  %9 = ptrtoint ptr %switch.gep55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load56 = load i32, ptr %switch.gep55, align 4
  %10 = load ptr, ptr @main_battery, align 4
  %call3 = call i32 @power_supply_get_property(ptr noundef %10, i32 noundef %switch.load, ptr noundef nonnull %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %switch.lookup.if.end7_crit_edge, label %if.then

switch.lookup.if.end7_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then:                                          ; preds = %switch.lookup
  %11 = load ptr, ptr @main_battery, align 4
  %call4 = call i32 @power_supply_get_property(ptr noundef %11, i32 noundef %switch.load50, ptr noundef nonnull %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then.if.end7_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %switch.lookup.if.end7_crit_edge
  %12 = load ptr, ptr @main_battery, align 4
  %call8 = call i32 @power_supply_get_property(ptr noundef %12, i32 noundef %switch.load56, ptr noundef nonnull %cur) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end7.if.end15_crit_edge, label %if.then10

if.end7.if.end15_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr @main_battery, align 4
  %call11 = call i32 @power_supply_get_property(ptr noundef %13, i32 noundef %switch.load54, ptr noundef nonnull %cur) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.if.end15_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then10.if.end15_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.end15:                                         ; preds = %if.then10.if.end15_crit_edge, %if.end7.if.end15_crit_edge
  %14 = load ptr, ptr @main_battery, align 4
  %call16 = call i32 @power_supply_get_property(ptr noundef %14, i32 noundef %switch.load48, ptr noundef nonnull %empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.if.end23_crit_edge, label %if.then18

if.end15.if.end23_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then18:                                        ; preds = %if.end15
  %15 = load ptr, ptr @main_battery, align 4
  %call19 = call i32 @power_supply_get_property(ptr noundef %15, i32 noundef %switch.load52, ptr noundef nonnull %empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end23_crit_edge, label %if.then21

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %empty, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then18.if.end23_crit_edge, %if.end15.if.end23_crit_edge
  %17 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %full, align 4
  %19 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %empty, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %tobool24.not = icmp eq i32 %18, %20
  br i1 %tobool24.not, label %if.end23.cleanup_crit_edge, label %if.then25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %18, %20
  %21 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur, align 4
  %sub26 = sub i32 %22, %20
  %mul = mul i32 %sub26, 100
  %div = sdiv i32 %mul, %sub
  %23 = call i32 @llvm.smax.i32(i32 %div, i32 0)
  %24 = call i32 @llvm.smin.i32(i32 %23, i32 100)
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end23.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.then.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %if.then.cleanup_crit_edge ], [ -1, %if.then10.cleanup_crit_edge ], [ -1, %if.end23.cleanup_crit_edge ], [ %24, %if.then25 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %full) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %empty) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @class_for_each_device(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__find_main_battery(ptr nocapture noundef readonly %dev, ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bat = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %bat to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %bat, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %use_for_apm = getelementptr inbounds %struct.power_supply_desc, ptr %4, i32 0, i32 12
  %5 = ptrtoint ptr %use_for_apm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %use_for_apm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %data, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %full = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 4
  %call4 = tail call i32 @power_supply_get_property(ptr noundef %1, i32 noundef 22, ptr noundef %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end.if.then10_crit_edge, label %lor.lhs.false

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false:                                    ; preds = %if.end
  %8 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bat, align 4
  %call8 = tail call i32 @power_supply_get_property(ptr noundef %9, i32 noundef 24, ptr noundef %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false.if.then10_crit_edge, label %if.else

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %if.end.if.then10_crit_edge
  %10 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %full, align 4
  %max_charge = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 5
  %12 = ptrtoint ptr %max_charge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max_charge, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp = icmp sgt i32 %11, %13
  br i1 %cmp, label %if.then12, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then12:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bat, align 4
  %max_charge_bat = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 2
  %16 = ptrtoint ptr %max_charge_bat to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %max_charge_bat, align 4
  %17 = ptrtoint ptr %max_charge to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %11, ptr %max_charge, align 4
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bat, align 4
  %call19 = tail call i32 @power_supply_get_property(ptr noundef %19, i32 noundef 41, ptr noundef %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.else.if.then26_crit_edge, label %lor.lhs.false21

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

lor.lhs.false21:                                  ; preds = %if.else
  %20 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %bat, align 4
  %call24 = tail call i32 @power_supply_get_property(ptr noundef %21, i32 noundef 43, ptr noundef %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %lor.lhs.false21.if.then26_crit_edge, label %lor.lhs.false21.cleanup_crit_edge

lor.lhs.false21.cleanup_crit_edge:                ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false21.if.then26_crit_edge:              ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false21.if.then26_crit_edge, %if.else.if.then26_crit_edge
  %22 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %full, align 4
  %max_energy = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 6
  %24 = ptrtoint ptr %max_energy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %max_energy, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp28 = icmp sgt i32 %23, %25
  br i1 %cmp28, label %if.then29, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %bat to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bat, align 4
  %max_energy_bat = getelementptr inbounds %struct.find_bat_param, ptr %data, i32 0, i32 3
  %28 = ptrtoint ptr %max_energy_bat to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %max_energy_bat, align 4
  %29 = ptrtoint ptr %max_energy to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %max_energy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then29, %if.then26.cleanup_crit_edge, %lor.lhs.false21.cleanup_crit_edge, %if.then12, %if.then10.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %lor.lhs.false21.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %if.then26.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %if.then12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @do_calculate_time(i32 noundef %status, i32 noundef %source) unnamed_addr #3 align 64 {
entry:
  %full = alloca %union.power_supply_propval, align 4
  %empty = alloca %union.power_supply_propval, align 4
  %cur = alloca %union.power_supply_propval, align 4
  %I = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %full) #7
  %0 = ptrtoint ptr %full to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %full, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %empty) #7
  %1 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %empty, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cur) #7
  %2 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cur, align 4, !annotation !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %I) #7
  %3 = ptrtoint ptr %I to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %I, align 4, !annotation !41
  %4 = load ptr, ptr @main_battery, align 4
  %call = call i32 @power_supply_get_property(ptr noundef %4, i32 noundef 18, ptr noundef nonnull %I) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr @main_battery, align 4
  %call1 = call i32 @power_supply_get_property(ptr noundef %5, i32 noundef 17, ptr noundef nonnull %I) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %6 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %I, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %source)
  %8 = icmp ult i32 %source, 3
  br i1 %8, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %source) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end7
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time, i32 0, i32 %source
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep50 = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time.13, i32 0, i32 %source
  %10 = ptrtoint ptr %switch.gep50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load51 = load i32, ptr %switch.gep50, align 4
  %switch.gep52 = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time.14, i32 0, i32 %source
  %11 = ptrtoint ptr %switch.gep52 to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load53 = load i32, ptr %switch.gep52, align 4
  %switch.gep54 = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time.15, i32 0, i32 %source
  %12 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  %switch.gep56 = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time.16, i32 0, i32 %source
  %13 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  %switch.gep58 = getelementptr inbounds [3 x i32], ptr @switch.table.do_calculate_time.17, i32 0, i32 %source
  %14 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  %15 = load ptr, ptr @main_battery, align 4
  %call11 = call i32 @power_supply_get_property(ptr noundef %15, i32 noundef %switch.load, ptr noundef nonnull %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %switch.lookup.if.end18_crit_edge, label %if.then13

switch.lookup.if.end18_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then13:                                        ; preds = %switch.lookup
  %16 = load ptr, ptr @main_battery, align 4
  %call14 = call i32 @power_supply_get_property(ptr noundef %16, i32 noundef %switch.load51, ptr noundef nonnull %full) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end18:                                         ; preds = %if.then13.if.end18_crit_edge, %switch.lookup.if.end18_crit_edge
  %17 = load ptr, ptr @main_battery, align 4
  %call19 = call i32 @power_supply_get_property(ptr noundef %17, i32 noundef %switch.load53, ptr noundef nonnull %empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end26_crit_edge, label %if.then21

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %18 = load ptr, ptr @main_battery, align 4
  %call22 = call i32 @power_supply_get_property(ptr noundef %18, i32 noundef %switch.load55, ptr noundef nonnull %empty) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.then21.if.end26_crit_edge, label %if.then24

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %empty to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %empty, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.then21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %20 = load ptr, ptr @main_battery, align 4
  %call27 = call i32 @power_supply_get_property(ptr noundef %20, i32 noundef %switch.load57, ptr noundef nonnull %cur) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end26.if.end34_crit_edge, label %if.then29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then29:                                        ; preds = %if.end26
  %21 = load ptr, ptr @main_battery, align 4
  %call30 = call i32 @power_supply_get_property(ptr noundef %21, i32 noundef %switch.load59, ptr noundef nonnull %cur) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then29.if.end34_crit_edge, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then29.if.end34_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.end34:                                         ; preds = %if.then29.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  %22 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur, align 4
  br i1 %cmp, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %full, align 4
  %sub = sub i32 %23, %25
  %mul = mul i32 %sub, 60
  %26 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %I, align 4
  %div = sdiv i32 %mul, %27
  br label %cleanup

if.else:                                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %empty to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %empty, align 4
  %sub36 = sub i32 %23, %29
  %mul37.neg = mul i32 %sub36, -60
  %30 = ptrtoint ptr %I to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %I, align 4
  %div39 = sdiv i32 %mul37.neg, %31
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then35, %if.then29.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %div, %if.then35 ], [ %div39, %if.else ], [ -1, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -1, %if.then13.cleanup_crit_edge ], [ -1, %if.then29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %I) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cur) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %empty) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %full) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_apm_power__170_371_apm_battery_init6, !1, !"__initcall__kmod_apm_power__170_371_apm_battery_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/apm_power.c", i32 371, i32 1}
!2 = !{ptr @__exitcall_apm_battery_exit, !3, !"__exitcall_apm_battery_exit", i1 false, i1 false}
!3 = !{!"../drivers/power/supply/apm_power.c", i32 372, i32 1}
!4 = !{ptr @__UNIQUE_ID_author171, !5, !"__UNIQUE_ID_author171", i1 false, i1 false}
!5 = !{!"../drivers/power/supply/apm_power.c", i32 374, i32 1}
!6 = !{ptr @__UNIQUE_ID_description172, !7, !"__UNIQUE_ID_description172", i1 false, i1 false}
!7 = !{!"../drivers/power/supply/apm_power.c", i32 375, i32 1}
!8 = !{ptr @__UNIQUE_ID_file173, !9, !"__UNIQUE_ID_file173", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/apm_power.c", i32 376, i32 1}
!10 = !{ptr @__UNIQUE_ID_license174, !9, !"__UNIQUE_ID_license174", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/apm_power.c", i32 360, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @apm_battery_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @apm_battery_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/apm_power.c", i32 26, i32 8}
!19 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @apm_mutex, !18, !"apm_mutex", i1 false, i1 false}
!21 = !{ptr @main_battery, !22, !"main_battery", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/apm_power.c", i32 27, i32 29}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/apm_power.c", i32 247, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @calculate_capacity._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @calculate_capacity._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/apm_power.c", i32 166, i32 3}
!30 = !{ptr @do_calculate_time._entry, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @do_calculate_time._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"auto-init"}
