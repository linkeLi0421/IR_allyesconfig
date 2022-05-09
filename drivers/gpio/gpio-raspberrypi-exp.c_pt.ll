; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-raspberrypi-exp.c_pt.bc'
source_filename = "../drivers/gpio/gpio-raspberrypi-exp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.rpi_exp_gpio = type { %struct.gpio_chip, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.gpio_get_config = type { i32, i32, i32, i32, i32 }
%struct.gpio_set_config = type { i32, i32, i32, i32, i32, i32 }
%struct.gpio_get_set_state = type { i32, i32 }

@__initcall__kmod_gpio_raspberrypi_exp__223_250_rpi_exp_gpio_driver_init6 = internal global ptr @rpi_exp_gpio_driver_init, section ".initcall6.init", align 4
@rpi_exp_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rpi_exp_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rpi_exp_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rpi_exp_gpio_driver_exit = internal global ptr @rpi_exp_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [60 x i8] c"gpio_raspberrypi_exp.file=drivers/gpio/gpio-raspberrypi-exp\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [33 x i8] c"gpio_raspberrypi_exp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [76 x i8] c"gpio_raspberrypi_exp.author=Dave Stevenson <dave.stevenson@raspberrypi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [69 x i8] c"gpio_raspberrypi_exp.description=Raspberry Pi 3 expander GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [49 x i8] c"gpio_raspberrypi_exp.alias=platform:rpi-exp-gpio\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"raspberrypi-exp-gpio\00", [43 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"raspberrypi,firmware-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Missing firmware node\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rpi_exp_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpio/gpio-raspberrypi-exp.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_probe._entry_ptr = internal global ptr @rpi_exp_gpio_probe._entry, section ".printk_index", align 4
@rpi_exp_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rpi_exp_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rpi_exp_gpio_dir_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 97, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to set GPIO %u to input (%d %x)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rpi_exp_gpio_dir_in\00", [44 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_dir_in._entry_ptr = internal global ptr @rpi_exp_gpio_dir_in._entry, section ".printk_index", align 4
@rpi_exp_gpio_get_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 68, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get GPIO %u config (%d %x)\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rpi_exp_gpio_get_polarity\00", [38 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_get_polarity._entry_ptr = internal global ptr @rpi_exp_gpio_get_polarity._entry, section ".printk_index", align 4
@rpi_exp_gpio_dir_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set GPIO %u to output (%d %x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rpi_exp_gpio_dir_out\00", [43 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_dir_out._entry_ptr = internal global ptr @rpi_exp_gpio_dir_out._entry, section ".printk_index", align 4
@rpi_exp_gpio_get_direction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.12, ptr @.str.3, i32 147, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"rpi_exp_gpio_get_direction\00", [37 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_get_direction._entry_ptr = internal global ptr @rpi_exp_gpio_get_direction._entry, section ".printk_index", align 4
@rpi_exp_gpio_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get GPIO %u state (%d %x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpi_exp_gpio_get\00", [47 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_get._entry_ptr = internal global ptr @rpi_exp_gpio_get._entry, section ".printk_index", align 4
@rpi_exp_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 194, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to set GPIO %u state (%d %x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rpi_exp_gpio_set\00", [47 x i8] zeroinitializer }, align 32
@rpi_exp_gpio_set._entry_ptr = internal global ptr @rpi_exp_gpio_set._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"rpi_exp_gpio_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 243, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 245, i32 12 }
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"rpi_exp_gpio_ids\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 237, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 207, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 234, i32 9 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 96, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 67, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 125, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 145, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 170, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [39 x i8] c"../drivers/gpio/gpio-raspberrypi-exp.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 192, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_rpi_exp_gpio_driver_exit, ptr @__initcall__kmod_gpio_raspberrypi_exp__223_250_rpi_exp_gpio_driver_init6, ptr @rpi_exp_gpio_dir_in._entry, ptr @rpi_exp_gpio_dir_in._entry_ptr, ptr @rpi_exp_gpio_dir_out._entry, ptr @rpi_exp_gpio_dir_out._entry_ptr, ptr @rpi_exp_gpio_driver_exit, ptr @rpi_exp_gpio_get._entry, ptr @rpi_exp_gpio_get._entry_ptr, ptr @rpi_exp_gpio_get_direction._entry, ptr @rpi_exp_gpio_get_direction._entry_ptr, ptr @rpi_exp_gpio_get_polarity._entry, ptr @rpi_exp_gpio_get_polarity._entry_ptr, ptr @rpi_exp_gpio_probe._entry, ptr @rpi_exp_gpio_probe._entry_ptr, ptr @rpi_exp_gpio_set._entry, ptr @rpi_exp_gpio_set._entry_ptr, ptr @rpi_exp_gpio_driver, ptr @.str, ptr @rpi_exp_gpio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rpi_exp_gpio_probe.lock_key, ptr @rpi_exp_gpio_probe.request_key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_dir_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_get_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_dir_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_get_direction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpi_exp_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rpi_exp_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpi_exp_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @rpi_exp_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @devm_rpi_firmware_get(ptr noundef %dev1, ptr noundef nonnull %call) #5
  tail call void @of_node_put(ptr noundef nonnull %call) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 352, i32 noundef 3520) #5
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %fw11 = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %fw11 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %fw11, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %parent, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str, ptr %call.i, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 8, ptr %ngpio, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rpi_exp_gpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @rpi_exp_gpio_dir_out, ptr %direction_output, align 4
  %get_direction = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @rpi_exp_gpio_get_direction, ptr %get_direction, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @rpi_exp_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %12 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @rpi_exp_gpio_set, ptr %set, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %13 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %can_sleep, align 4
  %call23 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @rpi_exp_gpio_probe.lock_key, ptr noundef nonnull @rpi_exp_gpio_probe.request_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call23, %if.end10 ], [ -2, %do.end ], [ -517, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rpi_firmware_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_dir_in(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  %get.i = alloca %struct.gpio_get_config, align 4
  %set_in = alloca %struct.gpio_set_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %set_in) #5
  %0 = getelementptr inbounds %struct.gpio_set_config, ptr %set_in, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gpio_set_config, ptr %set_in, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gpio_set_config, ptr %set_in, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gpio_set_config, ptr %set_in, i32 0, i32 4
  %4 = getelementptr inbounds %struct.gpio_set_config, ptr %set_in, i32 0, i32 5
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %add = add i32 %off, 128
  %5 = ptrtoint ptr %set_in to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %set_in, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %get.i) #5
  %10 = getelementptr inbounds %struct.gpio_get_config, ptr %get.i, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %get.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %13 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %get.i, align 4
  %fw.i = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i, align 4
  %call2.i = call i32 @rpi_firmware_property(ptr noundef %15, i32 noundef 196675, ptr noundef nonnull %get.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %16 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %get.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %spec.select.i = phi i32 [ %call2.i, %entry.do.end.i_crit_edge ], [ -5, %lor.lhs.false.i.do.end.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 4
  %20 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %get.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %off, i32 noundef %call2.i, i32 noundef %21) #8
  br label %rpi_exp_gpio_get_polarity.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  br label %rpi_exp_gpio_get_polarity.exit

rpi_exp_gpio_get_polarity.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %spec.select.i, %do.end.i ], [ %23, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %get.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge, label %if.end

rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge: ; preds = %rpi_exp_gpio_get_polarity.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rpi_exp_gpio_get_polarity.exit
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %1, align 4
  %fw = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %call3 = call i32 @rpi_firmware_property(ptr noundef %26, i32 noundef 229443, ptr noundef nonnull %set_in, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %27 = ptrtoint ptr %set_in to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %set_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp5.not = icmp eq i32 %28, 0
  br i1 %cmp5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %spec.select = phi i32 [ %call3, %if.end.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %31 = ptrtoint ptr %set_in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %set_in, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.6, i32 noundef %off, i32 noundef %call3, i32 noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %retval.0.i, %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %set_in) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_dir_out(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  %get.i = alloca %struct.gpio_get_config, align 4
  %set_out = alloca %struct.gpio_set_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %set_out) #5
  %0 = getelementptr inbounds %struct.gpio_set_config, ptr %set_out, i32 0, i32 1
  %1 = getelementptr inbounds %struct.gpio_set_config, ptr %set_out, i32 0, i32 2
  %2 = getelementptr inbounds %struct.gpio_set_config, ptr %set_out, i32 0, i32 3
  %3 = getelementptr inbounds %struct.gpio_set_config, ptr %set_out, i32 0, i32 4
  %4 = getelementptr inbounds %struct.gpio_set_config, ptr %set_out, i32 0, i32 5
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %add = add i32 %off, 128
  %5 = ptrtoint ptr %set_out to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %set_out, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %0, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %2, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %3, align 4
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %val, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %get.i) #5
  %10 = getelementptr inbounds %struct.gpio_get_config, ptr %get.i, i32 0, i32 2
  %11 = getelementptr inbounds i8, ptr %get.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %13 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %get.i, align 4
  %fw.i = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fw.i, align 4
  %call2.i = call i32 @rpi_firmware_property(ptr noundef %15, i32 noundef 196675, ptr noundef nonnull %get.i, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %entry
  %16 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %get.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i = icmp eq i32 %17, 0
  br i1 %cmp.not.i, label %if.end.i, label %lor.lhs.false.i.do.end.i_crit_edge

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %spec.select.i = phi i32 [ %call2.i, %entry.do.end.i_crit_edge ], [ -5, %lor.lhs.false.i.do.end.i_crit_edge ]
  %parent.i = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %18 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent.i, align 4
  %20 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %get.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.8, i32 noundef %off, i32 noundef %call2.i, i32 noundef %21) #8
  br label %rpi_exp_gpio_get_polarity.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %10, align 4
  br label %rpi_exp_gpio_get_polarity.exit

rpi_exp_gpio_get_polarity.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %spec.select.i, %do.end.i ], [ %23, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %get.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge, label %if.end

rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge: ; preds = %rpi_exp_gpio_get_polarity.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %rpi_exp_gpio_get_polarity.exit
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i, ptr %1, align 4
  %fw = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call, i32 0, i32 1
  %25 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %fw, align 4
  %call3 = call i32 @rpi_firmware_property(ptr noundef %26, i32 noundef 229443, ptr noundef nonnull %set_out, i32 noundef 24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %27 = ptrtoint ptr %set_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %set_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp5.not = icmp eq i32 %28, 0
  br i1 %cmp5.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  %spec.select = phi i32 [ %call3, %if.end.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %29 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent, align 4
  %31 = ptrtoint ptr %set_out to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %set_out, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.10, i32 noundef %off, i32 noundef %call3, i32 noundef %32) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %lor.lhs.false.cleanup_crit_edge, %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %retval.0.i, %rpi_exp_gpio_get_polarity.exit.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %set_out) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_get_direction(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  %get = alloca %struct.gpio_get_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %get) #5
  %0 = getelementptr inbounds %struct.gpio_get_config, ptr %get, i32 0, i32 1
  %1 = getelementptr inbounds i8, ptr %get, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %add = add i32 %off, 128
  %3 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add, ptr %get, align 4
  %fw = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw, align 4
  %call2 = call i32 @rpi_firmware_property(ptr noundef %5, i32 noundef 196675, ptr noundef nonnull %get, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %get, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %spec.select = phi i32 [ %call2, %entry.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %10 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %get, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.8, i32 noundef %off, i32 noundef %call2, i32 noundef %11) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  %. = zext i1 %tobool6.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %get) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpi_exp_gpio_get(ptr noundef %gc, i32 noundef %off) #2 align 64 {
entry:
  %get = alloca %struct.gpio_get_set_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get) #5
  %0 = getelementptr inbounds %struct.gpio_get_set_state, ptr %get, i32 0, i32 1
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %add = add i32 %off, 128
  %1 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %get, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %0, align 4
  %fw = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %call2 = call i32 @rpi_firmware_property(ptr noundef %4, i32 noundef 196673, ptr noundef nonnull %get, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %get, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %spec.select = phi i32 [ %call2, %entry.do.end_crit_edge ], [ -5, %lor.lhs.false.do.end_crit_edge ]
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %9 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %get, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %off, i32 noundef %call2, i32 noundef %10) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7 = icmp ne i32 %12, 0
  %lnot.ext = zext i1 %tobool7 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %lnot.ext, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpi_exp_gpio_set(ptr noundef %gc, i32 noundef %off, i32 noundef %val) #2 align 64 {
entry:
  %set = alloca %struct.gpio_get_set_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %set) #5
  %0 = getelementptr inbounds %struct.gpio_get_set_state, ptr %set, i32 0, i32 1
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %add = add i32 %off, 128
  %1 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %set, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %val, ptr %0, align 4
  %fw = getelementptr inbounds %struct.rpi_exp_gpio, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fw, align 4
  %call2 = call i32 @rpi_firmware_property(ptr noundef %4, i32 noundef 229441, ptr noundef nonnull %set, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 2
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %9 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %set, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %off, i32 noundef %call2, i32 noundef %10) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %lor.lhs.false.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %set) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpi_firmware_property(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_gpio_raspberrypi_exp__223_250_rpi_exp_gpio_driver_init6, !1, !"__initcall__kmod_gpio_raspberrypi_exp__223_250_rpi_exp_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 250, i32 1}
!2 = !{ptr @__exitcall_rpi_exp_gpio_driver_exit, !1, !"__exitcall_rpi_exp_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 252, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author226, !7, !"__UNIQUE_ID_author226", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 253, i32 1}
!8 = !{ptr @__UNIQUE_ID_description227, !9, !"__UNIQUE_ID_description227", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 254, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 255, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 245, i32 12}
!14 = !{ptr @rpi_exp_gpio_driver, !15, !"rpi_exp_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 243, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 207, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @rpi_exp_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @rpi_exp_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @rpi_exp_gpio_probe.lock_key, !25, !"lock_key", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 234, i32 9}
!26 = !{ptr @rpi_exp_gpio_probe.request_key, !25, !"request_key", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 96, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @rpi_exp_gpio_dir_in._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @rpi_exp_gpio_dir_in._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 67, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @rpi_exp_gpio_get_polarity._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @rpi_exp_gpio_get_polarity._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 125, i32 3}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rpi_exp_gpio_dir_out._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @rpi_exp_gpio_dir_out._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 145, i32 3}
!44 = !{ptr @rpi_exp_gpio_get_direction._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @rpi_exp_gpio_get_direction._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 170, i32 3}
!48 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rpi_exp_gpio_get._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @rpi_exp_gpio_get._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 192, i32 3}
!53 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @rpi_exp_gpio_set._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @rpi_exp_gpio_set._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @rpi_exp_gpio_ids, !57, !"rpi_exp_gpio_ids", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-raspberrypi-exp.c", i32 237, i32 34}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
