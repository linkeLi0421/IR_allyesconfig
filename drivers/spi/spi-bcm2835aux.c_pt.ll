; ModuleID = '/llk/IR_all_yes/drivers/spi/spi-bcm2835aux.c_pt.bc'
source_filename = "../drivers/spi/spi-bcm2835aux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.bcm2835aux_spi = type { ptr, ptr, i32, [2 x i32], ptr, ptr, i32, i32, i32, i64, i64, i64, ptr }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__param_str_polling_limit_us = internal constant [32 x i8] c"spi_bcm2835aux.polling_limit_us\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@polling_limit_us = internal global { i32, [28 x i8] } { i32 30, [28 x i8] zeroinitializer }, align 32
@__param_polling_limit_us = internal constant %struct.kernel_param { ptr @__param_str_polling_limit_us, ptr null, ptr @param_ops_uint, i16 436, i8 -1, i8 0, %union.anon.65 { ptr @polling_limit_us } }, section "__param", align 4
@__UNIQUE_ID_polling_limit_ustype234 = internal constant [46 x i8] c"spi_bcm2835aux.parmtype=polling_limit_us:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_polling_limit_us235 = internal constant [112 x i8] c"spi_bcm2835aux.parm=polling_limit_us:time in us to run a transfer in polling mode - if zero no polling is used\0A\00", section ".modinfo", align 1
@__initcall__kmod_spi_bcm2835aux__240_614_bcm2835aux_spi_driver_init6 = internal global ptr @bcm2835aux_spi_driver_init, section ".initcall6.init", align 4
@bcm2835aux_spi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bcm2835aux_spi_probe, ptr @bcm2835aux_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bcm2835aux_spi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835aux_spi_driver_exit = internal global ptr @bcm2835aux_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [74 x i8] c"spi_bcm2835aux.description=SPI controller driver for Broadcom BCM2835 aux\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"spi_bcm2835aux.author=Martin Sperl <kernel@martin.sperl.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [47 x i8] c"spi_bcm2835aux.file=drivers/spi/spi-bcm2835aux\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [27 x i8] c"spi_bcm2835aux.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi-bcm2835aux\00", [17 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2835-aux-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 533, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get clk: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835aux_spi_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spi/spi-bcm2835aux.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry_ptr = internal global ptr @bcm2835aux_spi_probe._entry, section ".printk_index", align 4
@bcm2835aux_spi_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 544, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not prepare clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry_ptr.8 = internal global ptr @bcm2835aux_spi_probe._entry.6, section ".printk_index", align 4
@bcm2835aux_spi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clock returns 0 Hz\0A\00", [44 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry_ptr.11 = internal global ptr @bcm2835aux_spi_probe._entry.9, section ".printk_index", align 4
@bcm2835aux_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry_ptr.14 = internal global ptr @bcm2835aux_spi_probe._entry.12, section ".printk_index", align 4
@bcm2835aux_spi_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"could not register SPI master: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_probe._entry_ptr.17 = internal global ptr @bcm2835aux_spi_probe._entry.15, section ".printk_index", align 4
@bcm2835aux_spi_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 463, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not set gpio %i as output: %i\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bcm2835aux_spi_setup\00", [43 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_setup._entry_ptr = internal global ptr @bcm2835aux_spi_setup._entry, section ".printk_index", align 4
@bcm2835aux_spi_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.3, i32 480, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"Native CS is not supported - please configure cs-gpio in device-tree\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_setup._entry_ptr.23 = internal global ptr @bcm2835aux_spi_setup._entry.20, section ".printk_index", align 4
@bcm2835aux_spi_setup._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.19, ptr @.str.3, i32 485, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Native CS is not working for cs > 0\0A\00", [59 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_setup._entry_ptr.26 = internal global ptr @bcm2835aux_spi_setup._entry.24, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bcm2835aux_spi_transfer_one_poll._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@bcm2835aux_spi_transfer_one_poll.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.28, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 0, i8 82, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spi_bcm2835aux\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bcm2835aux_spi_transfer_one_poll\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"timeout period reached: jiffies: %lu remaining tx/rx: %d/%d - falling back to interrupt mode\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"spi-bcm2835aux-%s\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"count_transfer_polling\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"count_transfer_irq\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"count_transfer_irq_after_poll\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"polling_limit_us\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 32, i32 21 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"bcm2835aux_spi_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 606, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 608, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"bcm2835aux_spi_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 600, i32 34 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 533, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 544, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 551, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 564, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 570, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 461, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 479, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 485, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 328, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 115, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 122, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 124, i32 21 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [32 x i8] c"../drivers/spi/spi-bcm2835aux.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 126, i32 21 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__UNIQUE_ID_polling_limit_us235, ptr @__UNIQUE_ID_polling_limit_ustype234, ptr @__exitcall_bcm2835aux_spi_driver_exit, ptr @__initcall__kmod_spi_bcm2835aux__240_614_bcm2835aux_spi_driver_init6, ptr @__param_polling_limit_us, ptr @bcm2835aux_spi_driver_exit, ptr @bcm2835aux_spi_probe._entry, ptr @bcm2835aux_spi_probe._entry.12, ptr @bcm2835aux_spi_probe._entry.15, ptr @bcm2835aux_spi_probe._entry.6, ptr @bcm2835aux_spi_probe._entry.9, ptr @bcm2835aux_spi_probe._entry_ptr, ptr @bcm2835aux_spi_probe._entry_ptr.11, ptr @bcm2835aux_spi_probe._entry_ptr.14, ptr @bcm2835aux_spi_probe._entry_ptr.17, ptr @bcm2835aux_spi_probe._entry_ptr.8, ptr @bcm2835aux_spi_setup._entry, ptr @bcm2835aux_spi_setup._entry.20, ptr @bcm2835aux_spi_setup._entry.24, ptr @bcm2835aux_spi_setup._entry_ptr, ptr @bcm2835aux_spi_setup._entry_ptr.23, ptr @bcm2835aux_spi_setup._entry_ptr.26, ptr @polling_limit_us, ptr @bcm2835aux_spi_driver, ptr @.str, ptr @bcm2835aux_spi_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.25, ptr @bcm2835aux_spi_transfer_one_poll._rs, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polling_limit_us to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_setup._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835aux_spi_transfer_one_poll._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835aux_spi_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835aux_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835aux_spi_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %name.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call ptr @__devm_spi_alloc_controller(ptr noundef %dev, i32 noundef 72, i1 noundef zeroext false) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mode_bits = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 5
  %1 = ptrtoint ptr %mode_bits to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 70, ptr %mode_bits, align 8
  %bits_per_word_mask = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %bits_per_word_mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 128, ptr %bits_per_word_mask, align 8
  %num_chipselect = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %num_chipselect to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %num_chipselect, align 2
  %setup = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 20
  %4 = ptrtoint ptr %setup to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bcm2835aux_spi_setup, ptr %setup, align 4
  %transfer_one = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 51
  %5 = ptrtoint ptr %transfer_one to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @bcm2835aux_spi_transfer_one, ptr %transfer_one, align 4
  %handle_err = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 52
  %6 = ptrtoint ptr %handle_err to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bcm2835aux_spi_handle_err, ptr %handle_err, align 8
  %prepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 47
  %7 = ptrtoint ptr %prepare_message to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm2835aux_spi_prepare_message, ptr %prepare_message, align 4
  %unprepare_message = getelementptr inbounds %struct.spi_controller, ptr %call.i, i32 0, i32 48
  %8 = ptrtoint ptr %unprepare_message to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @bcm2835aux_spi_unprepare_message, ptr %unprepare_message, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %of_node3 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 27
  %11 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node3, align 8
  %driver_data.i.i122 = getelementptr inbounds %struct.device, ptr %call.i, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i122 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i122, align 4
  %call5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5, ptr %13, align 8
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #7
  %clk = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %clk, align 4
  %cmp.i123 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %17) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 2
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call21, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call21)
  %cmp = icmp slt i32 %call21, 1
  br i1 %cmp, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool25.not = icmp eq i32 %call21, 0
  %spec.select = select i1 %tobool25.not, i32 -19, i32 %call21
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk, align 4
  %call.i124 = tail call i32 @clk_prepare(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %tobool.not.i = icmp eq i32 %call.i124, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end27.do.end34_crit_edge

if.end27.do.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end.i:                                         ; preds = %if.end27
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end36, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %20) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then3.i, %if.end27.do.end34_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i124, %if.end27.do.end34_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %retval.0.i.ph) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end.i
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  %call38 = tail call i32 @clk_get_rate(ptr noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %out_clk_disable

if.end45:                                         ; preds = %if.end36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %23 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %13, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %13, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 131072) #7, !srcloc !87
  %27 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i125 = icmp eq ptr %30, null
  br i1 %tobool.not.i125, label %if.end.i126, label %if.end45.dev_name.exit_crit_edge

