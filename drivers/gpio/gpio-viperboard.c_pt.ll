; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-viperboard.c_pt.bc'
source_filename = "../drivers/gpio/gpio-viperboard.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.vprbrd_gpio = type { %struct.gpio_chip, i32, i32, %struct.gpio_chip, i32, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.vprbrd = type { ptr, %struct.mutex, [512 x i8], %struct.platform_device }

@__param_str_gpioa_freq = internal constant [27 x i8] c"gpio_viperboard.gpioa_freq\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@gpioa_freq = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@__param_gpioa_freq = internal constant %struct.kernel_param { ptr @__param_str_gpioa_freq, ptr null, ptr @param_ops_uint, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @gpioa_freq } }, section "__param", align 4
@__UNIQUE_ID_gpioa_freqtype232 = internal constant [41 x i8] c"gpio_viperboard.parmtype=gpioa_freq:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_gpioa_freq233 = internal constant [131 x i8] c"gpio_viperboard.parm=gpioa_freq:gpio-a sampling freq in Hz (default is 1000Hz) valid values: 10, 100, 1000, 10000, 100000, 1000000\00", section ".modinfo", align 1
@__initcall__kmod_gpio_viperboard__234_460_vprbrd_gpio_init4 = internal global ptr @vprbrd_gpio_init, section ".initcall4.init", align 4
@vprbrd_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vprbrd_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vprbrd_gpio_exit = internal global ptr @vprbrd_gpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [60 x i8] c"gpio_viperboard.author=Lars Poeschel <poeschel@lemonage.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [72 x i8] c"gpio_viperboard.description=GPIO driver for Nano River Techs Viperboard\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [50 x i8] c"gpio_viperboard.file=drivers/gpio/gpio-viperboard\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [28 x i8] c"gpio_viperboard.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias239 = internal constant [47 x i8] c"gpio_viperboard.alias=platform:viperboard-gpio\00", section ".modinfo", align 1
@gpioa_clk = internal global { i8, [31 x i8] } zeroinitializer, align 32
@vprbrd_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 454, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014invalid gpioa_freq (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vprbrd_gpio_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpio/gpio-viperboard.c\00", [33 x i8] zeroinitializer }, align 32
@vprbrd_gpio_init._entry_ptr = internal global ptr @vprbrd_gpio_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"viperboard-gpio\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"viperboard gpio a\00", [46 x i8] zeroinitializer }, align 32
@vprbrd_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vprbrd_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"viperboard gpio b\00", [46 x i8] zeroinitializer }, align 32
@vprbrd_gpio_probe.lock_key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vprbrd_gpio_probe.request_key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vprbrd_gpioa_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 168, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"usb error setting pin value\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vprbrd_gpioa_set\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vprbrd_gpioa_set._entry_ptr = internal global ptr @vprbrd_gpioa_set._entry, section ".printk_index", align 4
@vprbrd_gpiob_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.12, ptr @.str.2, i32 336, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vprbrd_gpiob_set\00", [47 x i8] zeroinitializer }, align 32
@vprbrd_gpiob_set._entry_ptr = internal global ptr @vprbrd_gpiob_set._entry, section ".printk_index", align 4
@vprbrd_gpiob_direction_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 356, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"usb error setting pin to input\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vprbrd_gpiob_direction_input\00", [35 x i8] zeroinitializer }, align 32
@vprbrd_gpiob_direction_input._entry_ptr = internal global ptr @vprbrd_gpiob_direction_input._entry, section ".printk_index", align 4
@vprbrd_gpiob_direction_output._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 374, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"usb error setting pin to output\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vprbrd_gpiob_direction_output\00", [34 x i8] zeroinitializer }, align 32
@vprbrd_gpiob_direction_output._entry_ptr = internal global ptr @vprbrd_gpiob_direction_output._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 10, i64 100, i64 1000, i64 10000, i64 100000, i64 1000000]
@___asan_gen_.17 = private unnamed_addr constant [11 x i8] c"gpioa_freq\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 74, i32 21 }
@___asan_gen_.20 = private unnamed_addr constant [19 x i8] c"vprbrd_gpio_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 427, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"gpioa_clk\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 73, i32 22 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 454, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 428, i32 17 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 397, i32 25 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 408, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 413, i32 25 }
@___asan_gen_.53 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 424, i32 9 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 168, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 336, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 356, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [34 x i8] c"../drivers/gpio/gpio-viperboard.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 374, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_alias239, ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_gpioa_freq233, ptr @__UNIQUE_ID_gpioa_freqtype232, ptr @__UNIQUE_ID_license238, ptr @__exitcall_vprbrd_gpio_exit, ptr @__initcall__kmod_gpio_viperboard__234_460_vprbrd_gpio_init4, ptr @__param_gpioa_freq, ptr @vprbrd_gpio_exit, ptr @vprbrd_gpio_init._entry, ptr @vprbrd_gpio_init._entry_ptr, ptr @vprbrd_gpioa_set._entry, ptr @vprbrd_gpioa_set._entry_ptr, ptr @vprbrd_gpiob_direction_input._entry, ptr @vprbrd_gpiob_direction_input._entry_ptr, ptr @vprbrd_gpiob_direction_output._entry, ptr @vprbrd_gpiob_direction_output._entry_ptr, ptr @vprbrd_gpiob_set._entry, ptr @vprbrd_gpiob_set._entry_ptr, ptr @gpioa_freq, ptr @vprbrd_gpio_driver, ptr @gpioa_clk, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vprbrd_gpio_probe.lock_key, ptr @vprbrd_gpio_probe.request_key, ptr @.str.5, ptr @vprbrd_gpio_probe.lock_key.6, ptr @vprbrd_gpio_probe.request_key.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioa_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpioa_clk to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_probe.lock_key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpio_probe.request_key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpioa_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpiob_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpiob_direction_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vprbrd_gpiob_direction_output._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gpioa_freq, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %do.end [
    i32 1000000, label %entry.sw.epilog_crit_edge
    i32 100000, label %sw.bb1
    i32 10000, label %sw.bb2
    i32 1000, label %sw.bb3
    i32 100, label %sw.bb4
    i32 10, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %.sink = phi i8 [ 3, %do.end ], [ 5, %sw.bb5 ], [ 4, %sw.bb4 ], [ 3, %sw.bb3 ], [ 2, %sw.bb2 ], [ 1, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  store i8 %.sink, ptr @gpioa_clk, align 1
  %call6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @vprbrd_gpio_driver, ptr noundef null) #4
  ret i32 %call6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vprbrd_gpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @vprbrd_gpio_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpio_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 716, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vb3 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %vb3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %vb3, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.4, ptr %call.i, align 4
  %parent6 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %parent6 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %parent6, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %owner, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 16, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 23
  %10 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %can_sleep, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %11 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @vprbrd_gpioa_set, ptr %set, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %12 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vprbrd_gpioa_get, ptr %get, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %13 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vprbrd_gpioa_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vprbrd_gpioa_direction_output, ptr %direction_output, align 4
  %call17 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @vprbrd_gpio_probe.lock_key, ptr noundef nonnull @vprbrd_gpio_probe.request_key) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end.cleanup_crit_edge, label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %gpiob = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %gpiob to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.5, ptr %gpiob, align 4
  %parent24 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev, ptr %parent24, align 4
  %owner26 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %owner26 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %owner26, align 4
  %base28 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 19
  %18 = ptrtoint ptr %base28 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %base28, align 4
  %ngpio30 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 20
  %19 = ptrtoint ptr %ngpio30 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16, ptr %ngpio30, align 4
  %can_sleep32 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 23
  %20 = ptrtoint ptr %can_sleep32 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %can_sleep32, align 4
  %set34 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 12
  %21 = ptrtoint ptr %set34 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @vprbrd_gpiob_set, ptr %set34, align 4
  %get36 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 10
  %22 = ptrtoint ptr %get36 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @vprbrd_gpiob_get, ptr %get36, align 4
  %direction_input38 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 8
  %23 = ptrtoint ptr %direction_input38 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @vprbrd_gpiob_direction_input, ptr %direction_input38, align 4
  %direction_output40 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call.i, i32 0, i32 3, i32 9
  %24 = ptrtoint ptr %direction_output40 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vprbrd_gpiob_direction_output, ptr %direction_output40, align 4
  %call44 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef %gpiob, ptr noundef nonnull %call.i, ptr noundef nonnull @vprbrd_gpio_probe.lock_key.6, ptr noundef nonnull @vprbrd_gpio_probe.request_key.7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call44, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vprbrd_gpioa_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %gpioa_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %gpioa_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpioa_out, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not = icmp eq i32 %value, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %gpioa_val = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %gpioa_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpioa_val, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %gpioa_val, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %gpioa_val6 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %gpioa_val6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpioa_val6, align 4
  %and7 = and i32 %7, %neg
  store i32 %and7, ptr %gpioa_val6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %buf, align 1
  %clk = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %clk, align 1
  %conv = trunc i32 %offset to i8
  %offset8 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %offset8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %offset8, align 1
  %t1 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %conv9 = trunc i32 %value to i8
  %outval = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %t1, align 1
  %12 = ptrtoint ptr %outval to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9, ptr %outval, align 1
  %risefall = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %risefall to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %risefall, align 1
  %answer = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %answer to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %answer, align 1
  %__fill = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %__fill to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %__fill, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or12 = or i32 %shl.i, -2147483648
  %call13 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or12, i8 noundef zeroext -19, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 11, i32 noundef 100) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call13)
  %cmp.not = icmp eq i32 %call13, 11
  br i1 %cmp.not, label %if.end.if.end18_crit_edge, label %do.end

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #7
  br label %if.end18

