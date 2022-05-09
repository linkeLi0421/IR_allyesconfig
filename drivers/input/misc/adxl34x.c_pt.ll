; ModuleID = '/llk/IR_all_yes/drivers/input/misc/adxl34x.c_pt.bc'
source_filename = "../drivers/input/misc/adxl34x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+adxl34x_suspend\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl34x_suspend\09\09\09\09"
module asm "\09.long\09__crc_adxl34x_suspend\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_suspend\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_suspend:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl34x_resume\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl34x_resume\09\09\09\09"
module asm "\09.long\09__crc_adxl34x_resume\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_resume\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_resume:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl34x_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl34x_probe\09\09\09\09"
module asm "\09.long\09__crc_adxl34x_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+adxl34x_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_adxl34x_remove\09\09\09\09"
module asm "\09.long\09__crc_adxl34x_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_adxl34x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22adxl34x_remove\22\09\09\09\09\09"
module asm "__kstrtabns_adxl34x_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.adxl34x_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [3 x i32], i32, i32, i8, i8, i8, i8, [4 x i32], [6 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.adxl34x = type { ptr, ptr, %struct.mutex, %struct.adxl34x_platform_data, %struct.axis_triple, %struct.axis_triple, %struct.axis_triple, [32 x i8], i32, i32, i8, i8, i8, i8, i32, i32, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.axis_triple = type { i32, i32, i32 }
%struct.adxl34x_bus_ops = type { i16, ptr, ptr, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__kstrtab_adxl34x_suspend = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_suspend = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_suspend = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_suspend to i32), ptr @__kstrtab_adxl34x_suspend, ptr @__kstrtabns_adxl34x_suspend }, section "___ksymtab_gpl+adxl34x_suspend", align 4
@__kstrtab_adxl34x_resume = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_resume = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_resume = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_resume to i32), ptr @__kstrtab_adxl34x_resume, ptr @__kstrtabns_adxl34x_resume }, section "___ksymtab_gpl+adxl34x_resume", align 4
@adxl34x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 702, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"no IRQ?\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adxl34x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/misc/adxl34x.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adxl34x_probe._entry_ptr = internal global ptr @adxl34x_probe._entry, section ".printk_index", align 4
@adxl34x_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -77, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adxl34x\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No platform data: Using default initialization\0A\00", [48 x i8] zeroinitializer }, align 32
@adxl34x_default_init = internal constant { %struct.adxl34x_platform_data, [60 x i8] } { %struct.adxl34x_platform_data { i8 0, i8 0, i8 0, i8 7, i8 35, i8 3, i8 20, i8 20, i8 -1, i8 6, i8 4, i8 3, i8 8, i8 32, i8 8, i8 8, i8 0, i8 48, i8 2, i8 0, i32 3, i32 0, i32 1, i32 2, [3 x i32] [i32 330, i32 330, i32 330], i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [6 x i32] zeroinitializer }, [60 x i8] zeroinitializer }, align 32
@adxl34x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ac->mutex\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADXL34x accelerometer\00", [42 x i8] zeroinitializer }, align 32
@adxl34x_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to probe %s\0A\00", [44 x i8] zeroinitializer }, align 32
@adxl34x_probe._entry_ptr.11 = internal global ptr @adxl34x_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s/input0\00", [22 x i8] zeroinitializer }, align 32
@adxl34x_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 817, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"irq %d busy?\0A\00", [18 x i8] zeroinitializer }, align 32
@adxl34x_probe._entry_ptr.15 = internal global ptr @adxl34x_probe._entry.13, section ".printk_index", align 4
@adxl34x_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adxl34x_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@__kstrtab_adxl34x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_probe to i32), ptr @__kstrtab_adxl34x_probe, ptr @__kstrtabns_adxl34x_probe }, section "___ksymtab_gpl+adxl34x_probe", align 4
@adxl34x_remove.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 -30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adxl34x_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unregistered accelerometer\0A\00", [36 x i8] zeroinitializer }, align 32
@__kstrtab_adxl34x_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_adxl34x_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_adxl34x_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @adxl34x_remove to i32), ptr @__kstrtab_adxl34x_remove, ptr @__kstrtabns_adxl34x_remove }, section "___ksymtab_gpl+adxl34x_remove", align 4
@__UNIQUE_ID_author230 = internal constant [66 x i8] c"adxl34x.author=Michael Hennerich <hennerich@blackfin.uclinux.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [72 x i8] c"adxl34x.description=ADXL345/346 Three-Axis Digital Accelerometer Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [40 x i8] c"adxl34x.file=drivers/input/misc/adxl34x\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [20 x i8] c"adxl34x.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adxl34x_irq.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.18, ptr @.str.2, ptr @.str.19, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adxl34x_irq\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OVERRUN\0A\00", [23 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@adxl34x_attributes = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @dev_attr_disable, ptr @dev_attr_calibrate, ptr @dev_attr_rate, ptr @dev_attr_autosleep, ptr @dev_attr_position, ptr null], [40 x i8] zeroinitializer }, align 32
@dev_attr_disable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl34x_disable_show, ptr @adxl34x_disable_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_calibrate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl34x_calibrate_show, ptr @adxl34x_calibrate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_rate = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl34x_rate_show, ptr @adxl34x_rate_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_autosleep = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 436, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl34x_autosleep_show, ptr @adxl34x_autosleep_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_position = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adxl34x_position_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"calibrate\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d,%d,%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rate\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"autosleep\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"position\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(%d, %d, %d)\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 229, i64 230]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 702, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 718, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"adxl34x_default_init\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 212, i32 43 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 731, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 733, i32 20 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 744, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 749, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 817, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"adxl34x_attr_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 657, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 904, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 320, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [19 x i8] c"adxl34x_attributes\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 645, i32 26 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"dev_attr_disable\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"dev_attr_calibrate\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"dev_attr_rate\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"dev_attr_autosleep\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"dev_attr_position\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 480, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 446, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 527, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 489, i32 23 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 562, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 600, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 617, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [32 x i8] c"../drivers/input/misc/adxl34x.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 610, i32 23 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__ksymtab_adxl34x_probe, ptr @__ksymtab_adxl34x_remove, ptr @__ksymtab_adxl34x_resume, ptr @__ksymtab_adxl34x_suspend, ptr @adxl34x_probe._entry, ptr @adxl34x_probe._entry.13, ptr @adxl34x_probe._entry.9, ptr @adxl34x_probe._entry_ptr, ptr @adxl34x_probe._entry_ptr.11, ptr @adxl34x_probe._entry_ptr.15, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adxl34x_default_init, ptr @adxl34x_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @adxl34x_attr_group, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @adxl34x_attributes, ptr @dev_attr_disable, ptr @dev_attr_calibrate, ptr @dev_attr_rate, ptr @dev_attr_autosleep, ptr @dev_attr_position, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_default_init to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adxl34x_attributes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_calibrate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_rate to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_autosleep to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_position to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adxl34x_suspend(ptr noundef %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 12
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 10
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %opened = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 11
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opened, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 17
  %6 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops.i, align 4
  %write.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i8 noundef zeroext 45, i8 noundef zeroext 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %suspended, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adxl34x_resume(ptr noundef %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 12
  %0 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 10
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %opened = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 11
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %opened, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 17
  %6 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops.i, align 4
  %write.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %10 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ac, align 4
  %power_mode.i = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 3, i32 17
  %12 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mode.i, align 1
  %14 = or i8 %13, 8
  %call.i = tail call i32 %9(ptr noundef %11, i8 noundef zeroext 45, i8 noundef zeroext %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %suspended to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %suspended, align 2
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @adxl34x_probe(ptr noundef %dev, i32 noundef %irq, i1 noundef zeroext %fifo_delay_default, ptr noundef %bops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %fifo_delay_default to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool.not = icmp eq i32 %irq, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #11
  br label %err_out

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 296) #12
  %call1 = tail call ptr @input_allocate_device() #8
  %tobool2.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call1, null
  %or.cond = select i1 %tobool2.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.end.err_free_mem_crit_edge, label %if.end5

if.end.err_free_mem_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mem

if.end5:                                          ; preds = %if.end
  %fifo_delay = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 13
  %1 = ptrtoint ptr %fifo_delay to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %frombool, ptr %fifo_delay, align 1
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %do.body11, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.body11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adxl34x_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adxl34x_probe, %if.then17)) #8
          to label %if.end21 [label %if.then17], !srcloc !87

if.then17:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adxl34x_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %do.body11, %if.end5.if.end21_crit_edge
  %pdata.0 = phi ptr [ %3, %if.end5.if.end21_crit_edge ], [ @adxl34x_default_init, %if.then17 ], [ @adxl34x_default_init, %do.body11 ]
  %pdata22 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %pdata22, ptr %pdata.0, i32 100)
  %input = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %input, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %call7.i.i, align 8
  %irq25 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 14
  %7 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %irq, ptr %irq25, align 8
  %bops26 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 17
  %8 = ptrtoint ptr %bops26 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bops, ptr %bops26, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @adxl34x_probe.__key) #8
  %9 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.8, ptr %call1, align 8
  %10 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bops26, align 4
  %read = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %read, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %call32 = tail call i32 %13(ptr noundef %15, i8 noundef zeroext 0) #8
  %16 = zext i32 %call32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call32, label %do.end37 [
    i32 229, label %if.end21.sw.epilog_crit_edge
    i32 230, label %sw.bb33
  ]

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end37:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %18) #11
  br label %err_free_mem