if.end45.dev_name.exit_crit_edge:                 ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i126:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i126, %if.end45.dev_name.exit_crit_edge
  %retval.0.i127 = phi ptr [ %32, %if.end.i126 ], [ %30, %if.end45.dev_name.exit_crit_edge ]
  %call.i128 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %28, ptr noundef nonnull @bcm2835aux_spi_interrupt, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i127, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool51.not = icmp eq i32 %call.i128, 0
  br i1 %tobool51.not, label %if.end57, label %do.end55

do.end55:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call.i128) #10
  br label %out_clk_disable

if.end57:                                         ; preds = %dev_name.exit
  %call58 = tail call i32 @spi_register_controller(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call58) #10
  br label %out_clk_disable

if.end65:                                         ; preds = %if.end57
  %33 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i130 = icmp eq ptr %34, null
  br i1 %tobool.not.i130, label %if.end.i131, label %if.end65.dev_name.exit133_crit_edge

if.end65.dev_name.exit133_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit133

if.end.i131:                                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 4
  br label %dev_name.exit133

dev_name.exit133:                                 ; preds = %if.end.i131, %if.end65.dev_name.exit133_crit_edge
  %retval.0.i132 = phi ptr [ %36, %if.end.i131 ], [ %34, %if.end65.dev_name.exit133_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %name.i) #7
  %37 = call ptr @memset(ptr %name.i, i32 255, i32 64)
  %call.i134 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 64, ptr noundef nonnull @.str.31, ptr noundef %retval.0.i132) #7
  %call2.i = call ptr @debugfs_create_dir(ptr noundef nonnull %name.i, ptr noundef null) #7
  %debugfs_dir.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 12
  %38 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call2.i, ptr %debugfs_dir.i, align 8
  %count_transfer_polling.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 9
  call void @debugfs_create_u64(ptr noundef nonnull @.str.32, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_polling.i) #7
  %count_transfer_irq.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 10
  call void @debugfs_create_u64(ptr noundef nonnull @.str.33, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_irq.i) #7
  %count_transfer_irq_after_poll.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %13, i32 0, i32 11
  call void @debugfs_create_u64(ptr noundef nonnull @.str.34, i16 noundef zeroext 292, ptr noundef %call2.i, ptr noundef %count_transfer_irq_after_poll.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %name.i) #7
  br label %cleanup

