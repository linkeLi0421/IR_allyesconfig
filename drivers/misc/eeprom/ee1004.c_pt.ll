; ModuleID = '/llk/IR_all_yes/drivers/misc/eeprom/ee1004.c_pt.bc'
source_filename = "../drivers/misc/eeprom/ee1004.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ee1004__290_243_ee1004_driver_init6 = internal global ptr @ee1004_driver_init, section ".initcall6.init", align 4
@ee1004_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ee1004_remove, ptr @ee1004_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ee1004_groups, ptr null, ptr null, ptr null }, ptr @ee1004_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ee1004_driver_exit = internal global ptr @ee1004_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description291 = internal constant [64 x i8] c"ee1004.description=Driver for EE1004-compliant DDR4 SPD EEPROMs\00", section ".modinfo", align 1
@__UNIQUE_ID_author292 = internal constant [27 x i8] c"ee1004.author=Jean Delvare\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [39 x i8] c"ee1004.file=drivers/misc/eeprom/ee1004\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [19 x i8] c"ee1004.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ee1004\00", [25 x i8] zeroinitializer }, align 32
@ee1004_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ee1004_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ee1004_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ee1004\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ee1004_bus_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ee1004_bus_lock, i64 52), ptr getelementptr (i8, ptr @ee1004_bus_lock, i64 52) }, ptr @ee1004_bus_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ee1004_bus_lock.wait_lock\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ee1004_bus_lock\00", [16 x i8] zeroinitializer }, align 32
@ee1004_dev_count = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ee1004_set_page = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@ee1004_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ee1004_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/misc/eeprom/ee1004.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Currently selected page: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@ee1004_current_page = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ee1004_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 203, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Driver only supports devices on a single I2C bus\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ee1004_probe._entry_ptr = internal global ptr @ee1004_probe._entry, section ".printk_index", align 4
@ee1004_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 211, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%u byte EE1004-compliant SPD EEPROM, read-only\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ee1004_probe._entry_ptr.12 = internal global ptr @ee1004_probe._entry.9, section ".printk_index", align 4
@ee1004_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr null, ptr @ee1004_attrs }, [44 x i8] zeroinitializer }, align 32
@ee1004_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bin_attr_eeprom, ptr null], [24 x i8] zeroinitializer }, align 32
@bin_attr_eeprom = internal global { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 512, ptr null, ptr null, ptr @eeprom_read, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eeprom\00", [25 x i8] zeroinitializer }, align 32
@ee1004_set_current_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 91, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to select page %d (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ee1004_set_current_page\00", [40 x i8] zeroinitializer }, align 32
@ee1004_set_current_page._entry_ptr = internal global ptr @ee1004_set_current_page._entry, section ".printk_index", align 4
@ee1004_set_current_page.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Selected page %d\0A\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"ee1004_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 234, i32 26 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 236, i32 11 }
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"ee1004_groups\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [11 x i8] c"ee1004_ids\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 49, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant [16 x i8] c"ee1004_bus_lock\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 44, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"ee1004_dev_count\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 46, i32 21 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"ee1004_set_page\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 45, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 199, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"ee1004_current_page\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 47, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 202, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 209, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [13 x i8] c"ee1004_group\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 159, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ee1004_attrs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 154, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"bin_attr_eeprom\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 152, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 91, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [32 x i8] c"../drivers/misc/eeprom/ee1004.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 95, i32 2 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ee1004_driver_exit, ptr @__initcall__kmod_ee1004__290_243_ee1004_driver_init6, ptr @ee1004_driver_exit, ptr @ee1004_probe._entry, ptr @ee1004_probe._entry.9, ptr @ee1004_probe._entry_ptr, ptr @ee1004_probe._entry_ptr.12, ptr @ee1004_set_current_page._entry, ptr @ee1004_set_current_page._entry_ptr, ptr @ee1004_driver, ptr @.str, ptr @ee1004_groups, ptr @ee1004_ids, ptr @ee1004_bus_lock, ptr @.str.1, ptr @.str.2, ptr @ee1004_dev_count, ptr @ee1004_set_page, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ee1004_current_page, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @ee1004_group, ptr @ee1004_attrs, ptr @bin_attr_eeprom, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_bus_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_dev_count to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_set_page to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_current_page to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_eeprom to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ee1004_set_current_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ee1004_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ee1004_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ee1004_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ee1004_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ee1004_remove(ptr nocapture noundef readnone %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ee1004_bus_lock, i32 noundef 0) #5
  %0 = load i32, ptr @ee1004_dev_count, align 4
  %dec.i = add i32 %0, -1
  store i32 %dec.i, ptr @ee1004_dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %while.body.i.preheader, label %entry.ee1004_cleanup.exit_crit_edge

entry.ee1004_cleanup.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %ee1004_cleanup.exit

while.body.i.preheader:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr getelementptr inbounds ([2 x ptr], ptr @ee1004_set_page, i32 0, i32 1), align 4
  tail call void @i2c_unregister_device(ptr noundef %1) #5
  store ptr null, ptr getelementptr inbounds ([2 x ptr], ptr @ee1004_set_page, i32 0, i32 1), align 4
  %2 = load ptr, ptr @ee1004_set_page, align 4
  tail call void @i2c_unregister_device(ptr noundef %2) #5
  store ptr null, ptr @ee1004_set_page, align 4
  br label %ee1004_cleanup.exit

ee1004_cleanup.exit:                              ; preds = %while.body.i.preheader, %entry.ee1004_cleanup.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ee1004_bus_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ee1004_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 67502080
  call void @__sanitizer_cov_trace_const_cmp4(i32 67502080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 67502080
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %algo.i.i56 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %algo.i.i56 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %algo.i.i56, align 8
  %functionality.i.i57 = getelementptr inbounds %struct.i2c_algorithm, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %functionality.i.i57 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functionality.i.i57, align 4
  %call.i.i58 = tail call i32 %11(ptr noundef %7) #5
  %and.i59 = and i32 %call.i.i58, 917504
  call void @__sanitizer_cov_trace_const_cmp4(i32 917504, i32 %and.i59)
  %cmp.i60.not = icmp eq i32 %and.i59, 917504
  br i1 %cmp.i60.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup39_crit_edge

land.lhs.true.cleanup39_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup39

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @ee1004_bus_lock, i32 noundef 0) #5
  %12 = load i32, ptr @ee1004_dev_count, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr @ee1004_dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  %13 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter, align 8
  br i1 %cmp, label %for.body.preheader, label %if.else

for.body.preheader:                               ; preds = %if.end
  %call7 = tail call ptr @i2c_new_dummy_device(ptr noundef %14, i16 noundef zeroext 54) #5
  %cmp.i62 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %for.body.preheader.cleanup_crit_edge, label %for.inc

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  %cnr.071.lcssa = phi i32 [ 0, %for.body.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  %call7.lcssa = phi ptr [ %call7, %for.body.preheader.cleanup_crit_edge ], [ %call7.1, %for.inc.cleanup_crit_edge ]
  %15 = ptrtoint ptr %call7.lcssa to i32
  br label %err_clients

for.inc:                                          ; preds = %for.body.preheader
  store ptr %call7, ptr @ee1004_set_page, align 4
  %16 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adapter, align 8
  %call7.1 = tail call ptr @i2c_new_dummy_device(ptr noundef %17, i16 noundef zeroext 55) #5
  %cmp.i62.1 = icmp ugt ptr %call7.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62.1, label %for.inc.cleanup_crit_edge, label %for.inc.1

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.1:                                        ; preds = %for.inc
  store ptr %call7.1, ptr getelementptr inbounds ([2 x ptr], ptr @ee1004_set_page, i32 0, i32 1), align 4
  %18 = load ptr, ptr @ee1004_set_page, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.i)
  %cmp.i63 = icmp eq i32 %call.i, -6
  %19 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  %retval.0.i64 = select i1 %cmp.i63, i32 1, i32 %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64)
  %cmp14 = icmp slt i32 %retval.0.i64, 0
  br i1 %cmp14, label %for.inc.1.err_clients_crit_edge, label %do.body

for.inc.1.err_clients_crit_edge:                  ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_clients

do.body:                                          ; preds = %for.inc.1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ee1004_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ee1004_probe, %if.then22)) #5
          to label %do.end [label %if.then22], !srcloc !67

