; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/sun4i-lradc-keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/sun4i-lradc-keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lradc_variant = type { i8, i8 }
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
%struct.sun4i_lradc_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.sun4i_lradc_keymap = type { i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_sun4i_lradc_keys__288_305_sun4i_lradc_driver_init6 = internal global ptr @sun4i_lradc_driver_init, section ".initcall6.init", align 4
@sun4i_lradc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_lradc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_lradc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_lradc_driver_exit = internal global ptr @sun4i_lradc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [85 x i8] c"sun4i_lradc_keys.description=Allwinner sun4i low res adc attached tablet keys driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [60 x i8] c"sun4i_lradc_keys.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [62 x i8] c"sun4i_lradc_keys.file=drivers/input/keyboard/sun4i-lradc-keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"sun4i_lradc_keys.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun4i-a10-lradc-keys\00", [43 x i8] zeroinitializer }, align 32
@sun4i_lradc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-lradc-keys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lradc_variant_a10 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-r-lradc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r_lradc_variant_a83t }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@sun4i_lradc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Missing sun4i-a10-lradc-keys variant\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun4i_lradc_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/keyboard/sun4i-lradc-keys.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_lradc_probe._entry_ptr = internal global ptr @sun4i_lradc_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun4i_lradc/input0\00", [45 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"keymap is missing in device tree\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sun4i_lradc_load_dt_keymap\00", [37 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry_ptr = internal global ptr @sun4i_lradc_load_dt_keymap._entry, section ".printk_index", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 200, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pOFn: Inval channel prop\0A\00", [37 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry_ptr.13 = internal global ptr @sun4i_lradc_load_dt_keymap._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"voltage\00", [24 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.9, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pOFn: Inval voltage prop\0A\00", [37 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry_ptr.17 = internal global ptr @sun4i_lradc_load_dt_keymap._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%pOFn: Inval linux,code prop\0A\00", [34 x i8] zeroinitializer }, align 32
@sun4i_lradc_load_dt_keymap._entry_ptr.21 = internal global ptr @sun4i_lradc_load_dt_keymap._entry.19, section ".printk_index", align 4
@lradc_variant_a10 = internal constant { %struct.lradc_variant, [30 x i8] } { %struct.lradc_variant { i8 2, i8 3 }, [30 x i8] zeroinitializer }, align 32
@r_lradc_variant_a83t = internal constant { %struct.lradc_variant, [30 x i8] } { %struct.lradc_variant { i8 3, i8 4 }, [30 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [19 x i8] c"sun4i_lradc_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 297, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 299, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [21 x i8] c"sun4i_lradc_of_match\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 288, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 242, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 246, i32 47 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 256, i32 23 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 183, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 198, i32 36 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 200, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 205, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 207, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 212, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 214, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"lradc_variant_a10\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 67, i32 35 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"r_lradc_variant_a83t\00", align 1
@___asan_gen_.95 = private constant [45 x i8] c"../drivers/input/keyboard/sun4i-lradc-keys.c\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.95, i32 72, i32 35 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sun4i_lradc_driver_exit, ptr @__initcall__kmod_sun4i_lradc_keys__288_305_sun4i_lradc_driver_init6, ptr @sun4i_lradc_driver_exit, ptr @sun4i_lradc_load_dt_keymap._entry, ptr @sun4i_lradc_load_dt_keymap._entry.11, ptr @sun4i_lradc_load_dt_keymap._entry.15, ptr @sun4i_lradc_load_dt_keymap._entry.19, ptr @sun4i_lradc_load_dt_keymap._entry_ptr, ptr @sun4i_lradc_load_dt_keymap._entry_ptr.13, ptr @sun4i_lradc_load_dt_keymap._entry_ptr.17, ptr @sun4i_lradc_load_dt_keymap._entry_ptr.21, ptr @sun4i_lradc_probe._entry, ptr @sun4i_lradc_probe._entry_ptr, ptr @sun4i_lradc_driver, ptr @.str, ptr @sun4i_lradc_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @lradc_variant_a10, ptr @r_lradc_variant_a83t], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_load_dt_keymap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_load_dt_keymap._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_load_dt_keymap._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_lradc_load_dt_keymap._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lradc_variant_a10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @r_lradc_variant_a83t to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_lradc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_lradc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_lradc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_lradc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_lradc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %of_get_child_count.exit.thread.i, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

of_get_child_count.exit.thread.i:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %chan0_map_count71.i = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %chan0_map_count71.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %chan0_map_count71.i, align 4
  br label %do.end.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  %chan0_map_count.i = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %chan0_map_count.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %inc.i.i, ptr %chan0_map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i)
  %cmp.i = icmp eq i32 %inc.i.i, 0
  br i1 %cmp.i, label %of_get_child_count.exit.i.do.end.i_crit_edge, label %if.end3.i

of_get_child_count.exit.i.do.end.i_crit_edge:     ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %of_get_child_count.exit.i.do.end.i_crit_edge, %of_get_child_count.exit.thread.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end3.i:                                        ; preds = %of_get_child_count.exit.i
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i, i32 8) #6
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kmalloc_array.exit.thread.i, label %devm_kmalloc_array.exit.i, !prof !64

devm_kmalloc_array.exit.thread.i:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  %chan0_map74.i = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %chan0_map74.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %chan0_map74.i, align 4
  br label %cleanup

devm_kmalloc_array.exit.i:                        ; preds = %if.end3.i
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %7, i32 noundef 3264) #6
  %chan0_map.i = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %chan0_map.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %chan0_map.i, align 4
  %tobool7.not.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not.i, label %devm_kmalloc_array.exit.i.cleanup_crit_edge, label %if.end9.i

