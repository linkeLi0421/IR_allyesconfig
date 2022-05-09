; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-mmio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-mmio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bgpio_init\22, \22a\22\09"
module asm "\09.weak\09__crc_bgpio_init\09\09\09\09"
module asm "\09.long\09__crc_bgpio_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bgpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22bgpio_init\22\09\09\09\09\09"
module asm "__kstrtabns_bgpio_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.bgpio_pdata = type { ptr, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@bgpio_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&gc->bgpio_lock\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_bgpio_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_bgpio_init = external dso_local constant [0 x i8], align 1
@__ksymtab_bgpio_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bgpio_init to i32), ptr @__kstrtab_bgpio_init, ptr @__kstrtabns_bgpio_init }, section "___ksymtab_gpl+bgpio_init", align 4
@__initcall__kmod_gpio_generic__223_816_bgpio_driver_init6 = internal global ptr @bgpio_driver_init, section ".initcall6.init", align 4
@bgpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bgpio_pdev_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bgpio_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bgpio_driver_exit = internal global ptr @bgpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description224 = internal constant [73 x i8] c"gpio_generic.description=Driver for basic memory-mapped GPIO controllers\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [61 x i8] c"gpio_generic.author=Anton Vorontsov <cbouatmailru@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file226 = internal constant [44 x i8] c"gpio_generic.file=drivers/gpio/gpio-generic\00", section ".modinfo", align 1
@__UNIQUE_ID_license227 = internal constant [25 x i8] c"gpio_generic.license=GPL\00", section ".modinfo", align 1
@bgpio_setup_accessors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 459, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unsupported data width %u bits\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bgpio_setup_accessors\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-mmio.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bgpio_setup_accessors._entry_ptr = internal global ptr @bgpio_setup_accessors._entry, section ".printk_index", align 4
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"basic-mmio-gpio\00", [16 x i8] zeroinitializer }, align 32
@bgpio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6345-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wd,mbl-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ni,169445-nand-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bgpio_id_table = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"basic-mmio-gpio\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"basic-mmio-gpio-be\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dat\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clr\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dirout\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dirin\00", [26 x i8] zeroinitializer }, align 32
@bgpio_pdev_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bgpio_pdev_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no-output\00", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 613, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"bgpio_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 807, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 459, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 809, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"bgpio_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 685, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"bgpio_id_table\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 795, i32 40 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 748, i32 57 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 758, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 762, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 766, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 770, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 792, i32 9 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [28 x i8] c"../drivers/gpio/gpio-mmio.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 711, i32 47 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description224, ptr @__UNIQUE_ID_file226, ptr @__UNIQUE_ID_license227, ptr @__exitcall_bgpio_driver_exit, ptr @__initcall__kmod_gpio_generic__223_816_bgpio_driver_init6, ptr @__ksymtab_bgpio_init, ptr @bgpio_driver_exit, ptr @bgpio_setup_accessors._entry, ptr @bgpio_setup_accessors._entry_ptr, ptr @bgpio_init.__key, ptr @.str, ptr @bgpio_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @bgpio_of_match, ptr @bgpio_id_table, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @bgpio_pdev_probe.lock_key, ptr @bgpio_pdev_probe.request_key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_setup_accessors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_pdev_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bgpio_pdev_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bgpio_init(ptr noundef %gc, ptr noundef %dev, i32 noundef %sz, ptr noundef %dat, ptr noundef %set, ptr noundef %clr, ptr noundef %dirout, ptr noundef %dirin, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.ctpop.i32(i32 %sz) #8, !range !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %sz, 3
  %bgpio_bits = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %mul, ptr %bgpio_bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp = icmp sgt i32 %mul, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  tail call void @__raw_spin_lock_init(ptr noundef %bgpio_lock, ptr noundef nonnull @.str, ptr noundef nonnull @bgpio_init.__key, i16 noundef signext 3) #8
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %parent, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.dev_name.exit_crit_edge

do.body.dev_name.exit_crit_edge:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.body.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.body.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retval.0.i, ptr %gc, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %9 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %base, align 4
  %10 = ptrtoint ptr %bgpio_bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bgpio_bits, align 4
  %conv = trunc i32 %11 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %ngpio, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 5
  %13 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @bgpio_request, ptr %request, align 4
  %be_bits = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %14 = trunc i32 %flags to i8
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %be_bits to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %be_bits, align 4
  %reg_dat.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %17 = ptrtoint ptr %reg_dat.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %dat, ptr %reg_dat.i, align 4
  %tobool.not.i121 = icmp eq ptr %dat, null
  br i1 %tobool.not.i121, label %dev_name.exit.cleanup_crit_edge, label %if.end.i122

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i122:                                      ; preds = %dev_name.exit
  %tobool2.not.i = icmp eq ptr %set, null
  %tobool3.not.i = icmp eq ptr %clr, null
  %or.cond.i = or i1 %tobool2.not.i, %tobool3.not.i
  br i1 %or.cond.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %reg_set.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %18 = ptrtoint ptr %reg_set.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %set, ptr %reg_set.i, align 4
  %reg_clr.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 29
  %19 = ptrtoint ptr %reg_clr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %clr, ptr %reg_clr.i, align 4
  %set5.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %20 = ptrtoint ptr %set5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bgpio_set_with_clear, ptr %set5.i, align 4
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i122
  %tobool2.not.not.i = xor i1 %tobool2.not.i, true
  %or.cond69.i = and i1 %tobool3.not.i, %tobool2.not.not.i
  br i1 %or.cond69.i, label %if.then9.i, label %if.else13.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %reg_set10.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %21 = ptrtoint ptr %reg_set10.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %set, ptr %reg_set10.i, align 4
  %set11.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %22 = ptrtoint ptr %set11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @bgpio_set_set, ptr %set11.i, align 4
  br label %if.end23.i

if.else13.i:                                      ; preds = %if.else.i
  %and.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool14.not.i = icmp eq i32 %and.i, 0
  %set19.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  br i1 %tobool14.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %set19.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @bgpio_set_none, ptr %set19.i, align 4
  br label %if.end23.i

if.else18.i:                                      ; preds = %if.else13.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %set19.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @bgpio_set, ptr %set19.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else18.i, %if.then15.i, %if.then9.i, %if.then4.i
  %bgpio_set_multiple_set.sink.i = phi ptr [ @bgpio_set_multiple_set, %if.then9.i ], [ @bgpio_set_multiple, %if.else18.i ], [ null, %if.then15.i ], [ @bgpio_set_multiple_with_clear, %if.then4.i ]
  %set_multiple12.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 13
  %25 = ptrtoint ptr %set_multiple12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bgpio_set_multiple_set.sink.i, ptr %set_multiple12.i, align 4
  %26 = and i32 %flags, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %26)
  %.not.i = icmp eq i32 %26, 16
  %get.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 10
  br i1 %.not.i, label %if.then29.i, label %if.else33.i

if.then29.i:                                      ; preds = %if.end23.i
  %27 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @bgpio_get_set, ptr %get.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not.i = icmp eq i8 %15, 0
  br i1 %tobool30.not.i, label %if.then31.i, label %if.then29.i.if.end11_crit_edge

if.then29.i.if.end11_crit_edge:                   ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then31.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %get_multiple.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 11
  %28 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @bgpio_get_set_multiple, ptr %get_multiple.i, align 4
  br label %if.end11

if.else33.i:                                      ; preds = %if.end23.i
  %29 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @bgpio_get, ptr %get.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool36.not.i = icmp eq i8 %15, 0
  %get_multiple40.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 11
  br i1 %tobool36.not.i, label %if.else39.i, label %if.then37.i

