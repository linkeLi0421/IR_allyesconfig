; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-madera.c_pt.bc'
source_filename = "../drivers/gpio/gpio-madera.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.85 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.madera_gpio = type { ptr, %struct.gpio_chip }
%struct.madera = type { ptr, ptr, ptr, i32, i32, ptr, i32, [2 x %struct.regulator_bulk_data], ptr, i8, i8, %struct.madera_pdata, ptr, ptr, i32, [3 x %struct.clk_bulk_data], i32, [4 x i32], ptr, %struct.mutex, i32, [3 x i8], [3 x i8], %struct.blocking_notifier_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.madera_pdata = type { ptr, %struct.arizona_ldo1_pdata, %struct.arizona_micsupp_pdata, i32, i32, ptr, i32, [2 x i32], %struct.madera_codec_pdata }
%struct.arizona_ldo1_pdata = type { ptr }
%struct.arizona_micsupp_pdata = type { ptr }
%struct.madera_codec_pdata = type { [4 x i32], [6 x i32], [6 x [4 x i32]], [6 x i8], [2 x i32], [2 x i32] }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_gpio_madera__290_206_madera_gpio_driver_init6 = internal global ptr @madera_gpio_driver_init, section ".initcall6.init", align 4
@madera_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @madera_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_madera_gpio_driver_exit = internal global ptr @madera_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep291 = internal constant [40 x i8] c"gpio_madera.softdep=pre: pinctrl-madera\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [57 x i8] c"gpio_madera.description=GPIO interface for Madera codecs\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [67 x i8] c"gpio_madera.author=Nariman Poushin <nariman@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [65 x i8] c"gpio_madera.author=Richard Fitzgerald <rf@opensource.cirrus.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [42 x i8] c"gpio_madera.file=drivers/gpio/gpio-madera\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [27 x i8] c"gpio_madera.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias297 = internal constant [39 x i8] c"gpio_madera.alias=platform:madera-gpio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"madera-gpio\00", [20 x i8] zeroinitializer }, align 32
@madera_gpio_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @madera_gpio_get_direction, ptr @madera_gpio_direction_in, ptr @madera_gpio_direction_out, ptr @madera_gpio_get, ptr null, ptr @madera_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@madera_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown chip variant %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"madera_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-madera.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@madera_gpio_probe._entry_ptr = internal global ptr @madera_gpio_probe._entry, section ".printk_index", align 4
@madera_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@madera_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@madera_gpio_probe.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_madera\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register gpiochip, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"madera-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@madera_gpio_probe.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to add pin range (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"madera\00", [25 x i8] zeroinitializer }, align 32
@madera_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 106, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to write to 0x%x (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"madera_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@madera_gpio_set._entry_ptr = internal global ptr @madera_gpio_set._entry, section ".printk_index", align 4
@switch.table.madera_gpio_probe = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 16, i16 40, i16 38, i16 38, i16 16, i16 16, i16 40, i16 15, i16 16], [46 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"madera_gpio_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 199, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 201, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"madera_gpio_chip\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 109, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 162, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 172, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 176, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 189, i32 56 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 192, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 110, i32 13 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [30 x i8] c"../drivers/gpio/gpio-madera.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 105, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [31 x i8] c"switch.table.madera_gpio_probe\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_alias297, ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__UNIQUE_ID_softdep291, ptr @__exitcall_madera_gpio_driver_exit, ptr @__initcall__kmod_gpio_madera__290_206_madera_gpio_driver_init6, ptr @madera_gpio_driver_exit, ptr @madera_gpio_probe._entry, ptr @madera_gpio_probe._entry_ptr, ptr @madera_gpio_set._entry, ptr @madera_gpio_set._entry_ptr, ptr @madera_gpio_driver, ptr @.str, ptr @madera_gpio_chip, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @madera_gpio_probe.lock_key, ptr @madera_gpio_probe.request_key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @switch.table.madera_gpio_probe], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @madera_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.madera_gpio_probe to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @madera_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @madera_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @madera_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %gpio_chip = getelementptr inbounds %struct.madera_gpio, ptr %call.i, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %gpio_chip, ptr @madera_gpio_chip, i32 348)
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %parent8 = getelementptr inbounds %struct.madera_gpio, ptr %call.i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %parent8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent8, align 4
  %type = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 9
  br i1 %11, label %switch.lookup, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %10) #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  %switch.gep = getelementptr inbounds [9 x i16], ptr @switch.table.madera_gpio_probe, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %12)
  %switch.load = load i16, ptr %switch.gep, align 2
  %ngpio21 = getelementptr inbounds %struct.madera_gpio, ptr %call.i, i32 0, i32 1, i32 20
  %13 = ptrtoint ptr %ngpio21 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %switch.load, ptr %ngpio21, align 4
  %gpio_base = getelementptr inbounds %struct.madera, ptr %3, i32 0, i32 11, i32 4
  %14 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool24.not = icmp eq i32 %15, 0
  %.sink = select i1 %tobool24.not, i32 -1, i32 %15
  %16 = getelementptr inbounds %struct.madera_gpio, ptr %call.i, i32 0, i32 1, i32 19
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %16, align 4
  %call33 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @madera_gpio_probe.lock_key, ptr noundef nonnull @madera_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.body35, label %if.end47