sw.epilog:                                        ; preds = %sw.bb33, %if.end21.sw.epilog_crit_edge
  %.sink = phi i32 [ 346, %sw.bb33 ], [ 345, %if.end21.sw.epilog_crit_edge ]
  %model34 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 15
  %19 = ptrtoint ptr %model34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %.sink, ptr %model34, align 4
  %phys = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 7
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.epilog.dev_name.exit_crit_edge

sw.epilog.dev_name.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %sw.epilog.dev_name.exit_crit_edge
  %retval.0.i561 = phi ptr [ %23, %if.end.i ], [ %21, %sw.epilog.dev_name.exit_crit_edge ]
  %call40 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %phys, i32 noundef 32, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i561)
  %phys43 = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 1
  %24 = ptrtoint ptr %phys43 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %phys, ptr %phys43, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 1
  %25 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev, ptr %parent, align 8
  %model45 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %model45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %model45, align 4
  %conv = trunc i32 %27 to i16
  %id = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3
  %product = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %product, align 4
  %29 = ptrtoint ptr %bops to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %bops, align 4
  %31 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %id, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 31
  %32 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @adxl34x_input_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 32
  %33 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @adxl34x_input_close, ptr %close, align 4
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 40, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %ev_type = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 20
  %35 = ptrtoint ptr %ev_type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ev_type, align 8
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 5
  %rem.i = and i32 %36, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %36, 5
  %add.ptr.i = getelementptr i32, ptr %evbit, i32 %div2.i
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %38
  store i32 %or.i, ptr %add.ptr.i, align 4
  %39 = load i32, ptr %ev_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp = icmp eq i32 %39, 2
  br i1 %cmp, label %if.then53, label %if.else

if.then53:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %relbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 7
  %40 = ptrtoint ptr %relbit to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %relbit, align 4
  %or.i521 = or i32 %41, 7
  store i32 %or.i521, ptr %relbit, align 4
  br label %if.end71

if.else:                                          ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %absbit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 8
  %42 = ptrtoint ptr %absbit to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %absbit, align 4
  %or.i524 = or i32 %43, 7
  store i32 %or.i524, ptr %absbit, align 4
  %data_range = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 15
  %44 = ptrtoint ptr %data_range to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data_range, align 1
  %46 = and i8 %45, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool65.not = icmp eq i8 %46, 0
  %..neg = select i1 %tobool65.not, i32 -512, i32 -4096
  %. = select i1 %tobool65.not, i32 512, i32 4096
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 0, i32 noundef %..neg, i32 noundef %., i32 noundef 3, i32 noundef 3) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 1, i32 noundef %..neg, i32 noundef %., i32 noundef 3, i32 noundef 3) #8
  tail call void @input_set_abs_params(ptr noundef nonnull %call1, i32 noundef 2, i32 noundef %..neg, i32 noundef %., i32 noundef 3, i32 noundef 3) #8
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.then53
  %47 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %evbit, align 4
  %or.i525 = or i32 %48, 2
  store i32 %or.i525, ptr %evbit, align 4
  %ev_code_tap = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 24
  %49 = ptrtoint ptr %ev_code_tap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ev_code_tap, align 8
  %keybit = getelementptr inbounds %struct.input_dev, ptr %call1, i32 0, i32 6
  %rem.i526 = and i32 %50, 31
  %shl.i527 = shl nuw i32 1, %rem.i526
  %div2.i528 = lshr i32 %50, 5
  %add.ptr.i529 = getelementptr i32, ptr %keybit, i32 %div2.i528
  %51 = ptrtoint ptr %add.ptr.i529 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr.i529, align 4
  %or.i530 = or i32 %shl.i527, %52
  store i32 %or.i530, ptr %add.ptr.i529, align 4
  %arrayidx76 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 24, i32 1
  %53 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx76, align 4
  %rem.i531 = and i32 %54, 31
  %shl.i532 = shl nuw i32 1, %rem.i531
  %div2.i533 = lshr i32 %54, 5
  %add.ptr.i534 = getelementptr i32, ptr %keybit, i32 %div2.i533
  %55 = ptrtoint ptr %add.ptr.i534 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i534, align 4
  %or.i535 = or i32 %shl.i532, %56
  store i32 %or.i535, ptr %add.ptr.i534, align 4
  %arrayidx80 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 24, i32 2
  %57 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx80, align 8
  %rem.i536 = and i32 %58, 31
  %shl.i537 = shl nuw i32 1, %rem.i536
  %div2.i538 = lshr i32 %58, 5
  %add.ptr.i539 = getelementptr i32, ptr %keybit, i32 %div2.i538
  %59 = ptrtoint ptr %add.ptr.i539 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr.i539, align 4
  %or.i540 = or i32 %shl.i537, %60
  store i32 %or.i540, ptr %add.ptr.i539, align 4
  %ev_code_ff = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 25
  %61 = ptrtoint ptr %ev_code_ff to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ev_code_ff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool83.not = icmp eq i32 %62, 0
  br i1 %tobool83.not, label %if.end71.if.end88_crit_edge, label %if.then84

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then84:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  %int_mask = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 16
  %63 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 4, ptr %int_mask, align 8
  %rem.i541 = and i32 %62, 31
  %shl.i542 = shl nuw i32 1, %rem.i541
  %div2.i543 = lshr i32 %62, 5
  %add.ptr.i544 = getelementptr i32, ptr %keybit, i32 %div2.i543
  %64 = ptrtoint ptr %add.ptr.i544 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %add.ptr.i544, align 4
  %or.i545 = or i32 %65, %shl.i542
  store i32 %or.i545, ptr %add.ptr.i544, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then84, %if.end71.if.end88_crit_edge
  %ev_code_act_inactivity = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 26
  %66 = ptrtoint ptr %ev_code_act_inactivity to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ev_code_act_inactivity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool89.not = icmp eq i32 %67, 0
  br i1 %tobool89.not, label %if.end88.if.end94_crit_edge, label %if.then90

if.end88.if.end94_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then90:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  %rem.i546 = and i32 %67, 31
  %shl.i547 = shl nuw i32 1, %rem.i546
  %div2.i548 = lshr i32 %67, 5
  %add.ptr.i549 = getelementptr i32, ptr %keybit, i32 %div2.i548
  %68 = ptrtoint ptr %add.ptr.i549 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr.i549, align 4
  %or.i550 = or i32 %69, %shl.i547
  store i32 %or.i550, ptr %add.ptr.i549, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end88.if.end94_crit_edge
  %int_mask95 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 16
  %70 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %int_mask95, align 8
  %or = or i32 %71, 24
  store i32 %or, ptr %int_mask95, align 8
  %watermark = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 19
  %72 = ptrtoint ptr %watermark to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %watermark, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool96.not = icmp eq i8 %73, 0
  br i1 %tobool96.not, label %if.else111, label %if.then97

if.then97:                                        ; preds = %if.end94
  %or99 = or i32 %71, 26
  %74 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or99, ptr %int_mask95, align 8
  %fifo_mode = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 18
  %75 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %fifo_mode, align 2
  %77 = and i8 %76, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp102 = icmp eq i8 %77, 0
  br i1 %cmp102, label %if.then104, label %if.then97.if.end114_crit_edge

if.then97.if.end114_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end114

if.then104:                                       ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %or108 = or i8 %76, 2
  %78 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %or108, ptr %fifo_mode, align 2
  br label %if.end114

if.else111:                                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #10
  %or113 = or i32 %71, 152
  %79 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %or113, ptr %int_mask95, align 8
  br label %if.end114