if.end18:                                         ; preds = %do.end, %if.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpioa_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %gpioa_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpioa_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpioa_out, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gpioa_val = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %gpioa_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpioa_val, align 4
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vb1, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 2
  %lock = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 6, ptr %buf, align 1
  %clk = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %clk, align 1
  %conv = trunc i32 %offset to i8
  %offset6 = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %offset6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %offset6, align 1
  %t1 = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 2, i32 3
  %answer7 = getelementptr inbounds %struct.vprbrd, ptr %7, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 8)
  store i64 0, ptr %t1, align 1
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  %shl.i = shl i32 %15, 8
  %or = or i32 %shl.i, -2147483648
  %call10 = tail call i32 @usb_control_msg(ptr noundef %13, i32 noundef %or, i8 noundef zeroext -19, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 11, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 11
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %7, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i62 = shl i32 %19, 8
  %or18 = or i32 %shl.i62, -2147483520
  %call19 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or18, i8 noundef zeroext -19, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 11, i32 noundef 100) #4
  %20 = ptrtoint ptr %answer7 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %answer7, align 1
  %22 = and i8 %21, 1
  %and22 = zext i8 %22 to i32
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call19)
  %cmp24.not = icmp eq i32 %call19, 11
  %23 = select i1 %cmp24.not, i1 %cmp.not, i1 false
  %spec.select61 = select i1 %23, i32 %and22, i32 -121
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ %spec.select61, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpioa_direction_input(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %gpioa_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %gpioa_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpioa_out, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %gpioa_out, align 4
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %buf, align 1
  %5 = load i8, ptr @gpioa_clk, align 1
  %clk = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %clk, align 1
  %conv = trunc i32 %offset to i8
  %offset2 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %offset2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %offset2, align 1
  %t1 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %t1 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 8)
  store i64 0, ptr %t1, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 8
  %shl.i = shl i32 %12, 8
  %or = or i32 %shl.i, -2147483648
  %call5 = tail call i32 @usb_control_msg(ptr noundef %10, i32 noundef %or, i8 noundef zeroext -19, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 11, i32 noundef 100) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 11
  %. = select i1 %cmp.not, i32 0, i32 -121
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpioa_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %shl = shl nuw i32 1, %offset
  %gpioa_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %gpioa_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpioa_out, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %gpioa_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gpioa_val = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %gpioa_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpioa_val, align 4
  %or3 = or i32 %5, %shl
  store i32 %or3, ptr %gpioa_val, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %gpioa_val5 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %gpioa_val5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpioa_val5, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %gpioa_val5, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %buf = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 3, ptr %buf, align 1
  %clk = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %clk to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %clk, align 1
  %conv = trunc i32 %offset to i8
  %offset6 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %offset6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %offset6, align 1
  %t1 = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %conv7 = trunc i32 %value to i8
  %outval = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 7
  %11 = ptrtoint ptr %t1 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 0, ptr %t1, align 1
  %12 = ptrtoint ptr %outval to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv7, ptr %outval, align 1
  %risefall = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 8
  %13 = ptrtoint ptr %risefall to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %risefall, align 1
  %answer = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 9
  %14 = ptrtoint ptr %answer to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %answer, align 1
  %__fill = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 10
  %15 = ptrtoint ptr %__fill to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %__fill, align 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 8
  %shl.i = shl i32 %19, 8
  %or10 = or i32 %shl.i, -2147483648
  %call11 = tail call i32 @usb_control_msg(ptr noundef %17, i32 noundef %or10, i8 noundef zeroext -19, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 11, i32 noundef 100) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 11
  %. = select i1 %cmp.not, i32 0, i32 -121
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vprbrd_gpiob_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %gpiob_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %gpiob_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpiob_out, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not = icmp eq i32 %value, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %gpiob_val = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %gpiob_val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpiob_val, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %gpiob_val, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %gpiob_val6 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %gpiob_val6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gpiob_val6, align 4
  %and7 = and i32 %7, %neg
  store i32 %and7, ptr %gpiob_val6, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %buf, align 1
  %shl8 = shl i32 %value, %offset
  %conv = trunc i32 %shl8 to i16
  %val = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %9, i32 2)
  store i16 %conv, ptr %val, align 1
  %conv10 = trunc i32 %shl to i16
  %mask = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_storeN_noabort(i32 %10, i32 2)
  store i16 %conv10, ptr %mask, align 1
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 8
  %shl.i = shl i32 %14, 8
  %or13 = or i32 %shl.i, -2147483648
  %call14 = tail call i32 @usb_control_msg(ptr noundef %12, i32 noundef %or13, i8 noundef zeroext -35, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 5, i32 noundef 100) #4
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call14)
  %cmp.not = icmp eq i32 %call14, 5
  br i1 %cmp.not, label %if.end.if.end19_crit_edge, label %do.end

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end19

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %15 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.8) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.end.if.end19_crit_edge, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpiob_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %gpiob_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %gpiob_out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gpiob_out, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %gpiob_val = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %gpiob_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpiob_val, align 4
  %and3 = and i32 %3, %shl
  br label %cleanup

