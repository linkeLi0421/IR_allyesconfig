; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-syscon.c_pt.bc'
source_filename = "../drivers/gpio/gpio-syscon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.syscon_gpio_data = type { ptr, i32, i32, i32, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.syscon_gpio_priv = type { %struct.gpio_chip, ptr, ptr, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_gpio_syscon__224_275_syscon_gpio_driver_init6 = internal global ptr @syscon_gpio_driver_init, section ".initcall6.init", align 4
@syscon_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @syscon_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @syscon_gpio_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_syscon_gpio_driver_exit = internal global ptr @syscon_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author225 = internal constant [55 x i8] c"gpio_syscon.author=Alexander Shiyan <shc_work@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [43 x i8] c"gpio_syscon.description=SYSCON GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [42 x i8] c"gpio_syscon.file=drivers/gpio/gpio-syscon\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [24 x i8] c"gpio_syscon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-syscon\00", [20 x i8] zeroinitializer }, align 32
@syscon_gpio_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,ep7209-mctrl-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clps711x_mctrl_gpio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,keystone-dsp-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @keystone_dsp_gpio }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-grf-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rockchip_rk3328_gpio_mute }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio,syscon-dev\00", [16 x i8] zeroinitializer }, align 32
@syscon_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"can't read the data register offset!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"syscon_gpio_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-syscon.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@syscon_gpio_probe._entry_ptr = internal global ptr @syscon_gpio_probe._entry, section ".printk_index", align 4
@syscon_gpio_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 61, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_syscon\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"can't read the dir register offset!\0A\00", [59 x i8] zeroinitializer }, align 32
@syscon_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@syscon_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@clps711x_mctrl_gpio = internal constant { %struct.syscon_gpio_data, [40 x i8] } { %struct.syscon_gpio_data { ptr @.str.9, i32 1, i32 3, i32 520, i32 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@keystone_dsp_gpio = internal constant { %struct.syscon_gpio_data, [40 x i8] } { %struct.syscon_gpio_data { ptr null, i32 2, i32 28, i32 4, i32 0, ptr @keystone_gpio_set }, [40 x i8] zeroinitializer }, align 32
@rockchip_rk3328_gpio_mute = internal constant { %struct.syscon_gpio_data, [40 x i8] } { %struct.syscon_gpio_data { ptr null, i32 2, i32 1, i32 8513, i32 0, ptr @rockchip_gpio_set }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cirrus,ep7209-syscon1\00", [42 x i8] zeroinitializer }, align 32
@keystone_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 180, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpio write failed ret(%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"keystone_gpio_set\00", [46 x i8] zeroinitializer }, align 32
@keystone_gpio_set._entry_ptr = internal global ptr @keystone_gpio_set._entry, section ".printk_index", align 4
@rockchip_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.12, ptr @.str.4, i32 150, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rockchip_gpio_set\00", [46 x i8] zeroinitializer }, align 32
@rockchip_gpio_set._entry_ptr = internal global ptr @rockchip_gpio_set._entry, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"syscon_gpio_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 268, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 270, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"syscon_gpio_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 192, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 229, i32 40 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 238, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 245, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 265, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant [20 x i8] c"clps711x_mctrl_gpio\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 126, i32 38 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"keystone_dsp_gpio\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 183, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"rockchip_rk3328_gpio_mute\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 153, i32 38 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 128, i32 16 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 180, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [30 x i8] c"../drivers/gpio/gpio-syscon.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 150, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_syscon_gpio_driver_exit, ptr @__initcall__kmod_gpio_syscon__224_275_syscon_gpio_driver_init6, ptr @keystone_gpio_set._entry, ptr @keystone_gpio_set._entry_ptr, ptr @rockchip_gpio_set._entry, ptr @rockchip_gpio_set._entry_ptr, ptr @syscon_gpio_driver_exit, ptr @syscon_gpio_probe._entry, ptr @syscon_gpio_probe._entry_ptr, ptr @syscon_gpio_driver, ptr @.str, ptr @syscon_gpio_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @syscon_gpio_probe.lock_key, ptr @syscon_gpio_probe.request_key, ptr @clps711x_mctrl_gpio, ptr @keystone_dsp_gpio, ptr @rockchip_rk3328_gpio_mute, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_gpio_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @syscon_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clps711x_mctrl_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_dsp_gpio to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_rk3328_gpio_mute to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keystone_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rockchip_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @syscon_gpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @syscon_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @syscon_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 364, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #5
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %data, align 4
  %3 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call2, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  %call8 = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull %4) #5
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %syscon to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %syscon, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.then5.if.end52_crit_edge

if.then5.if.end52_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then11:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call15 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.1) #5
  %syscon16 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %syscon16 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %syscon16, align 4
  %cmp.i129 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i129, label %land.lhs.true, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true:                                    ; preds = %if.else
  %parent = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 4
  %tobool19.not = icmp eq ptr %9, null
  br i1 %tobool19.not, label %if.end24thread-pre-split, label %if.then20

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call22 = tail call ptr @syscon_node_to_regmap(ptr noundef nonnull %9) #5
  %10 = ptrtoint ptr %syscon16 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %syscon16, align 4
  br label %if.end24

if.end24thread-pre-split:                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %syscon16 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load ptr, ptr %syscon16, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.then20, %if.else.if.end24_crit_edge
  %12 = phi ptr [ %.pr, %if.end24thread-pre-split ], [ %call22, %if.then20 ], [ %call15, %if.else.if.end24_crit_edge ]
  %cmp.i130 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i130, label %if.then27, label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %dreg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call.i, i32 0, i32 3
  %call31 = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 1, ptr noundef %dreg_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end30.if.end34_crit_edge, label %do.end

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

do.end:                                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #8
  br label %if.end34

if.end34:                                         ; preds = %do.end, %if.end30.if.end34_crit_edge
  %14 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dreg_offset, align 4
  %shl = shl i32 %15, 3
  store i32 %shl, ptr %dreg_offset, align 4
  %dir_reg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call.i, i32 0, i32 4
  %call36 = tail call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.1, i32 noundef 2, ptr noundef %dir_reg_offset) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end34.if.end49_crit_edge, label %do.body39

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.body39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @syscon_gpio_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@syscon_gpio_probe, %if.end49)) #5
          to label %if.then45 [label %if.end49], !srcloc !59

