; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/otm3225a.c_pt.bc'
source_filename = "../drivers/video/backlight/otm3225a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.lcd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.otm3225a_spi_instruction = type { i8, i16, i16 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.otm3225a_data = type { ptr, ptr, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.lcd_device = type { %struct.lcd_properties, %struct.mutex, ptr, %struct.mutex, %struct.notifier_block, %struct.device }
%struct.lcd_properties = type { i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_otm3225a__303_247_otm3225a_driver_init6 = internal global ptr @otm3225a_driver_init, section ".initcall6.init", align 4
@otm3225a_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @otm3225a_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_otm3225a_driver_exit = internal global ptr @otm3225a_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [41 x i8] c"otm3225a.author=Felix Brack <fb@ltec.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [45 x i8] c"otm3225a.description=OTM3225A TFT LCD driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version306 = internal constant [23 x i8] c"otm3225a.version=1.0.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"otm3225a\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.0.0\00", [26 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file307 = internal constant [47 x i8] c"otm3225a.file=drivers/video/backlight/otm3225a\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [24 x i8] c"otm3225a.license=GPL v2\00", section ".modinfo", align 1
@otm3225a_ops = internal global { %struct.lcd_ops, [40 x i8] } { %struct.lcd_ops { ptr @otm3225a_get_power, ptr @otm3225a_set_power, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@otm3225a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Initializing and switching to RGB interface\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"otm3225a_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/backlight/otm3225a.c\00", [61 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@otm3225a_probe._entry_ptr = internal global ptr @otm3225a_probe._entry, section ".printk_index", align 4
@display_init = internal global { [47 x %struct.otm3225a_spi_instruction], [70 x i8] } { [47 x %struct.otm3225a_spi_instruction] [%struct.otm3225a_spi_instruction { i8 1, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 2, i16 1792, i16 0 }, %struct.otm3225a_spi_instruction { i8 3, i16 20640, i16 0 }, %struct.otm3225a_spi_instruction { i8 4, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 8, i16 1542, i16 0 }, %struct.otm3225a_spi_instruction { i8 9, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 10, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 12, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 13, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 15, i16 2, i16 0 }, %struct.otm3225a_spi_instruction { i8 17, i16 7, i16 0 }, %struct.otm3225a_spi_instruction { i8 18, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 19, i16 0, i16 200 }, %struct.otm3225a_spi_instruction { i8 7, i16 257, i16 0 }, %struct.otm3225a_spi_instruction { i8 16, i16 4784, i16 0 }, %struct.otm3225a_spi_instruction { i8 17, i16 7, i16 0 }, %struct.otm3225a_spi_instruction { i8 18, i16 443, i16 50 }, %struct.otm3225a_spi_instruction { i8 19, i16 19, i16 0 }, %struct.otm3225a_spi_instruction { i8 41, i16 16, i16 50 }, %struct.otm3225a_spi_instruction { i8 48, i16 10, i16 0 }, %struct.otm3225a_spi_instruction { i8 49, i16 4902, i16 0 }, %struct.otm3225a_spi_instruction { i8 50, i16 2601, i16 0 }, %struct.otm3225a_spi_instruction { i8 53, i16 2570, i16 0 }, %struct.otm3225a_spi_instruction { i8 54, i16 7683, i16 0 }, %struct.otm3225a_spi_instruction { i8 55, i16 798, i16 0 }, %struct.otm3225a_spi_instruction { i8 56, i16 1798, i16 0 }, %struct.otm3225a_spi_instruction { i8 57, i16 771, i16 0 }, %struct.otm3225a_spi_instruction { i8 60, i16 270, i16 0 }, %struct.otm3225a_spi_instruction { i8 61, i16 1038, i16 0 }, %struct.otm3225a_spi_instruction { i8 80, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 81, i16 239, i16 0 }, %struct.otm3225a_spi_instruction { i8 82, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 83, i16 319, i16 0 }, %struct.otm3225a_spi_instruction { i8 96, i16 9984, i16 0 }, %struct.otm3225a_spi_instruction { i8 97, i16 1, i16 0 }, %struct.otm3225a_spi_instruction { i8 106, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -128, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -127, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -126, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -125, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -124, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -123, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -112, i16 16, i16 0 }, %struct.otm3225a_spi_instruction { i8 -110, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 -107, i16 528, i16 0 }, %struct.otm3225a_spi_instruction { i8 -105, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 7, i16 307, i16 0 }], [70 x i8] zeroinitializer }, align 32
@display_enable_rgb_interface = internal global { [4 x %struct.otm3225a_spi_instruction], [40 x i8] } { [4 x %struct.otm3225a_spi_instruction] [%struct.otm3225a_spi_instruction { i8 3, i16 4224, i16 0 }, %struct.otm3225a_spi_instruction { i8 32, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 33, i16 0, i16 0 }, %struct.otm3225a_spi_instruction { i8 12, i16 273, i16 500 }], [40 x i8] zeroinitializer }, align 32
@display_off = internal global { [5 x %struct.otm3225a_spi_instruction], [34 x i8] } { [5 x %struct.otm3225a_spi_instruction] [%struct.otm3225a_spi_instruction { i8 7, i16 305, i16 100 }, %struct.otm3225a_spi_instruction { i8 7, i16 304, i16 100 }, %struct.otm3225a_spi_instruction { i8 7, i16 256, i16 0 }, %struct.otm3225a_spi_instruction { i8 16, i16 640, i16 0 }, %struct.otm3225a_spi_instruction { i8 18, i16 395, i16 0 }], [34 x i8] zeroinitializer }, align 32
@display_on = internal global { [5 x %struct.otm3225a_spi_instruction], [34 x i8] } { [5 x %struct.otm3225a_spi_instruction] [%struct.otm3225a_spi_instruction { i8 16, i16 4736, i16 0 }, %struct.otm3225a_spi_instruction { i8 7, i16 257, i16 100 }, %struct.otm3225a_spi_instruction { i8 7, i16 289, i16 0 }, %struct.otm3225a_spi_instruction { i8 7, i16 291, i16 100 }, %struct.otm3225a_spi_instruction { i8 7, i16 307, i16 10 }], [34 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"otm3225a_driver\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 239, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 251, i32 1 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"otm3225a_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 208, i32 23 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 232, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"display_init\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 86, i32 40 }
@___asan_gen_.44 = private unnamed_addr constant [29 x i8] c"display_enable_rgb_interface\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 136, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"display_off\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 143, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"display_on\00", align 1
@___asan_gen_.51 = private constant [38 x i8] c"../drivers/video/backlight/otm3225a.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 151, i32 40 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__UNIQUE_ID_version306, ptr @__exitcall_otm3225a_driver_exit, ptr @__initcall__kmod_otm3225a__303_247_otm3225a_driver_init6, ptr @__modver_attr, ptr @otm3225a_driver_exit, ptr @otm3225a_probe._entry, ptr @otm3225a_probe._entry_ptr, ptr @otm3225a_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @otm3225a_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @display_init, ptr @display_enable_rgb_interface, ptr @display_off, ptr @display_on], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm3225a_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm3225a_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @otm3225a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_init to i32), i32 282, i32 352, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_enable_rgb_interface to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_off to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_on to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @otm3225a_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @otm3225a_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @otm3225a_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @otm3225a_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm3225a_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 12, i32 noundef 3520) #6
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spi, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %if.end.dev_name.exit_crit_edge ]
  %call3 = tail call ptr @devm_lcd_device_register(ptr noundef %spi, ptr noundef %retval.0.i, ptr noundef %spi, ptr noundef nonnull %call.i, ptr noundef nonnull @otm3225a_ops) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spi, ptr %call.i, align 4
  %ld9 = getelementptr inbounds %struct.otm3225a_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %ld9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %ld9, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %spi, ptr noundef nonnull @.str.3) #9
  tail call fastcc void @otm3225a_write(ptr noundef %spi, ptr noundef nonnull @display_init, i32 noundef 47)
  tail call fastcc void @otm3225a_write(ptr noundef %spi, ptr noundef nonnull @display_enable_rgb_interface, i32 noundef 4)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then5 ], [ 0, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_lcd_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @otm3225a_write(ptr noundef %spi, ptr nocapture noundef readonly %instruction, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %msg.i.i22 = alloca %struct.spi_message, align 4
  %t.i23 = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not35 = icmp eq i32 %count, 0
  br i1 %tobool.not35, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %2 = getelementptr inbounds i8, ptr %t.i, i32 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %3 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %4 = getelementptr inbounds i8, ptr %t.i23, i32 4
  %len1.i24 = getelementptr inbounds %struct.spi_transfer, ptr %t.i23, i32 0, i32 2
  %5 = getelementptr inbounds i8, ptr %msg.i.i22, i32 8
  %prev.i.i.i.i.i.i25 = getelementptr inbounds %struct.list_head, ptr %msg.i.i22, i32 0, i32 1
  %resources.i.i.i.i.i26 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i22, i32 0, i32 10
  %prev.i2.i.i.i.i.i27 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i22, i32 0, i32 10, i32 1
  %transfer_list.i.i.i.i28 = getelementptr inbounds %struct.spi_transfer, ptr %t.i23, i32 0, i32 18
  %prev3.i.i.i.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i23, i32 0, i32 18, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %dec37.in = phi i32 [ %count, %while.body.lr.ph ], [ %dec37, %if.end.while.body_crit_edge ]
  %instruction.addr.036 = phi ptr [ %instruction, %while.body.lr.ph ], [ %incdec.ptr, %if.end.while.body_crit_edge ]
  %dec37 = add i32 %dec37.in, -1
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 112, ptr %buf, align 1
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %0, align 1
  %8 = ptrtoint ptr %instruction.addr.036 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %instruction.addr.036, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #6
  %11 = call ptr @memset(ptr %2, i32 0, i32 92)
  %12 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf, ptr %t.i, align 4
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #6
  %14 = call ptr @memset(ptr %3, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #6
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %while.body.spi_write.exit_crit_edge

while.body.spi_write.exit_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %while.body.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #6
  %23 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 114, ptr %buf, align 1
  %value = getelementptr inbounds %struct.otm3225a_spi_instruction, ptr %instruction.addr.036, i32 0, i32 1
  %24 = ptrtoint ptr %value to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %value, align 2
  %26 = lshr i16 %25, 8
  %conv4 = trunc i16 %26 to i8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4, ptr %0, align 1
  %conv9 = trunc i16 %25 to i8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv9, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i23) #6
  %29 = call ptr @memset(ptr %4, i32 0, i32 92)
  %30 = ptrtoint ptr %t.i23 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf, ptr %t.i23, align 4
  %31 = ptrtoint ptr %len1.i24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %len1.i24, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i22) #6
  %32 = call ptr @memset(ptr %5, i32 0, i32 40)
  %33 = ptrtoint ptr %msg.i.i22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %msg.i.i22, ptr %msg.i.i22, align 4
  %34 = ptrtoint ptr %prev.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i22, ptr %prev.i.i.i.i.i.i25, align 4
  %35 = ptrtoint ptr %resources.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %resources.i.i.i.i.i26, ptr %resources.i.i.i.i.i26, align 4
  %36 = ptrtoint ptr %prev.i2.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %resources.i.i.i.i.i26, ptr %prev.i2.i.i.i.i.i27, align 4
  %call.i.i.i.i.i.i29 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i28, ptr noundef nonnull %msg.i.i22, ptr noundef nonnull %msg.i.i22) #6
  br i1 %call.i.i.i.i.i.i29, label %if.end.i.i.i.i.i.i31, label %spi_write.exit.spi_write.exit33_crit_edge

spi_write.exit.spi_write.exit33_crit_edge:        ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %spi_write.exit33

if.end.i.i.i.i.i.i31:                             ; preds = %spi_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %transfer_list.i.i.i.i28, ptr %prev.i.i.i.i.i.i25, align 4
  %38 = ptrtoint ptr %transfer_list.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i22, ptr %transfer_list.i.i.i.i28, align 4
  %39 = ptrtoint ptr %prev3.i.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %msg.i.i22, ptr %prev3.i.i.i.i.i.i30, align 4
  %40 = ptrtoint ptr %msg.i.i22 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %transfer_list.i.i.i.i28, ptr %msg.i.i22, align 4
  br label %spi_write.exit33

spi_write.exit33:                                 ; preds = %if.end.i.i.i.i.i.i31, %spi_write.exit.spi_write.exit33_crit_edge
  %call.i.i32 = call i32 @spi_sync(ptr noundef %spi, ptr noundef nonnull %msg.i.i22) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i22) #6
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i23) #6
  %delay = getelementptr inbounds %struct.otm3225a_spi_instruction, ptr %instruction.addr.036, i32 0, i32 2
  %41 = ptrtoint ptr %delay to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %delay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool13.not = icmp eq i16 %42, 0
  br i1 %tobool13.not, label %spi_write.exit33.if.end_crit_edge, label %if.then

spi_write.exit33.if.end_crit_edge:                ; preds = %spi_write.exit33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %spi_write.exit33
  call void @__sanitizer_cov_trace_pc() #8
  %conv15 = zext i16 %42 to i32
  call void @msleep(i32 noundef %conv15) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_write.exit33.if.end_crit_edge
  %incdec.ptr = getelementptr %struct.otm3225a_spi_instruction, ptr %instruction.addr.036, i32 1
  %tobool.not = icmp eq i32 %dec37, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @otm3225a_get_power(ptr nocapture noundef readonly %ld) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power = getelementptr inbounds %struct.otm3225a_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @otm3225a_set_power(ptr nocapture noundef readonly %ld, i32 noundef %power) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.lcd_device, ptr %ld, i32 0, i32 5, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power1 = getelementptr inbounds %struct.otm3225a_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %power1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %power1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %power)
  %cmp = icmp eq i32 %3, %power
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power)
  %cmp2 = icmp sgt i32 %power, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %display_off.display_on = select i1 %cmp2, ptr @display_off, ptr @display_on
  tail call fastcc void @otm3225a_write(ptr noundef %5, ptr noundef nonnull %display_off.display_on, i32 noundef 5)
  %6 = ptrtoint ptr %power1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %power, ptr %power1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !15, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_otm3225a__303_247_otm3225a_driver_init6, !1, !"__initcall__kmod_otm3225a__303_247_otm3225a_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/otm3225a.c", i32 247, i32 1}