if.end114:                                        ; preds = %if.else111, %if.then104, %if.then97.if.end114_crit_edge
  %tap_axis_control = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 3
  %80 = ptrtoint ptr %tap_axis_control to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %tap_axis_control, align 1
  %82 = and i8 %81, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool117.not = icmp eq i8 %82, 0
  br i1 %tobool117.not, label %if.end114.if.end121_crit_edge, label %if.then118

if.end114.if.end121_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then118:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %int_mask95, align 8
  %or120 = or i32 %84, 96
  store i32 %or120, ptr %int_mask95, align 8
  br label %if.end121

if.end121:                                        ; preds = %if.then118, %if.end114.if.end121_crit_edge
  %fifo_mode122 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 18
  %85 = ptrtoint ptr %fifo_mode122 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %fifo_mode122, align 2
  %.mask = and i8 %86, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.mask)
  %cmp126 = icmp eq i8 %.mask, 0
  br i1 %cmp126, label %if.then128, label %if.end121.if.end130_crit_edge

if.end121.if.end130_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end130

if.then128:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %fifo_delay to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %fifo_delay, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.then128, %if.end121.if.end130_crit_edge
  %88 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bops26, align 4
  %write = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write, align 4
  %92 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call7.i.i, align 8
  %call133 = tail call i32 %91(ptr noundef %93, i8 noundef zeroext 45, i8 noundef zeroext 0) #8
  %94 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %irq25, align 8
  %96 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i563 = icmp eq ptr %97, null
  br i1 %tobool.not.i563, label %if.end.i564, label %if.end130.dev_name.exit566_crit_edge

if.end130.dev_name.exit566_crit_edge:             ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit566

if.end.i564:                                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  br label %dev_name.exit566

dev_name.exit566:                                 ; preds = %if.end.i564, %if.end130.dev_name.exit566_crit_edge
  %retval.0.i565 = phi ptr [ %99, %if.end.i564 ], [ %97, %if.end130.dev_name.exit566_crit_edge ]
  %call136 = tail call i32 @request_threaded_irq(i32 noundef %95, ptr noundef null, ptr noundef nonnull @adxl34x_irq, i32 noundef 8196, ptr noundef %retval.0.i565, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %dev_name.exit566
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq25, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %101) #11
  br label %err_free_mem

if.end143:                                        ; preds = %dev_name.exit566
  %call144 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @adxl34x_attr_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.end147, label %if.end143.err_free_irq_crit_edge

if.end143.err_free_irq_crit_edge:                 ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end147:                                        ; preds = %if.end143
  %call148 = tail call i32 @input_register_device(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end151, label %err_remove_attr

if.end151:                                        ; preds = %if.end147
  %102 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bops26, align 4
  %write153 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %103, i32 0, i32 3
  %104 = ptrtoint ptr %write153 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %write153, align 4
  %106 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %call7.i.i, align 8
  %108 = ptrtoint ptr %pdata22 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pdata22, align 4
  %call155 = tail call i32 %105(ptr noundef %107, i8 noundef zeroext 30, i8 noundef zeroext %109) #8
  %110 = ptrtoint ptr %pdata22 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %pdata22, align 4
  %conv157 = sext i8 %111 to i32
  %hwcal = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 5
  %112 = ptrtoint ptr %hwcal to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %conv157, ptr %hwcal, align 4
  %113 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bops26, align 4
  %write159 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %write159 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %write159, align 4
  %117 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %call7.i.i, align 8
  %y_axis_offset = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 1
  %119 = ptrtoint ptr %y_axis_offset to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %y_axis_offset, align 1
  %call161 = tail call i32 %116(ptr noundef %118, i8 noundef zeroext 31, i8 noundef zeroext %120) #8
  %121 = ptrtoint ptr %y_axis_offset to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %y_axis_offset, align 1
  %conv163 = sext i8 %122 to i32
  %y = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 5, i32 1
  %123 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %conv163, ptr %y, align 8
  %124 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %bops26, align 4
  %write166 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %125, i32 0, i32 3
  %126 = ptrtoint ptr %write166 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write166, align 4
  %128 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %call7.i.i, align 8
  %z_axis_offset = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 2
  %130 = ptrtoint ptr %z_axis_offset to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %z_axis_offset, align 2
  %call168 = tail call i32 %127(ptr noundef %129, i8 noundef zeroext 32, i8 noundef zeroext %131) #8
  %132 = ptrtoint ptr %z_axis_offset to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %z_axis_offset, align 2
  %conv170 = sext i8 %133 to i32
  %z = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 5, i32 2
  %134 = ptrtoint ptr %z to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %conv170, ptr %z, align 4
  %135 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bops26, align 4
  %write173 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %136, i32 0, i32 3
  %137 = ptrtoint ptr %write173 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %write173, align 4
  %139 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %call7.i.i, align 8
  %tap_threshold = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 4
  %141 = ptrtoint ptr %tap_threshold to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %tap_threshold, align 8
  %call175 = tail call i32 %138(ptr noundef %140, i8 noundef zeroext 29, i8 noundef zeroext %142) #8
  %143 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %bops26, align 4
  %write177 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %144, i32 0, i32 3
  %145 = ptrtoint ptr %write177 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %write177, align 4
  %147 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %call7.i.i, align 8
  %tap_duration = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 5
  %149 = ptrtoint ptr %tap_duration to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %tap_duration, align 1
  %call179 = tail call i32 %146(ptr noundef %148, i8 noundef zeroext 33, i8 noundef zeroext %150) #8
  %151 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %bops26, align 4
  %write181 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %write181 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %write181, align 4
  %155 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %call7.i.i, align 8
  %tap_latency = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 6
  %157 = ptrtoint ptr %tap_latency to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %tap_latency, align 2
  %call183 = tail call i32 %154(ptr noundef %156, i8 noundef zeroext 34, i8 noundef zeroext %158) #8
  %159 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %bops26, align 4
  %write185 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %write185 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %write185, align 4
  %163 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %call7.i.i, align 8
  %tap_window = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 7
  %165 = ptrtoint ptr %tap_window to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %tap_window, align 1
  %call187 = tail call i32 %162(ptr noundef %164, i8 noundef zeroext 35, i8 noundef zeroext %166) #8
  %167 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %bops26, align 4
  %write189 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %write189 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %write189, align 4
  %171 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %call7.i.i, align 8
  %activity_threshold = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 9
  %173 = ptrtoint ptr %activity_threshold to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %activity_threshold, align 1
  %call191 = tail call i32 %170(ptr noundef %172, i8 noundef zeroext 36, i8 noundef zeroext %174) #8
  %175 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %bops26, align 4
  %write193 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %176, i32 0, i32 3
  %177 = ptrtoint ptr %write193 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %write193, align 4
  %179 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %call7.i.i, align 8
  %inactivity_threshold = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 10
  %181 = ptrtoint ptr %inactivity_threshold to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %inactivity_threshold, align 2
  %call195 = tail call i32 %178(ptr noundef %180, i8 noundef zeroext 37, i8 noundef zeroext %182) #8
  %183 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %bops26, align 4
  %write197 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %184, i32 0, i32 3
  %185 = ptrtoint ptr %write197 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %write197, align 4
  %187 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %call7.i.i, align 8
  %inactivity_time = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 11
  %189 = ptrtoint ptr %inactivity_time to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %inactivity_time, align 1
  %call199 = tail call i32 %186(ptr noundef %188, i8 noundef zeroext 38, i8 noundef zeroext %190) #8
  %191 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %bops26, align 4
  %write201 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %192, i32 0, i32 3
  %193 = ptrtoint ptr %write201 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %write201, align 4
  %195 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %call7.i.i, align 8
  %free_fall_threshold = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 12
  %197 = ptrtoint ptr %free_fall_threshold to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %free_fall_threshold, align 8
  %call203 = tail call i32 %194(ptr noundef %196, i8 noundef zeroext 40, i8 noundef zeroext %198) #8
  %199 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %bops26, align 4
  %write205 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %200, i32 0, i32 3
  %201 = ptrtoint ptr %write205 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %write205, align 4
  %203 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %call7.i.i, align 8
  %free_fall_time = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 13
  %205 = ptrtoint ptr %free_fall_time to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %free_fall_time, align 1
  %call207 = tail call i32 %202(ptr noundef %204, i8 noundef zeroext 41, i8 noundef zeroext %206) #8
  %207 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %bops26, align 4
  %write209 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %208, i32 0, i32 3
  %209 = ptrtoint ptr %write209 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %write209, align 4
  %211 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %call7.i.i, align 8
  %213 = ptrtoint ptr %tap_axis_control to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %tap_axis_control, align 1
  %call212 = tail call i32 %210(ptr noundef %212, i8 noundef zeroext 42, i8 noundef zeroext %214) #8
  %215 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %bops26, align 4
  %write214 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %216, i32 0, i32 3
  %217 = ptrtoint ptr %write214 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %write214, align 4
  %219 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %call7.i.i, align 8
  %act_axis_control = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 8
  %221 = ptrtoint ptr %act_axis_control to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %act_axis_control, align 4
  %call216 = tail call i32 %218(ptr noundef %220, i8 noundef zeroext 39, i8 noundef zeroext %222) #8
  %223 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %bops26, align 4
  %write218 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %write218 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write218, align 4
  %227 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %call7.i.i, align 8
  %data_rate = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 14
  %229 = ptrtoint ptr %data_rate to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %data_rate, align 2
  %231 = and i8 %230, 15
  %low_power_mode = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 16
  %232 = ptrtoint ptr %low_power_mode to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %low_power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %233)
  %tobool224.not = icmp eq i8 %233, 0
  %cond = select i1 %tobool224.not, i8 0, i8 16
  %or225 = or i8 %cond, %231
  %call227 = tail call i32 %226(ptr noundef %228, i8 noundef zeroext 44, i8 noundef zeroext %or225) #8
  %234 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %bops26, align 4
  %write229 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %235, i32 0, i32 3
  %236 = ptrtoint ptr %write229 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %write229, align 4
  %238 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %call7.i.i, align 8
  %data_range231 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 15
  %240 = ptrtoint ptr %data_range231 to i32
  call void @__asan_load1_noabort(i32 %240)
  %241 = load i8, ptr %data_range231, align 1
  %call232 = tail call i32 %237(ptr noundef %239, i8 noundef zeroext 49, i8 noundef zeroext %241) #8
  %242 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %bops26, align 4
  %write234 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %243, i32 0, i32 3
  %244 = ptrtoint ptr %write234 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %write234, align 4
  %246 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %call7.i.i, align 8
  %248 = ptrtoint ptr %fifo_mode122 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %fifo_mode122, align 2
  %250 = shl i8 %249, 6
  %251 = ptrtoint ptr %watermark to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %watermark, align 1
  %253 = and i8 %252, 31
  %or243517 = or i8 %253, %250
  %call245 = tail call i32 %245(ptr noundef %247, i8 noundef zeroext 56, i8 noundef zeroext %or243517) #8
  %use_int2 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 27
  %254 = ptrtoint ptr %use_int2 to i32
  call void @__asan_load1_noabort(i32 %254)
  %255 = load i8, ptr %use_int2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %255)
  %tobool246.not = icmp eq i8 %255, 0
  %256 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %bops26, align 4
  %write257 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %257, i32 0, i32 3
  %258 = ptrtoint ptr %write257 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %write257, align 4
  %260 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %call7.i.i, align 8
  br i1 %tobool246.not, label %if.end151.if.end260_crit_edge, label %if.then247