if.end:                                           ; preds = %entry
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %4 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vb1, align 4
  %buf = getelementptr inbounds %struct.vprbrd, ptr %5, i32 0, i32 2
  %lock = getelementptr inbounds %struct.vprbrd, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 8
  %shl.i = shl i32 %9, 8
  %or6 = or i32 %shl.i, -2147483520
  %call7 = tail call i32 @usb_control_msg(ptr noundef %7, i32 noundef %or6, i8 noundef zeroext -35, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf, i16 noundef zeroext 5, i32 noundef 100) #4
  %val8 = getelementptr inbounds %struct.vprbrd, ptr %5, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %val8 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %val8, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call7)
  %cmp.not = icmp eq i32 %call7, 5
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i16 %11 to i32
  %gpiob_val12 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %gpiob_val12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %gpiob_val12, align 4
  %shr = lshr i32 %conv, %offset
  %and14 = and i32 %shr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %and3, %if.then ], [ %and14, %if.end11 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpiob_direction_input(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %gpiob_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %gpiob_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpiob_out, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %gpiob_out, align 4
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %buf.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %val.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 0, ptr %val.i, align 1
  %conv2.i = trunc i32 %shl to i16
  %mask.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv2.i, ptr %mask.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext -35, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 5, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 5
  tail call void @mutex_unlock(ptr noundef %lock) #4
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.13) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %..i = phi i32 [ -121, %do.end ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %..i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vprbrd_gpiob_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #4
  %vb1 = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %vb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vb1, align 4
  %shl = shl nuw i32 1, %offset
  %gpiob_out = getelementptr inbounds %struct.vprbrd_gpio, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %gpiob_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpiob_out, align 4
  %or = or i32 %3, %shl
  store i32 %or, ptr %gpiob_out, align 4
  %lock = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %buf.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %conv.i = trunc i32 %shl to i16
  %val.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_storeN_noabort(i32 %5, i32 2)
  store i16 %conv.i, ptr %val.i, align 1
  %mask.i = getelementptr inbounds %struct.vprbrd, ptr %1, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %mask.i to i32
  call void @__asan_storeN_noabort(i32 %6, i32 2)
  store i16 %conv.i, ptr %mask.i, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 8
  %shl.i.i = shl i32 %10, 8
  %or.i = or i32 %shl.i.i, -2147483648
  %call4.i = tail call i32 @usb_control_msg(ptr noundef %8, i32 noundef %or.i, i8 noundef zeroext -35, i8 noundef zeroext 64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %buf.i, i16 noundef zeroext 5, i32 noundef 100) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call4.i)
  %cmp.not.i = icmp eq i32 %call4.i, 5
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.15) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %..i = phi i32 [ -121, %do.end ], [ 0, %entry.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  tail call void @vprbrd_gpiob_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value)
  ret i32 %..i
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !18, !19, !21, !23, !24, !25, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !45, !46, !47, !48, !49, !50, !52, !53, !54, !56, !57, !58, !59, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__param_gpioa_freq, !1, !"__param_gpioa_freq", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-viperboard.c", i32 75, i32 1}
!2 = !{ptr @__UNIQUE_ID_gpioa_freqtype232, !1, !"__UNIQUE_ID_gpioa_freqtype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_gpioa_freq233, !4, !"__UNIQUE_ID_gpioa_freq233", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-viperboard.c", i32 76, i32 1}
!5 = !{ptr @__initcall__kmod_gpio_viperboard__234_460_vprbrd_gpio_init4, !6, !"__initcall__kmod_gpio_viperboard__234_460_vprbrd_gpio_init4", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-viperboard.c", i32 460, i32 1}
!7 = !{ptr @__exitcall_vprbrd_gpio_exit, !8, !"__exitcall_vprbrd_gpio_exit", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-viperboard.c", i32 466, i32 1}
!9 = !{ptr @__UNIQUE_ID_author235, !10, !"__UNIQUE_ID_author235", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-viperboard.c", i32 468, i32 1}
!11 = !{ptr @__UNIQUE_ID_description236, !12, !"__UNIQUE_ID_description236", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-viperboard.c", i32 469, i32 1}
!13 = !{ptr @__UNIQUE_ID_file237, !14, !"__UNIQUE_ID_file237", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-viperboard.c", i32 470, i32 1}
!15 = !{ptr @__UNIQUE_ID_license238, !14, !"__UNIQUE_ID_license238", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_alias239, !17, !"__UNIQUE_ID_alias239", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-viperboard.c", i32 471, i32 1}
!18 = !{ptr @__param_str_gpioa_freq, !1, !"__param_str_gpioa_freq", i1 false, i1 false}
!19 = !{ptr @gpioa_freq, !20, !"gpioa_freq", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-viperboard.c", i32 74, i32 21}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-viperboard.c", i32 454, i32 3}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @vprbrd_gpio_init._entry, !22, !"_entry", i1 false, i1 false}
!26 = !{ptr @vprbrd_gpio_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @gpioa_clk, !28, !"gpioa_clk", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-viperboard.c", i32 73, i32 22}
!29 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-viperboard.c", i32 428, i32 17}
!31 = !{ptr @vprbrd_gpio_driver, !32, !"vprbrd_gpio_driver", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-viperboard.c", i32 427, i32 31}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-viperboard.c", i32 397, i32 25}
!35 = !{ptr @vprbrd_gpio_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-viperboard.c", i32 408, i32 8}
!37 = !{ptr @vprbrd_gpio_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-viperboard.c", i32 413, i32 25}
!40 = !{ptr @vprbrd_gpio_probe.lock_key.6, !41, !"lock_key", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-viperboard.c", i32 424, i32 9}
!42 = !{ptr @vprbrd_gpio_probe.request_key.7, !41, !"request_key", i1 false, i1 false}
!43 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-viperboard.c", i32 168, i32 4}
!45 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @vprbrd_gpioa_set._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @vprbrd_gpioa_set._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-viperboard.c", i32 336, i32 4}
!52 = !{ptr @vprbrd_gpiob_set._entry, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @vprbrd_gpiob_set._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-viperboard.c", i32 356, i32 3}
!56 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @vprbrd_gpiob_direction_input._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @vprbrd_gpiob_direction_input._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-viperboard.c", i32 374, i32 3}
!61 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @vprbrd_gpiob_direction_output._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @vprbrd_gpiob_direction_output._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