if.then37.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %get_multiple40.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @bgpio_get_multiple_be, ptr %get_multiple40.i, align 4
  br label %if.end11

if.else39.i:                                      ; preds = %if.else33.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %get_multiple40.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @bgpio_get_multiple, ptr %get_multiple40.i, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else39.i, %if.then37.i, %if.then31.i, %if.then29.i.if.end11_crit_edge
  %and12 = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  %32 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %bgpio_setup_accessors.exit [
    i32 8, label %sw.bb.i
    i32 16, label %sw.bb1.i
    i32 32, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %read_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %33 = ptrtoint ptr %read_reg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @bgpio_read8, ptr %read_reg.i, align 4
  br label %if.end17

sw.bb1.i:                                         ; preds = %if.end11
  %read_reg2.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  br i1 %tobool13.not, label %if.else.i124, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %read_reg2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @bgpio_read16be, ptr %read_reg2.i, align 4
  br label %if.end17

if.else.i124:                                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %read_reg2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @bgpio_read16, ptr %read_reg2.i, align 4
  br label %if.end17

sw.bb6.i:                                         ; preds = %if.end11
  %read_reg9.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  br i1 %tobool13.not, label %if.else11.i, label %if.then8.i

if.then8.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %read_reg9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @bgpio_read32be, ptr %read_reg9.i, align 4
  br label %if.end17

if.else11.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %read_reg9.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @bgpio_read32, ptr %read_reg9.i, align 4
  br label %if.end17

bgpio_setup_accessors.exit:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %11) #11
  br label %cleanup

if.end17:                                         ; preds = %if.else11.i, %if.then8.i, %if.else.i124, %if.then.i, %sw.bb.i
  %bgpio_write32be.sink = phi ptr [ @bgpio_write32be, %if.then8.i ], [ @bgpio_write32, %if.else11.i ], [ @bgpio_write16be, %if.then.i ], [ @bgpio_write16, %if.else.i124 ], [ @bgpio_write8, %sw.bb.i ]
  %write_reg10.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %38 = ptrtoint ptr %write_reg10.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bgpio_write32be.sink, ptr %write_reg10.i, align 4
  %tobool.not.i126 = icmp eq ptr %dirout, null
  %tobool1.not.i = icmp eq ptr %dirin, null
  %or.cond.i127 = and i1 %tobool.not.i126, %tobool1.not.i
  br i1 %or.cond.i127, label %if.else5.i, label %if.then.i130

if.then.i130:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %reg_dir_out.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %39 = ptrtoint ptr %reg_dir_out.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dirout, ptr %reg_dir_out.i, align 4
  %reg_dir_in.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %40 = ptrtoint ptr %reg_dir_in.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dirin, ptr %reg_dir_in.i, align 4
  %and.i128 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool2.not.i129 = icmp eq i32 %and.i128, 0
  %spec.select.i = select i1 %tobool2.not.i129, ptr @bgpio_dir_out_val_first, ptr @bgpio_dir_out_dir_first
  %get_direction.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 7
  %41 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @bgpio_get_dir, ptr %get_direction.i, align 4
  br label %bgpio_setup_direction.exit

if.else5.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %and6.i = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  %spec.select1.i = select i1 %tobool7.not.i, ptr @bgpio_simple_dir_out, ptr @bgpio_dir_out_err
  br label %bgpio_setup_direction.exit

bgpio_setup_direction.exit:                       ; preds = %if.else5.i, %if.then.i130
  %spec.select.i.sink = phi ptr [ %spec.select1.i, %if.else5.i ], [ %spec.select.i, %if.then.i130 ]
  %bgpio_dir_in.sink = phi ptr [ @bgpio_simple_dir_in, %if.else5.i ], [ @bgpio_dir_in, %if.then.i130 ]
  %42 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 9
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %spec.select.i.sink, ptr %42, align 4
  %44 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %bgpio_dir_in.sink, ptr %44, align 4
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %46 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %read_reg, align 4
  %48 = ptrtoint ptr %reg_dat.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_dat.i, align 4
  %call22 = tail call i32 %47(ptr noundef %49) #8
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %50 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call22, ptr %bgpio_data, align 4
  %set23 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %51 = ptrtoint ptr %set23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %set23, align 4
  %cmp24 = icmp eq ptr %52, @bgpio_set_set
  %and26 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %or.cond = and i1 %tobool27.not, %cmp24
  br i1 %or.cond, label %if.then28, label %bgpio_setup_direction.exit.if.end32_crit_edge

bgpio_setup_direction.exit.if.end32_crit_edge:    ; preds = %bgpio_setup_direction.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then28:                                        ; preds = %bgpio_setup_direction.exit
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %read_reg, align 4
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %55 = ptrtoint ptr %reg_set to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %reg_set, align 4
  %call30 = tail call i32 %54(ptr noundef %56) #8
  %57 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call30, ptr %bgpio_data, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %bgpio_setup_direction.exit.if.end32_crit_edge
  %and33 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end36.thread

if.end36:                                         ; preds = %if.end32
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %58 = ptrtoint ptr %reg_dir_out to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %reg_dir_out, align 4
  %tobool37.not = icmp eq ptr %59, null
  br i1 %tobool37.not, label %lor.lhs.false, label %if.then45

if.end36.thread:                                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_dir_unreadable = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 32
  %60 = ptrtoint ptr %bgpio_dir_unreadable to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %bgpio_dir_unreadable, align 4
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end36
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %61 = ptrtoint ptr %reg_dir_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %reg_dir_in, align 4
  %tobool38.not.not = icmp eq ptr %62, null
  br i1 %tobool38.not.not, label %lor.lhs.false.cleanup_crit_edge, label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then45:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %read_reg, align 4
  %call48 = tail call i32 %64(ptr noundef nonnull %59) #8
  br label %if.end57.sink.split

if.else:                                          ; preds = %lor.lhs.false
  %65 = ptrtoint ptr %reg_dir_in to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %reg_dir_in, align 4
  %tobool50.not = icmp eq ptr %66, null
  br i1 %tobool50.not, label %if.else.if.end57_crit_edge, label %if.then51

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then51:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %read_reg, align 4
  %call54 = tail call i32 %68(ptr noundef nonnull %66) #8
  %neg = xor i32 %call54, -1
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.then51, %if.then45
  %neg.sink = phi i32 [ %neg, %if.then51 ], [ %call48, %if.then45 ]
  %bgpio_dir55 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %69 = ptrtoint ptr %bgpio_dir55 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %neg.sink, ptr %bgpio_dir55, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.else.if.end57_crit_edge
  %70 = ptrtoint ptr %reg_dir_out to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_dir_out, align 4
  %tobool59.not = icmp eq ptr %71, null
  br i1 %tobool59.not, label %if.end57.cleanup_crit_edge, label %land.lhs.true60

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true60:                                  ; preds = %if.end57
  %reg_dir_in61 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %72 = ptrtoint ptr %reg_dir_in61 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_dir_in61, align 4
  %tobool62.not = icmp eq ptr %73, null
  br i1 %tobool62.not, label %land.lhs.true60.cleanup_crit_edge, label %if.then63

