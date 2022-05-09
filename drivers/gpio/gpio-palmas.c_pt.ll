; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-palmas.c_pt.bc'
source_filename = "../drivers/gpio/gpio-palmas.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.palmas_device_data = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.palmas_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.palmas_platform_data = type { i32, i32, i8, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.palmas = type { ptr, [3 x ptr], [3 x ptr], i32, i32, i32, i32, %struct.mutex, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8 }

@__initcall__kmod_gpio_palmas__293_201_palmas_gpio_init4 = internal global ptr @palmas_gpio_init, section ".initcall4.init", align 4
@palmas_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @palmas_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_palmas_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"palmas-gpio\00", [20 x i8] zeroinitializer }, align 32
@of_palmas_gpio_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,palmas-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65913-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps65914-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @palmas_dev_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tps80036-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tps80036_dev_data }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@palmas_dev_data = internal constant { %struct.palmas_device_data, [28 x i8] } { %struct.palmas_device_data { i32 8 }, [28 x i8] zeroinitializer }, align 32
@palmas_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@palmas_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@palmas_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Could not register gpiochip, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"palmas_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-palmas.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@palmas_gpio_probe._entry_ptr = internal global ptr @palmas_gpio_probe._entry, section ".printk_index", align 4
@palmas_gpio_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 117, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Reg 0x%02x update failed, %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"palmas_gpio_input\00", [46 x i8] zeroinitializer }, align 32
@palmas_gpio_input._entry_ptr = internal global ptr @palmas_gpio_input._entry, section ".printk_index", align 4
@palmas_gpio_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.8, ptr @.str.3, i32 99, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"palmas_gpio_output\00", [45 x i8] zeroinitializer }, align 32
@palmas_gpio_output._entry_ptr = internal global ptr @palmas_gpio_output._entry, section ".printk_index", align 4
@palmas_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 77, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Reg 0x%02x write failed, %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"palmas_gpio_set\00", [16 x i8] zeroinitializer }, align 32
@palmas_gpio_set._entry_ptr = internal global ptr @palmas_gpio_set._entry, section ".printk_index", align 4
@palmas_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 41, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Reg 0x%02x read failed, %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"palmas_gpio_get\00", [16 x i8] zeroinitializer }, align 32
@palmas_gpio_get._entry_ptr = internal global ptr @palmas_gpio_get._entry, section ".printk_index", align 4
@palmas_gpio_get._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 52, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@palmas_gpio_get._entry_ptr.14 = internal global ptr @palmas_gpio_get._entry.13, section ".printk_index", align 4
@tps80036_dev_data = internal constant { %struct.palmas_device_data, [28 x i8] } { %struct.palmas_device_data { i32 16 }, [28 x i8] zeroinitializer }, align 32
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"palmas_gpio_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 191, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 192, i32 17 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"of_palmas_gpio_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 137, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [16 x i8] c"palmas_dev_data\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 129, i32 40 }
@___asan_gen_.27 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 180, i32 8 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 183, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 116, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 98, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 77, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 41, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 52, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [18 x i8] c"tps80036_dev_data\00", align 1
@___asan_gen_.88 = private constant [30 x i8] c"../drivers/gpio/gpio-palmas.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 133, i32 40 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_gpio_palmas__293_201_palmas_gpio_init4, ptr @palmas_gpio_get._entry, ptr @palmas_gpio_get._entry.13, ptr @palmas_gpio_get._entry_ptr, ptr @palmas_gpio_get._entry_ptr.14, ptr @palmas_gpio_input._entry, ptr @palmas_gpio_input._entry_ptr, ptr @palmas_gpio_output._entry, ptr @palmas_gpio_output._entry_ptr, ptr @palmas_gpio_probe._entry, ptr @palmas_gpio_probe._entry_ptr, ptr @palmas_gpio_set._entry, ptr @palmas_gpio_set._entry_ptr, ptr @palmas_gpio_driver, ptr @.str, ptr @of_palmas_gpio_match, ptr @palmas_dev_data, ptr @palmas_gpio_probe.lock_key, ptr @palmas_gpio_probe.request_key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tps80036_dev_data], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_palmas_gpio_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_dev_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palmas_gpio_get._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tps80036_dev_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @palmas_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_probe(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #5
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 352, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %tobool.not = icmp eq ptr %call2, null
  %spec.store.select = select i1 %tobool.not, ptr @palmas_dev_data, ptr %call2
  %palmas8 = getelementptr inbounds %struct.palmas_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %palmas8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %palmas8, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.dev_name.exit_crit_edge