devm_kmalloc_array.exit.i.cleanup_crit_edge:      ; preds = %devm_kmalloc_array.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %devm_kmalloc_array.exit.i
  %call10.i = tail call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef null) #6
  %cmp11.not81.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.not81.i, label %if.end9.i.if.end5_crit_edge, label %if.end9.i.for.body.i_crit_edge

if.end9.i.for.body.i_crit_edge:                   ; preds = %if.end9.i
  br label %for.body.i

if.end9.i.if.end5_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end9.i.for.body.i_crit_edge
  %i.083.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end9.i.for.body.i_crit_edge ]
  %pp.082.i = phi ptr [ %call36.i, %for.inc.i.for.body.i_crit_edge ], [ %call10.i, %if.end9.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %chan0_map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan0_map.i, align 4
  %arrayidx.i = getelementptr %struct.sun4i_lradc_keymap, ptr %10, i32 %i.083.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel.i) #6
  %11 = ptrtoint ptr %channel.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %channel.i, align 4, !annotation !65
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pp.082.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %channel.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool14.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool14.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.thread.i_crit_edge

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %12 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp15.not.i = icmp eq i32 %13, 0
  br i1 %cmp15.not.i, label %if.end20.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %call.i.i68.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pp.082.i, ptr noundef nonnull @.str.14, ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i68.i)
  %tobool22.not.i = icmp sgt i32 %call.i.i68.i, -1
  br i1 %tobool22.not.i, label %if.end27.i, label %if.end20.i.cleanup.thread.i_crit_edge

if.end20.i.cleanup.thread.i_crit_edge:            ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

if.end27.i:                                       ; preds = %if.end20.i
  %keycode.i = getelementptr %struct.sun4i_lradc_keymap, ptr %10, i32 %i.083.i, i32 1
  %call.i.i69.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %pp.082.i, ptr noundef nonnull @.str.18, ptr noundef %keycode.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i69.i)
  %tobool29.not.i = icmp sgt i32 %call.i.i69.i, -1
  br i1 %tobool29.not.i, label %for.inc.i, label %if.end27.i.cleanup.thread.i_crit_edge