if.end151.if.end260_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end260

if.then247:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #10
  %262 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %int_mask95, align 8
  %264 = trunc i32 %263 to i8
  %conv253 = or i8 %264, 1
  br label %if.end260

if.end260:                                        ; preds = %if.then247, %if.end151.if.end260_crit_edge
  %.sink570 = phi i8 [ %conv253, %if.then247 ], [ 0, %if.end151.if.end260_crit_edge ]
  %call259 = tail call i32 %259(ptr noundef %261, i8 noundef zeroext 47, i8 noundef zeroext %.sink570) #8
  %265 = ptrtoint ptr %model45 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %model45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 346, i32 %266)
  %cmp262 = icmp eq i32 %266, 346
  br i1 %cmp262, label %land.lhs.true, label %if.end260.if.else308_crit_edge

if.end260.if.else308_crit_edge:                   ; preds = %if.end260
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else308

land.lhs.true:                                    ; preds = %if.end260
  %orientation_enable = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 28
  %267 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %orientation_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool266.not = icmp eq i8 %268, 0
  br i1 %tobool266.not, label %land.lhs.true.if.else308_crit_edge, label %if.then267

land.lhs.true.if.else308_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else308

if.then267:                                       ; preds = %land.lhs.true
  %269 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %bops26, align 4
  %write269 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %270, i32 0, i32 3
  %271 = ptrtoint ptr %write269 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %write269, align 4
  %273 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %call7.i.i, align 8
  %deadzone_angle = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 29
  %275 = ptrtoint ptr %deadzone_angle to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %deadzone_angle, align 2
  %277 = shl i8 %276, 4
  %278 = and i8 %277, 112
  %divisor_length = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 30
  %279 = ptrtoint ptr %divisor_length to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %divisor_length, align 1
  %281 = and i8 %280, 7
  %or278518 = or i8 %278, %281
  %call280 = tail call i32 %272(ptr noundef %274, i8 noundef zeroext 59, i8 noundef zeroext %or278518) #8
  %orient2d_saved = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 8
  %282 = ptrtoint ptr %orient2d_saved to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 1234, ptr %orient2d_saved, align 4
  %orient3d_saved = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 9
  %283 = ptrtoint ptr %orient3d_saved to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 1234, ptr %orient3d_saved, align 8
  %284 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %orientation_enable, align 1
  %286 = and i8 %285, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %286)
  %tobool284.not = icmp eq i8 %286, 0
  br i1 %tobool284.not, label %if.then267.if.end291_crit_edge, label %for.body.preheader

if.then267.if.end291_crit_edge:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291

for.body.preheader:                               ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx288 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 0
  %287 = ptrtoint ptr %arrayidx288 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %arrayidx288, align 8
  %rem.i551 = and i32 %288, 31
  %shl.i552 = shl nuw i32 1, %rem.i551
  %div2.i553 = lshr i32 %288, 5
  %add.ptr.i554 = getelementptr i32, ptr %keybit, i32 %div2.i553
  %289 = ptrtoint ptr %add.ptr.i554 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %add.ptr.i554, align 4
  %or.i555 = or i32 %shl.i552, %290
  store i32 %or.i555, ptr %add.ptr.i554, align 4
  %arrayidx288.1 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 1
  %291 = ptrtoint ptr %arrayidx288.1 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %arrayidx288.1, align 4
  %rem.i551.1 = and i32 %292, 31
  %shl.i552.1 = shl nuw i32 1, %rem.i551.1
  %div2.i553.1 = lshr i32 %292, 5
  %add.ptr.i554.1 = getelementptr i32, ptr %keybit, i32 %div2.i553.1
  %293 = ptrtoint ptr %add.ptr.i554.1 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %add.ptr.i554.1, align 4
  %or.i555.1 = or i32 %shl.i552.1, %294
  store i32 %or.i555.1, ptr %add.ptr.i554.1, align 4
  %arrayidx288.2 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 2
  %295 = ptrtoint ptr %arrayidx288.2 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %arrayidx288.2, align 8
  %rem.i551.2 = and i32 %296, 31
  %shl.i552.2 = shl nuw i32 1, %rem.i551.2
  %div2.i553.2 = lshr i32 %296, 5
  %add.ptr.i554.2 = getelementptr i32, ptr %keybit, i32 %div2.i553.2
  %297 = ptrtoint ptr %add.ptr.i554.2 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %add.ptr.i554.2, align 4
  %or.i555.2 = or i32 %shl.i552.2, %298
  store i32 %or.i555.2, ptr %add.ptr.i554.2, align 4
  %arrayidx288.3 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 3
  %299 = ptrtoint ptr %arrayidx288.3 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %arrayidx288.3, align 4
  %rem.i551.3 = and i32 %300, 31
  %shl.i552.3 = shl nuw i32 1, %rem.i551.3
  %div2.i553.3 = lshr i32 %300, 5
  %add.ptr.i554.3 = getelementptr i32, ptr %keybit, i32 %div2.i553.3
  %301 = ptrtoint ptr %add.ptr.i554.3 to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %add.ptr.i554.3, align 4
  %or.i555.3 = or i32 %shl.i552.3, %302
  store i32 %or.i555.3, ptr %add.ptr.i554.3, align 4
  %arrayidx288.4 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 4
  %303 = ptrtoint ptr %arrayidx288.4 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx288.4, align 8
  %rem.i551.4 = and i32 %304, 31
  %shl.i552.4 = shl nuw i32 1, %rem.i551.4
  %div2.i553.4 = lshr i32 %304, 5
  %add.ptr.i554.4 = getelementptr i32, ptr %keybit, i32 %div2.i553.4
  %305 = ptrtoint ptr %add.ptr.i554.4 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %add.ptr.i554.4, align 4
  %or.i555.4 = or i32 %shl.i552.4, %306
  store i32 %or.i555.4, ptr %add.ptr.i554.4, align 4
  %arrayidx288.5 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 32, i32 5
  %307 = ptrtoint ptr %arrayidx288.5 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %arrayidx288.5, align 4
  %rem.i551.5 = and i32 %308, 31
  %shl.i552.5 = shl nuw i32 1, %rem.i551.5
  %div2.i553.5 = lshr i32 %308, 5
  %add.ptr.i554.5 = getelementptr i32, ptr %keybit, i32 %div2.i553.5
  %309 = ptrtoint ptr %add.ptr.i554.5 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %add.ptr.i554.5, align 4
  %or.i555.5 = or i32 %shl.i552.5, %310
  store i32 %or.i555.5, ptr %add.ptr.i554.5, align 4
  br label %if.end291