out_clk_disable:                                  ; preds = %do.end63, %do.end55, %do.end43
  %err.0 = phi i32 [ %call.i128, %do.end55 ], [ %call58, %do.end63 ], [ -19, %do.end43 ]
  %39 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %40) #7
  tail call void @clk_unprepare(ptr noundef %40) #7
  br label %cleanup

cleanup:                                          ; preds = %out_clk_disable, %dev_name.exit133, %do.end34, %if.then23, %if.then16, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %if.then8 ], [ %17, %if.then16 ], [ %spec.select, %if.then23 ], [ %retval.0.i.ph, %do.end34 ], [ %err.0, %out_clk_disable ], [ 0, %dev_name.exit133 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  %debugfs_dir.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_dir.i, align 8
  tail call void @debugfs_remove(ptr noundef %5) #7
  %6 = ptrtoint ptr %debugfs_dir.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %debugfs_dir.i, align 8
  tail call void @spi_unregister_controller(ptr noundef %1) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 8
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 131072) #7, !srcloc !87
  %clk = getelementptr inbounds %struct.bcm2835aux_spi, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  tail call void @clk_unprepare(ptr noundef %12) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_setup(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 8
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cs_gpio = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 13
  %2 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cs_gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %3)
  %4 = icmp ult i32 %3, 2048
  br i1 %4, label %if.then1, label %do.end14

if.then1:                                         ; preds = %if.end
  %and4 = lshr i32 %1, 2
  %and4.lobit = and i32 %and4, 1
  %5 = xor i32 %and4.lobit, 1
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #7
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %if.then1.cleanup_crit_edge, label %do.end

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %cs_gpio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cs_gpio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.18, i32 noundef %7, i32 noundef %call1.i) #10
  br label %cleanup

do.end14:                                         ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.21) #10
  %chip_select = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 4
  %8 = ptrtoint ptr %chip_select to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %chip_select, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp = icmp eq i8 %9, 0
  br i1 %cmp, label %do.end14.cleanup_crit_edge, label %do.end21

do.end14.cleanup_crit_edge:                       ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.25) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end21, %do.end14.cleanup_crit_edge, %do.end, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end21 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %do.end ], [ 0, %if.then1.cleanup_crit_edge ], [ 0, %do.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_transfer_one(ptr nocapture noundef readonly %master, ptr noundef %spi, ptr nocapture noundef %tfr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 12
  %2 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed_hz, align 4
  %clk = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %5) #7
  %div67 = lshr i32 %call1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %div67)
  %cmp.not = icmp ult i32 %3, %div67
  br i1 %cmp.not, label %if.else, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.else.if.end10_crit_edge, label %if.then2

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %3, 1
  %add = add i32 %mul, -1
  %sub = add i32 %add, %call1
  %div4 = udiv i32 %sub, %mul
  %sub5 = add i32 %div4, -1
  %6 = tail call i32 @llvm.umin.i32(i32 %sub5, i32 4095)
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.else.if.end10_crit_edge, %entry.if.end10_crit_edge
  %speed.0 = phi i32 [ %6, %if.then2 ], [ 0, %entry.if.end10_crit_edge ], [ 4095, %if.else.if.end10_crit_edge ]
  %cntl = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cntl, align 4
  %and = and i32 %8, 1048575
  %shl = shl nuw i32 %speed.0, 20
  %or = or i32 %and, %shl
  store i32 %or, ptr %cntl, align 4
  %add13 = shl nuw nsw i32 %speed.0, 1
  %mul14 = add nuw nsw i32 %add13, 2
  %div15 = udiv i32 %call1, %mul14
  %effective_speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 13
  %9 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div15, ptr %effective_speed_hz, align 4
  %10 = ptrtoint ptr %tfr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfr, align 4
  %tx_buf16 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %tx_buf16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %tx_buf16, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_buf, align 4
  %rx_buf17 = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %rx_buf17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %rx_buf17, align 8
  %len = getelementptr inbounds %struct.spi_transfer, ptr %tfr, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %tx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tx_len, align 4
  %19 = load i32, ptr %len, align 4
  %rx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %rx_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %rx_len, align 8
  %pending = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %pending, align 4
  %22 = load i32, ptr @polling_limit_us, align 4
  %23 = add i32 %22, -9000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -9000000, i32 %23)
  %24 = icmp ult i32 %23, -9000000
  br i1 %24, label %if.end10.cond.end26_crit_edge, label %cond.true22

if.end10.cond.end26_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end26

cond.true22:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %div20 = udiv i32 9000000, %22
  %25 = ptrtoint ptr %effective_speed_hz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %effective_speed_hz, align 4
  %div24 = udiv i32 %26, %div20
  br label %cond.end26

cond.end26:                                       ; preds = %cond.true22, %if.end10.cond.end26_crit_edge
  %cond27 = phi i32 [ %div24, %cond.true22 ], [ 1, %if.end10.cond.end26_crit_edge ]
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cond27)
  %cmp29 = icmp ult i32 %28, %cond27
  br i1 %cmp29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %cond.end26
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call fastcc i32 @bcm2835aux_spi_transfer_one_poll(ptr noundef %master, ptr noundef %spi)
  br label %cleanup