if.end27.i.cleanup.thread.i_crit_edge:            ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end27.i.cleanup.thread.i_crit_edge, %if.end20.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.cleanup.thread.i_crit_edge, %for.body.i.cleanup.thread.i_crit_edge
  %.str.20.sink = phi ptr [ @.str.12, %lor.lhs.false.i.cleanup.thread.i_crit_edge ], [ @.str.12, %for.body.i.cleanup.thread.i_crit_edge ], [ @.str.16, %if.end20.i.cleanup.thread.i_crit_edge ], [ @.str.20, %if.end27.i.cleanup.thread.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.20.sink, ptr noundef nonnull %pp.082.i) #9
  call void @of_node_put(ptr noundef nonnull %pp.082.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  br label %cleanup

for.inc.i:                                        ; preds = %if.end27.i
  %inc.i = add i32 %i.083.i, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel.i) #6
  %call36.i = call ptr @of_get_next_child(ptr noundef nonnull %1, ptr noundef nonnull %pp.082.i) #6
  %cmp11.not.i = icmp eq ptr %call36.i, null
  br i1 %cmp11.not.i, label %for.inc.i.if.end5_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.if.end5_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %for.inc.i.if.end5_crit_edge, %if.end9.i.if.end5_crit_edge
  %call7 = call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %variant = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7, ptr %variant, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call13 = call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  %vref_supply = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %vref_supply to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %vref_supply, align 4
  %cmp.i110 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dev1, ptr %call.i, align 4
  %call21 = call ptr @devm_input_allocate_device(ptr noundef %dev1) #6
  %input = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call21, ptr %input, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 8
  %21 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %call21, align 8
  %22 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.7, ptr %phys, align 4
  %25 = load ptr, ptr %input, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %25, i32 0, i32 31
  %26 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sun4i_lradc_open, ptr %open, align 8
  %27 = load ptr, ptr %input, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sun4i_lradc_close, ptr %close, align 4
  %29 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 25, ptr %id, align 4
  %31 = load ptr, ptr %input, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %vendor, align 2
  %33 = load ptr, ptr %input, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %product, align 4
  %35 = load ptr, ptr %input, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 256, ptr %version, align 2
  %37 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %evbit, align 4
  %or.i = or i32 %39, 2
  store i32 %or.i, ptr %evbit, align 4
  %40 = ptrtoint ptr %chan0_map_count.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chan0_map_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp119.not = icmp eq i32 %41, 0
  br i1 %cmp119.not, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end25.for.body_crit_edge
  %i.0120 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end25.for.body_crit_edge ]
  %42 = ptrtoint ptr %chan0_map.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan0_map.i, align 4
  %keycode = getelementptr %struct.sun4i_lradc_keymap, ptr %43, i32 %i.0120, i32 1
  %44 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %keycode, align 4
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %47, i32 0, i32 6
  %rem.i = and i32 %45, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %45, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %48 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i, align 4
  %or.i109 = or i32 %49, %shl.i
  store i32 %or.i109, ptr %add.ptr.i, align 4
  %inc = add nuw i32 %i.0120, 1
  %50 = ptrtoint ptr %chan0_map_count.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chan0_map_count.i, align 4
  %cmp = icmp ult i32 %inc, %51
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end25.for.end_crit_edge
  %52 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %input, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %53, i32 0, i32 40, i32 8
  %54 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call42 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call43 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call42) #6
  %base = getelementptr inbounds %struct.sun4i_lradc_data, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call43, ptr %base, align 4
  %cmp.i111 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i111, label %if.then46, label %if.end49

if.then46:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %call43 to i32
  br label %cleanup

if.end49:                                         ; preds = %for.end
  %call50 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %call.i112 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call50, ptr noundef nonnull @sun4i_lradc_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %tobool52.not = icmp eq i32 %call.i112, 0
  br i1 %tobool52.not, label %if.end54, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end54:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input, align 4
  %call56 = call i32 @input_register_device(ptr noundef %58) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.end49.cleanup_crit_edge, %if.then46, %if.end19.cleanup_crit_edge, %if.then16, %do.end, %cleanup.thread.i, %devm_kmalloc_array.exit.i.cleanup_crit_edge, %devm_kmalloc_array.exit.thread.i, %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then16 ], [ %56, %if.then46 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ], [ %call.i112, %if.end49.cleanup_crit_edge ], [ %call56, %if.end54 ], [ -22, %cleanup.thread.i ], [ -12, %devm_kmalloc_array.exit.thread.i ], [ -12, %devm_kmalloc_array.exit.i.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_lradc_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %vref_supply = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vref_supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vref_supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %vref_supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vref_supply, align 4
  %call3 = tail call i32 @regulator_get_voltage(ptr noundef %5) #6
  %variant = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %variant, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %mul = mul i32 %call3, %conv
  %divisor_denominator = getelementptr inbounds %struct.lradc_variant, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %divisor_denominator to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %divisor_denominator, align 1
  %conv5 = zext i8 %11 to i32
  %div = sdiv i32 %mul, %conv5
  %vref = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %vref to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %vref, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 1090584578) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 301989888) #6, !srcloc !67
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_lradc_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %base = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 1208025090) #6, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr5 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 0) #6, !srcloc !67
  %vref_supply = getelementptr inbounds %struct.sun4i_lradc_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %vref_supply to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vref_supply, align 4
  %call6 = tail call i32 @regulator_disable(ptr noundef %7) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_lradc_irq(i32 noundef %irq, ptr nocapture noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %input = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  %chan0_keycode = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %chan0_keycode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %chan0_keycode, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %7, i32 noundef 0) #6
  %8 = ptrtoint ptr %chan0_keycode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %chan0_keycode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end29_crit_edge, label %land.lhs.true