if.end291:                                        ; preds = %for.body.preheader, %if.then267.if.end291_crit_edge
  %311 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %orientation_enable, align 1
  %313 = and i8 %312, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool295.not = icmp eq i8 %313, 0
  br i1 %tobool295.not, label %if.end291.if.end311_crit_edge, label %for.body300.preheader

if.end291.if.end311_crit_edge:                    ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

for.body300.preheader:                            ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx301 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 31, i32 0
  %314 = ptrtoint ptr %arrayidx301 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx301, align 8
  %rem.i556 = and i32 %315, 31
  %shl.i557 = shl nuw i32 1, %rem.i556
  %div2.i558 = lshr i32 %315, 5
  %add.ptr.i559 = getelementptr i32, ptr %keybit, i32 %div2.i558
  %316 = ptrtoint ptr %add.ptr.i559 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %add.ptr.i559, align 4
  %or.i560 = or i32 %shl.i557, %317
  store i32 %or.i560, ptr %add.ptr.i559, align 4
  %arrayidx301.1 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 31, i32 1
  %318 = ptrtoint ptr %arrayidx301.1 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load i32, ptr %arrayidx301.1, align 4
  %rem.i556.1 = and i32 %319, 31
  %shl.i557.1 = shl nuw i32 1, %rem.i556.1
  %div2.i558.1 = lshr i32 %319, 5
  %add.ptr.i559.1 = getelementptr i32, ptr %keybit, i32 %div2.i558.1
  %320 = ptrtoint ptr %add.ptr.i559.1 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %add.ptr.i559.1, align 4
  %or.i560.1 = or i32 %shl.i557.1, %321
  store i32 %or.i560.1, ptr %add.ptr.i559.1, align 4
  %arrayidx301.2 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 31, i32 2
  %322 = ptrtoint ptr %arrayidx301.2 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx301.2, align 8
  %rem.i556.2 = and i32 %323, 31
  %shl.i557.2 = shl nuw i32 1, %rem.i556.2
  %div2.i558.2 = lshr i32 %323, 5
  %add.ptr.i559.2 = getelementptr i32, ptr %keybit, i32 %div2.i558.2
  %324 = ptrtoint ptr %add.ptr.i559.2 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %add.ptr.i559.2, align 4
  %or.i560.2 = or i32 %shl.i557.2, %325
  store i32 %or.i560.2, ptr %add.ptr.i559.2, align 4
  %arrayidx301.3 = getelementptr %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 31, i32 3
  %326 = ptrtoint ptr %arrayidx301.3 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %arrayidx301.3, align 4
  %rem.i556.3 = and i32 %327, 31
  %shl.i557.3 = shl nuw i32 1, %rem.i556.3
  %div2.i558.3 = lshr i32 %327, 5
  %add.ptr.i559.3 = getelementptr i32, ptr %keybit, i32 %div2.i558.3
  %328 = ptrtoint ptr %add.ptr.i559.3 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %add.ptr.i559.3, align 4
  %or.i560.3 = or i32 %shl.i557.3, %329
  store i32 %or.i560.3, ptr %add.ptr.i559.3, align 4
  br label %if.end311

if.else308:                                       ; preds = %land.lhs.true.if.else308_crit_edge, %if.end260.if.else308_crit_edge
  %orientation_enable310 = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 28
  %330 = ptrtoint ptr %orientation_enable310 to i32
  call void @__asan_store1_noabort(i32 %330)
  store i8 0, ptr %orientation_enable310, align 1
  br label %if.end311

if.end311:                                        ; preds = %if.else308, %for.body300.preheader, %if.end291.if.end311_crit_edge
  %331 = ptrtoint ptr %bops26 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %bops26, align 4
  %write313 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %332, i32 0, i32 3
  %333 = ptrtoint ptr %write313 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %write313, align 4
  %335 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %call7.i.i, align 8
  %337 = ptrtoint ptr %int_mask95 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %int_mask95, align 8
  %339 = trunc i32 %338 to i8
  %conv317 = or i8 %339, 1
  %call318 = tail call i32 %334(ptr noundef %336, i8 noundef zeroext 46, i8 noundef zeroext %conv317) #8
  %power_mode = getelementptr inbounds %struct.adxl34x, ptr %call7.i.i, i32 0, i32 3, i32 17
  %340 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %power_mode, align 1
  %342 = and i8 %341, 48
  store i8 %342, ptr %power_mode, align 1
  br label %cleanup

err_remove_attr:                                  ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @adxl34x_attr_group) #8
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_remove_attr, %if.end143.err_free_irq_crit_edge
  %err.0 = phi i32 [ %call144, %if.end143.err_free_irq_crit_edge ], [ %call148, %err_remove_attr ]
  %343 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %irq25, align 8
  %call325 = tail call ptr @free_irq(i32 noundef %344, ptr noundef nonnull %call7.i.i) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_free_irq, %do.end141, %do.end37, %if.end.err_free_mem_crit_edge
  %err.1 = phi i32 [ -19, %do.end37 ], [ %call136, %do.end141 ], [ %err.0, %err_free_irq ], [ -12, %if.end.err_free_mem_crit_edge ]
  tail call void @input_free_device(ptr noundef %call1) #8
  tail call void @kfree(ptr noundef %call7.i.i) #8
  br label %err_out