land.lhs.true60.cleanup_crit_edge:                ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %74 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %write_reg, align 4
  %bgpio_dir65 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %76 = ptrtoint ptr %bgpio_dir65 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %bgpio_dir65, align 4
  %neg66 = xor i32 %77, -1
  tail call void %75(ptr noundef nonnull %73, i32 noundef %neg66) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %land.lhs.true60.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end36.thread, %bgpio_setup_accessors.exit, %dev_name.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ -22, %bgpio_setup_accessors.exit ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end57.cleanup_crit_edge ], [ 0, %land.lhs.true60.cleanup_crit_edge ], [ 0, %if.then63 ], [ -22, %dev_name.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end36.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_request(ptr nocapture noundef readonly %chip, i32 noundef %gpio_pin) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %gpio_pin)
  %cmp = icmp ugt i32 %conv, %gpio_pin
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i = add i32 %3, %4
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %5 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_data, align 4
  %or = or i32 %6, %retval.0.i
  store i32 %or, ptr %bgpio_data, align 4
  br label %if.end

if.else:                                          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %retval.0.i, -1
  %bgpio_data6 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %7 = ptrtoint ptr %bgpio_data6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bgpio_data6, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %bgpio_data6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %11 = ptrtoint ptr %reg_set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_set, align 4
  %bgpio_data7 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %13 = ptrtoint ptr %bgpio_data7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bgpio_data7, align 4
  tail call void %10(ptr noundef %12, i32 noundef %14) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_driver_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bgpio_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_driver_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @bgpio_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set_with_clear(ptr nocapture noundef readonly %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i = add i32 %3, %4
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %write_reg1 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %5 = ptrtoint ptr %write_reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write_reg1, align 4
  %reg_clr = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 29
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %reg_clr.sink = select i1 %tobool.not, ptr %reg_clr, ptr %reg_set
  %7 = ptrtoint ptr %reg_clr.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_clr.sink, align 4
  tail call void %6(ptr noundef %8, i32 noundef %retval.0.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set_multiple_with_clear(ptr nocapture noundef readonly %gc, ptr noundef %mask, ptr noundef %bits) #0 align 64 {
entry:
  %set_mask = alloca i32, align 4
  %clear_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_mask)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear_mask)
  %0 = ptrtoint ptr %set_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %set_mask, align 4
  %1 = ptrtoint ptr %clear_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %clear_mask, align 4
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bgpio_bits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %5)
  %cmp27.i = icmp slt i32 %call.i, %5
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %entry.bgpio_multiple_get_masks.exit_crit_edge

entry.bgpio_multiple_get_masks.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_multiple_get_masks.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %be_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi i32 [ %5, %for.body.lr.ph.i ], [ %19, %for.body.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call7.i, %for.body.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.028.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bits, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.028.i, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %be_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %be_bits.i.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i20.i = icmp eq i8 %12, 0
  %13 = xor i32 %i.028.i, -1
  %sub1.i22.i = add i32 %6, %13
  %sub1.pn.i24.i = select i1 %tobool.not.i20.i, i32 %i.028.i, i32 %sub1.i22.i
  %retval.0.i25.i = shl nuw i32 1, %sub1.pn.i24.i
  %clear_mask.set_mask.i = select i1 %tobool.not.i, ptr %clear_mask, ptr %set_mask
  %14 = ptrtoint ptr %clear_mask.set_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clear_mask.set_mask.i, align 4
  %or.i = or i32 %retval.0.i25.i, %15
  store i32 %or.i, ptr %clear_mask.set_mask.i, align 4
  %16 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bgpio_bits.i, align 4
  %add.i = add nsw i32 %i.028.i, 1
  %call7.i = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %17, i32 noundef %add.i) #8
  %18 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bgpio_bits.i, align 4
  %cmp.i = icmp slt i32 %call7.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bgpio_multiple_get_masks.exit_crit_edge

for.body.i.bgpio_multiple_get_masks.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_multiple_get_masks.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

bgpio_multiple_get_masks.exit:                    ; preds = %for.body.i.bgpio_multiple_get_masks.exit_crit_edge, %entry.bgpio_multiple_get_masks.exit_crit_edge
  %20 = ptrtoint ptr %set_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %set_mask.0.set_mask.0. = load i32, ptr %set_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %set_mask.0.set_mask.0.)
  %tobool.not = icmp eq i32 %set_mask.0.set_mask.0., 0
  br i1 %tobool.not, label %bgpio_multiple_get_masks.exit.if.end_crit_edge, label %if.then

