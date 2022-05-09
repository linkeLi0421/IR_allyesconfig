; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/via-gpio.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/via-gpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+viafb_gpio_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_viafb_gpio_lookup\09\09\09\09"
module asm "\09.long\09__crc_viafb_gpio_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_viafb_gpio_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22viafb_gpio_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_viafb_gpio_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.viafb_gpio_cfg = type { %struct.gpio_chip, ptr, [6 x ptr], [6 x ptr] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.67, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.67 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.viafb_gpio = type { ptr, i16, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.viafb_pm_hooks = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.viafb_dev = type { ptr, i32, ptr, %struct.spinlock, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.via_port_cfg = type { i32, i32, i16, i8 }

@viafb_gpio_config = internal global { %struct.viafb_gpio_cfg, [112 x i8] } { %struct.viafb_gpio_cfg { %struct.gpio_chip { ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @via_gpio_dir_input, ptr @via_gpio_dir_out, ptr @via_gpio_get, ptr null, ptr @via_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 -1, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr null, [6 x ptr] zeroinitializer, [6 x ptr] zeroinitializer }, [112 x i8] zeroinitializer }, align 32
@__kstrtab_viafb_gpio_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_viafb_gpio_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_viafb_gpio_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @viafb_gpio_lookup to i32), ptr @__kstrtab_viafb_gpio_lookup, ptr @__kstrtabns_viafb_gpio_lookup }, section "___ksymtab_gpl+viafb_gpio_lookup", align 4
@via_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @viafb_gpio_probe, ptr @viafb_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VIAFB onboard GPIO\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"viafb-gpio\00", [21 x i8] zeroinitializer }, align 32
@viafb_all_gpios = internal global { [6 x %struct.viafb_gpio], [56 x i8] } { [6 x %struct.viafb_gpio] [%struct.viafb_gpio { ptr @.str.8, i16 964, i8 37, i32 1 }, %struct.viafb_gpio { ptr @.str.9, i16 964, i8 37, i32 0 }, %struct.viafb_gpio { ptr @.str.10, i16 964, i8 44, i32 1 }, %struct.viafb_gpio { ptr @.str.11, i16 964, i8 44, i32 0 }, %struct.viafb_gpio { ptr @.str.12, i16 964, i8 61, i32 1 }, %struct.viafb_gpio { ptr @.str.13, i16 964, i8 61, i32 0 }], [56 x i8] zeroinitializer }, align 32
@viafb_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016viafb: no GPIOs configured\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"viafb_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/video/fbdev/via/via-gpio.c\00", [61 x i8] zeroinitializer }, align 32
@viafb_gpio_probe._entry_ptr = internal global ptr @viafb_gpio_probe._entry, section ".printk_index", align 4
@viafb_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@viafb_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@viafb_gpio_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013viafb: failed to add gpios (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@viafb_gpio_probe._entry_ptr.7 = internal global ptr @viafb_gpio_probe._entry.5, section ".printk_index", align 4
@viafb_gpio_pm_hooks = internal global { %struct.viafb_pm_hooks, [44 x i8] } { %struct.viafb_pm_hooks { %struct.list_head zeroinitializer, ptr @viafb_gpio_suspend, ptr @viafb_gpio_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO0\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO1\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO2\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO3\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO4\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VGPIO5\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"viafb_gpio_config\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 143, i32 30 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"via_gpio_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 291, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 145, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 293, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [16 x i8] c"viafb_all_gpios\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 27, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 237, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 252, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 255, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"viafb_gpio_pm_hooks\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 186, i32 30 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 29, i32 14 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 35, i32 14 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 41, i32 14 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 47, i32 14 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 53, i32 14 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [38 x i8] c"../drivers/video/fbdev/via/via-gpio.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 59, i32 14 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_viafb_gpio_lookup, ptr @viafb_gpio_probe._entry, ptr @viafb_gpio_probe._entry.5, ptr @viafb_gpio_probe._entry_ptr, ptr @viafb_gpio_probe._entry_ptr.7, ptr @viafb_gpio_config, ptr @via_gpio_driver, ptr @.str, ptr @.str.1, ptr @viafb_all_gpios, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @viafb_gpio_probe.lock_key, ptr @viafb_gpio_probe.request_key, ptr @.str.6, ptr @viafb_gpio_pm_hooks, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_config to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_all_gpios to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_gpio_pm_hooks to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_gpio_lookup(ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  %conv = zext i16 %0 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp6.not = icmp eq i16 %0, 0
  br i1 %cmp6.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %i.07
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call = tail call i32 @strcmp(ptr noundef %name, ptr noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %5 = load i32, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 19), align 4
  %add = add i32 %5, %i.07
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.then ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_gpio_init() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @via_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_gpio_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @via_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_gpio_dir_input(ptr noundef %chip, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %vdev = getelementptr inbounds %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 2, i32 %nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vg_port_index = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vg_port_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vg_port_index, align 2
  %vg_mask_shift = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %vg_mask_shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vg_mask_shift, align 4
  %shl = shl i32 64, %7
  %conv6 = trunc i32 %shl to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %5) #6, !srcloc !49
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %neg.i = xor i8 %conv6, -1
  %and15.i = and i8 %8, %neg.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #6, !srcloc !49
  %9 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vdev, align 4
  %reg_lock8 = getelementptr inbounds %struct.viafb_dev, ptr %10, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock8, i32 noundef %call3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_gpio_dir_out(ptr noundef %chip, i32 noundef %nr, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %vdev.i = getelementptr inbounds %struct.viafb_gpio_cfg, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev.i, align 4
  %reg_lock.i = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock.i) #6
  %arrayidx.i = getelementptr %struct.viafb_gpio_cfg, ptr %call.i, i32 0, i32 2, i32 %nr
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %vg_port_index.i = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vg_port_index.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vg_port_index.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %5) #6, !srcloc !49
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %vg_mask_shift.i = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %vg_mask_shift.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vg_mask_shift.i, align 4
  %shl.i = shl i32 64, %8
  %9 = trunc i32 %shl.i to i8
  %conv8.i = or i8 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl15.i = shl i32 16, %8
  %10 = trunc i32 %shl15.i to i8
  %conv13.i = or i8 %conv8.i, %10
  %11 = xor i8 %10, -1
  %conv17.i = and i8 %conv8.i, %11
  %reg.0.i = select i1 %tobool.not.i, i8 %conv17.i, i8 %conv13.i
  %12 = ptrtoint ptr %vg_port_index.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vg_port_index.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %13) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %reg.0.i) #6, !srcloc !49
  %14 = ptrtoint ptr %vdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev.i, align 4
  %reg_lock20.i = getelementptr inbounds %struct.viafb_dev, ptr %15, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock20.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @via_gpio_get(ptr noundef %chip, i32 noundef %nr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %vdev = getelementptr inbounds %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 2, i32 %nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vg_port_index = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vg_port_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vg_port_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %5) #6, !srcloc !49
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %7 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %vdev, align 4
  %reg_lock8 = getelementptr inbounds %struct.viafb_dev, ptr %8, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock8, i32 noundef %call3) #6
  %conv9 = zext i8 %6 to i32
  %vg_mask_shift = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %vg_mask_shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vg_mask_shift, align 4
  %shl = shl i32 4, %10
  %and = and i32 %shl, %conv9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @via_gpio_set(ptr noundef %chip, i32 noundef %nr, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %vdev = getelementptr inbounds %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr %call, i32 0, i32 2, i32 %nr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %vg_port_index = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %vg_port_index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %vg_port_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %5) #6, !srcloc !49
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  %vg_mask_shift = getelementptr inbounds %struct.viafb_gpio, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %vg_mask_shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vg_mask_shift, align 4
  %shl = shl i32 64, %8
  %9 = trunc i32 %shl to i8
  %conv8 = or i8 %6, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl15 = shl i32 16, %8
  %10 = trunc i32 %shl15 to i8
  %conv13 = or i8 %conv8, %10
  %11 = xor i8 %10, -1
  %conv17 = and i8 %conv8, %11
  %reg.0 = select i1 %tobool.not, i8 %conv17, i8 %conv13
  %12 = ptrtoint ptr %vg_port_index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %vg_port_index, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %13) #6, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %reg.0) #6, !srcloc !49
  %14 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vdev, align 4
  %reg_lock20 = getelementptr inbounds %struct.viafb_dev, ptr %15, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock20, i32 noundef %call3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_gpio_probe(ptr nocapture noundef readonly %platdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %platdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %port_cfg1 = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %port_cfg1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_cfg1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc14.for.body_crit_edge, %entry
  %i.079 = phi i32 [ 0, %entry ], [ %inc15, %for.inc14.for.body_crit_edge ]
  %ngpio.078 = phi i32 [ 0, %entry ], [ %ngpio.3, %for.inc14.for.body_crit_edge ]
  %mode = getelementptr %struct.via_port_cfg, ptr %3, i32 %i.079, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp2.not = icmp eq i32 %5, 2
  br i1 %cmp2.not, label %for.cond3.preheader, label %for.body.for.inc14_crit_edge

for.body.for.inc14_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14

for.cond3.preheader:                              ; preds = %for.body
  %ioport_index = getelementptr %struct.via_port_cfg, ptr %3, i32 %i.079, i32 3
  %6 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 0, i32 2), align 2
  %7 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp8 = icmp eq i8 %6, %8
  br i1 %cmp8, label %if.then10, label %for.cond3.preheader.for.inc_crit_edge

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then10:                                        ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.078
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @viafb_all_gpios, ptr %arrayidx11, align 4
  %10 = load ptr, ptr @viafb_all_gpios, align 4
  %arrayidx12 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.078
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %arrayidx12, align 4
  %inc = add i32 %ngpio.078, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %for.cond3.preheader.for.inc_crit_edge
  %ngpio.2 = phi i32 [ %inc, %if.then10 ], [ %ngpio.078, %for.cond3.preheader.for.inc_crit_edge ]
  %12 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 1, i32 2), align 2
  %13 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp8.1 = icmp eq i8 %12, %14
  br i1 %cmp8.1, label %if.then10.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then10.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.1 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.2
  %15 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 1), ptr %arrayidx11.1, align 4
  %16 = load ptr, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 1), align 4
  %arrayidx12.1 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.2
  %17 = ptrtoint ptr %arrayidx12.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %arrayidx12.1, align 4
  %inc.1 = add i32 %ngpio.2, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then10.1, %for.inc.for.inc.1_crit_edge
  %ngpio.2.1 = phi i32 [ %inc.1, %if.then10.1 ], [ %ngpio.2, %for.inc.for.inc.1_crit_edge ]
  %18 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 2, i32 2), align 2
  %19 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp8.2 = icmp eq i8 %18, %20
  br i1 %cmp8.2, label %if.then10.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then10.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.2 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.2.1
  %21 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 2), ptr %arrayidx11.2, align 4
  %22 = load ptr, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 2), align 4
  %arrayidx12.2 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.2.1
  %23 = ptrtoint ptr %arrayidx12.2 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx12.2, align 4
  %inc.2 = add i32 %ngpio.2.1, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then10.2, %for.inc.1.for.inc.2_crit_edge
  %ngpio.2.2 = phi i32 [ %inc.2, %if.then10.2 ], [ %ngpio.2.1, %for.inc.1.for.inc.2_crit_edge ]
  %24 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 3, i32 2), align 2
  %25 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp8.3 = icmp eq i8 %24, %26
  br i1 %cmp8.3, label %if.then10.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then10.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.3 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.2.2
  %27 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 3), ptr %arrayidx11.3, align 4
  %28 = load ptr, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 3), align 4
  %arrayidx12.3 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.2.2
  %29 = ptrtoint ptr %arrayidx12.3 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %arrayidx12.3, align 4
  %inc.3 = add i32 %ngpio.2.2, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then10.3, %for.inc.2.for.inc.3_crit_edge
  %ngpio.2.3 = phi i32 [ %inc.3, %if.then10.3 ], [ %ngpio.2.2, %for.inc.2.for.inc.3_crit_edge ]
  %30 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 4, i32 2), align 2
  %31 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %32)
  %cmp8.4 = icmp eq i8 %30, %32
  br i1 %cmp8.4, label %if.then10.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then10.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.4 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.2.3
  %33 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 4), ptr %arrayidx11.4, align 4
  %34 = load ptr, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 4), align 4
  %arrayidx12.4 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.2.3
  %35 = ptrtoint ptr %arrayidx12.4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %arrayidx12.4, align 4
  %inc.4 = add i32 %ngpio.2.3, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then10.4, %for.inc.3.for.inc.4_crit_edge
  %ngpio.2.4 = phi i32 [ %inc.4, %if.then10.4 ], [ %ngpio.2.3, %for.inc.3.for.inc.4_crit_edge ]
  %36 = load i8, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 5, i32 2), align 2
  %37 = ptrtoint ptr %ioport_index to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ioport_index, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %38)
  %cmp8.5 = icmp eq i8 %36, %38
  br i1 %cmp8.5, label %if.then10.5, label %for.inc.4.for.inc14_crit_edge