err_out:                                          ; preds = %err_free_mem, %do.end
  %err.2 = phi i32 [ %err.1, %err_free_mem ], [ -19, %do.end ]
  %345 = inttoptr i32 %err.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end311
  %retval.0 = phi ptr [ %345, %err_out ], [ %call7.i.i, %if.end311 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_input_open(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops.i, align 4
  %write.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %power_mode.i = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 17
  %12 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %power_mode.i, align 1
  %14 = or i8 %13, 8
  %call.i = tail call i32 %9(ptr noundef %11, i8 noundef zeroext 45, i8 noundef zeroext %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %opened, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @adxl34x_input_close(ptr nocapture noundef readonly %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %disabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bops.i, align 4
  %write.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %call.i = tail call i32 %9(ptr noundef %11, i8 noundef zeroext 45, i8 noundef zeroext 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %opened = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %opened to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %opened, align 1
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_irq(i32 noundef %irq, ptr noundef %handle) #0 align 64 {
entry:
  %buf.i.i = alloca [3 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3
  %tap_axis_control = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %tap_axis_control to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tap_axis_control, align 1
  %2 = and i8 %1, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bops = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 17
  %3 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bops, align 4
  %read = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read, align 4
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %handle, align 4
  %call = tail call i32 %6(ptr noundef %8, i8 noundef zeroext 43) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tap_stat.0 = phi i32 [ %call, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %bops2 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 17
  %9 = ptrtoint ptr %bops2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bops2, align 4
  %read3 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %read3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %read3, align 4
  %13 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %handle, align 4
  %call5 = tail call i32 %12(ptr noundef %14, i8 noundef zeroext 48) #8
  %and6 = and i32 %call5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %input = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %15 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input, align 4
  %ev_code_ff = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 25
  %17 = ptrtoint ptr %ev_code_ff to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ev_code_ff, align 4
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef %18, i32 noundef 1) #8
  tail call void @input_event(ptr noundef %16, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %16, i32 noundef 1, i32 noundef %18, i32 noundef 0) #8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %and10 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end9.if.end20_crit_edge, label %do.body

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adxl34x_irq.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adxl34x_irq, %if.then17)) #8
          to label %if.end20 [label %if.then17], !srcloc !87

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %handle, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adxl34x_irq.__UNIQUE_ID_ddebug227, ptr noundef %20, ptr noundef nonnull @.str.19) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %do.body, %if.end9.if.end20_crit_edge
  %and21 = and i32 %call5, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end28_crit_edge, label %if.then23

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then23:                                        ; preds = %if.end20
  tail call fastcc void @adxl34x_do_tap(ptr noundef %handle, ptr noundef %pdata1, i32 noundef %tap_stat.0)
  %and24 = and i32 %call5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.then23.if.end28_crit_edge, label %if.then26

if.then23.if.end28_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @adxl34x_do_tap(ptr noundef %handle, ptr noundef %pdata1, i32 noundef %tap_stat.0)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.then23.if.end28_crit_edge, %if.end20.if.end28_crit_edge
  %ev_code_act_inactivity = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 26
  %21 = ptrtoint ptr %ev_code_act_inactivity to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ev_code_act_inactivity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool29.not = icmp eq i32 %22, 0
  br i1 %tobool29.not, label %if.end28.if.end43_crit_edge, label %if.then30

if.end28.if.end43_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then30:                                        ; preds = %if.end28
  %and31 = and i32 %call5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.then30.if.end36_crit_edge, label %if.then33

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then33:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %input34 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %23 = ptrtoint ptr %input34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input34, align 4
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef %22, i32 noundef 1) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.then30.if.end36_crit_edge
  %and37 = and i32 %call5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end36.if.end43_crit_edge, label %if.then39

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %input40 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %25 = ptrtoint ptr %input40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %input40, align 4
  %27 = ptrtoint ptr %ev_code_act_inactivity to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ev_code_act_inactivity, align 4
  tail call void @input_event(ptr noundef %26, i32 noundef 1, i32 noundef %28, i32 noundef 0) #8
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end36.if.end43_crit_edge, %if.end28.if.end43_crit_edge
  %orientation_enable = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 28
  %29 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %orientation_enable, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool44.not = icmp eq i8 %30, 0
  br i1 %tobool44.not, label %if.end43.if.end81_crit_edge, label %if.then45

if.end43.if.end81_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then45:                                        ; preds = %if.end43
  %31 = ptrtoint ptr %bops2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bops2, align 4
  %read47 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %read47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %read47, align 4
  %35 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %handle, align 4
  %call49 = tail call i32 %34(ptr noundef %36, i8 noundef zeroext 60) #8
  %37 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %orientation_enable, align 1
  %39 = and i8 %38, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool53.not = icmp eq i8 %39, 0
  %and54 = and i32 %call49, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  %or.cond = select i1 %tobool53.not, i1 true, i1 %tobool55.not
  br i1 %or.cond, label %if.then45.if.end63_crit_edge, label %if.then56

if.then45.if.end63_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then56:                                        ; preds = %if.then45
  %and57 = lshr i32 %call49, 4
  %40 = and i32 %and57, 3
  %orient2d_saved = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 8
  %41 = ptrtoint ptr %orient2d_saved to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %orient2d_saved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %40)
  %cmp.not = icmp eq i32 %42, %40
  br i1 %cmp.not, label %if.then56.if.end63_crit_edge, label %if.then59

if.then56.if.end63_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end63

if.then59:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %orient2d_saved to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %orient2d_saved, align 4
  %input61 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %44 = ptrtoint ptr %input61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %input61, align 4
  %arrayidx = getelementptr %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 31, i32 %40
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef %47, i32 noundef 1) #8
  tail call void @input_event(ptr noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %45, i32 noundef 1, i32 noundef %47, i32 noundef 0) #8
  br label %if.end63

if.end63:                                         ; preds = %if.then59, %if.then56.if.end63_crit_edge, %if.then45.if.end63_crit_edge
  %48 = ptrtoint ptr %orientation_enable to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %orientation_enable, align 1
  %50 = and i8 %49, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool67.not = icmp eq i8 %50, 0
  %and69 = and i32 %call49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %or.cond157 = select i1 %tobool67.not, i1 true, i1 %tobool70.not
  br i1 %or.cond157, label %if.end63.if.end81_crit_edge, label %if.then71

if.end63.if.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then71:                                        ; preds = %if.end63
  %and72 = and i32 %call49, 7
  %sub = add nsw i32 %and72, -1
  %orient3d_saved = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 9
  %51 = ptrtoint ptr %orient3d_saved to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %orient3d_saved, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %sub)
  %cmp73.not = icmp eq i32 %52, %sub
  br i1 %cmp73.not, label %if.then71.if.end81_crit_edge, label %if.then75

if.then71.if.end81_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then75:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %orient3d_saved to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub, ptr %orient3d_saved, align 4
  %input77 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %54 = ptrtoint ptr %input77 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %input77, align 4
  %arrayidx78 = getelementptr %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 32, i32 %sub
  %56 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx78, align 4
  tail call void @input_event(ptr noundef %55, i32 noundef 1, i32 noundef %57, i32 noundef 1) #8
  tail call void @input_event(ptr noundef %55, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  tail call void @input_event(ptr noundef %55, i32 noundef 1, i32 noundef %57, i32 noundef 0) #8
  br label %if.end81

if.end81:                                         ; preds = %if.then75, %if.then71.if.end81_crit_edge, %if.end63.if.end81_crit_edge, %if.end43.if.end81_crit_edge
  %and82 = and i32 %call5, 130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82)
  %tobool83.not = icmp eq i32 %and82, 0
  br i1 %tobool83.not, label %if.end81.if.end103_crit_edge, label %if.then84

if.end81.if.end103_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

if.then84:                                        ; preds = %if.end81
  %fifo_mode = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 18
  %58 = ptrtoint ptr %fifo_mode to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %fifo_mode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool85.not = icmp eq i8 %59, 0
  br i1 %tobool85.not, label %if.then84.if.end93_crit_edge, label %if.then86

if.then84.if.end93_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

if.then86:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %bops2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bops2, align 4
  %read88 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %read88 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %read88, align 4
  %64 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %handle, align 4
  %call90 = tail call i32 %63(ptr noundef %65, i8 noundef zeroext 57) #8
  %and91 = and i32 %call90, 63
  %add = add nuw nsw i32 %and91, 1
  br label %if.end93

if.end93:                                         ; preds = %if.then86, %if.then84.if.end93_crit_edge
  %samples.0 = phi i32 [ %add, %if.then86 ], [ 1, %if.then84.if.end93_crit_edge ]
  %66 = getelementptr inbounds [3 x i16], ptr %buf.i.i, i32 0, i32 1
  %67 = getelementptr inbounds [3 x i16], ptr %buf.i.i, i32 0, i32 2
  %mutex.i.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 2
  %saved.i.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 6
  %y.i.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 6, i32 1
  %z.i.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 6, i32 2
  %input.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %ev_type.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 20
  %ev_code_x.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 21
  %swcal.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 4
  %ev_code_y.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 22
  %y6.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 4, i32 1
  %ev_code_z.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 3, i32 23
  %z11.i = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 4, i32 2
  %fifo_delay = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end93
  %samples.1160 = phi i32 [ %samples.0, %if.end93 ], [ %dec, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf.i.i) #8
  %68 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 -1, ptr %buf.i.i, align 2, !annotation !88
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 -1, ptr %66, align 2, !annotation !88
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %67, align 2, !annotation !88
  %71 = ptrtoint ptr %bops2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %bops2, align 4
  %read_block.i.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %read_block.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %read_block.i.i, align 4
  %75 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %handle, align 4
  %call.i.i = call i32 %74(ptr noundef %76, i8 noundef zeroext 50, i32 noundef 6, ptr noundef nonnull %buf.i.i) #8
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #8
  %77 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %buf.i.i, align 2
  %79 = call i16 @llvm.bswap.i16(i16 %78) #8
  %conv.i.i = sext i16 %79 to i32
  %80 = ptrtoint ptr %saved.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %conv.i.i, ptr %saved.i.i, align 4
  %81 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %66, align 2
  %83 = call i16 @llvm.bswap.i16(i16 %82) #8
  %conv5.i.i = sext i16 %83 to i32
  %84 = ptrtoint ptr %y.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %conv5.i.i, ptr %y.i.i, align 4
  %85 = ptrtoint ptr %67 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %67, align 2
  %87 = call i16 @llvm.bswap.i16(i16 %86) #8
  %conv11.i.i = sext i16 %87 to i32
  %88 = ptrtoint ptr %z.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv11.i.i, ptr %z.i.i, align 4
  call void @mutex_unlock(ptr noundef %mutex.i.i) #8
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf.i.i) #8
  %89 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %input.i, align 4
  %91 = ptrtoint ptr %ev_type.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ev_type.i, align 4
  %93 = ptrtoint ptr %ev_code_x.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %ev_code_x.i, align 4
  %95 = ptrtoint ptr %swcal.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %swcal.i, align 4
  %sub.i = sub i32 %conv.i.i, %96
  call void @input_event(ptr noundef %90, i32 noundef %92, i32 noundef %94, i32 noundef %sub.i) #8
  %97 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %input.i, align 4
  %99 = ptrtoint ptr %ev_type.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %ev_type.i, align 4
  %101 = ptrtoint ptr %ev_code_y.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %ev_code_y.i, align 4
  %103 = ptrtoint ptr %y6.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %y6.i, align 4
  %sub7.i = sub i32 %conv5.i.i, %104
  call void @input_event(ptr noundef %98, i32 noundef %100, i32 noundef %102, i32 noundef %sub7.i) #8
  %105 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %input.i, align 4
  %107 = ptrtoint ptr %ev_type.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %ev_type.i, align 4
  %109 = ptrtoint ptr %ev_code_z.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %ev_code_z.i, align 4
  %111 = ptrtoint ptr %z11.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %z11.i, align 4
  %sub12.i = sub i32 %conv11.i.i, %112
  call void @input_event(ptr noundef %106, i32 noundef %108, i32 noundef %110, i32 noundef %sub12.i) #8
  %113 = ptrtoint ptr %fifo_delay to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %fifo_delay, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool96.not = icmp ne i8 %114, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %samples.1160)
  %cmp99 = icmp ne i32 %samples.1160, 1
  %or.cond158 = select i1 %tobool96.not, i1 %cmp99, i1 false
  br i1 %or.cond158, label %if.then101, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then101:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %115 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %115(i32 noundef 644244) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then101, %for.body.for.inc_crit_edge
  %dec = add nsw i32 %samples.1160, -1
  %cmp94 = icmp sgt i32 %samples.1160, 1
  br i1 %cmp94, label %for.inc.for.body_crit_edge, label %for.inc.if.end103_crit_edge