bgpio_multiple_get_masks.exit.if.end_crit_edge:   ; preds = %bgpio_multiple_get_masks.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bgpio_multiple_get_masks.exit
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %21 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write_reg, align 4
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %23 = ptrtoint ptr %reg_set to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_set, align 4
  tail call void %22(ptr noundef %24, i32 noundef %set_mask.0.set_mask.0.) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %bgpio_multiple_get_masks.exit.if.end_crit_edge
  %25 = ptrtoint ptr %clear_mask to i32
  call void @__asan_load4_noabort(i32 %25)
  %clear_mask.0.clear_mask.0. = load i32, ptr %clear_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clear_mask.0.clear_mask.0.)
  %tobool1.not = icmp eq i32 %clear_mask.0.clear_mask.0., 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg3 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %26 = ptrtoint ptr %write_reg3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_reg3, align 4
  %reg_clr = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 29
  %28 = ptrtoint ptr %reg_clr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %reg_clr, align 4
  tail call void %27(ptr noundef %29, i32 noundef %clear_mask.0.clear_mask.0.) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear_mask)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_mask)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set_multiple_set(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %0 = ptrtoint ptr %reg_set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_set, align 4
  tail call fastcc void @bgpio_set_multiple_single_reg(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @bgpio_set_none(ptr nocapture noundef %gc, i32 noundef %gpio, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i = add i32 %3, %4
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %5 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_data, align 4
  %or = or i32 %6, %retval.0.i
  store i32 %or, ptr %bgpio_data, align 4
  br label %if.end

if.else:                                          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %neg = xor i32 %retval.0.i, -1
  %bgpio_data6 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %7 = ptrtoint ptr %bgpio_data6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bgpio_data6, align 4
  %and = and i32 %8, %neg
  store i32 %and, ptr %bgpio_data6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %11 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_dat, align 4
  %bgpio_data7 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %13 = ptrtoint ptr %bgpio_data7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bgpio_data7, align 4
  tail call void %10(ptr noundef %12, i32 noundef %14) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_set_multiple(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %0 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_dat, align 4
  tail call fastcc void @bgpio_set_multiple_single_reg(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get_set(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i = add i32 %3, %4
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %5 = ptrtoint ptr %bgpio_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_dir, align 4
  %and = and i32 %6, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %read_reg8 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %7 = ptrtoint ptr %read_reg8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg8, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %reg_dat.sink = select i1 %tobool.not, ptr %reg_dat, ptr %reg_set
  %9 = ptrtoint ptr %reg_dat.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_dat.sink, align 4
  %call9 = tail call i32 %8(ptr noundef %10) #8
  %11 = lshr i32 %call9, %sub1.pn.i
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get_set_multiple(ptr nocapture noundef readonly %gc, ptr nocapture noundef readonly %mask, ptr nocapture noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %neg = xor i32 %1, -1
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %bits, align 4
  %4 = load i32, ptr %mask, align 4
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %5 = ptrtoint ptr %bgpio_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_dir, align 4
  %and1 = and i32 %6, %4
  %neg3 = xor i32 %6, -1
  %and4 = and i32 %4, %neg3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %7 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_reg, align 4
  %reg_set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 28
  %9 = ptrtoint ptr %reg_set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_set, align 4
  %call = tail call i32 %8(ptr noundef %10) #8
  %and5 = and i32 %call, %and1
  %11 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bits, align 4
  %or = or i32 %12, %and5
  store i32 %or, ptr %bits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool6.not = icmp eq i32 %and4, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %if.then7

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %read_reg8 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %13 = ptrtoint ptr %read_reg8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read_reg8, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %15 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_dat, align 4
  %call9 = tail call i32 %14(ptr noundef %16) #8
  %and10 = and i32 %call9, %and4
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bits, align 4
  %or11 = or i32 %18, %and10
  store i32 %or11, ptr %bits, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %2 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_dat, align 4
  %call = tail call i32 %1(ptr noundef %3) #8
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %4 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %6 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bgpio_bits.i, align 4
  %8 = xor i32 %gpio, -1
  %sub1.i = add i32 %7, %8
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %9 = lshr i32 %call, %sub1.pn.i
  %10 = and i32 %9, 1
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get_multiple_be(ptr nocapture noundef readonly %gc, ptr noundef %mask, ptr nocapture noundef %bits) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %neg = xor i32 %1, -1
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %bits, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  %call = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv, i32 noundef 0) #8
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv253 = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %conv253)
  %cmp54 = icmp slt i32 %call, %conv253
  br i1 %cmp54, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  br label %for.body

for.body:                                         ; preds = %bgpio_line2mask.exit.for.body_crit_edge, %for.body.lr.ph
  %conv258 = phi i32 [ %conv253, %for.body.lr.ph ], [ %conv2, %bgpio_line2mask.exit.for.body_crit_edge ]
  %bit.056 = phi i32 [ %call, %for.body.lr.ph ], [ %call7, %bgpio_line2mask.exit.for.body_crit_edge ]
  %readmask.055 = phi i32 [ 0, %for.body.lr.ph ], [ %or, %bgpio_line2mask.exit.for.body_crit_edge ]
  %8 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %for.body.bgpio_line2mask.exit_crit_edge, label %if.then.i

for.body.bgpio_line2mask.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bgpio_bits.i, align 4
  %12 = xor i32 %bit.056, -1
  %sub1.i = add i32 %11, %12
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %for.body.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %bit.056, %for.body.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  %or = or i32 %retval.0.i, %readmask.055
  %add = add nsw i32 %bit.056, 1
  %call7 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %conv258, i32 noundef %add) #8
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ngpio, align 4
  %conv2 = zext i16 %14 to i32
  %cmp = icmp slt i32 %call7, %conv2
  br i1 %cmp, label %bgpio_line2mask.exit.for.body_crit_edge, label %bgpio_line2mask.exit.for.end_crit_edge

bgpio_line2mask.exit.for.end_crit_edge:           ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

bgpio_line2mask.exit.for.body_crit_edge:          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %bgpio_line2mask.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %readmask.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %or, %bgpio_line2mask.exit.for.end_crit_edge ]
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %15 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %read_reg, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %17 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_dat, align 4
  %call8 = tail call i32 %16(ptr noundef %18) #8
  %and9 = and i32 %call8, %readmask.0.lcssa
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and9, ptr %val, align 4
  %20 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ngpio, align 4
  %conv11 = zext i16 %21 to i32
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %conv11, i32 noundef 0) #8
  %22 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ngpio, align 4
  %conv1559 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call12, i32 %conv1559)
  %cmp1660 = icmp slt i32 %call12, %conv1559
  br i1 %cmp1660, label %for.body18.lr.ph, label %for.end.for.end26_crit_edge

for.end.for.end26_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

for.body18.lr.ph:                                 ; preds = %for.end
  %be_bits.i45 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %bgpio_bits.i47 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  br label %for.body18

for.body18:                                       ; preds = %bgpio_line2mask.exit52.for.body18_crit_edge, %for.body18.lr.ph
  %bit.161 = phi i32 [ %call12, %for.body18.lr.ph ], [ %call25, %bgpio_line2mask.exit52.for.body18_crit_edge ]
  %24 = ptrtoint ptr %be_bits.i45 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %be_bits.i45, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i46 = icmp eq i8 %25, 0
  br i1 %tobool.not.i46, label %for.body18.bgpio_line2mask.exit52_crit_edge, label %if.then.i49

for.body18.bgpio_line2mask.exit52_crit_edge:      ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit52

if.then.i49:                                      ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %bgpio_bits.i47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bgpio_bits.i47, align 4
  %28 = xor i32 %bit.161, -1
  %sub1.i48 = add i32 %27, %28
  br label %bgpio_line2mask.exit52

bgpio_line2mask.exit52:                           ; preds = %if.then.i49, %for.body18.bgpio_line2mask.exit52_crit_edge
  %sub1.pn.i50 = phi i32 [ %sub1.i48, %if.then.i49 ], [ %bit.161, %for.body18.bgpio_line2mask.exit52_crit_edge ]
  %retval.0.i51 = shl nuw i32 1, %sub1.pn.i50
  %29 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bits, align 4
  %or20 = or i32 %30, %retval.0.i51
  store i32 %or20, ptr %bits, align 4
  %31 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ngpio, align 4
  %conv23 = zext i16 %32 to i32
  %add24 = add nsw i32 %bit.161, 1
  %call25 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %conv23, i32 noundef %add24) #8
  %33 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %ngpio, align 4
  %conv15 = zext i16 %34 to i32
  %cmp16 = icmp slt i32 %call25, %conv15
  br i1 %cmp16, label %bgpio_line2mask.exit52.for.body18_crit_edge, label %bgpio_line2mask.exit52.for.end26_crit_edge

bgpio_line2mask.exit52.for.end26_crit_edge:       ; preds = %bgpio_line2mask.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end26

bgpio_line2mask.exit52.for.body18_crit_edge:      ; preds = %bgpio_line2mask.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

for.end26:                                        ; preds = %bgpio_line2mask.exit52.for.end26_crit_edge, %for.end.for.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get_multiple(ptr nocapture noundef readonly %gc, ptr nocapture noundef readonly %mask, ptr nocapture noundef %bits) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %neg = xor i32 %1, -1
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bits, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %bits, align 4
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %4 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_reg, align 4
  %reg_dat = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 27
  %6 = ptrtoint ptr %reg_dat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_dat, align 4
  %call = tail call i32 %5(ptr noundef %7) #8
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and1 = and i32 %9, %call
  %10 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bits, align 4
  %or = or i32 %11, %and1
  store i32 %or, ptr %bits, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bgpio_set_multiple_single_reg(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits, ptr noundef %reg) unnamed_addr #0 align 64 {
entry:
  %set_mask = alloca i32, align 4
  %clear_mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %set_mask)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clear_mask)
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #8
  %0 = ptrtoint ptr %set_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %set_mask, align 4
  %1 = ptrtoint ptr %clear_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %clear_mask, align 4
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %call.i = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %3, i32 noundef 0) #8
  %4 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bgpio_bits.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %5)
  %cmp27.i = icmp slt i32 %call.i, %5
  br i1 %cmp27.i, label %for.body.lr.ph.i, label %entry.bgpio_multiple_get_masks.exit_crit_edge