!2 = !{ptr @__exitcall_otm3225a_driver_exit, !1, !"__exitcall_otm3225a_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author304, !4, !"__UNIQUE_ID_author304", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/otm3225a.c", i32 249, i32 1}
!5 = !{ptr @__UNIQUE_ID_description305, !6, !"__UNIQUE_ID_description305", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/otm3225a.c", i32 250, i32 1}
!7 = !{ptr @__UNIQUE_ID_version306, !8, !"__UNIQUE_ID_version306", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/otm3225a.c", i32 251, i32 1}
!9 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__modver_attr, !8, !"__modver_attr", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_file307, !14, !"__UNIQUE_ID_file307", i1 false, i1 false}
!14 = !{!"../drivers/video/backlight/otm3225a.c", i32 252, i32 1}
!15 = !{ptr @__UNIQUE_ID_license308, !14, !"__UNIQUE_ID_license308", i1 false, i1 false}
!16 = !{ptr @otm3225a_driver, !17, !"otm3225a_driver", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/otm3225a.c", i32 239, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/video/backlight/otm3225a.c", i32 232, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @otm3225a_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @otm3225a_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @otm3225a_ops, !27, !"otm3225a_ops", i1 false, i1 false}
!27 = !{!"../drivers/video/backlight/otm3225a.c", i32 208, i32 23}
!28 = !{ptr @display_off, !29, !"display_off", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/otm3225a.c", i32 143, i32 40}
!30 = !{ptr @display_on, !31, !"display_on", i1 false, i1 false}
!31 = !{!"../drivers/video/backlight/otm3225a.c", i32 151, i32 40}
!32 = !{ptr @display_init, !33, !"display_init", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/otm3225a.c", i32 86, i32 40}
!34 = !{ptr @display_enable_rgb_interface, !35, !"display_enable_rgb_interface", i1 false, i1 false}
!35 = !{!"../drivers/video/backlight/otm3225a.c", i32 136, i32 40}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