if.end32:                                         ; preds = %cond.end26
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver_data.i.i, align 4
  %count_transfer_irq.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %count_transfer_irq.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %count_transfer_irq.i, align 8
  %inc.i = add i64 %32, 1
  store i64 %inc.i, ptr %count_transfer_irq.i, align 8
  %cntl.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %30, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.bcm2835aux_spi, ptr %30, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %36 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %30, align 8
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #7, !srcloc !87
  %38 = ptrtoint ptr %cntl.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cntl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %41 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %30, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #7, !srcloc !87
  %pending.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %30, i32 0, i32 8
  %tx_len.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %30, i32 0, i32 6
  %43 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tx_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not3.i = icmp eq i32 %44, 0
  br i1 %tobool.not3.i, label %if.end32.bcm2835aux_spi_transfer_one_irq.exit_crit_edge, label %land.lhs.true.lr.ph.i

if.end32.bcm2835aux_spi_transfer_one_irq.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_spi_transfer_one_irq.exit

land.lhs.true.lr.ph.i:                            ; preds = %if.end32
  %tx_buf.i.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %30, i32 0, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %bcm2835aux_wr_fifo.exit.i.land.lhs.true.i_crit_edge, %land.lhs.true.lr.ph.i
  %45 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %46)
  %cmp.i = icmp slt i32 %46, 12
  br i1 %cmp.i, label %land.rhs.i, label %land.lhs.true.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge

land.lhs.true.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_spi_transfer_one_irq.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %47 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %30, align 8
  %add.ptr.i1.i = getelementptr i8, ptr %48, i32 8
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1.i) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %50 = and i32 %49, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool4.not.i = icmp eq i32 %50, 0
  br i1 %tobool4.not.i, label %while.body.i, label %land.rhs.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge

land.rhs.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_spi_transfer_one_irq.exit

while.body.i:                                     ; preds = %land.rhs.i
  %51 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_len.i, align 4
  %53 = tail call i32 @llvm.smin.i32(i32 %52, i32 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp135.i.i = icmp sgt i32 %52, 0
  br i1 %cmp135.i.i, label %for.body.lr.ph.i.i, label %while.body.i.for.end.i.i_crit_edge

while.body.i.for.end.i.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %while.body.i
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %53, i32 1) #7
  %54 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %for.body.lr.ph.i.i.cond.end5.i.i_crit_edge, label %cond.true2.i.i

for.body.lr.ph.i.i.cond.end5.i.i_crit_edge:       ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i.i

cond.true2.i.i:                                   ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %incdec.ptr.i.i, ptr %tx_buf.i.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %55, align 1
  br label %cond.end5.i.i

cond.end5.i.i:                                    ; preds = %cond.true2.i.i, %for.body.lr.ph.i.i.cond.end5.i.i_crit_edge
  %cond6.i.i = phi i8 [ %58, %cond.true2.i.i ], [ 0, %for.body.lr.ph.i.i.cond.end5.i.i_crit_edge ]
  %conv8.i.i = zext i8 %cond6.i.i to i32
  %shl.i.i = shl nuw nsw i32 %conv8.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %53)
  %exitcond.not.i.i = icmp slt i32 %53, 2
  br i1 %exitcond.not.i.i, label %cond.end5.i.i.for.end.i.i_crit_edge, label %for.body.i.i.1

cond.end5.i.i.for.end.i.i_crit_edge:              ; preds = %cond.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.1:                                   ; preds = %cond.end5.i.i
  %59 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool.not.i.i.1 = icmp eq ptr %60, null
  br i1 %tobool.not.i.i.1, label %for.body.i.i.1.cond.end5.i.i.1_crit_edge, label %cond.true2.i.i.1

for.body.i.i.1.cond.end5.i.i.1_crit_edge:         ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i.i.1

cond.true2.i.i.1:                                 ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.1 = getelementptr i8, ptr %60, i32 1
  %61 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %incdec.ptr.i.i.1, ptr %tx_buf.i.i, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %60, align 1
  br label %cond.end5.i.i.1

cond.end5.i.i.1:                                  ; preds = %cond.true2.i.i.1, %for.body.i.i.1.cond.end5.i.i.1_crit_edge
  %cond6.i.i.1 = phi i8 [ %63, %cond.true2.i.i.1 ], [ 0, %for.body.i.i.1.cond.end5.i.i.1_crit_edge ]
  %conv8.i.i.1 = zext i8 %cond6.i.i.1 to i32
  %shl.i.i.1 = shl nuw nsw i32 %conv8.i.i.1, 8
  %or.i.i.1 = or i32 %shl.i.i.1, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i.i)
  %exitcond.not.i.i.1 = icmp eq i32 %smax.i.i, 2
  br i1 %exitcond.not.i.i.1, label %cond.end5.i.i.1.for.end.i.i_crit_edge, label %for.body.i.i.2

cond.end5.i.i.1.for.end.i.i_crit_edge:            ; preds = %cond.end5.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i.i

for.body.i.i.2:                                   ; preds = %cond.end5.i.i.1
  %64 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tx_buf.i.i, align 4
  %tobool.not.i.i.2 = icmp eq ptr %65, null
  br i1 %tobool.not.i.i.2, label %for.body.i.i.2.cond.end5.i.i.2_crit_edge, label %cond.true2.i.i.2

for.body.i.i.2.cond.end5.i.i.2_crit_edge:         ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i.i.2

cond.true2.i.i.2:                                 ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i.i.2 = getelementptr i8, ptr %65, i32 1
  %66 = ptrtoint ptr %tx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %incdec.ptr.i.i.2, ptr %tx_buf.i.i, align 4
  %67 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %65, align 1
  br label %cond.end5.i.i.2