entry.bgpio_multiple_get_masks.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_multiple_get_masks.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %be_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %6 = phi i32 [ %5, %for.body.lr.ph.i ], [ %19, %for.body.i.for.body.i_crit_edge ]
  %i.028.i = phi i32 [ %call.i, %for.body.lr.ph.i ], [ %call7.i, %for.body.i.for.body.i_crit_edge ]
  %div3.i.i = lshr i32 %i.028.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %bits, i32 %div3.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.028.i, 31
  %9 = shl nuw i32 1, %and.i.i
  %10 = and i32 %9, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %be_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %be_bits.i.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i20.i = icmp eq i8 %12, 0
  %13 = xor i32 %i.028.i, -1
  %sub1.i22.i = add i32 %6, %13
  %sub1.pn.i24.i = select i1 %tobool.not.i20.i, i32 %i.028.i, i32 %sub1.i22.i
  %retval.0.i25.i = shl nuw i32 1, %sub1.pn.i24.i
  %clear_mask.set_mask.i = select i1 %tobool.not.i, ptr %clear_mask, ptr %set_mask
  %14 = ptrtoint ptr %clear_mask.set_mask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clear_mask.set_mask.i, align 4
  %or.i = or i32 %retval.0.i25.i, %15
  store i32 %or.i, ptr %clear_mask.set_mask.i, align 4
  %16 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bgpio_bits.i, align 4
  %add.i = add nsw i32 %i.028.i, 1
  %call7.i = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef %17, i32 noundef %add.i) #8
  %18 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bgpio_bits.i, align 4
  %cmp.i = icmp slt i32 %call7.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.bgpio_multiple_get_masks.exit_crit_edge

for.body.i.bgpio_multiple_get_masks.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_multiple_get_masks.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