if.then22:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ee1004_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i64) #5
  br label %do.end

do.end:                                           ; preds = %if.then22, %do.body
  store i32 %retval.0.i64, ptr @ee1004_current_page, align 4
  br label %if.end34

if.else:                                          ; preds = %if.end
  %20 = load ptr, ptr @ee1004_set_page, align 4
  %adapter25 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %adapter25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter25, align 8
  %cmp26.not = icmp eq ptr %14, %22
  br i1 %cmp26.not, label %if.else.if.end34_crit_edge, label %err_clients.thread

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

err_clients.thread:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.6) #8
  %23 = load i32, ptr @ee1004_dev_count, align 4
  %dec.i76 = add i32 %23, -1
  store i32 %dec.i76, ptr @ee1004_dev_count, align 4
  br label %ee1004_cleanup.exit

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %do.end
  tail call void @mutex_unlock(ptr noundef nonnull @ee1004_bus_lock) #5
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.10, i32 noundef 512) #8
  br label %cleanup39

err_clients:                                      ; preds = %for.inc.1.err_clients_crit_edge, %cleanup
  %cnr.1 = phi i32 [ %cnr.071.lcssa, %cleanup ], [ 2, %for.inc.1.err_clients_crit_edge ]
  %err.2 = phi i32 [ %15, %cleanup ], [ %19, %for.inc.1.err_clients_crit_edge ]
  %24 = load i32, ptr @ee1004_dev_count, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr @ee1004_dev_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i65 = icmp eq i32 %dec.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnr.1)
  %cmp27.i = icmp ne i32 %cnr.1, 0
  %or.cond.i = and i1 %cmp27.i, %cmp.i65
  br i1 %or.cond.i, label %while.body.i, label %err_clients.ee1004_cleanup.exit_crit_edge