for.inc.if.end103_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end103

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end103:                                        ; preds = %for.inc.if.end103_crit_edge, %if.end81.if.end103_crit_edge
  %input104 = getelementptr inbounds %struct.adxl34x, ptr %handle, i32 0, i32 1
  %116 = ptrtoint ptr %input104 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %input104, align 4
  call void @input_event(ptr noundef %117, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @adxl34x_remove(ptr noundef %ac) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ac, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @adxl34x_attr_group) #8
  %irq = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 14
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %ac) #8
  %input = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 1
  %4 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input, align 4
  tail call void @input_unregister_device(ptr noundef %5) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adxl34x_remove.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@adxl34x_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !87

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %ac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ac, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adxl34x_remove.__UNIQUE_ID_ddebug229, ptr noundef %7, ptr noundef nonnull @.str.17) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @kfree(ptr noundef %ac) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adxl34x_do_tap(ptr nocapture noundef readonly %ac, ptr nocapture noundef readonly %pdata, i32 noundef %status) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %input.i = getelementptr inbounds %struct.adxl34x, ptr %ac, i32 0, i32 1
  %and.i = and i32 %status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input.i, align 4
  %arrayidx.i = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %3, i32 noundef 1) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %entry.for.inc.i_crit_edge
  %and.1.i = and i32 %status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.then.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input.i, align 4
  %arrayidx.1.i = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i, align 4
  tail call void @input_event(ptr noundef %5, i32 noundef 1, i32 noundef %7, i32 noundef 1) #8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %and.2.i = and i32 %status, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.adxl34x_send_key_events.exit_crit_edge, label %if.then.2.i

for.inc.1.i.adxl34x_send_key_events.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adxl34x_send_key_events.exit

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input.i, align 4
  %arrayidx.2.i = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.2.i, align 4
  tail call void @input_event(ptr noundef %9, i32 noundef 1, i32 noundef %11, i32 noundef 1) #8
  br label %adxl34x_send_key_events.exit

adxl34x_send_key_events.exit:                     ; preds = %if.then.2.i, %for.inc.1.i.adxl34x_send_key_events.exit_crit_edge
  %12 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br i1 %tobool.not.i, label %adxl34x_send_key_events.exit.for.inc.i12_crit_edge, label %if.then.i9

adxl34x_send_key_events.exit.for.inc.i12_crit_edge: ; preds = %adxl34x_send_key_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i12

if.then.i9:                                       ; preds = %adxl34x_send_key_events.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input.i, align 4
  %arrayidx.i8 = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 0
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i8, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef %17, i32 noundef 0) #8
  br label %for.inc.i12

for.inc.i12:                                      ; preds = %if.then.i9, %adxl34x_send_key_events.exit.for.inc.i12_crit_edge
  br i1 %tobool.not.1.i, label %for.inc.i12.for.inc.1.i17_crit_edge, label %if.then.1.i14

for.inc.i12.for.inc.1.i17_crit_edge:              ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i17

if.then.1.i14:                                    ; preds = %for.inc.i12
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input.i, align 4
  %arrayidx.1.i13 = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 1
  %20 = ptrtoint ptr %arrayidx.1.i13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.1.i13, align 4
  tail call void @input_event(ptr noundef %19, i32 noundef 1, i32 noundef %21, i32 noundef 0) #8
  br label %for.inc.1.i17

for.inc.1.i17:                                    ; preds = %if.then.1.i14, %for.inc.i12.for.inc.1.i17_crit_edge
  br i1 %tobool.not.2.i, label %for.inc.1.i17.adxl34x_send_key_events.exit20_crit_edge, label %if.then.2.i19

for.inc.1.i17.adxl34x_send_key_events.exit20_crit_edge: ; preds = %for.inc.1.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %adxl34x_send_key_events.exit20

if.then.2.i19:                                    ; preds = %for.inc.1.i17
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i, align 4
  %arrayidx.2.i18 = getelementptr %struct.adxl34x_platform_data, ptr %pdata, i32 0, i32 24, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2.i18, align 4
  tail call void @input_event(ptr noundef %23, i32 noundef 1, i32 noundef %25, i32 noundef 0) #8
  br label %adxl34x_send_key_events.exit20

adxl34x_send_key_events.exit20:                   ; preds = %if.then.2.i19, %for.inc.1.i17.adxl34x_send_key_events.exit20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_disable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %disabled, align 4, !range !86
  %4 = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %4)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_disable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !88
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 12
  %3 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %opened = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %opened, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end15_crit_edge, label %if.then4

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then4:                                         ; preds = %land.lhs.true
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %disabled10 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %disabled10 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disabled10, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool11.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then4
  br i1 %tobool11.not, label %if.then8, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %bops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bops.i, align 4
  %write.i = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i = call i32 %14(ptr noundef %16, i8 noundef zeroext 45, i8 noundef zeroext 0) #8
  br label %if.end15