bgpio_multiple_get_masks.exit:                    ; preds = %for.body.i.bgpio_multiple_get_masks.exit_crit_edge, %entry.bgpio_multiple_get_masks.exit_crit_edge
  %20 = ptrtoint ptr %set_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %set_mask.0.set_mask.0. = load i32, ptr %set_mask, align 4
  %bgpio_data = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 35
  %21 = ptrtoint ptr %bgpio_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bgpio_data, align 4
  %or = or i32 %22, %set_mask.0.set_mask.0.
  %23 = ptrtoint ptr %clear_mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %clear_mask.0.clear_mask.0. = load i32, ptr %clear_mask, align 4
  %neg = xor i32 %clear_mask.0.clear_mask.0., -1
  %and = and i32 %or, %neg
  store i32 %and, ptr %bgpio_data, align 4
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %24 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write_reg, align 4
  tail call void %25(ptr noundef %reg, i32 noundef %and) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clear_mask)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %set_mask)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_read8(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %reg) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_write8(ptr noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %reg, i8 %conv) #8, !srcloc !60
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_read16be(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg) #8, !srcloc !61
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  %conv = zext i16 %0 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_write16be(ptr noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %data to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg, i16 %conv) #8, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_read16(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %reg) #8, !srcloc !61
  %1 = tail call i16 @llvm.bswap.i16(i16 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %conv = zext i16 %1 to i32
  ret i32 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_write16(ptr noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !66
  tail call void @arm_heavy_mb() #8
  %conv = trunc i32 %data to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %reg, i16 %0) #8, !srcloc !64
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_read32be(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !68
  ret i32 %0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_write32be(ptr noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %data) #8, !srcloc !70
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_read32(ptr noundef %reg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg) #8, !srcloc !67
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !71
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bgpio_write32(ptr noundef %reg, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  tail call void @arm_heavy_mb() #8
  %0 = tail call i32 @llvm.bswap.i32(i32 %data)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg, i32 %0) #8, !srcloc !70
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_dir_out_dir_first(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bgpio_lock.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %be_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.bgpio_line2mask.exit.i_crit_edge, label %if.then.i.i

entry.bgpio_line2mask.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i.i = add i32 %3, %4
  br label %bgpio_line2mask.exit.i

bgpio_line2mask.exit.i:                           ; preds = %if.then.i.i, %entry.bgpio_line2mask.exit.i_crit_edge
  %sub1.pn.i.i = phi i32 [ %sub1.i.i, %if.then.i.i ], [ %gpio, %entry.bgpio_line2mask.exit.i_crit_edge ]
  %retval.0.i.i = shl nuw i32 1, %sub1.pn.i.i
  %bgpio_dir.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %5 = ptrtoint ptr %bgpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_dir.i, align 4
  %or.i = or i32 %6, %retval.0.i.i
  store i32 %or.i, ptr %bgpio_dir.i, align 4
  %reg_dir_in.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %7 = ptrtoint ptr %reg_dir_in.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_dir_in.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %bgpio_line2mask.exit.i.if.end.i_crit_edge, label %if.then.i

bgpio_line2mask.exit.i.if.end.i_crit_edge:        ; preds = %bgpio_line2mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %bgpio_line2mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %9 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg.i, align 4
  %neg.i = xor i32 %or.i, -1
  tail call void %10(ptr noundef nonnull %8, i32 noundef %neg.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bgpio_line2mask.exit.i.if.end.i_crit_edge
  %reg_dir_out.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %11 = ptrtoint ptr %reg_dir_out.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_dir_out.i, align 4
  %tobool8.not.i = icmp eq ptr %12, null
  br i1 %tobool8.not.i, label %if.end.i.bgpio_dir_out.exit_crit_edge, label %if.then9.i

if.end.i.bgpio_dir_out.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_dir_out.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg10.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %13 = ptrtoint ptr %write_reg10.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg10.i, align 4
  %15 = ptrtoint ptr %bgpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bgpio_dir.i, align 4
  tail call void %14(ptr noundef nonnull %12, i32 noundef %16) #8
  br label %bgpio_dir_out.exit

bgpio_dir_out.exit:                               ; preds = %if.then9.i, %if.end.i.bgpio_dir_out.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i) #8
  %set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %set, align 4
  tail call void %18(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_dir_out_val_first(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  tail call void %1(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #8
  %bgpio_lock.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock.i) #8
  %be_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %2 = ptrtoint ptr %be_bits.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %be_bits.i.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %entry.bgpio_line2mask.exit.i_crit_edge, label %if.then.i.i

entry.bgpio_line2mask.exit.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %4 = ptrtoint ptr %bgpio_bits.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bgpio_bits.i.i, align 4
  %6 = xor i32 %gpio, -1
  %sub1.i.i = add i32 %5, %6
  br label %bgpio_line2mask.exit.i

bgpio_line2mask.exit.i:                           ; preds = %if.then.i.i, %entry.bgpio_line2mask.exit.i_crit_edge
  %sub1.pn.i.i = phi i32 [ %sub1.i.i, %if.then.i.i ], [ %gpio, %entry.bgpio_line2mask.exit.i_crit_edge ]
  %retval.0.i.i = shl nuw i32 1, %sub1.pn.i.i
  %bgpio_dir.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %7 = ptrtoint ptr %bgpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bgpio_dir.i, align 4
  %or.i = or i32 %8, %retval.0.i.i
  store i32 %or.i, ptr %bgpio_dir.i, align 4
  %reg_dir_in.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %9 = ptrtoint ptr %reg_dir_in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_dir_in.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %bgpio_line2mask.exit.i.if.end.i_crit_edge, label %if.then.i

bgpio_line2mask.exit.i.if.end.i_crit_edge:        ; preds = %bgpio_line2mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %bgpio_line2mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %11 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write_reg.i, align 4
  %neg.i = xor i32 %or.i, -1
  tail call void %12(ptr noundef nonnull %10, i32 noundef %neg.i) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %bgpio_line2mask.exit.i.if.end.i_crit_edge
  %reg_dir_out.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %13 = ptrtoint ptr %reg_dir_out.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_dir_out.i, align 4
  %tobool8.not.i = icmp eq ptr %14, null
  br i1 %tobool8.not.i, label %if.end.i.bgpio_dir_out.exit_crit_edge, label %if.then9.i

if.end.i.bgpio_dir_out.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_dir_out.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg10.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %15 = ptrtoint ptr %write_reg10.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_reg10.i, align 4
  %17 = ptrtoint ptr %bgpio_dir.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %bgpio_dir.i, align 4
  tail call void %16(ptr noundef nonnull %14, i32 noundef %18) #8
  br label %bgpio_dir_out.exit

bgpio_dir_out.exit:                               ; preds = %if.then9.i, %if.end.i.bgpio_dir_out.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock.i, i32 noundef %call2.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_dir_in(ptr noundef %gc, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 34
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #8
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %0 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.bgpio_line2mask.exit_crit_edge, label %if.then.i

entry.bgpio_line2mask.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %2 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_bits.i, align 4
  %4 = xor i32 %gpio, -1
  %sub1.i = add i32 %3, %4
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %entry.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %entry.bgpio_line2mask.exit_crit_edge ]
  %retval.0.i = shl nuw i32 1, %sub1.pn.i
  %neg = xor i32 %retval.0.i, -1
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %5 = ptrtoint ptr %bgpio_dir to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bgpio_dir, align 4
  %and = and i32 %6, %neg
  store i32 %and, ptr %bgpio_dir, align 4
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %7 = ptrtoint ptr %reg_dir_in to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_dir_in, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %bgpio_line2mask.exit.if.end_crit_edge, label %if.then

bgpio_line2mask.exit.if.end_crit_edge:            ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bgpio_line2mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %9 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write_reg, align 4
  %neg8 = xor i32 %and, -1
  tail call void %10(ptr noundef nonnull %8, i32 noundef %neg8) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %bgpio_line2mask.exit.if.end_crit_edge
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %11 = ptrtoint ptr %reg_dir_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_dir_out, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end.if.end14_crit_edge, label %if.then10

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %write_reg11 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 25
  %13 = ptrtoint ptr %write_reg11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg11, align 4
  %15 = ptrtoint ptr %bgpio_dir to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bgpio_dir, align 4
  tail call void %14(ptr noundef nonnull %12, i32 noundef %16) #8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end.if.end14_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_get_dir(ptr nocapture noundef readonly %gc, i32 noundef %gpio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bgpio_dir_unreadable = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 32
  %0 = ptrtoint ptr %bgpio_dir_unreadable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %bgpio_dir_unreadable, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end3, label %if.then

if.then:                                          ; preds = %entry
  %bgpio_dir = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 36
  %2 = ptrtoint ptr %bgpio_dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bgpio_dir, align 4
  %be_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %4 = ptrtoint ptr %be_bits.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %be_bits.i, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.bgpio_line2mask.exit_crit_edge, label %if.then.i

if.then.bgpio_line2mask.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %6 = ptrtoint ptr %bgpio_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bgpio_bits.i, align 4
  %8 = xor i32 %gpio, -1
  %sub1.i = add i32 %7, %8
  br label %bgpio_line2mask.exit

bgpio_line2mask.exit:                             ; preds = %if.then.i, %if.then.bgpio_line2mask.exit_crit_edge
  %sub1.pn.i = phi i32 [ %sub1.i, %if.then.i ], [ %gpio, %if.then.bgpio_line2mask.exit_crit_edge ]
  %9 = xor i32 %3, -1
  %10 = lshr i32 %9, %sub1.pn.i
  %11 = and i32 %10, 1
  br label %return

if.end3:                                          ; preds = %entry
  %reg_dir_out = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 30
  %12 = ptrtoint ptr %reg_dir_out to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_dir_out, align 4
  %tobool4.not = icmp eq ptr %13, null
  br i1 %tobool4.not, label %if.end13, label %if.then5

if.then5:                                         ; preds = %if.end3
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %14 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_reg, align 4
  %call7 = tail call i32 %15(ptr noundef nonnull %13) #8
  %be_bits.i39 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %16 = ptrtoint ptr %be_bits.i39 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %be_bits.i39, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i40 = icmp eq i8 %17, 0
  br i1 %tobool.not.i40, label %if.then5.bgpio_line2mask.exit46_crit_edge, label %if.then.i43

if.then5.bgpio_line2mask.exit46_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit46

if.then.i43:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i41 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %18 = ptrtoint ptr %bgpio_bits.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bgpio_bits.i41, align 4
  %20 = xor i32 %gpio, -1
  %sub1.i42 = add i32 %19, %20
  br label %bgpio_line2mask.exit46

bgpio_line2mask.exit46:                           ; preds = %if.then.i43, %if.then5.bgpio_line2mask.exit46_crit_edge
  %sub1.pn.i44 = phi i32 [ %sub1.i42, %if.then.i43 ], [ %gpio, %if.then5.bgpio_line2mask.exit46_crit_edge ]
  %21 = xor i32 %call7, -1
  %22 = lshr i32 %21, %sub1.pn.i44
  %23 = and i32 %22, 1
  br label %return

if.end13:                                         ; preds = %if.end3
  %reg_dir_in = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 31
  %24 = ptrtoint ptr %reg_dir_in to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_dir_in, align 4
  %tobool14.not = icmp eq ptr %25, null
  br i1 %tobool14.not, label %if.end13.if.end24_crit_edge, label %if.then15

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then15:                                        ; preds = %if.end13
  %read_reg16 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 24
  %26 = ptrtoint ptr %read_reg16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %read_reg16, align 4
  %call18 = tail call i32 %27(ptr noundef nonnull %25) #8
  %be_bits.i47 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 26
  %28 = ptrtoint ptr %be_bits.i47 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %be_bits.i47, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i48 = icmp eq i8 %29, 0
  br i1 %tobool.not.i48, label %if.then15.bgpio_line2mask.exit54_crit_edge, label %if.then.i51

if.then15.bgpio_line2mask.exit54_crit_edge:       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %bgpio_line2mask.exit54

if.then.i51:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %bgpio_bits.i49 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 33
  %30 = ptrtoint ptr %bgpio_bits.i49 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bgpio_bits.i49, align 4
  %32 = xor i32 %gpio, -1
  %sub1.i50 = add i32 %31, %32
  br label %bgpio_line2mask.exit54

bgpio_line2mask.exit54:                           ; preds = %if.then.i51, %if.then15.bgpio_line2mask.exit54_crit_edge
  %sub1.pn.i52 = phi i32 [ %sub1.i50, %if.then.i51 ], [ %gpio, %if.then15.bgpio_line2mask.exit54_crit_edge ]
  %retval.0.i53 = shl nuw i32 1, %sub1.pn.i52
  %and20 = and i32 %retval.0.i53, %call18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %bgpio_line2mask.exit54.return_crit_edge, label %bgpio_line2mask.exit54.if.end24_crit_edge

bgpio_line2mask.exit54.if.end24_crit_edge:        ; preds = %bgpio_line2mask.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

bgpio_line2mask.exit54.return_crit_edge:          ; preds = %bgpio_line2mask.exit54
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end24:                                         ; preds = %bgpio_line2mask.exit54.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  br label %return

return:                                           ; preds = %if.end24, %bgpio_line2mask.exit54.return_crit_edge, %bgpio_line2mask.exit46, %bgpio_line2mask.exit
  %retval.0 = phi i32 [ 1, %if.end24 ], [ %11, %bgpio_line2mask.exit ], [ %23, %bgpio_line2mask.exit46 ], [ 0, %bgpio_line2mask.exit54.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_dir_out_err(ptr nocapture noundef readnone %gc, i32 noundef %gpio, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_simple_dir_out(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 12
  %0 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set, align 4
  tail call void %1(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bgpio_simple_dir_in(ptr nocapture noundef readnone %gc, i32 noundef %gpio) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bgpio_pdev_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @of_match_device(ptr noundef nonnull @bgpio_of_match, ptr noundef %dev1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then4, label %if.end.i

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #8
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.then_crit_edge, label %if.end6.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.end6.i:                                        ; preds = %if.end.i
  %base.i = getelementptr inbounds %struct.bgpio_pdata, ptr %call.i.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %base.i, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %call8.i = tail call zeroext i1 @of_device_is_big_endian(ptr noundef %2) #8
  %spec.select = select i1 %call8.i, i32 8, i32 0
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  %call.i23.i = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i23.i, null
  %or15.i = or i32 %spec.select, 32
  %flags.1 = select i1 %tobool.i.not.i, i32 %spec.select, i32 %or15.i
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end6.i.if.then_crit_edge, label %if.end6.i.if.end6_crit_edge

if.end6.i.if.end6_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6.i.if.then_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %if.end6.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i168 = phi ptr [ %call.i.i, %if.end6.i.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ]
  %5 = ptrtoint ptr %retval.0.i168 to i32
  br label %cleanup

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %8 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end6.i.if.end6_crit_edge
  %flags.2 = phi i32 [ %11, %if.then4 ], [ %flags.1, %if.end6.i.if.end6_crit_edge ]
  %pdata.0 = phi ptr [ %7, %if.then4 ], [ %call.i.i, %if.end6.i.if.end6_crit_edge ]
  %call7 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #8
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %end.i = getelementptr inbounds %struct.resource, ptr %call7, i32 0, i32 1
  %12 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end.i, align 4
  %14 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %call7, align 4
  %sub.i = add i32 %13, 1
  %add.i = sub i32 %sub.i, %15
  %call.i116 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.7) #8
  %tobool.not.i117 = icmp eq ptr %call.i116, null
  br i1 %tobool.not.i117, label %if.end10.if.end16_crit_edge, label %if.end.i118

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.end.i118:                                      ; preds = %if.end10
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i116, i32 0, i32 1
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %end.i.i, align 4
  %18 = ptrtoint ptr %call.i116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call.i116, align 4
  %sub.i.i = add i32 %17, 1
  %add.i.i = sub i32 %sub.i.i, %19
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %add.i)
  %cmp.not.i = icmp eq i32 %add.i.i, %add.i
  br i1 %cmp.not.i, label %bgpio_map.exit, label %if.end.i118.if.then14_crit_edge

if.end.i118.if.then14_crit_edge:                  ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

bgpio_map.exit:                                   ; preds = %if.end.i118
  %call5.i = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call.i116) #8
  %cmp.i121 = icmp ugt ptr %call5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %bgpio_map.exit.if.then14_crit_edge, label %bgpio_map.exit.if.end16_crit_edge

bgpio_map.exit.if.end16_crit_edge:                ; preds = %bgpio_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

bgpio_map.exit.if.then14_crit_edge:               ; preds = %bgpio_map.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then14

if.then14:                                        ; preds = %bgpio_map.exit.if.then14_crit_edge, %if.end.i118.if.then14_crit_edge
  %retval.0.i120180 = phi ptr [ %call5.i, %bgpio_map.exit.if.then14_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i118.if.then14_crit_edge ]
  %20 = ptrtoint ptr %retval.0.i120180 to i32
  br label %cleanup

if.end16:                                         ; preds = %bgpio_map.exit.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %retval.0.i120184 = phi ptr [ %call5.i, %bgpio_map.exit.if.end16_crit_edge ], [ null, %if.end10.if.end16_crit_edge ]
  %call.i122 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.8) #8
  %tobool.not.i123 = icmp eq ptr %call.i122, null
  br i1 %tobool.not.i123, label %if.end16.if.end21_crit_edge, label %if.end.i128

if.end16.if.end21_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end.i128:                                      ; preds = %if.end16
  %end.i.i124 = getelementptr inbounds %struct.resource, ptr %call.i122, i32 0, i32 1
  %21 = ptrtoint ptr %end.i.i124 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %end.i.i124, align 4
  %23 = ptrtoint ptr %call.i122 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %call.i122, align 4
  %sub.i.i125 = add i32 %22, 1
  %add.i.i126 = sub i32 %sub.i.i125, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i126, i32 %add.i)
  %cmp.not.i127 = icmp eq i32 %add.i.i126, %add.i
  br i1 %cmp.not.i127, label %bgpio_map.exit133, label %if.end.i128.if.then19_crit_edge

if.end.i128.if.then19_crit_edge:                  ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

bgpio_map.exit133:                                ; preds = %if.end.i128
  %call5.i130 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call.i122) #8
  %cmp.i134 = icmp ugt ptr %call5.i130, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i134, label %bgpio_map.exit133.if.then19_crit_edge, label %bgpio_map.exit133.if.end21_crit_edge

bgpio_map.exit133.if.end21_crit_edge:             ; preds = %bgpio_map.exit133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

bgpio_map.exit133.if.then19_crit_edge:            ; preds = %bgpio_map.exit133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %bgpio_map.exit133.if.then19_crit_edge, %if.end.i128.if.then19_crit_edge
  %retval.0.i132187 = phi ptr [ %call5.i130, %bgpio_map.exit133.if.then19_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i128.if.then19_crit_edge ]
  %25 = ptrtoint ptr %retval.0.i132187 to i32
  br label %cleanup

if.end21:                                         ; preds = %bgpio_map.exit133.if.end21_crit_edge, %if.end16.if.end21_crit_edge
  %retval.0.i132191 = phi ptr [ %call5.i130, %bgpio_map.exit133.if.end21_crit_edge ], [ null, %if.end16.if.end21_crit_edge ]
  %call.i135 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.9) #8
  %tobool.not.i136 = icmp eq ptr %call.i135, null
  br i1 %tobool.not.i136, label %if.end21.if.end26_crit_edge, label %if.end.i141

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end.i141:                                      ; preds = %if.end21
  %end.i.i137 = getelementptr inbounds %struct.resource, ptr %call.i135, i32 0, i32 1
  %26 = ptrtoint ptr %end.i.i137 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %end.i.i137, align 4
  %28 = ptrtoint ptr %call.i135 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %call.i135, align 4
  %sub.i.i138 = add i32 %27, 1
  %add.i.i139 = sub i32 %sub.i.i138, %29
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i139, i32 %add.i)
  %cmp.not.i140 = icmp eq i32 %add.i.i139, %add.i
  br i1 %cmp.not.i140, label %bgpio_map.exit146, label %if.end.i141.if.then24_crit_edge

if.end.i141.if.then24_crit_edge:                  ; preds = %if.end.i141
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

bgpio_map.exit146:                                ; preds = %if.end.i141
  %call5.i143 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call.i135) #8
  %cmp.i147 = icmp ugt ptr %call5.i143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %bgpio_map.exit146.if.then24_crit_edge, label %bgpio_map.exit146.if.end26_crit_edge

bgpio_map.exit146.if.end26_crit_edge:             ; preds = %bgpio_map.exit146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

bgpio_map.exit146.if.then24_crit_edge:            ; preds = %bgpio_map.exit146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %bgpio_map.exit146.if.then24_crit_edge, %if.end.i141.if.then24_crit_edge
  %retval.0.i145194 = phi ptr [ %call5.i143, %bgpio_map.exit146.if.then24_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i141.if.then24_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i145194 to i32
  br label %cleanup

if.end26:                                         ; preds = %bgpio_map.exit146.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %retval.0.i145198 = phi ptr [ %call5.i143, %bgpio_map.exit146.if.end26_crit_edge ], [ null, %if.end21.if.end26_crit_edge ]
  %call.i148 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #8
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %if.end26.if.end31_crit_edge, label %if.end.i154

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.end.i154:                                      ; preds = %if.end26
  %end.i.i150 = getelementptr inbounds %struct.resource, ptr %call.i148, i32 0, i32 1
  %31 = ptrtoint ptr %end.i.i150 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i.i150, align 4
  %33 = ptrtoint ptr %call.i148 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %call.i148, align 4
  %sub.i.i151 = add i32 %32, 1
  %add.i.i152 = sub i32 %sub.i.i151, %34
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i152, i32 %add.i)
  %cmp.not.i153 = icmp eq i32 %add.i.i152, %add.i
  br i1 %cmp.not.i153, label %bgpio_map.exit159, label %if.end.i154.if.then29_crit_edge

if.end.i154.if.then29_crit_edge:                  ; preds = %if.end.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

bgpio_map.exit159:                                ; preds = %if.end.i154
  %call5.i156 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %call.i148) #8
  %cmp.i160 = icmp ugt ptr %call5.i156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %bgpio_map.exit159.if.then29_crit_edge, label %bgpio_map.exit159.if.end31_crit_edge