err_clients.ee1004_cleanup.exit_crit_edge:        ; preds = %err_clients
  call void @__sanitizer_cov_trace_pc() #7
  br label %ee1004_cleanup.exit

while.body.i:                                     ; preds = %err_clients
  %dec18.i = add nsw i32 %cnr.1, -1
  %arrayidx.i = getelementptr [2 x ptr], ptr @ee1004_set_page, i32 0, i32 %dec18.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %26) #5
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec18.i)
  %cmp2.i.not = icmp eq i32 %dec18.i, 0
  br i1 %cmp2.i.not, label %while.body.i.ee1004_cleanup.exit_crit_edge, label %while.body.i.1

while.body.i.ee1004_cleanup.exit_crit_edge:       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ee1004_cleanup.exit

while.body.i.1:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %dec18.i.1 = add nsw i32 %cnr.1, -2
  %arrayidx.i.1 = getelementptr [2 x ptr], ptr @ee1004_set_page, i32 0, i32 %dec18.i.1
  %28 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.1, align 4
  tail call void @i2c_unregister_device(ptr noundef %29) #5
  %30 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i.1, align 4
  br label %ee1004_cleanup.exit

ee1004_cleanup.exit:                              ; preds = %while.body.i.1, %while.body.i.ee1004_cleanup.exit_crit_edge, %err_clients.ee1004_cleanup.exit_crit_edge, %err_clients.thread
  %err.280 = phi i32 [ -95, %err_clients.thread ], [ %err.2, %err_clients.ee1004_cleanup.exit_crit_edge ], [ %err.2, %while.body.i.1 ], [ %err.2, %while.body.i.ee1004_cleanup.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ee1004_bus_lock) #5
  br label %cleanup39