for.inc.4.for.inc14_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc14

if.then10.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.5 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %ngpio.2.4
  %39 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 5), ptr %arrayidx11.5, align 4
  %40 = load ptr, ptr getelementptr inbounds ([6 x %struct.viafb_gpio], ptr @viafb_all_gpios, i32 0, i32 5), align 4
  %arrayidx12.5 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3, i32 %ngpio.2.4
  %41 = ptrtoint ptr %arrayidx12.5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx12.5, align 4
  %inc.5 = add i32 %ngpio.2.4, 1
  br label %for.inc14

for.inc14:                                        ; preds = %if.then10.5, %for.inc.4.for.inc14_crit_edge, %for.body.for.inc14_crit_edge
  %ngpio.3 = phi i32 [ %ngpio.078, %for.body.for.inc14_crit_edge ], [ %inc.5, %if.then10.5 ], [ %ngpio.2.4, %for.inc.4.for.inc14_crit_edge ]
  %inc15 = add nuw nsw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc15, 5
  br i1 %exitcond.not, label %for.end16, label %for.inc14.for.body_crit_edge

for.inc14.for.body_crit_edge:                     ; preds = %for.inc14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end16:                                        ; preds = %for.inc14
  %conv17 = trunc i32 %ngpio.3 to i16
  store i16 %conv17, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  store ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 3), ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 22), align 4
  store ptr %1, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngpio.3)
  %cmp18 = icmp eq i32 %ngpio.3, 0
  br i1 %cmp18, label %do.end, label %do.body23