bgpio_map.exit159.if.end31_crit_edge:             ; preds = %bgpio_map.exit159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

bgpio_map.exit159.if.then29_crit_edge:            ; preds = %bgpio_map.exit159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.then29:                                        ; preds = %bgpio_map.exit159.if.then29_crit_edge, %if.end.i154.if.then29_crit_edge
  %retval.0.i158201 = phi ptr [ %call5.i156, %bgpio_map.exit159.if.then29_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.i154.if.then29_crit_edge ]
  %35 = ptrtoint ptr %retval.0.i158201 to i32
  br label %cleanup

if.end31:                                         ; preds = %bgpio_map.exit159.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %retval.0.i158205 = phi ptr [ %call5.i156, %bgpio_map.exit159.if.end31_crit_edge ], [ null, %if.end26.if.end31_crit_edge ]
  %call32 = tail call fastcc ptr @bgpio_map(ptr noundef %pdev, ptr noundef nonnull @.str.11, i32 noundef %add.i)
  %cmp.i161 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end31
  %call.i162 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 348, i32 noundef 3520) #8
  %tobool39.not = icmp eq ptr %call.i162, null
  br i1 %tobool39.not, label %if.end36.cleanup_crit_edge, label %if.end41

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i162, ptr noundef %dev1, i32 noundef %add.i, ptr noundef %retval.0.i120184, ptr noundef %retval.0.i132191, ptr noundef %retval.0.i145198, ptr noundef %retval.0.i158205, ptr noundef %call32, i32 noundef %flags.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %tobool46.not = icmp eq ptr %pdata.0, null
  br i1 %tobool46.not, label %if.end45.if.end58_crit_edge, label %if.then47