cleanup39:                                        ; preds = %ee1004_cleanup.exit, %if.end34, %land.lhs.true.cleanup39_crit_edge
  %retval.0 = phi i32 [ %err.280, %ee1004_cleanup.exit ], [ 0, %if.end34 ], [ -96, %land.lhs.true.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eeprom_read(ptr nocapture noundef readnone %filp, ptr noundef %kobj, ptr nocapture noundef readnone %bin_attr, ptr noundef %buf, i64 noundef %off, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %kobj, i32 -32
  tail call void @mutex_lock_nested(ptr noundef nonnull @ee1004_bus_lock, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not17 = icmp eq i32 %count, 0
  br i1 %tobool.not17, label %entry.out.thread_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %count.addr.022 = phi i32 [ %sub, %if.end.while.body_crit_edge ], [ %count, %entry.while.body_crit_edge ]
  %off.addr.020 = phi i64 [ %add, %if.end.while.body_crit_edge ], [ %off, %entry.while.body_crit_edge ]
  %buf.addr.018 = phi ptr [ %add.ptr, %if.end.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %conv = trunc i64 %off.addr.020 to i32
  %shr.i = lshr i32 %conv, 8
  %call.i = tail call fastcc i32 @ee1004_set_current_page(ptr noundef %kobj, i32 noundef %shr.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %while.body.ee1004_eeprom_read.exit_crit_edge

while.body.ee1004_eeprom_read.exit_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %ee1004_eeprom_read.exit

if.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %conv, 255
  %add.i = add i32 %and.i, %count.addr.022
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %cmp.i = icmp ugt i32 %add.i, 256
  %sub.i = sub nuw nsw i32 256, %and.i
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %count.addr.022
  %0 = tail call i32 @llvm.umin.i32(i32 %spec.select.i, i32 32) #5
  %conv.i = trunc i64 %off.addr.020 to i8
  %conv6.i = trunc i32 %0 to i8
  %call7.i = tail call i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef %add.ptr.i, i8 noundef zeroext %conv.i, i8 noundef zeroext %conv6.i, ptr noundef %buf.addr.018) #5
  br label %ee1004_eeprom_read.exit

ee1004_eeprom_read.exit:                          ; preds = %if.end.i, %while.body.ee1004_eeprom_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call7.i, %if.end.i ], [ %call.i, %while.body.ee1004_eeprom_read.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %ee1004_eeprom_read.exit.out.thread_crit_edge, label %if.end

ee1004_eeprom_read.exit.out.thread_crit_edge:     ; preds = %ee1004_eeprom_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

if.end:                                           ; preds = %ee1004_eeprom_read.exit
  %add.ptr = getelementptr i8, ptr %buf.addr.018, i32 %retval.0.i
  %conv316 = zext i32 %retval.0.i to i64
  %add = add i64 %off.addr.020, %conv316
  %sub = sub i32 %count.addr.022, %retval.0.i
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %if.end.out.thread_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.out.thread_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out.thread

out.thread:                                       ; preds = %if.end.out.thread_crit_edge, %ee1004_eeprom_read.exit.out.thread_crit_edge, %entry.out.thread_crit_edge
  %1 = phi i32 [ %count, %entry.out.thread_crit_edge ], [ %count, %if.end.out.thread_crit_edge ], [ %retval.0.i, %ee1004_eeprom_read.exit.out.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @ee1004_bus_lock) #5
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ee1004_set_current_page(ptr noundef %dev, i32 noundef %page) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ee1004_current_page, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %page)
  %cmp = icmp eq i32 %0, %page
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [2 x ptr], ptr @ee1004_set_page, i32 0, i32 %page
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @i2c_smbus_write_byte(ptr noundef %2, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call)
  %cmp1 = icmp eq i32 %call, -6
  br i1 %cmp1, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %3 = load ptr, ptr @ee1004_set_page, align 4
  %call.i = tail call i32 @i2c_smbus_read_byte(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, -6
  %4 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #5
  %retval.0.i26 = select i1 %cmp.i, i32 1, i32 %4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i26, i32 %page)
  %cmp3 = icmp eq i32 %retval.0.i26, %page
  br i1 %cmp3, label %land.lhs.true.do.body9_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.do.body9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp slt i32 %call, 0
  br i1 %cmp6, label %if.end5.do.end_crit_edge, label %if.end5.do.body9_crit_edge

if.end5.do.body9_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %page, i32 noundef %call) #8
  br label %cleanup

do.body9:                                         ; preds = %if.end5.do.body9_crit_edge, %land.lhs.true.do.body9_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ee1004_set_current_page.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ee1004_set_current_page, %if.then13)) #5
          to label %do.end16 [label %if.then13], !srcloc !67