if.end7.dev_name.exit_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end7.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end7.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %call.i, align 4
  %11 = ptrtoint ptr %spec.store.select to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spec.store.select, align 4
  %conv = trunc i32 %12 to i16
  %ngpio13 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %ngpio13 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %ngpio13, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %14 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %can_sleep, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @palmas_gpio_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @palmas_gpio_output, ptr %direction_output, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %17 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @palmas_gpio_to_irq, ptr %to_irq, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %18 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @palmas_gpio_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @palmas_gpio_get, ptr %get, align 4
  %parent22 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %parent22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %parent22, align 4
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %3, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 7
  %23 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %platform_data.i, align 8
  %tobool25.not = icmp eq ptr %24, null
  br i1 %tobool25.not, label %dev_name.exit.if.else_crit_edge, label %land.lhs.true

dev_name.exit.if.else_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %dev_name.exit
  %gpio_base = getelementptr inbounds %struct.palmas_platform_data, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %gpio_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool26.not = icmp eq i32 %26, 0
  br i1 %tobool26.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end32_crit_edge

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dev_name.exit.if.else_crit_edge
  br label %if.end32

if.end32:                                         ; preds = %if.else, %land.lhs.true.if.end32_crit_edge
  %.sink = phi i32 [ -1, %if.else ], [ %26, %land.lhs.true.if.end32_crit_edge ]
  %base31 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %base31 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %base31, align 4
  %call35 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @palmas_gpio_probe.lock_key, ptr noundef nonnull @palmas_gpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp = icmp slt i32 %call35, 0
  br i1 %cmp, label %do.end, label %if.end39

do.end:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call35) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %do.end ], [ %call35, %if.end39 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1 = getelementptr inbounds %struct.palmas_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %palmas1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas1, align 4
  %rem = and i32 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 8
  %cond = select i1 %tobool.not, i32 1, i32 10
  %shl = shl nuw nsw i32 1, %rem
  %add.i = or i32 %cond, 128
  %arrayidx.i = getelementptr %struct.palmas, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef %cond, i32 noundef %call.i.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1 = getelementptr inbounds %struct.palmas_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %palmas1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas1, align 4
  %rem = and i32 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 8
  %cond = select i1 %tobool.not, i32 1, i32 10
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1.i = getelementptr inbounds %struct.palmas_gpio, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %palmas1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %palmas1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not.i = icmp eq i32 %value, 0
  %cond4.i = select i1 %tobool2.not.i, i32 4, i32 5
  %shl.i = shl nuw nsw i32 1, %rem
  %add.i.i = or i32 %cond4.i, 128
  %arrayidx.i.i = getelementptr %struct.palmas, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add.i.i, i32 noundef %shl.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.palmas_gpio_set.exit_crit_edge

entry.palmas_gpio_set.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %palmas_gpio_set.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %6 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %cond4.i, i32 noundef %call.i.i) #8
  br label %palmas_gpio_set.exit

palmas_gpio_set.exit:                             ; preds = %do.end.i, %entry.palmas_gpio_set.exit_crit_edge
  %add.i = or i32 %cond, 128
  %arrayidx.i = getelementptr %struct.palmas, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %cmp = icmp slt i32 %call.i.i14, 0
  br i1 %cmp, label %do.end, label %palmas_gpio_set.exit.if.end_crit_edge