if.else:                                          ; preds = %if.then4
  br i1 %tobool11.not, label %if.else.if.end15_crit_edge, label %if.then12

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %bops.i31 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %bops.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bops.i31, align 4
  %write.i32 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write.i32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write.i32, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %power_mode.i = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 17
  %23 = ptrtoint ptr %power_mode.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %power_mode.i, align 1
  %25 = or i8 %24, 8
  %call.i33 = call i32 %20(ptr noundef %22, i8 noundef zeroext 45, i8 noundef zeroext %25) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.else.if.end15_crit_edge, %if.then8, %if.then6.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool16 = icmp ne i32 %27, 0
  %disabled18 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %frombool = zext i1 %tobool16 to i8
  %28 = ptrtoint ptr %disabled18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %disabled18, align 4
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end15 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_calibrate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %hwcal = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %hwcal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwcal, align 4
  %mul = shl i32 %3, 2
  %swcal = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %swcal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %swcal, align 4
  %add = add i32 %mul, %5
  %y = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y, align 4
  %mul3 = shl i32 %7, 2
  %y5 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %y5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %y5, align 4
  %add6 = add i32 %mul3, %9
  %z = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %z, align 4
  %mul8 = shl i32 %11, 2
  %z10 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %z10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %z10, align 4
  %add11 = add i32 %mul8, %13
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, i32 noundef %add, i32 noundef %add6, i32 noundef %add11)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_calibrate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readnone %buf, i32 noundef returned %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %saved = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved, align 4
  %div.neg = sdiv i32 %3, -4
  %hwcal = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %hwcal to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwcal, align 4
  %sub = add i32 %div.neg, %5
  store i32 %sub, ptr %hwcal, align 4
  %rem = srem i32 %3, 4
  %swcal = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %swcal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %rem, ptr %swcal, align 4
  %y = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %y, align 4
  %div6.neg = sdiv i32 %8, -4
  %y8 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %y8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %y8, align 4
  %sub9 = add i32 %div6.neg, %10
  store i32 %sub9, ptr %y8, align 4
  %rem12 = srem i32 %8, 4
  %y14 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %y14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rem12, ptr %y14, align 4
  %z = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %z, align 4
  %div16.neg = sdiv i32 %13, -4
  %z18 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %z18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %z18, align 4
  %sub19 = add i32 %div16.neg, %15
  store i32 %sub19, ptr %z18, align 4
  %rem22 = srem i32 %13, 4
  %z24 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %z24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem22, ptr %z24, align 4
  %bops = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bops, align 4
  %write = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %write, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %conv = trunc i32 %sub to i8
  %call28 = tail call i32 %20(ptr noundef %22, i8 noundef zeroext 30, i8 noundef zeroext %conv) #8
  %23 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bops, align 4
  %write30 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %write30 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %write30, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %29 = ptrtoint ptr %y8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y8, align 4
  %conv34 = trunc i32 %30 to i8
  %call35 = tail call i32 %26(ptr noundef %28, i8 noundef zeroext 31, i8 noundef zeroext %conv34) #8
  %31 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bops, align 4
  %write37 = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %write37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %write37, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %37 = ptrtoint ptr %z18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %z18, align 4
  %conv41 = trunc i32 %38 to i8
  %call42 = tail call i32 %34(ptr noundef %36, i8 noundef zeroext 32, i8 noundef zeroext %conv41) #8
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_rate_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %data_rate = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 14
  %2 = ptrtoint ptr %data_rate to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data_rate, align 2
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_rate_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !88
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = and i8 %4, 15
  %data_rate = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 14
  %6 = ptrtoint ptr %data_rate to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %data_rate, align 2
  %bops = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bops, align 4
  %write = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %low_power_mode = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 16
  %13 = ptrtoint ptr %low_power_mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %low_power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool9.not = icmp eq i8 %14, 0
  %cond = select i1 %tobool9.not, i8 0, i8 16
  %or = or i8 %cond, %5
  %call11 = call i32 %10(ptr noundef %12, i8 noundef zeroext 44, i8 noundef zeroext %or) #8
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_autosleep_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %power_mode = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 17
  %2 = ptrtoint ptr %power_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %power_mode, align 1
  %4 = and i8 %3, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp ne i8 %4, 0
  %cond = zext i1 %tobool.not to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_autosleep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !88
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  %power_mode6 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 17
  %5 = ptrtoint ptr %power_mode6 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %power_mode6, align 1
  %7 = and i8 %6, -49
  %masksel = select i1 %tobool2.not, i8 0, i8 48
  %.sink = or i8 %7, %masksel
  store i8 %.sink, ptr %power_mode6, align 1
  %disabled = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %disabled, align 4, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end
  %suspended = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspended, align 2, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool11.not = icmp eq i8 %11, 0
  br i1 %tobool11.not, label %land.lhs.true12, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

land.lhs.true12:                                  ; preds = %land.lhs.true
  %opened = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 11
  %12 = ptrtoint ptr %opened to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %opened, align 1, !range !86
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end23_crit_edge, label %if.then15

land.lhs.true12.if.end23_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then15:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #10
  %bops = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %bops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bops, align 4
  %write = getelementptr inbounds %struct.adxl34x_bus_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %write, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %power_mode18 = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 3, i32 17
  %20 = ptrtoint ptr %power_mode18 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %power_mode18, align 1
  %22 = or i8 %21, 8
  %call22 = call i32 %17(ptr noundef %19, i8 noundef zeroext 45, i8 noundef zeroext %22) #8
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %land.lhs.true12.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end23 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adxl34x_position_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mutex = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #8
  %saved = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %saved to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %saved, align 4
  %y = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %y, align 4
  %z = getelementptr inbounds %struct.adxl34x, ptr %1, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %z, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  tail call void @mutex_unlock(ptr noundef %mutex) #8
  ret i32 %call3
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !23, !24, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !41, !43, !45, !46, !48, !50, !51, !52, !54, !56, !58, !59, !61, !63, !64, !66, !68, !69, !71, !72, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__ksymtab_adxl34x_suspend, !1, !"__ksymtab_adxl34x_suspend", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/adxl34x.c", i32 426, i32 1}
!2 = !{ptr @__ksymtab_adxl34x_resume, !3, !"__ksymtab_adxl34x_resume", i1 false, i1 false}
!3 = !{!"../drivers/input/misc/adxl34x.c", i32 439, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/input/misc/adxl34x.c", i32 702, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @adxl34x_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @adxl34x_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/misc/adxl34x.c", i32 718, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @adxl34x_probe.__UNIQUE_ID_ddebug228, !13, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!16 = !{ptr @adxl34x_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/adxl34x.c", i32 731, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/input/misc/adxl34x.c", i32 733, i32 20}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/input/misc/adxl34x.c", i32 744, i32 3}
!23 = !{ptr @adxl34x_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @adxl34x_probe._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/misc/adxl34x.c", i32 749, i32 39}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/adxl34x.c", i32 817, i32 3}
!29 = !{ptr @adxl34x_probe._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @adxl34x_probe._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_adxl34x_probe, !32, !"__ksymtab_adxl34x_probe", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/adxl34x.c", i32 897, i32 1}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/misc/adxl34x.c", i32 904, i32 2}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @adxl34x_remove.__UNIQUE_ID_ddebug229, !34, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!37 = !{ptr @__ksymtab_adxl34x_remove, !38, !"__ksymtab_adxl34x_remove", i1 false, i1 false}
!38 = !{!"../drivers/input/misc/adxl34x.c", i32 907, i32 1}
!39 = !{ptr @__UNIQUE_ID_author230, !40, !"__UNIQUE_ID_author230", i1 false, i1 false}
!40 = !{!"../drivers/input/misc/adxl34x.c", i32 909, i32 1}
!41 = !{ptr @__UNIQUE_ID_description231, !42, !"__UNIQUE_ID_description231", i1 false, i1 false}
!42 = !{!"../drivers/input/misc/adxl34x.c", i32 910, i32 1}
!43 = !{ptr @__UNIQUE_ID_file232, !44, !"__UNIQUE_ID_file232", i1 false, i1 false}
!44 = !{!"../drivers/input/misc/adxl34x.c", i32 911, i32 1}
!45 = !{ptr @__UNIQUE_ID_license233, !44, !"__UNIQUE_ID_license233", i1 false, i1 false}
!46 = !{ptr @adxl34x_default_init, !47, !"adxl34x_default_init", i1 false, i1 false}
!47 = !{!"../drivers/input/misc/adxl34x.c", i32 212, i32 43}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/misc/adxl34x.c", i32 320, i32 3}
!50 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @adxl34x_irq.__UNIQUE_ID_ddebug227, !49, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!52 = !{ptr @adxl34x_attr_group, !53, !"adxl34x_attr_group", i1 false, i1 false}
!53 = !{!"../drivers/input/misc/adxl34x.c", i32 657, i32 37}
!54 = !{ptr @adxl34x_attributes, !55, !"adxl34x_attributes", i1 false, i1 false}
!55 = !{!"../drivers/input/misc/adxl34x.c", i32 645, i32 26}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/adxl34x.c", i32 480, i32 8}
!58 = !{ptr @dev_attr_disable, !57, !"dev_attr_disable", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/adxl34x.c", i32 446, i32 22}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/misc/adxl34x.c", i32 527, i32 8}
!63 = !{ptr @dev_attr_calibrate, !62, !"dev_attr_calibrate", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/misc/adxl34x.c", i32 489, i32 23}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/misc/adxl34x.c", i32 562, i32 8}
!68 = !{ptr @dev_attr_rate, !67, !"dev_attr_rate", i1 false, i1 false}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/input/misc/adxl34x.c", i32 600, i32 8}
!71 = !{ptr @dev_attr_autosleep, !70, !"dev_attr_autosleep", i1 false, i1 false}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/input/misc/adxl34x.c", i32 617, i32 8}
!74 = !{ptr @dev_attr_position, !73, !"dev_attr_position", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/misc/adxl34x.c", i32 610, i32 23}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i8 0, i8 2}
!87 = !{i64 2148298866, i64 2148298871, i64 2148298884, i64 2148298928, i64 2148298962, i64 2148298983}
!88 = !{!"auto-init"}