cond.end5.i.i.2:                                  ; preds = %cond.true2.i.i.2, %for.body.i.i.2.cond.end5.i.i.2_crit_edge
  %cond6.i.i.2 = phi i8 [ %68, %cond.true2.i.i.2 ], [ 0, %for.body.i.i.2.cond.end5.i.i.2_crit_edge ]
  %conv8.i.i.2 = zext i8 %cond6.i.i.2 to i32
  %or.i.i.2 = or i32 %or.i.i.1, %conv8.i.i.2
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %cond.end5.i.i.2, %cond.end5.i.i.1.for.end.i.i_crit_edge, %cond.end5.i.i.for.end.i.i_crit_edge, %while.body.i.for.end.i.i_crit_edge
  %data.0.lcssa.i.i = phi i32 [ 0, %while.body.i.for.end.i.i_crit_edge ], [ %shl.i.i, %cond.end5.i.i.for.end.i.i_crit_edge ], [ %or.i.i.1, %cond.end5.i.i.1.for.end.i.i_crit_edge ], [ %or.i.i.2, %cond.end5.i.i.2 ]
  %mul9.i.i = shl i32 %53, 27
  %or11.i.i = or i32 %data.0.lcssa.i.i, %mul9.i.i
  %sub13.i.i = sub i32 %52, %53
  %69 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub13.i.i, ptr %tx_len.i, align 4
  %70 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %pending.i, align 4
  %add.i.i = add i32 %71, %53
  store i32 %add.i.i, ptr %pending.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %tobool15.not.i.i = icmp slt i32 %52, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %or11.i.i) #7
  %73 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %30, align 8
  br i1 %tobool15.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %74, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %72) #7, !srcloc !87
  br label %bcm2835aux_wr_fifo.exit.i

if.else.i.i:                                      ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i34.i.i = getelementptr i8, ptr %74, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i, i32 %72) #7, !srcloc !87
  br label %bcm2835aux_wr_fifo.exit.i

bcm2835aux_wr_fifo.exit.i:                        ; preds = %if.else.i.i, %if.then.i.i
  %75 = ptrtoint ptr %tx_len.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %tx_len.i, align 4
  %tobool.not.i = icmp eq i32 %76, 0
  br i1 %tobool.not.i, label %bcm2835aux_wr_fifo.exit.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge, label %bcm2835aux_wr_fifo.exit.i.land.lhs.true.i_crit_edge

bcm2835aux_wr_fifo.exit.i.land.lhs.true.i_crit_edge: ; preds = %bcm2835aux_wr_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

bcm2835aux_wr_fifo.exit.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge: ; preds = %bcm2835aux_wr_fifo.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_spi_transfer_one_irq.exit

bcm2835aux_spi_transfer_one_irq.exit:             ; preds = %bcm2835aux_wr_fifo.exit.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge, %land.rhs.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge, %land.lhs.true.i.bcm2835aux_spi_transfer_one_irq.exit_crit_edge, %if.end32.bcm2835aux_spi_transfer_one_irq.exit_crit_edge
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.bcm2835aux_spi, ptr %78, i32 0, i32 3, i32 1
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i, align 4
  %or1.i.i = or i32 %80, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i) #7
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %78, align 8
  %add.ptr.i.i2.i = getelementptr i8, ptr %83, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i2.i, i32 %81) #7, !srcloc !87
  br label %cleanup

cleanup:                                          ; preds = %bcm2835aux_spi_transfer_one_irq.exit, %if.then30
  %retval.0 = phi i32 [ %call31, %if.then30 ], [ 1, %bcm2835aux_spi_transfer_one_irq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835aux_spi_handle_err(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 131072) #7, !srcloc !87
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_prepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readonly %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %spi1 = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spi1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %cntl = getelementptr inbounds %struct.bcm2835aux_spi, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 18496, ptr %cntl, align 4
  %arrayidx3 = getelementptr %struct.bcm2835aux_spi, ptr %3, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %arrayidx3, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 8
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 19520, i32 18880
  %8 = ptrtoint ptr %cntl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select, ptr %cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #7, !srcloc !87
  %11 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 %13) #7, !srcloc !87
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_unprepare_message(ptr nocapture noundef readonly %master, ptr nocapture noundef readnone %msg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !87
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 131072) #7, !srcloc !87
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835aux_spi_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %4)
  %tobool.not = icmp ult i32 %4, 1073741824
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @bcm2835aux_spi_transfer_helper(ptr noundef %1)
  %tx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.bcm2835aux_spi, ptr %1, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %or = or i32 %8, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %9) #7, !srcloc !87
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %rx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8 = getelementptr %struct.bcm2835aux_spi, ptr %1, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx8, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %add.ptr.i20 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %16) #7, !srcloc !87
  tail call void @spi_finalize_current_transfer(ptr noundef %dev_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then6 ], [ 1, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_register_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm2835aux_spi_transfer_one_poll(ptr nocapture noundef readonly %master, ptr noundef %spi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %master, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %count_transfer_polling = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %count_transfer_polling to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %count_transfer_polling, align 8
  %inc = add i64 %3, 1
  store i64 %inc, ptr %count_transfer_polling, align 8
  %cntl = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 3
  %arrayidx = getelementptr %struct.bcm2835aux_spi, ptr %1, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !87
  %9 = ptrtoint ptr %cntl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cntl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #7, !srcloc !87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %14, 2
  %15 = load i32, ptr @polling_limit_us, align 4
  %mul = mul i32 %15, 100
  %div = udiv i32 %mul, 1000000
  %add3 = add i32 %add, %div
  %rx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not3 = icmp eq i32 %17, 0
  br i1 %tobool.not3, label %entry.cleanup_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %entry.while.body_crit_edge
  tail call fastcc void @bcm2835aux_spi_transfer_helper(ptr noundef %1)
  %18 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool5.not = icmp eq i32 %19, 0
  br i1 %tobool5.not, label %while.body.cleanup_crit_edge, label %land.lhs.true

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add3, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.body, label %if.end19

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bcm2835aux_spi_transfer_one_poll.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bcm2835aux_spi_transfer_one_poll, %do.end)) #7
          to label %land.lhs.true11 [label %do.end], !srcloc !90