do.end:                                           ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %cleanup

do.body23:                                        ; preds = %for.end16
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ngpio.3)
  %cmp3481 = icmp sgt i32 %ngpio.3, 0
  br i1 %cmp3481, label %do.body23.for.body36_crit_edge, label %do.body23.for.end39_crit_edge

do.body23.for.end39_crit_edge:                    ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end39

do.body23.for.body36_crit_edge:                   ; preds = %do.body23
  br label %for.body36

for.body36:                                       ; preds = %for.body36.for.body36_crit_edge, %do.body23.for.body36_crit_edge
  %i.182 = phi i32 [ %add, %for.body36.for.body36_crit_edge ], [ 0, %do.body23.for.body36_crit_edge ]
  %arrayidx37 = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %i.182
  %42 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx37, align 4
  %vg_port_index.i = getelementptr inbounds %struct.viafb_gpio, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %vg_port_index.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %vg_port_index.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %45) #6, !srcloc !49
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %or.i.i = or i8 %46, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #6, !srcloc !49
  %add = add i32 %i.182, 2
  %cmp34 = icmp slt i32 %add, %ngpio.3
  br i1 %cmp34, label %for.body36.for.body36_crit_edge, label %for.body36.for.end39_crit_edge

for.body36.for.end39_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end39

for.body36.for.body36_crit_edge:                  ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body36