palmas_gpio_set.exit.if.end_crit_edge:            ; preds = %palmas_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %palmas_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %cond, i32 noundef %call.i.i14) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %palmas_gpio_set.exit.if.end_crit_edge
  ret i32 %call.i.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1 = getelementptr inbounds %struct.palmas_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %palmas1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas1, align 4
  %add = add i32 %offset, 24
  %irq_data.i = getelementptr inbounds %struct.palmas, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data.i, align 4
  %call.i = tail call i32 @regmap_irq_get_virq(ptr noundef %3, i32 noundef %add) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @palmas_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1 = getelementptr inbounds %struct.palmas_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %palmas1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas1, align 4
  %rem = and i32 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool2.not, i32 13, i32 14
  %cond4 = select i1 %tobool2.not, i32 4, i32 5
  %reg.0 = select i1 %tobool.not, i32 %cond4, i32 %cond
  %shl = shl nuw nsw i32 1, %rem
  %add.i = or i32 %reg.0, 128
  %arrayidx.i = getelementptr %struct.palmas, ptr %1, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add.i, i32 noundef %shl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %reg.0, i32 noundef %call.i) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @palmas_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %palmas1 = getelementptr inbounds %struct.palmas_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %palmas1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %palmas1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !54
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %offset)
  %tobool.not = icmp ult i32 %offset, 8
  %cond = select i1 %tobool.not, i32 1, i32 10
  %add.i = or i32 %cond, 128
  %arrayidx.i = getelementptr %struct.palmas, ptr %1, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %cond, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %offset, 7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shl = shl nuw nsw i32 1, %rem
  %and = and i32 %8, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %cond6 = select i1 %tobool.not, i32 2, i32 11
  %cond8 = select i1 %tobool.not, i32 0, i32 9
  %reg.0 = select i1 %tobool3.not, i32 %cond8, i32 %cond6
  %add.i44 = or i32 %reg.0, 128
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call.i46 = call i32 @regmap_read(ptr noundef %10, i32 noundef %add.i44, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp11 = icmp slt i32 %call.i46, 0
  br i1 %cmp11, label %do.end15, label %if.end17

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent16 = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %11 = ptrtoint ptr %parent16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent16, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.11, i32 noundef %reg.0, i32 noundef %call.i46) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = lshr i32 %14, %rem
  %16 = and i32 %15, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end15, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i46, %do.end15 ], [ %16, %if.end17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_gpio_palmas__293_201_palmas_gpio_init4, !1, !"__initcall__kmod_gpio_palmas__293_201_palmas_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-palmas.c", i32 201, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-palmas.c", i32 192, i32 17}
!4 = !{ptr @palmas_gpio_driver, !5, !"palmas_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-palmas.c", i32 191, i32 31}
!6 = !{ptr @palmas_gpio_probe.lock_key, !7, !"lock_key", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-palmas.c", i32 180, i32 8}
!8 = !{ptr @palmas_gpio_probe.request_key, !7, !"request_key", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-palmas.c", i32 183, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @palmas_gpio_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @palmas_gpio_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @palmas_dev_data, !18, !"palmas_dev_data", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-palmas.c", i32 129, i32 40}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-palmas.c", i32 116, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @palmas_gpio_input._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @palmas_gpio_input._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-palmas.c", i32 98, i32 3}
!26 = !{ptr @palmas_gpio_output._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @palmas_gpio_output._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-palmas.c", i32 77, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @palmas_gpio_set._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @palmas_gpio_set._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-palmas.c", i32 41, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @palmas_gpio_get._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @palmas_gpio_get._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @palmas_gpio_get._entry.13, !39, !"_entry", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-palmas.c", i32 52, i32 3}
!40 = !{ptr @palmas_gpio_get._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @of_palmas_gpio_match, !42, !"of_palmas_gpio_match", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-palmas.c", i32 137, i32 34}
!43 = !{ptr @tps80036_dev_data, !44, !"tps80036_dev_data", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-palmas.c", i32 133, i32 40}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