land.lhs.true11:                                  ; preds = %do.body
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @bcm2835aux_spi_transfer_one_poll._rs, ptr noundef nonnull @.str.29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true11.do.end_crit_edge, label %if.then14

land.lhs.true11.do.end_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub15 = sub i32 %21, %add3
  %tx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 6
  %22 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_len, align 4
  %24 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rx_len, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bcm2835aux_spi_transfer_one_poll.descriptor, ptr noundef %spi, ptr noundef nonnull @.str.30, i32 noundef %sub15, i32 noundef %23, i32 noundef %25) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true11.do.end_crit_edge, %do.body
  %count_transfer_irq_after_poll = getelementptr inbounds %struct.bcm2835aux_spi, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %count_transfer_irq_after_poll to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %count_transfer_irq_after_poll, align 8
  %inc17 = add i64 %27, 1
  store i64 %inc17, ptr %count_transfer_irq_after_poll, align 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.bcm2835aux_spi, ptr %29, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %or1.i = or i32 %31, 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %or1.i) #7
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 8
  %add.ptr.i.i = getelementptr i8, ptr %34, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %32) #7, !srcloc !87
  br label %cleanup

if.end19:                                         ; preds = %land.lhs.true
  %35 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr = load i32, ptr %rx_len, align 8
  %tobool.not = icmp eq i32 %.pr, 0
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %do.end, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bcm2835aux_spi_transfer_helper(ptr nocapture noundef %bs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bs, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %rx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 7
  %3 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not24 = icmp eq i32 %4, 0
  %5 = and i32 %2, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not26 = icmp eq i32 %5, 0
  %or.cond27 = select i1 %tobool.not24, i1 true, i1 %tobool1.not26
  br i1 %or.cond27, label %entry.while.cond.preheader_crit_edge, label %for.body.lr.ph

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %rx_buf.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 5
  %pending.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 8
  br label %for.body

while.cond.preheader:                             ; preds = %bcm2835aux_rd_fifo.exit.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %pending = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 8
  %tx_len = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 6
  %6 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not28 = icmp eq i32 %7, 0
  br i1 %tobool3.not28, label %while.cond.preheader.while.end_crit_edge, label %land.lhs.true.lr.ph

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.lhs.true.lr.ph:                              ; preds = %while.cond.preheader
  %tx_buf.i = getelementptr inbounds %struct.bcm2835aux_spi, ptr %bs, i32 0, i32 4
  br label %land.lhs.true

for.body:                                         ; preds = %bcm2835aux_rd_fifo.exit.for.body_crit_edge, %for.body.lr.ph
  %8 = phi i32 [ %4, %for.body.lr.ph ], [ %33, %bcm2835aux_rd_fifo.exit.for.body_crit_edge ]
  %9 = tail call i32 @llvm.smin.i32(i32 %8, i32 3) #7
  %10 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bs, align 8
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 32
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !88
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %14 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_buf.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.bcm2835aux_rd_fifo.exit_crit_edge, label %if.then.i

for.body.bcm2835aux_rd_fifo.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_rd_fifo.exit

if.then.i:                                        ; preds = %for.body
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %if.then.i.bcm2835aux_rd_fifo.exit_crit_edge [
    i32 3, label %sw.bb.i
    i32 2, label %if.then.i.sw.bb2.i_crit_edge
    i32 1, label %if.then.i.sw.bb8.i_crit_edge
  ]

if.then.i.sw.bb8.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.then.i.sw.bb2.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2.i

if.then.i.bcm2835aux_rd_fifo.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm2835aux_rd_fifo.exit

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %13, 16
  %conv.i = trunc i32 %shr.i to i8
  %incdec.ptr.i = getelementptr i8, ptr %15, i32 1
  %17 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %incdec.ptr.i, ptr %rx_buf.i, align 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %15, align 1
  br label %sw.bb2.i

sw.bb2.i:                                         ; preds = %sw.bb.i, %if.then.i.sw.bb2.i_crit_edge
  %shr3.i = lshr i32 %13, 8
  %conv5.i = trunc i32 %shr3.i to i8
  %19 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rx_buf.i, align 8
  %incdec.ptr7.i = getelementptr i8, ptr %20, i32 1
  store ptr %incdec.ptr7.i, ptr %rx_buf.i, align 8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv5.i, ptr %20, align 1
  br label %sw.bb8.i

sw.bb8.i:                                         ; preds = %sw.bb2.i, %if.then.i.sw.bb8.i_crit_edge
  %conv11.i = trunc i32 %13 to i8
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_buf.i, align 8
  %incdec.ptr13.i = getelementptr i8, ptr %23, i32 1
  store ptr %incdec.ptr13.i, ptr %rx_buf.i, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv11.i, ptr %23, align 1
  br label %bcm2835aux_rd_fifo.exit

bcm2835aux_rd_fifo.exit:                          ; preds = %sw.bb8.i, %if.then.i.bcm2835aux_rd_fifo.exit_crit_edge, %for.body.bcm2835aux_rd_fifo.exit_crit_edge
  %25 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_len, align 8
  %sub.i = sub i32 %26, %9
  store i32 %sub.i, ptr %rx_len, align 8
  %27 = ptrtoint ptr %pending.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pending.i, align 4
  %sub15.i = sub i32 %28, %9
  store i32 %sub15.i, ptr %pending.i, align 4
  %29 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bs, align 8
  %add.ptr.i17 = getelementptr i8, ptr %30, i32 8
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %32 = ptrtoint ptr %rx_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rx_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not = icmp eq i32 %33, 0
  %34 = and i32 %31, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool1.not = icmp eq i32 %34, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %bcm2835aux_rd_fifo.exit.while.cond.preheader_crit_edge, label %bcm2835aux_rd_fifo.exit.for.body_crit_edge

bcm2835aux_rd_fifo.exit.for.body_crit_edge:       ; preds = %bcm2835aux_rd_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

bcm2835aux_rd_fifo.exit.while.cond.preheader_crit_edge: ; preds = %bcm2835aux_rd_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

land.lhs.true:                                    ; preds = %bcm2835aux_wr_fifo.exit.land.lhs.true_crit_edge, %land.lhs.true.lr.ph
  %35 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %36)
  %cmp = icmp slt i32 %36, 12
  br i1 %cmp, label %land.rhs4, label %land.lhs.true.while.end_crit_edge

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