for.end39:                                        ; preds = %for.body36.for.end39_crit_edge, %do.body23.for.end39_crit_edge
  %47 = load ptr, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 1), align 4
  %reg_lock40 = getelementptr inbounds %struct.viafb_dev, ptr %47, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock40, i32 noundef %call28) #6
  store i32 -1, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 19), align 4
  %call42 = tail call i32 @gpiochip_add_data_with_key(ptr noundef nonnull @viafb_gpio_config, ptr noundef nonnull @viafb_gpio_config, ptr noundef nonnull @viafb_gpio_probe.lock_key, ptr noundef nonnull @viafb_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool.not = icmp eq i32 %call42, 0
  br i1 %tobool.not, label %for.end39.if.end49_crit_edge, label %do.end46

for.end39.if.end49_crit_edge:                     ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

do.end46:                                         ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #8
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %call42) #10
  store i16 0, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %for.end39.if.end49_crit_edge
  tail call void @viafb_pm_register(ptr noundef nonnull @viafb_gpio_pm_hooks) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call42, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_gpio_remove(ptr nocapture noundef readnone %platdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @viafb_pm_unregister(ptr noundef nonnull @viafb_gpio_pm_hooks) #6
  %0 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp.not = icmp eq i16 %0, 0
  br i1 %cmp.not, label %entry.do.body2_crit_edge, label %if.then

entry.do.body2_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @gpiochip_remove(ptr noundef nonnull @viafb_gpio_config) #6
  br label %do.body2

do.body2:                                         ; preds = %if.then, %entry.do.body2_crit_edge
  %1 = load ptr, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 1), align 4
  %reg_lock = getelementptr inbounds %struct.viafb_dev, ptr %1, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %reg_lock) #6
  %2 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %cmp915.not = icmp eq i16 %2, 0
  br i1 %cmp915.not, label %do.body2.for.end_crit_edge, label %do.body2.for.body_crit_edge