if.then45:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @syscon_gpio_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev1, ptr noundef nonnull @.str.8) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then45, %do.body39, %if.end34.if.end49_crit_edge
  %16 = ptrtoint ptr %dir_reg_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir_reg_offset, align 4
  %shl51 = shl i32 %17, 3
  store i32 %shl51, ptr %dir_reg_offset, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.end49, %if.then5.if.end52_crit_edge
  %parent53 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %parent53 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev1, ptr %parent53, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.dev_name.exit_crit_edge

if.end52.dev_name.exit_crit_edge:                 ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end52.dev_name.exit_crit_edge
  %retval.0.i131 = phi ptr [ %23, %if.end.i ], [ %21, %if.end52.dev_name.exit_crit_edge ]
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %retval.0.i131, ptr %call.i, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %25 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %base, align 4
  %26 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data, align 4
  %bit_count = getelementptr inbounds %struct.syscon_gpio_data, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %bit_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bit_count, align 4
  %conv = trunc i32 %29 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %30 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %ngpio, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %31 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @syscon_gpio_get, ptr %get, align 4
  %flags = getelementptr inbounds %struct.syscon_gpio_data, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags, align 4
  %and = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool62.not = icmp eq i32 %and, 0
  br i1 %tobool62.not, label %dev_name.exit.if.end65_crit_edge, label %if.then63

dev_name.exit.if.end65_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then63:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %34 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @syscon_gpio_dir_in, ptr %direction_input, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %dev_name.exit.if.end65_crit_edge
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %flags67 = getelementptr inbounds %struct.syscon_gpio_data, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags67, align 4
  %and68 = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %if.end65.if.end76_crit_edge, label %if.then70