land.rhs4:                                        ; preds = %land.lhs.true
  %37 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %bs, align 8
  %add.ptr.i18 = getelementptr i8, ptr %38, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %40 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool7.not = icmp eq i32 %40, 0
  br i1 %tobool7.not, label %while.body, label %land.rhs4.while.end_crit_edge

land.rhs4.while.end_crit_edge:                    ; preds = %land.rhs4
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %land.rhs4
  %41 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_len, align 4
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp135.i = icmp sgt i32 %42, 0
  br i1 %cmp135.i, label %for.body.lr.ph.i, label %while.body.for.end.i_crit_edge

while.body.for.end.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body
  %smax.i = tail call i32 @llvm.smax.i32(i32 %43, i32 1) #7
  %44 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i19 = icmp eq ptr %45, null
  br i1 %tobool.not.i19, label %for.body.lr.ph.i.cond.end5.i_crit_edge, label %cond.true2.i

for.body.lr.ph.i.cond.end5.i_crit_edge:           ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i

cond.true2.i:                                     ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i20 = getelementptr i8, ptr %45, i32 1
  %46 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %incdec.ptr.i20, ptr %tx_buf.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %45, align 1
  br label %cond.end5.i

cond.end5.i:                                      ; preds = %cond.true2.i, %for.body.lr.ph.i.cond.end5.i_crit_edge
  %cond6.i = phi i8 [ %48, %cond.true2.i ], [ 0, %for.body.lr.ph.i.cond.end5.i_crit_edge ]
  %conv8.i = zext i8 %cond6.i to i32
  %shl.i = shl nuw nsw i32 %conv8.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %exitcond.not.i = icmp slt i32 %43, 2
  br i1 %exitcond.not.i, label %cond.end5.i.for.end.i_crit_edge, label %for.body.i.1

cond.end5.i.for.end.i_crit_edge:                  ; preds = %cond.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %cond.end5.i
  %49 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i19.1 = icmp eq ptr %50, null
  br i1 %tobool.not.i19.1, label %for.body.i.1.cond.end5.i.1_crit_edge, label %cond.true2.i.1

for.body.i.1.cond.end5.i.1_crit_edge:             ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i.1

cond.true2.i.1:                                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i20.1 = getelementptr i8, ptr %50, i32 1
  %51 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %incdec.ptr.i20.1, ptr %tx_buf.i, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %50, align 1
  br label %cond.end5.i.1

cond.end5.i.1:                                    ; preds = %cond.true2.i.1, %for.body.i.1.cond.end5.i.1_crit_edge
  %cond6.i.1 = phi i8 [ %53, %cond.true2.i.1 ], [ 0, %for.body.i.1.cond.end5.i.1_crit_edge ]
  %conv8.i.1 = zext i8 %cond6.i.1 to i32
  %shl.i.1 = shl nuw nsw i32 %conv8.i.1, 8
  %or.i.1 = or i32 %shl.i.1, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %smax.i)
  %exitcond.not.i.1 = icmp eq i32 %smax.i, 2
  br i1 %exitcond.not.i.1, label %cond.end5.i.1.for.end.i_crit_edge, label %for.body.i.2

cond.end5.i.1.for.end.i_crit_edge:                ; preds = %cond.end5.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %cond.end5.i.1
  %54 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_buf.i, align 4
  %tobool.not.i19.2 = icmp eq ptr %55, null
  br i1 %tobool.not.i19.2, label %for.body.i.2.cond.end5.i.2_crit_edge, label %cond.true2.i.2

for.body.i.2.cond.end5.i.2_crit_edge:             ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end5.i.2

cond.true2.i.2:                                   ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr.i20.2 = getelementptr i8, ptr %55, i32 1
  %56 = ptrtoint ptr %tx_buf.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %incdec.ptr.i20.2, ptr %tx_buf.i, align 4
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %55, align 1
  br label %cond.end5.i.2

cond.end5.i.2:                                    ; preds = %cond.true2.i.2, %for.body.i.2.cond.end5.i.2_crit_edge
  %cond6.i.2 = phi i8 [ %58, %cond.true2.i.2 ], [ 0, %for.body.i.2.cond.end5.i.2_crit_edge ]
  %conv8.i.2 = zext i8 %cond6.i.2 to i32
  %or.i.2 = or i32 %or.i.1, %conv8.i.2
  br label %for.end.i