do.body2.for.body_crit_edge:                      ; preds = %do.body2
  br label %for.body

do.body2.for.end_crit_edge:                       ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.body2.for.body_crit_edge
  %i.016 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %do.body2.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %i.016
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %vg_port_index.i = getelementptr inbounds %struct.viafb_gpio, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %vg_port_index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vg_port_index.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %6) #6, !srcloc !49
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %and15.i.i = and i8 %7, -3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i.i) #6, !srcloc !49
  %add = add nuw nsw i32 %i.016, 2
  %8 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  %conv8 = zext i16 %8 to i32
  %cmp9 = icmp ult i32 %add, %conv8
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body2.for.end_crit_edge
  store i16 0, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  %9 = load ptr, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 1), align 4
  %reg_lock11 = getelementptr inbounds %struct.viafb_dev, ptr %9, i32 0, i32 3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %reg_lock11, i32 noundef %call5) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_pm_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @viafb_gpio_suspend(ptr nocapture noundef readnone %private) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @viafb_gpio_resume(ptr nocapture noundef readnone %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %0)
  %cmp5.not = icmp eq i16 %0, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 2, i32 %i.06
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %vg_port_index.i = getelementptr inbounds %struct.viafb_gpio, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %vg_port_index.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vg_port_index.i, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %4) #6, !srcloc !49
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @arm_heavy_mb() #6
  %or.i.i = or i8 %5, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #6, !srcloc !49
  %add = add nuw nsw i32 %i.06, 2
  %6 = load i16, ptr getelementptr inbounds (%struct.viafb_gpio_cfg, ptr @viafb_gpio_config, i32 0, i32 0, i32 20), align 4
  %conv = zext i16 %6 to i32
  %cmp = icmp ult i32 %add, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_pm_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_viafb_gpio_lookup, !1, !"__ksymtab_viafb_gpio_lookup", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 204, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 145, i32 12}
!4 = !{ptr @viafb_gpio_config, !5, !"viafb_gpio_config", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 143, i32 30}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 293, i32 11}
!8 = !{ptr @via_gpio_driver, !9, !"via_gpio_driver", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 291, i32 31}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 237, i32 3}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @viafb_gpio_probe._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @viafb_gpio_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @viafb_gpio_probe.lock_key, !17, !"lock_key", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 252, i32 8}
!18 = !{ptr @viafb_gpio_probe.request_key, !17, !"request_key", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 255, i32 3}
!21 = !{ptr @viafb_gpio_probe._entry.5, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @viafb_gpio_probe._entry_ptr.7, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 29, i32 14}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 35, i32 14}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 41, i32 14}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 47, i32 14}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 53, i32 14}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 59, i32 14}
!35 = !{ptr @viafb_all_gpios, !36, !"viafb_all_gpios", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 27, i32 26}
!37 = !{ptr @viafb_gpio_pm_hooks, !38, !"viafb_gpio_pm_hooks", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/via/via-gpio.c", i32 186, i32 30}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i64 2154628762}
!49 = !{i64 4844327}
!50 = !{i64 4844722}
!51 = !{i64 2154629152}
!52 = !{i64 2154629387}
!53 = !{i64 2154627180}
!54 = !{i64 2154627570}
!55 = !{i64 2154627946}
!56 = !{i64 2154628269}