if.then13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ee1004_set_current_page.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %page) #5
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body9
  store i32 %page, ptr @ee1004_current_page, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %do.end16 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !45, !47, !48, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_ee1004__290_243_ee1004_driver_init6, !1, !"__initcall__kmod_ee1004__290_243_ee1004_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/misc/eeprom/ee1004.c", i32 243, i32 1}
!2 = !{ptr @__exitcall_ee1004_driver_exit, !1, !"__exitcall_ee1004_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description291, !4, !"__UNIQUE_ID_description291", i1 false, i1 false}
!4 = !{!"../drivers/misc/eeprom/ee1004.c", i32 245, i32 1}
!5 = !{ptr @__UNIQUE_ID_author292, !6, !"__UNIQUE_ID_author292", i1 false, i1 false}
!6 = !{!"../drivers/misc/eeprom/ee1004.c", i32 246, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/misc/eeprom/ee1004.c", i32 247, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/misc/eeprom/ee1004.c", i32 236, i32 11}
!12 = !{ptr @ee1004_driver, !13, !"ee1004_driver", i1 false, i1 false}
!13 = !{!"../drivers/misc/eeprom/ee1004.c", i32 234, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/misc/eeprom/ee1004.c", i32 44, i32 8}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ee1004_bus_lock, !15, !"ee1004_bus_lock", i1 false, i1 false}
!18 = !{ptr @ee1004_dev_count, !19, !"ee1004_dev_count", i1 false, i1 false}
!19 = !{!"../drivers/misc/eeprom/ee1004.c", i32 46, i32 21}
!20 = !{ptr @ee1004_set_page, !21, !"ee1004_set_page", i1 false, i1 false}
!21 = !{!"../drivers/misc/eeprom/ee1004.c", i32 45, i32 27}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/misc/eeprom/ee1004.c", i32 199, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ee1004_probe.__UNIQUE_ID_ddebug289, !23, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/misc/eeprom/ee1004.c", i32 202, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ee1004_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @ee1004_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/misc/eeprom/ee1004.c", i32 209, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ee1004_probe._entry.9, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ee1004_probe._entry_ptr.12, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @ee1004_current_page, !39, !"ee1004_current_page", i1 false, i1 false}
!39 = !{!"../drivers/misc/eeprom/ee1004.c", i32 47, i32 12}
!40 = !{ptr @ee1004_groups, !41, !"ee1004_groups", i1 false, i1 false}
!41 = !{!"../drivers/misc/eeprom/ee1004.c", i32 159, i32 1}
!42 = !{ptr @ee1004_group, !41, !"ee1004_group", i1 false, i1 false}
!43 = !{ptr @ee1004_attrs, !44, !"ee1004_attrs", i1 false, i1 false}
!44 = !{!"../drivers/misc/eeprom/ee1004.c", i32 154, i32 30}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/misc/eeprom/ee1004.c", i32 152, i32 8}
!47 = !{ptr @bin_attr_eeprom, !46, !"bin_attr_eeprom", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/misc/eeprom/ee1004.c", i32 91, i32 3}
!50 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ee1004_set_current_page._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @ee1004_set_current_page._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/misc/eeprom/ee1004.c", i32 95, i32 2}
!55 = !{ptr @ee1004_set_current_page.__UNIQUE_ID_ddebug288, !54, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!56 = !{ptr @ee1004_ids, !57, !"ee1004_ids", i1 false, i1 false}
!57 = !{!"../drivers/misc/eeprom/ee1004.c", i32 49, i32 35}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148991429, i64 2148991434, i64 2148991447, i64 2148991491, i64 2148991525, i64 2148991546}