for.end.i:                                        ; preds = %cond.end5.i.2, %cond.end5.i.1.for.end.i_crit_edge, %cond.end5.i.for.end.i_crit_edge, %while.body.for.end.i_crit_edge
  %data.0.lcssa.i = phi i32 [ 0, %while.body.for.end.i_crit_edge ], [ %shl.i, %cond.end5.i.for.end.i_crit_edge ], [ %or.i.1, %cond.end5.i.1.for.end.i_crit_edge ], [ %or.i.2, %cond.end5.i.2 ]
  %mul9.i = shl i32 %43, 27
  %or11.i = or i32 %data.0.lcssa.i, %mul9.i
  %sub13.i = sub i32 %42, %43
  %59 = ptrtoint ptr %tx_len to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %sub13.i, ptr %tx_len, align 4
  %60 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pending, align 4
  %add.i = add i32 %61, %43
  store i32 %add.i, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %tobool15.not.i = icmp slt i32 %42, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or11.i) #7
  %63 = ptrtoint ptr %bs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %bs, align 8
  br i1 %tobool15.not.i, label %if.else.i, label %if.then.i23

if.then.i23:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i22 = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22, i32 %62) #7, !srcloc !87
  br label %bcm2835aux_wr_fifo.exit

if.else.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i34.i = getelementptr i8, ptr %64, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %62) #7, !srcloc !87
  br label %bcm2835aux_wr_fifo.exit

bcm2835aux_wr_fifo.exit:                          ; preds = %if.else.i, %if.then.i23
  %65 = ptrtoint ptr %tx_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_len, align 4
  %tobool3.not = icmp eq i32 %66, 0
  br i1 %tobool3.not, label %bcm2835aux_wr_fifo.exit.while.end_crit_edge, label %bcm2835aux_wr_fifo.exit.land.lhs.true_crit_edge

bcm2835aux_wr_fifo.exit.land.lhs.true_crit_edge:  ; preds = %bcm2835aux_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

bcm2835aux_wr_fifo.exit.while.end_crit_edge:      ; preds = %bcm2835aux_wr_fifo.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %bcm2835aux_wr_fifo.exit.while.end_crit_edge, %land.rhs4.while.end_crit_edge, %land.lhs.true.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u64(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_unregister_controller(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !66, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__param_polling_limit_us, !1, !"__param_polling_limit_us", i1 false, i1 false}
!1 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 33, i32 1}
!2 = !{ptr @__UNIQUE_ID_polling_limit_ustype234, !1, !"__UNIQUE_ID_polling_limit_ustype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_polling_limit_us235, !4, !"__UNIQUE_ID_polling_limit_us235", i1 false, i1 false}
!4 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 34, i32 1}
!5 = !{ptr @__initcall__kmod_spi_bcm2835aux__240_614_bcm2835aux_spi_driver_init6, !6, !"__initcall__kmod_spi_bcm2835aux__240_614_bcm2835aux_spi_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 614, i32 1}
!7 = !{ptr @__exitcall_bcm2835aux_spi_driver_exit, !6, !"__exitcall_bcm2835aux_spi_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description241, !9, !"__UNIQUE_ID_description241", i1 false, i1 false}
!9 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 616, i32 1}
!10 = !{ptr @__UNIQUE_ID_author242, !11, !"__UNIQUE_ID_author242", i1 false, i1 false}
!11 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 617, i32 1}
!12 = !{ptr @__UNIQUE_ID_file243, !13, !"__UNIQUE_ID_file243", i1 false, i1 false}
!13 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 618, i32 1}
!14 = !{ptr @__UNIQUE_ID_license244, !13, !"__UNIQUE_ID_license244", i1 false, i1 false}
!15 = !{ptr @__param_str_polling_limit_us, !1, !"__param_str_polling_limit_us", i1 false, i1 false}
!16 = !{ptr @polling_limit_us, !17, !"polling_limit_us", i1 false, i1 false}
!17 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 32, i32 21}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 608, i32 12}
!20 = !{ptr @bcm2835aux_spi_driver, !21, !"bcm2835aux_spi_driver", i1 false, i1 false}
!21 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 606, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 533, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bcm2835aux_spi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @bcm2835aux_spi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 544, i32 3}
!32 = !{ptr @bcm2835aux_spi_probe._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm2835aux_spi_probe._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 551, i32 3}
!36 = !{ptr @bcm2835aux_spi_probe._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm2835aux_spi_probe._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 564, i32 3}
!40 = !{ptr @bcm2835aux_spi_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bcm2835aux_spi_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 570, i32 3}
!44 = !{ptr @bcm2835aux_spi_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @bcm2835aux_spi_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 461, i32 4}
!48 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @bcm2835aux_spi_setup._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm2835aux_spi_setup._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 479, i32 2}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @bcm2835aux_spi_setup._entry.20, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @bcm2835aux_spi_setup._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 485, i32 2}
!58 = !{ptr @bcm2835aux_spi_setup._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @bcm2835aux_spi_setup._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 328, i32 4}
!62 = !{ptr @bcm2835aux_spi_transfer_one_poll._rs, !61, !"_rs", i1 false, i1 false}
!63 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @bcm2835aux_spi_transfer_one_poll.descriptor, !61, !"descriptor", i1 false, i1 false}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 115, i32 31}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 122, i32 21}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 124, i32 21}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 126, i32 21}
!75 = !{ptr @bcm2835aux_spi_match, !76, !"bcm2835aux_spi_match", i1 false, i1 false}
!76 = !{!"../drivers/spi/spi-bcm2835aux.c", i32 600, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2154598094}
!87 = !{i64 5240404}
!88 = !{i64 5240822}
!89 = !{i64 2154597714}
!90 = !{i64 2148737400, i64 2148737405, i64 2148737418, i64 2148737462, i64 2148737496, i64 2148737517}