do.body35:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_gpio_probe.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_gpio_probe, %cleanup)) #5
          to label %if.then42 [label %cleanup], !srcloc !59

if.then42:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_gpio_probe.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call33) #5
  br label %cleanup

if.end47:                                         ; preds = %switch.lookup
  %ngpio50 = getelementptr inbounds %struct.madera_gpio, ptr %call.i, i32 0, i32 1, i32 20
  %18 = ptrtoint ptr %ngpio50 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %ngpio50, align 4
  %conv = zext i16 %19 to i32
  %call51 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gpio_chip, ptr noundef nonnull @.str.8, i32 noundef 0, i32 noundef 0, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end47.cleanup_crit_edge, label %do.body54

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @madera_gpio_probe.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@madera_gpio_probe, %cleanup)) #5
          to label %if.then68 [label %cleanup], !srcloc !59

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @madera_gpio_probe.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call51) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then68, %do.body54, %if.end47.cleanup_crit_edge, %if.then42, %do.body35, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call33, %if.then42 ], [ %call51, %if.then68 ], [ 0, %if.end47.cleanup_crit_edge ], [ %call33, %do.body35 ], [ %call51, %do.body54 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !60
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add = add i32 %mul, 5889
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = lshr i32 %6, 15
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %and.lobit, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_direction_in(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add = add i32 %mul, 5889
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add = add i32 %mul, 5889
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 0, i32 32768
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %add4 = add i32 %mul, 5888
  %call.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %add4, i32 noundef 32768, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i13, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @madera_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !60
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %add = add i32 %mul, 5888
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = lshr i32 %6, 15
  %and.lobit = and i32 %and, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.lobit, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @madera_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 0, i32 32768
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add = add i32 %mul, 5888
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef 32768, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.madera, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.11, i32 noundef %add, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !33, !34, !35, !37, !39, !40, !42, !44, !46, !47, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_gpio_madera__290_206_madera_gpio_driver_init6, !1, !"__initcall__kmod_gpio_madera__290_206_madera_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-madera.c", i32 206, i32 1}
!2 = !{ptr @__exitcall_madera_gpio_driver_exit, !1, !"__exitcall_madera_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_softdep291, !4, !"__UNIQUE_ID_softdep291", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-madera.c", i32 208, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-madera.c", i32 209, i32 1}
!7 = !{ptr @__UNIQUE_ID_author293, !8, !"__UNIQUE_ID_author293", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-madera.c", i32 210, i32 1}
!9 = !{ptr @__UNIQUE_ID_author294, !10, !"__UNIQUE_ID_author294", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-madera.c", i32 211, i32 1}
!11 = !{ptr @__UNIQUE_ID_file295, !12, !"__UNIQUE_ID_file295", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-madera.c", i32 212, i32 1}
!13 = !{ptr @__UNIQUE_ID_license296, !12, !"__UNIQUE_ID_license296", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias297, !15, !"__UNIQUE_ID_alias297", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-madera.c", i32 213, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-madera.c", i32 201, i32 11}
!18 = !{ptr @madera_gpio_driver, !19, !"madera_gpio_driver", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-madera.c", i32 199, i32 31}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-madera.c", i32 162, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @madera_gpio_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @madera_gpio_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @madera_gpio_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-madera.c", i32 172, i32 8}
!30 = !{ptr @madera_gpio_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-madera.c", i32 176, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @madera_gpio_probe.__UNIQUE_ID_ddebug288, !32, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-madera.c", i32 189, i32 56}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-madera.c", i32 192, i32 3}
!39 = !{ptr @madera_gpio_probe.__UNIQUE_ID_ddebug289, !38, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-madera.c", i32 110, i32 13}
!42 = !{ptr @madera_gpio_chip, !43, !"madera_gpio_chip", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-madera.c", i32 109, i32 31}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-madera.c", i32 105, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @madera_gpio_set._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @madera_gpio_set._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148305360, i64 2148305365, i64 2148305378, i64 2148305422, i64 2148305456, i64 2148305477}
!60 = !{!"auto-init"}