if.end.if.end29_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %if.end
  %chan0_keycode5 = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 7
  %9 = ptrtoint ptr %chan0_keycode5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %chan0_keycode5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then6, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then6:                                         ; preds = %land.lhs.true
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #6, !srcloc !71
  %14 = lshr i32 %13, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %and14 = and i32 %14, 63
  %vref = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 8
  %15 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vref, align 4
  %mul = mul i32 %and14, %16
  %div = udiv i32 %mul, 63
  %chan0_map_count = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 6
  %17 = ptrtoint ptr %chan0_map_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chan0_map_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1555.not = icmp eq i32 %18, 0
  br i1 %cmp1555.not, label %if.then6.for.end_crit_edge, label %for.body.lr.ph

if.then6.for.end_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then6
  %chan0_map = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 4
  %19 = ptrtoint ptr %chan0_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan0_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %keycode.057 = phi i32 [ 0, %for.body.lr.ph ], [ %keycode.1, %for.inc.for.body_crit_edge ]
  %closest.056 = phi i32 [ -1, %for.body.lr.ph ], [ %closest.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sun4i_lradc_keymap, ptr %20, i32 %i.058
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 %22, %div
  %23 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %closest.056)
  %cmp20 = icmp ult i32 %23, %closest.056
  br i1 %cmp20, label %if.then21, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then21:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %keycode24 = getelementptr %struct.sun4i_lradc_keymap, ptr %20, i32 %i.058, i32 1
  %24 = ptrtoint ptr %keycode24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %keycode24, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %for.body.for.inc_crit_edge
  %closest.1 = phi i32 [ %23, %if.then21 ], [ %closest.056, %for.body.for.inc_crit_edge ]
  %keycode.1 = phi i32 [ %25, %if.then21 ], [ %keycode.057, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %18
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then6.for.end_crit_edge
  %keycode.0.lcssa = phi i32 [ 0, %if.then6.for.end_crit_edge ], [ %keycode.1, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %chan0_keycode5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %keycode.0.lcssa, ptr %chan0_keycode5, align 4
  %input27 = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 1
  %27 = ptrtoint ptr %input27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input27, align 4
  tail call void @input_event(ptr noundef %28, i32 noundef 1, i32 noundef %keycode.0.lcssa, i32 noundef 1) #6
  br label %if.end29

if.end29:                                         ; preds = %for.end, %land.lhs.true.if.end29_crit_edge, %if.end.if.end29_crit_edge
  %input30 = getelementptr inbounds %struct.sun4i_lradc_data, ptr %dev_id, i32 0, i32 1
  %29 = ptrtoint ptr %input30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input30, align 4
  tail call void @input_event(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %32, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %2) #6, !srcloc !67
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_sun4i_lradc_keys__288_305_sun4i_lradc_driver_init6, !1, !"__initcall__kmod_sun4i_lradc_keys__288_305_sun4i_lradc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 305, i32 1}
!2 = !{ptr @__exitcall_sun4i_lradc_driver_exit, !1, !"__exitcall_sun4i_lradc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 307, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 308, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 309, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 299, i32 11}
!12 = !{ptr @sun4i_lradc_driver, !13, !"sun4i_lradc_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 297, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 242, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @sun4i_lradc_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun4i_lradc_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 246, i32 47}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 256, i32 23}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 183, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun4i_lradc_load_dt_keymap._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun4i_lradc_load_dt_keymap._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 198, i32 36}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 200, i32 4}
!35 = !{ptr @sun4i_lradc_load_dt_keymap._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sun4i_lradc_load_dt_keymap._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 205, i32 36}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 207, i32 4}
!41 = !{ptr @sun4i_lradc_load_dt_keymap._entry.15, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun4i_lradc_load_dt_keymap._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 212, i32 36}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 214, i32 4}
!47 = !{ptr @sun4i_lradc_load_dt_keymap._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sun4i_lradc_load_dt_keymap._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @sun4i_lradc_of_match, !50, !"sun4i_lradc_of_match", i1 false, i1 false}
!50 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 288, i32 34}
!51 = !{ptr @lradc_variant_a10, !52, !"lradc_variant_a10", i1 false, i1 false}
!52 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 67, i32 35}
!53 = !{ptr @r_lradc_variant_a83t, !54, !"r_lradc_variant_a83t", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/sun4i-lradc-keys.c", i32 72, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"auto-init"}
!66 = !{i64 2155089042}
!67 = !{i64 5700802}
!68 = !{i64 2155089866}
!69 = !{i64 2155090532}
!70 = !{i64 2155091091}
!71 = !{i64 5701220}
!72 = !{i64 2155081026}
!73 = !{i64 2155081685}
!74 = !{i64 2155088507}