if.end65.if.end76_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then70:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  %set = getelementptr inbounds %struct.syscon_gpio_data, ptr %36, i32 0, i32 5
  %39 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %set, align 4
  %tobool72.not = icmp eq ptr %40, null
  %.syscon_gpio_set = select i1 %tobool72.not, ptr @syscon_gpio_set, ptr %40
  %set74 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %41 = ptrtoint ptr %set74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.syscon_gpio_set, ptr %set74, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %42 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @syscon_gpio_dir_out, ptr %direction_output, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then70, %if.end65.if.end76_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call80 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @syscon_gpio_probe.lock_key, ptr noundef nonnull @syscon_gpio_probe.request_key) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %if.then27, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then11 ], [ %call80, %if.end76 ], [ %13, %if.then27 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !60
  %dreg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dreg_offset, align 4
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %dat_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dat_bit_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dat_bit_offset, align 4
  %add = add i32 %2, %offset
  %add1 = add i32 %add, %6
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syscon, align 4
  %9 = lshr i32 %add1, 3
  %mul = and i32 %9, 536870908
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef %mul, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %rem = and i32 %add1, 31
  %12 = lshr i32 %11, %rem
  %13 = and i32 %12, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_gpio_dir_in(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.syscon_gpio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dir_reg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dir_reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir_reg_offset, align 4
  %dir_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dir_bit_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir_bit_offset, align 4
  %add = add i32 %5, %offset
  %add2 = add i32 %add, %7
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscon, align 4
  %10 = lshr i32 %add2, 3
  %mul = and i32 %10, 536870908
  %rem = and i32 %add2, 31
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @syscon_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %dreg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dreg_offset, align 4
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dat_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dat_bit_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dat_bit_offset, align 4
  %add = add i32 %1, %offset
  %add1 = add i32 %add, %5
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon, align 4
  %rem = and i32 %add1, 31
  %shl = shl nuw i32 1, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %8 = lshr i32 %add1, 3
  %mul = and i32 %8, 536870908
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %mul, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @syscon_gpio_dir_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %flags = getelementptr inbounds %struct.syscon_gpio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dir_reg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dir_reg_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir_reg_offset, align 4
  %dir_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %dir_bit_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir_bit_offset, align 4
  %add = add i32 %5, %offset
  %add2 = add i32 %add, %7
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %syscon, align 4
  %10 = lshr i32 %add2, 3
  %mul = and i32 %10, 536870908
  %rem = and i32 %add2, 31
  %shl = shl nuw i32 1, %rem
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef %mul, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %set = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 12
  %11 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set, align 4
  tail call void %12(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @keystone_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dreg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dreg_offset, align 4
  %data = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %dat_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dat_bit_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dat_bit_offset, align 4
  %add = add i32 %1, %offset
  %add1 = add i32 %add, %5
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %syscon, align 4
  %8 = lshr i32 %add1, 3
  %mul = and i32 %8, 536870908
  %rem = and i32 %add1, 31
  %shl = shl nuw i32 1, %rem
  %or = or i32 %shl, 1
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %mul, i32 noundef %or, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %9 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rockchip_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %dreg_offset = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %dreg_offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dreg_offset, align 4
  %data1 = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %dat_bit_offset = getelementptr inbounds %struct.syscon_gpio_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dat_bit_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dat_bit_offset, align 4
  %add = add i32 %1, %offset
  %add2 = add i32 %add, %5
  %6 = trunc i32 %add2 to i8
  %conv = and i8 %6, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %conv3 = zext i8 %conv to i32
  %shl = shl nuw i32 1, %conv3
  %cond = select i1 %tobool.not, i32 0, i32 %shl
  %narrow = add nuw nsw i8 %conv, 16
  %add5 = zext i8 %narrow to i32
  %shl6 = shl nuw i32 1, %add5
  %or = or i32 %cond, %shl6
  %syscon = getelementptr inbounds %struct.syscon_gpio_priv, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %syscon to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %syscon, align 4
  %9 = lshr i32 %add2, 3
  %mul = and i32 %9, 536870908
  %call7 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef %mul, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.10, i32 noundef %call7) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_gpio_syscon__224_275_syscon_gpio_driver_init6, !1, !"__initcall__kmod_gpio_syscon__224_275_syscon_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-syscon.c", i32 275, i32 1}
!2 = !{ptr @__exitcall_syscon_gpio_driver_exit, !1, !"__exitcall_syscon_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author225, !4, !"__UNIQUE_ID_author225", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-syscon.c", i32 277, i32 1}
!5 = !{ptr @__UNIQUE_ID_description226, !6, !"__UNIQUE_ID_description226", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-syscon.c", i32 278, i32 1}
!7 = !{ptr @__UNIQUE_ID_file227, !8, !"__UNIQUE_ID_file227", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-syscon.c", i32 279, i32 1}
!9 = !{ptr @__UNIQUE_ID_license228, !8, !"__UNIQUE_ID_license228", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-syscon.c", i32 270, i32 12}
!12 = !{ptr @syscon_gpio_driver, !13, !"syscon_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-syscon.c", i32 268, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-syscon.c", i32 229, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-syscon.c", i32 238, i32 4}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @syscon_gpio_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @syscon_gpio_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-syscon.c", i32 245, i32 4}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @syscon_gpio_probe.__UNIQUE_ID_ddebug223, !25, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!28 = !{ptr @syscon_gpio_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-syscon.c", i32 265, i32 9}
!30 = !{ptr @syscon_gpio_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @syscon_gpio_ids, !32, !"syscon_gpio_ids", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-syscon.c", i32 192, i32 34}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-syscon.c", i32 128, i32 16}
!35 = !{ptr @clps711x_mctrl_gpio, !36, !"clps711x_mctrl_gpio", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-syscon.c", i32 126, i32 38}
!37 = !{ptr @keystone_dsp_gpio, !38, !"keystone_dsp_gpio", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-syscon.c", i32 183, i32 38}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-syscon.c", i32 180, i32 3}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @keystone_gpio_set._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @keystone_gpio_set._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @rockchip_rk3328_gpio_mute, !45, !"rockchip_rk3328_gpio_mute", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-syscon.c", i32 153, i32 38}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-syscon.c", i32 150, i32 3}
!48 = !{ptr @rockchip_gpio_set._entry, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @rockchip_gpio_set._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148317437, i64 2148317442, i64 2148317455, i64 2148317499, i64 2148317533, i64 2148317554}
!60 = !{!"auto-init"}