if.end45.if.end58_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then47:                                        ; preds = %if.end45
  %37 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.0, align 4
  %tobool48.not = icmp eq ptr %38, null
  br i1 %tobool48.not, label %if.then47.if.end52_crit_edge, label %if.then49

if.then47.if.end52_crit_edge:                     ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

if.then49:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %call.i162 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %call.i162, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then49, %if.then47.if.end52_crit_edge
  %base = getelementptr inbounds %struct.bgpio_pdata, ptr %pdata.0, i32 0, i32 1
  %40 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base, align 4
  %base53 = getelementptr inbounds %struct.gpio_chip, ptr %call.i162, i32 0, i32 19
  %42 = ptrtoint ptr %base53 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %base53, align 4
  %ngpio = getelementptr inbounds %struct.bgpio_pdata, ptr %pdata.0, i32 0, i32 2
  %43 = ptrtoint ptr %ngpio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp = icmp sgt i32 %44, 0
  br i1 %cmp, label %if.then54, label %if.end52.if.end58_crit_edge

if.end52.if.end58_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %44 to i16
  %ngpio56 = getelementptr inbounds %struct.gpio_chip, ptr %call.i162, i32 0, i32 20
  %45 = ptrtoint ptr %ngpio56 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv, ptr %ngpio56, align 4
  br label %if.end58

if.end58:                                         ; preds = %if.then54, %if.end52.if.end58_crit_edge, %if.end45.if.end58_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i162, ptr %driver_data.i.i, align 4
  %call60 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i162, ptr noundef null, ptr noundef nonnull @bgpio_pdev_probe.lock_key, ptr noundef nonnull @bgpio_pdev_probe.request_key) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then34, %if.then29, %if.then24, %if.then19, %if.then14, %if.end6.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %20, %if.then14 ], [ %25, %if.then19 ], [ %30, %if.then24 ], [ %35, %if.then29 ], [ %36, %if.then34 ], [ %call60, %if.end58 ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end36.cleanup_crit_edge ], [ %call42, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @bgpio_map(ptr noundef %pdev, ptr noundef %name, i32 noundef %sane_sz) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %name) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %end.i, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call, align 4
  %sub.i = add i32 %1, 1
  %add.i = sub i32 %sub.i, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sane_sz)
  %cmp.not = icmp eq i32 %add.i, %sane_sz
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call5 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_big_endian(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @bgpio_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-mmio.c", i32 613, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_bgpio_init, !4, !"__ksymtab_bgpio_init", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-mmio.c", i32 662, i32 1}
!5 = !{ptr @__initcall__kmod_gpio_generic__223_816_bgpio_driver_init6, !6, !"__initcall__kmod_gpio_generic__223_816_bgpio_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-mmio.c", i32 816, i32 1}
!7 = !{ptr @__exitcall_bgpio_driver_exit, !6, !"__exitcall_bgpio_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description224, !9, !"__UNIQUE_ID_description224", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-mmio.c", i32 820, i32 1}
!10 = !{ptr @__UNIQUE_ID_author225, !11, !"__UNIQUE_ID_author225", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-mmio.c", i32 821, i32 1}
!12 = !{ptr @__UNIQUE_ID_file226, !13, !"__UNIQUE_ID_file226", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-mmio.c", i32 822, i32 1}
!14 = !{ptr @__UNIQUE_ID_license227, !13, !"__UNIQUE_ID_license227", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-mmio.c", i32 459, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bgpio_setup_accessors._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @bgpio_setup_accessors._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-mmio.c", i32 809, i32 11}
!25 = !{ptr @bgpio_driver, !26, !"bgpio_driver", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-mmio.c", i32 807, i32 31}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-mmio.c", i32 748, i32 57}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-mmio.c", i32 758, i32 24}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-mmio.c", i32 762, i32 24}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-mmio.c", i32 766, i32 27}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-mmio.c", i32 770, i32 26}
!37 = !{ptr @bgpio_pdev_probe.lock_key, !38, !"lock_key", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-mmio.c", i32 792, i32 9}
!39 = !{ptr @bgpio_pdev_probe.request_key, !38, !"request_key", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-mmio.c", i32 711, i32 47}
!42 = !{ptr @bgpio_of_match, !43, !"bgpio_of_match", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-mmio.c", i32 685, i32 34}
!44 = !{ptr @bgpio_id_table, !45, !"bgpio_id_table", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-mmio.c", i32 795, i32 40}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i32 0, i32 33}
!56 = !{i8 0, i8 2}
!57 = !{i64 4074990}
!58 = !{i64 2153846554}
!59 = !{i64 2153846310}
!60 = !{i64 4074595}
!61 = !{i64 4074372}
!62 = !{i64 2153848708}
!63 = !{i64 2153848375}
!64 = !{i64 4074172}
!65 = !{i64 2153847349}
!66 = !{i64 2153846755}
!67 = !{i64 4075210}
!68 = !{i64 2153849269}
!69 = !{i64 2153848936}
!70 = !{i64 4074792}
!71 = !{i64 2153848144}
!72 = !{i64 2153847550}
