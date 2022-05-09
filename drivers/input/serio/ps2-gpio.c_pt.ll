; ModuleID = '/llk/IR_all_yes/drivers/input/serio/ps2-gpio.c_pt.bc'
source_filename = "../drivers/input/serio/ps2-gpio.c"
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
%struct.atomic_t = type { i32 }
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
%struct.ps2_gpio_data = type { ptr, ptr, i8, ptr, ptr, i8, i32, i8, i8, i8, i8, %struct.completion, %struct.mutex, %struct.delayed_work }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_ps2_gpio__188_446_ps2_gpio_driver_init6 = internal global ptr @ps2_gpio_driver_init, section ".initcall6.init", align 4
@ps2_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ps2_gpio_probe, ptr @ps2_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ps2_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ps2_gpio_driver_exit = internal global ptr @ps2_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author189 = internal constant [65 x i8] c"ps2_gpio.author=Danilo Krummrich <danilokrummrich@dk-develop.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [37 x i8] c"ps2_gpio.description=GPIO PS2 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [43 x i8] c"ps2_gpio.file=drivers/input/serio/ps2-gpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [24 x i8] c"ps2_gpio.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ps2-gpio\00", [23 x i8] zeroinitializer }, align 32
@ps2_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ps2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ps2_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"GPIO data or clk are connected via slow bus\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ps2_gpio_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/input/serio/ps2-gpio.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps2_gpio_probe._entry_ptr = internal global ptr @ps2_gpio_probe._entry, section ".printk_index", align 4
@ps2_gpio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to request irq %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ps2_gpio_probe._entry_ptr.8 = internal global ptr @ps2_gpio_probe._entry.6, section ".printk_index", align 4
@ps2_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&drvdata->tx_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@ps2_gpio_probe.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&drvdata->tx_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@ps2_gpio_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&drvdata->tx_mutex\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@ps2_gpio_get_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 328, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request data gpio: %ld\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps2_gpio_get_props\00", [45 x i8] zeroinitializer }, align 32
@ps2_gpio_get_props._entry_ptr = internal global ptr @ps2_gpio_get_props._entry, section ".printk_index", align 4
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"clk\00", [28 x i8] zeroinitializer }, align 32
@ps2_gpio_get_props._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to request clock gpio: %ld\00", [62 x i8] zeroinitializer }, align 32
@ps2_gpio_get_props._entry_ptr.20 = internal global ptr @ps2_gpio_get_props._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write-enable\00", [19 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_tx.old_jiffies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ps2_gpio_irq_tx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"TX: timeout, probably we missed an interrupt\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps2_gpio_irq_tx\00", [16 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_tx._entry_ptr = internal global ptr @ps2_gpio_irq_tx._entry, section ".printk_index", align 4
@ps2_gpio_irq_tx._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"TX: start bit should have been sent already\0A\00", [51 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_tx._entry_ptr.26 = internal global ptr @ps2_gpio_irq_tx._entry.24, section ".printk_index", align 4
@ps2_gpio_irq_tx._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.23, ptr @.str.3, i32 282, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TX: received NACK, retry\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_tx._entry_ptr.30 = internal global ptr @ps2_gpio_irq_tx._entry.27, section ".printk_index", align 4
@ps2_gpio_irq_tx._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 297, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"TX: got out of sync with the device\0A\00", [59 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_tx._entry_ptr.33 = internal global ptr @ps2_gpio_irq_tx._entry.31, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ps2_gpio_irq_rx.old_jiffies = internal global { i32, [28 x i8] } zeroinitializer, align 32
@ps2_gpio_irq_rx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"RX: timeout, probably we missed an interrupt\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps2_gpio_irq_rx\00", [16 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr = internal global ptr @ps2_gpio_irq_rx._entry, section ".printk_index", align 4
@ps2_gpio_irq_rx._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX: failed to get data gpio val: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr.38 = internal global ptr @ps2_gpio_irq_rx._entry.36, section ".printk_index", align 4
@ps2_gpio_irq_rx._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX: start bit should be low\0A\00", [35 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr.41 = internal global ptr @ps2_gpio_irq_rx._entry.39, section ".printk_index", align 4
@ps2_gpio_irq_rx._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 177, ptr @.str.29, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RX: parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr.44 = internal global ptr @ps2_gpio_irq_rx._entry.42, section ".printk_index", align 4
@ps2_gpio_irq_rx.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.35, ptr @.str.3, ptr @.str.46, i8 0, i8 49, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ps2_gpio\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"RX: sending byte 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.35, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RX: stop bit should be high\0A\00", [35 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr.49 = internal global ptr @ps2_gpio_irq_rx._entry.47, section ".printk_index", align 4
@ps2_gpio_irq_rx._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.35, ptr @.str.3, i32 211, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RX: got out of sync with the device\0A\00", [59 x i8] zeroinitializer }, align 32
@ps2_gpio_irq_rx._entry_ptr.52 = internal global ptr @ps2_gpio_irq_rx._entry.50, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.54 = internal global [13 x i64] [i64 11, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 250, i64 254]
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"ps2_gpio_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 438, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 442, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"ps2_gpio_match\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 431, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 365, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 379, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 408, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 410, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 325, i32 43 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 327, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 332, i32 42 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 334, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 340, i32 5 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 232, i32 23 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 241, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 250, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 282, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 297, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"old_jiffies\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 131, i32 23 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 140, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 148, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 157, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 177, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 199, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 204, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.210 = private constant [34 x i8] c"../drivers/input/serio/ps2-gpio.c\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.210, i32 211, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.216, i32 87, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_ps2_gpio_driver_exit, ptr @__initcall__kmod_ps2_gpio__188_446_ps2_gpio_driver_init6, ptr @ps2_gpio_driver_exit, ptr @ps2_gpio_get_props._entry, ptr @ps2_gpio_get_props._entry.18, ptr @ps2_gpio_get_props._entry_ptr, ptr @ps2_gpio_get_props._entry_ptr.20, ptr @ps2_gpio_irq_rx._entry, ptr @ps2_gpio_irq_rx._entry.36, ptr @ps2_gpio_irq_rx._entry.39, ptr @ps2_gpio_irq_rx._entry.42, ptr @ps2_gpio_irq_rx._entry.47, ptr @ps2_gpio_irq_rx._entry.50, ptr @ps2_gpio_irq_rx._entry_ptr, ptr @ps2_gpio_irq_rx._entry_ptr.38, ptr @ps2_gpio_irq_rx._entry_ptr.41, ptr @ps2_gpio_irq_rx._entry_ptr.44, ptr @ps2_gpio_irq_rx._entry_ptr.49, ptr @ps2_gpio_irq_rx._entry_ptr.52, ptr @ps2_gpio_irq_tx._entry, ptr @ps2_gpio_irq_tx._entry.24, ptr @ps2_gpio_irq_tx._entry.27, ptr @ps2_gpio_irq_tx._entry.31, ptr @ps2_gpio_irq_tx._entry_ptr, ptr @ps2_gpio_irq_tx._entry_ptr.26, ptr @ps2_gpio_irq_tx._entry_ptr.30, ptr @ps2_gpio_irq_tx._entry_ptr.33, ptr @ps2_gpio_probe._entry, ptr @ps2_gpio_probe._entry.6, ptr @ps2_gpio_probe._entry_ptr, ptr @ps2_gpio_probe._entry_ptr.8, ptr @ps2_gpio_driver, ptr @.str, ptr @ps2_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @ps2_gpio_probe.__key, ptr @.str.9, ptr @ps2_gpio_probe.__key.10, ptr @.str.11, ptr @ps2_gpio_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @ps2_gpio_irq_tx.old_jiffies, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.29, ptr @.str.32, ptr @ps2_gpio_irq_rx.old_jiffies, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @init_completion.__key, ptr @.str.53], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_probe.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_get_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_get_props._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_tx.old_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_tx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_tx._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_tx._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_tx._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx.old_jiffies to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_gpio_irq_rx._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ps2_gpio_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ps2_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ps2_gpio_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 280, i32 noundef 3520) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1336) #10
  %tobool.not = icmp eq ptr %call.i, null
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.err_free_serio_crit_edge, label %if.end

entry.err_free_serio_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_serio

if.end:                                           ; preds = %entry
  %call.i113 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef 1) #7
  %gpio_data.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i113, ptr %gpio_data.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.ps2_gpio_get_props.exit_crit_edge, label %if.end.i

if.end.ps2_gpio_get_props.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ps2_gpio_get_props.exit

if.end.i:                                         ; preds = %if.end
  %call7.i = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef 1) #7
  %gpio_clk.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i, ptr %gpio_clk.i, align 4
  %cmp.i31.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31.i, label %if.end.i.ps2_gpio_get_props.exit_crit_edge, label %ps2_gpio_get_props.exit.thread

if.end.i.ps2_gpio_get_props.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ps2_gpio_get_props.exit

ps2_gpio_get_props.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  %write_enable.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 5
  %frombool.i = zext i1 %call.i.i to i8
  %3 = ptrtoint ptr %write_enable.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool.i, ptr %write_enable.i, align 4
  br label %if.end7

ps2_gpio_get_props.exit:                          ; preds = %if.end.i.ps2_gpio_get_props.exit_crit_edge, %if.end.ps2_gpio_get_props.exit_crit_edge
  %call.i113.sink = phi ptr [ %call.i113, %if.end.ps2_gpio_get_props.exit_crit_edge ], [ %call7.i, %if.end.i.ps2_gpio_get_props.exit_crit_edge ]
  %.str.15.sink = phi ptr [ @.str.15, %if.end.ps2_gpio_get_props.exit_crit_edge ], [ @.str.19, %if.end.i.ps2_gpio_get_props.exit_crit_edge ]
  %retval.0.i.in.in = phi ptr [ %gpio_data.i, %if.end.ps2_gpio_get_props.exit_crit_edge ], [ %gpio_clk.i, %if.end.i.ps2_gpio_get_props.exit_crit_edge ]
  %4 = ptrtoint ptr %call.i113.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.15.sink, i32 noundef %4) #11
  %5 = ptrtoint ptr %retval.0.i.in.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %retval.0.i.in = load ptr, ptr %retval.0.i.in.in, align 4
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  %tobool5.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool5.not, label %ps2_gpio_get_props.exit.if.end7_crit_edge, label %ps2_gpio_get_props.exit.err_free_serio_crit_edge

ps2_gpio_get_props.exit.err_free_serio_crit_edge: ; preds = %ps2_gpio_get_props.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_serio

ps2_gpio_get_props.exit.if.end7_crit_edge:        ; preds = %ps2_gpio_get_props.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.end7:                                          ; preds = %ps2_gpio_get_props.exit.if.end7_crit_edge, %ps2_gpio_get_props.exit.thread
  %6 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_data.i, align 4
  %call8 = tail call i32 @gpiod_cansleep(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %if.end7.do.end_crit_edge

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

lor.lhs.false10:                                  ; preds = %if.end7
  %gpio_clk = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpio_clk, align 4
  %call11 = tail call i32 @gpiod_cansleep(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %lor.lhs.false10.do.end_crit_edge

lor.lhs.false10.do.end_crit_edge:                 ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false10.do.end_crit_edge, %if.end7.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  br label %err_free_serio

if.end14:                                         ; preds = %lor.lhs.false10
  %call15 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call15, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.err_free_serio_crit_edge, label %if.end19

if.end14.err_free_serio_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_serio

if.end19:                                         ; preds = %if.end14
  %call.i114 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call15, ptr noundef nonnull @ps2_gpio_irq, ptr noundef null, i32 noundef 65536, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i114)
  %tobool22.not = icmp eq i32 %call.i114, 0
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef %12, i32 noundef %call.i114) #11
  br label %err_free_serio

if.end28:                                         ; preds = %if.end19
  tail call void @disable_irq(i32 noundef %12) #7
  %id = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %id to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %id, align 1
  %open = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ps2_gpio_open, ptr %open, align 4
  %close = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 9
  %15 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ps2_gpio_close, ptr %close, align 8
  %write_enable = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %write_enable to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_enable, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool30.not = icmp eq i8 %17, 0
  %cond = select i1 %tobool30.not, ptr null, ptr @ps2_gpio_write
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cond, ptr %write, align 8
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %call7.i.i, align 8
  %parent = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 18, i32 1
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev1, ptr %parent, align 8
  %name = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 1
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i115, label %if.end28.dev_name.exit_crit_edge

if.end28.dev_name.exit_crit_edge:                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i115:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i115, %if.end28.dev_name.exit_crit_edge
  %retval.0.i116 = phi ptr [ %24, %if.end.i115 ], [ %22, %if.end28.dev_name.exit_crit_edge ]
  %call33 = tail call i32 @strlcpy(ptr noundef %name, ptr noundef %retval.0.i116, i32 noundef 32) #7
  %phys = getelementptr inbounds %struct.serio, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i118 = icmp eq ptr %26, null
  br i1 %tobool.not.i118, label %if.end.i119, label %dev_name.exit.dev_name.exit121_crit_edge

dev_name.exit.dev_name.exit121_crit_edge:         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit121

if.end.i119:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit121

dev_name.exit121:                                 ; preds = %if.end.i119, %dev_name.exit.dev_name.exit121_crit_edge
  %retval.0.i120 = phi ptr [ %28, %if.end.i119 ], [ %26, %dev_name.exit.dev_name.exit121_crit_edge ]
  %call36 = tail call i32 @strlcpy(ptr noundef %phys, ptr noundef %retval.0.i120, i32 noundef 32) #7
  %serio37 = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 1
  %29 = ptrtoint ptr %serio37 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i, ptr %serio37, align 4
  %30 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev1, ptr %call.i, align 4
  %mode = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mode, align 4
  %tx_cnt = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %tx_cnt to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %tx_cnt, align 2
  %tx_work = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13
  tail call void @__init_work(ptr noundef %tx_work, i32 noundef 0) #7
  %33 = ptrtoint ptr %tx_work to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -64, ptr %tx_work, align 4
  %lockdep_map = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.9, ptr noundef nonnull @ps2_gpio_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry47 = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13, i32 0, i32 1
  %34 = ptrtoint ptr %entry47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %entry47, ptr %entry47, align 4
  %prev.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %entry47, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13, i32 0, i32 2
  %36 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @ps2_gpio_tx_work_fn, ptr %func, align 4
  %timer = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 13, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.11, ptr noundef nonnull @ps2_gpio_probe.__key.10) #7
  %tx_done = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 11
  %37 = ptrtoint ptr %tx_done to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %tx_done, align 4
  %wait.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 11, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @init_completion.__key) #7
  %tx_mutex = getelementptr inbounds %struct.ps2_gpio_data, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %tx_mutex, ptr noundef nonnull @.str.13, ptr noundef nonnull @ps2_gpio_probe.__key.12) #7
  tail call void @__serio_register_port(ptr noundef nonnull %call7.i.i, ptr noundef null) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %38 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_free_serio:                                   ; preds = %do.end26, %if.end14.err_free_serio_crit_edge, %do.end, %ps2_gpio_get_props.exit.err_free_serio_crit_edge, %entry.err_free_serio_crit_edge
  %error.0 = phi i32 [ %retval.0.i, %ps2_gpio_get_props.exit.err_free_serio_crit_edge ], [ -22, %do.end ], [ %call.i114, %do.end26 ], [ -12, %entry.err_free_serio_crit_edge ], [ %call15, %if.end14.err_free_serio_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_serio, %dev_name.exit121
  %retval.0 = phi i32 [ %error.0, %err_free_serio ], [ 0, %dev_name.exit121 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %serio = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %serio, align 4
  tail call void @serio_unregister_port(ptr noundef %3) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_irq(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  %tx_cnt.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tx_cnt.i, align 2
  %tx_byte.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 10
  %4 = ptrtoint ptr %tx_byte.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_byte.i, align 1
  %6 = load i32, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.then.i, label %cond.true.if.end.i_crit_edge

cond.true.if.end.i_crit_edge:                     ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  store i32 %7, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %cond.true.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %9 = load i32, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  %sub.i = sub i32 %8, %9
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 100
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %spec.select.i.i)
  %cmp1.i = icmp ugt i32 %sub.i, %spec.select.i.i
  br i1 %cmp1.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22) #11
  br label %err.i

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  store i32 %12, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  %13 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %sw.default.i [
    i8 0, label %do.end6.i
    i8 1, label %if.end3.i.sw.bb8.i_crit_edge
    i8 2, label %if.end3.i.sw.bb8.i_crit_edge4
    i8 3, label %if.end3.i.sw.bb8.i_crit_edge5
    i8 4, label %if.end3.i.sw.bb8.i_crit_edge6
    i8 5, label %if.end3.i.sw.bb8.i_crit_edge7
    i8 6, label %if.end3.i.sw.bb8.i_crit_edge8
    i8 7, label %if.end3.i.sw.bb8.i_crit_edge9
    i8 8, label %if.end3.i.sw.bb8.i_crit_edge10
    i8 9, label %cond.false.i
    i8 10, label %sw.bb78.i
    i8 11, label %if.end3.i.sw.epilog.i_crit_edge
    i8 12, label %sw.bb81.i
  ]

if.end3.i.sw.epilog.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end3.i.sw.bb8.i_crit_edge10:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge9:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge8:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge7:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge6:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge5:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge4:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

if.end3.i.sw.bb8.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8.i

do.end6.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.25) #11
  br label %err.i

sw.bb8.i:                                         ; preds = %if.end3.i.sw.bb8.i_crit_edge, %if.end3.i.sw.bb8.i_crit_edge4, %if.end3.i.sw.bb8.i_crit_edge5, %if.end3.i.sw.bb8.i_crit_edge6, %if.end3.i.sw.bb8.i_crit_edge7, %if.end3.i.sw.bb8.i_crit_edge8, %if.end3.i.sw.bb8.i_crit_edge9, %if.end3.i.sw.bb8.i_crit_edge10
  %conv.i = zext i8 %3 to i32
  %conv9.i = zext i8 %5 to i32
  %sub11.i = add nsw i32 %conv.i, -1
  %shl.i = shl nuw nsw i32 1, %sub11.i
  %and.i = and i32 %shl.i, %conv9.i
  %gpio_data.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %16 = ptrtoint ptr %gpio_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_data.i, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %and.i) #7
  br label %sw.epilog.i

cond.false.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv71.i = zext i8 %5 to i32
  %call.i6.i = tail call i32 @__sw_hweight8(i32 noundef %conv71.i) #7
  %and73.i = and i32 %call.i6.i, 1
  %18 = xor i32 %and73.i, 1
  %gpio_data77.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %19 = ptrtoint ptr %gpio_data77.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %gpio_data77.i, align 4
  tail call void @gpiod_set_value(ptr noundef %20, i32 noundef %18) #7
  br label %sw.epilog.i

sw.bb78.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_data79.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %21 = ptrtoint ptr %gpio_data79.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %gpio_data79.i, align 4
  %call80.i = tail call i32 @gpiod_direction_input(ptr noundef %22) #7
  br label %sw.epilog.i

sw.bb81.i:                                        ; preds = %if.end3.i
  %gpio_data82.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %23 = ptrtoint ptr %gpio_data82.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %gpio_data82.i, align 4
  %call83.i = tail call i32 @gpiod_direction_input(ptr noundef %24) #7
  %25 = ptrtoint ptr %gpio_data82.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpio_data82.i, align 4
  %call85.i = tail call i32 @gpiod_get_value(ptr noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i)
  %tobool86.not.i = icmp eq i32 %call85.i, 0
  br i1 %tobool86.not.i, label %if.end92.i, label %do.end90.i

do.end90.i:                                       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.28) #11
  br label %err.i

if.end92.i:                                       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %mode, align 4
  %tx_done.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 11
  tail call void @complete(ptr noundef %tx_done.i) #7
  store i32 0, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  br label %ps2_gpio_irq_tx.exit

sw.default.i:                                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %gpio_data93.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %30 = ptrtoint ptr %gpio_data93.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gpio_data93.i, align 4
  %call94.i = tail call i32 @gpiod_direction_input(ptr noundef %31) #7
  %32 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.32) #11
  br label %err.i

sw.epilog.i:                                      ; preds = %sw.bb78.i, %cond.false.i, %sw.bb8.i, %if.end3.i.sw.epilog.i_crit_edge
  %inc.i = add nuw nsw i8 %3, 1
  br label %ps2_gpio_irq_tx.exit

err.i:                                            ; preds = %sw.default.i, %do.end90.i, %do.end6.i, %do.end.i
  store i32 0, ptr @ps2_gpio_irq_tx.old_jiffies, align 4
  %gpio_data99.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 4
  %34 = ptrtoint ptr %gpio_data99.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gpio_data99.i, align 4
  %call100.i = tail call i32 @gpiod_direction_input(ptr noundef %35) #7
  %serio.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %dev_id, i32 0, i32 1
  %36 = ptrtoint ptr %serio.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %serio.i, align 4
  %38 = ptrtoint ptr %tx_byte.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %tx_byte.i, align 1
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %37, align 8
  %irq.i.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %irq.i.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %43) #7
  %gpio_clk.i.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %gpio_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %gpio_clk.i.i, align 4
  %call.i7.i = tail call i32 @gpiod_direction_output(ptr noundef %45, i32 noundef 0) #7
  %mode.i.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %mode.i.i, align 4
  %tx_byte.i.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %41, i32 0, i32 10
  %47 = ptrtoint ptr %tx_byte.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %39, ptr %tx_byte.i.i, align 1
  %tx_work.i.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %41, i32 0, i32 13
  %call.i.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %call.i.i.i)
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, 200
  %spec.select.i.i.i = select i1 %cmp.i.i.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %48 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %48, ptr noundef %tx_work.i.i, i32 noundef %spec.select.i.i.i) #7
  br label %ps2_gpio_irq_tx.exit

ps2_gpio_irq_tx.exit:                             ; preds = %err.i, %sw.epilog.i, %if.end92.i
  %cnt.0.i = phi i8 [ 1, %err.i ], [ 1, %if.end92.i ], [ %inc.i, %sw.epilog.i ]
  %49 = ptrtoint ptr %tx_cnt.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %cnt.0.i, ptr %tx_cnt.i, align 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @ps2_gpio_irq_rx(ptr noundef %dev_id)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %ps2_gpio_irq_tx.exit
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_open(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %irq = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2_gpio_close(ptr nocapture noundef readonly %serio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %tx_work = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 13
  %call = tail call zeroext i1 @flush_delayed_work(ptr noundef %tx_work) #7
  %irq = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps2_gpio_write(ptr nocapture noundef readonly %serio, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %serio, align 8
  %2 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %preempt_count.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i, align 4
  %and = and i32 %5, 15728640
  %6 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i20 = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i20 to ptr
  %preempt_count.i21 = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i21 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i21, align 4
  %and2 = and i32 %9, 983040
  %or = or i32 %and2, %and
  %10 = tail call i32 @llvm.read_register.i32(metadata !105) #7
  %and.i.i22 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i22 to ptr
  %preempt_count.i23 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i23, align 4
  %and5 = and i32 %13, 256
  %or6 = or i32 %or, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tx_mutex = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %tx_mutex, i32 noundef 0) #7
  %14 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %serio, align 8
  %irq.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %17) #7
  %gpio_clk.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %15, i32 0, i32 3
  %18 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %gpio_clk.i, align 4
  %call.i = tail call i32 @gpiod_direction_output(ptr noundef %19, i32 noundef 0) #7
  %mode.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %15, i32 0, i32 2
  %20 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %mode.i, align 4
  %tx_byte.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %15, i32 0, i32 10
  %21 = ptrtoint ptr %tx_byte.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %val, ptr %tx_byte.i, align 1
  %tx_work.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %15, i32 0, i32 13
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 200
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %tx_work.i, i32 noundef %spec.select.i.i) #7
  %tx_done = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 11
  %call9 = tail call i32 @wait_for_completion_timeout(ptr noundef %tx_done, i32 noundef 1000) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %spec.select = zext i1 %tobool10.not to i32
  tail call void @mutex_unlock(ptr noundef %tx_mutex) #7
  br label %if.end14

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i24 = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %irq.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %irq.i24, align 4
  tail call void @disable_irq_nosync(i32 noundef %24) #7
  %gpio_clk.i25 = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %gpio_clk.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %gpio_clk.i25, align 4
  %call.i26 = tail call i32 @gpiod_direction_output(ptr noundef %26, i32 noundef 0) #7
  %mode.i27 = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %mode.i27 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %mode.i27, align 4
  %tx_byte.i28 = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 10
  %28 = ptrtoint ptr %tx_byte.i28 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %val, ptr %tx_byte.i28, align 1
  %tx_work.i29 = getelementptr inbounds %struct.ps2_gpio_data, ptr %1, i32 0, i32 13
  %call.i.i30 = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %call.i.i30)
  %cmp.i.i31 = icmp ult i32 %call.i.i30, 200
  %spec.select.i.i32 = select i1 %cmp.i.i31, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i33 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %tx_work.i29, i32 noundef %spec.select.i.i32) #7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then
  %ret.1 = phi i32 [ 0, %if.else ], [ %spec.select, %if.then ]
  ret i32 %ret.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps2_gpio_tx_work_fn(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr i8, ptr %work, i32 -156
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %1) #7
  %gpio_data = getelementptr i8, ptr %work, i32 -164
  %2 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_data, align 4
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 0) #7
  %gpio_clk = getelementptr i8, ptr %work, i32 -168
  %4 = ptrtoint ptr %gpio_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_clk, align 4
  %call2 = tail call i32 @gpiod_direction_input(ptr noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ps2_gpio_irq_rx(ptr nocapture noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_byte = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 8
  %0 = ptrtoint ptr %rx_byte to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rx_byte, align 1
  %rx_cnt = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 7
  %2 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rx_cnt, align 4
  %4 = load i32, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  store i32 %5, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %7 = load i32, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  %sub = sub i32 %6, %7
  %call.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %call.i)
  %cmp.i = icmp ult i32 %call.i, 100
  %spec.select.i = select i1 %cmp.i, i32 1073741822, i32 1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %spec.select.i)
  %cmp1 = icmp ugt i32 %sub, %spec.select.i
  br i1 %cmp1, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34) #11
  br label %err

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  store i32 %10, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  %gpio_data = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 4
  %11 = ptrtoint ptr %gpio_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_data, align 4
  %call4 = tail call i32 @gpiod_get_value(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end10, label %if.end12, !prof !116

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.37, i32 noundef %call4) #11
  br label %err

if.end12:                                         ; preds = %if.end3
  %conv = zext i8 %3 to i32
  %15 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %3, label %do.end158 [
    i8 0, label %sw.bb
    i8 1, label %if.end12.sw.bb26_crit_edge
    i8 2, label %if.end12.sw.bb26_crit_edge9
    i8 3, label %if.end12.sw.bb26_crit_edge10
    i8 4, label %if.end12.sw.bb26_crit_edge11
    i8 5, label %if.end12.sw.bb26_crit_edge12
    i8 6, label %if.end12.sw.bb26_crit_edge13
    i8 7, label %if.end12.sw.bb26_crit_edge14
    i8 8, label %if.end12.sw.bb26_crit_edge15
    i8 9, label %cond.false
    i8 10, label %sw.bb140
  ]

if.end12.sw.bb26_crit_edge15:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge14:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge13:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge12:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge11:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge10:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge9:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

if.end12.sw.bb26_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26

sw.bb:                                            ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool13.not = icmp eq i32 %call4, 0
  br i1 %tobool13.not, label %sw.bb.sw.epilog_crit_edge, label %do.end23, !prof !117

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.40) #11
  br label %err

sw.bb26:                                          ; preds = %if.end12.sw.bb26_crit_edge, %if.end12.sw.bb26_crit_edge9, %if.end12.sw.bb26_crit_edge10, %if.end12.sw.bb26_crit_edge11, %if.end12.sw.bb26_crit_edge12, %if.end12.sw.bb26_crit_edge13, %if.end12.sw.bb26_crit_edge14, %if.end12.sw.bb26_crit_edge15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool27.not = icmp eq i32 %call4, 0
  br i1 %tobool27.not, label %sw.bb26.sw.epilog_crit_edge, label %if.then28

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then28:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %sub30 = add nsw i32 %conv, -1
  %shl = shl i32 %call4, %sub30
  %18 = trunc i32 %shl to i8
  %conv32 = or i8 %1, %18
  br label %sw.epilog

cond.false:                                       ; preds = %if.end12
  %conv96 = zext i8 %1 to i32
  %call.i6 = tail call i32 @__sw_hweight8(i32 noundef %conv96) #7
  %and98 = and i32 %call.i6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and98, i32 %call4)
  %tobool99.not = icmp eq i32 %and98, %call4
  br i1 %tobool99.not, label %if.then100, label %cond.false.if.end109_crit_edge

cond.false.if.end109_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then100:                                       ; preds = %cond.false
  %19 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %20, ptr noundef nonnull @.str.43) #11
  %write_enable = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 5
  %21 = ptrtoint ptr %write_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %write_enable, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool106.not = icmp eq i8 %22, 0
  br i1 %tobool106.not, label %if.then100.err_crit_edge, label %if.then100.if.end109_crit_edge

if.then100.if.end109_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then100.err_crit_edge:                         ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.end109:                                        ; preds = %if.then100.if.end109_crit_edge, %cond.false.if.end109_crit_edge
  %rxflags.0 = phi i32 [ 0, %cond.false.if.end109_crit_edge ], [ 2, %if.then100.if.end109_crit_edge ]
  %write_enable110 = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 5
  %23 = ptrtoint ptr %write_enable110 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %write_enable110, align 4, !range !115
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool111.not = icmp eq i8 %24, 0
  br i1 %tobool111.not, label %if.then112, label %if.end109.if.end123_crit_edge

if.end109.if.end123_crit_edge:                    ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.then112:                                       ; preds = %if.end109
  %25 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %1, label %if.then112.if.end123_crit_edge [
    i8 -2, label %if.then112.err_crit_edge
    i8 -6, label %if.then112.sw.epilog_crit_edge
  ]

if.then112.sw.epilog_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then112.err_crit_edge:                         ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

if.then112.if.end123_crit_edge:                   ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.end123:                                        ; preds = %if.then112.if.end123_crit_edge, %if.end109.if.end123_crit_edge
  %serio = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 1
  %26 = ptrtoint ptr %serio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %serio, align 4
  %call124 = tail call i32 @serio_interrupt(ptr noundef %27, i8 noundef zeroext %1, i32 noundef %rxflags.0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_gpio_irq_rx.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_gpio_irq_rx, %if.then134)) #7
          to label %sw.epilog [label %if.then134], !srcloc !118

if.then134:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %drvdata, align 4
  %conv136 = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_gpio_irq_rx.__UNIQUE_ID_ddebug187, ptr noundef %29, ptr noundef nonnull @.str.46, i32 noundef %conv136) #7
  br label %sw.epilog

sw.bb140:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool141.not = icmp eq i32 %call4, 0
  br i1 %tobool141.not, label %do.end153, label %if.end155, !prof !116

do.end153:                                        ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.48) #11
  br label %err

if.end155:                                        ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #9
  store i32 0, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  br label %end

do.end158:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %drvdata, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.51) #11
  br label %err

sw.epilog:                                        ; preds = %if.then134, %if.end123, %if.then112.sw.epilog_crit_edge, %if.then28, %sw.bb26.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %byte.0 = phi i8 [ %1, %if.then134 ], [ %conv32, %if.then28 ], [ %1, %sw.bb26.sw.epilog_crit_edge ], [ %1, %sw.bb.sw.epilog_crit_edge ], [ %1, %if.then112.sw.epilog_crit_edge ], [ %1, %if.end123 ]
  %inc = add nuw nsw i8 %3, 1
  br label %end

err:                                              ; preds = %do.end158, %do.end153, %if.then112.err_crit_edge, %if.then100.err_crit_edge, %do.end23, %do.end10, %do.end
  store i32 0, ptr @ps2_gpio_irq_rx.old_jiffies, align 4
  %serio160 = getelementptr inbounds %struct.ps2_gpio_data, ptr %drvdata, i32 0, i32 1
  %34 = ptrtoint ptr %serio160 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %serio160, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 8
  %irq.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %37, i32 0, i32 6
  %38 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq_nosync(i32 noundef %39) #7
  %gpio_clk.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %gpio_clk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpio_clk.i, align 4
  %call.i7 = tail call i32 @gpiod_direction_output(ptr noundef %41, i32 noundef 0) #7
  %mode.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %37, i32 0, i32 2
  %42 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %mode.i, align 4
  %tx_byte.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %37, i32 0, i32 10
  %43 = ptrtoint ptr %tx_byte.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %tx_byte.i, align 1
  %tx_work.i = getelementptr inbounds %struct.ps2_gpio_data, ptr %37, i32 0, i32 13
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 200
  %spec.select.i.i = select i1 %cmp.i.i, i32 1073741822, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %44 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %44, ptr noundef %tx_work.i, i32 noundef %spec.select.i.i) #7
  br label %end

end:                                              ; preds = %err, %sw.epilog, %if.end155
  %cnt.0 = phi i8 [ 0, %err ], [ 0, %if.end155 ], [ %inc, %sw.epilog ]
  %byte.1 = phi i8 [ 0, %err ], [ 0, %if.end155 ], [ %byte.0, %sw.epilog ]
  %45 = ptrtoint ptr %rx_cnt to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %cnt.0, ptr %rx_cnt, align 4
  %46 = ptrtoint ptr %rx_byte to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %byte.1, ptr %rx_byte, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_delayed_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103}
!llvm.named.register.sp = !{!105}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_ps2_gpio__188_446_ps2_gpio_driver_init6, !1, !"__initcall__kmod_ps2_gpio__188_446_ps2_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/ps2-gpio.c", i32 446, i32 1}
!2 = !{ptr @__exitcall_ps2_gpio_driver_exit, !1, !"__exitcall_ps2_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author189, !4, !"__UNIQUE_ID_author189", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/ps2-gpio.c", i32 448, i32 1}
!5 = !{ptr @__UNIQUE_ID_description190, !6, !"__UNIQUE_ID_description190", i1 false, i1 false}
!6 = !{!"../drivers/input/serio/ps2-gpio.c", i32 449, i32 1}
!7 = !{ptr @__UNIQUE_ID_file191, !8, !"__UNIQUE_ID_file191", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/ps2-gpio.c", i32 450, i32 1}
!9 = !{ptr @__UNIQUE_ID_license192, !8, !"__UNIQUE_ID_license192", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/input/serio/ps2-gpio.c", i32 442, i32 11}
!12 = !{ptr @ps2_gpio_driver, !13, !"ps2_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/input/serio/ps2-gpio.c", i32 438, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/serio/ps2-gpio.c", i32 365, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ps2_gpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ps2_gpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/serio/ps2-gpio.c", i32 379, i32 3}
!24 = !{ptr @ps2_gpio_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ps2_gpio_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @ps2_gpio_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/input/serio/ps2-gpio.c", i32 408, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ps2_gpio_probe.__key.10, !27, !"__key", i1 false, i1 false}
!30 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @ps2_gpio_probe.__key.12, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/ps2-gpio.c", i32 410, i32 2}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/serio/ps2-gpio.c", i32 325, i32 43}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/serio/ps2-gpio.c", i32 327, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ps2_gpio_get_props._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @ps2_gpio_get_props._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/input/serio/ps2-gpio.c", i32 332, i32 42}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/input/serio/ps2-gpio.c", i32 334, i32 3}
!45 = !{ptr @ps2_gpio_get_props._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ps2_gpio_get_props._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/serio/ps2-gpio.c", i32 340, i32 5}
!49 = !{ptr @ps2_gpio_irq_tx.old_jiffies, !50, !"old_jiffies", i1 false, i1 false}
!50 = !{!"../drivers/input/serio/ps2-gpio.c", i32 232, i32 23}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/input/serio/ps2-gpio.c", i32 241, i32 3}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ps2_gpio_irq_tx._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @ps2_gpio_irq_tx._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/input/serio/ps2-gpio.c", i32 250, i32 3}
!58 = !{ptr @ps2_gpio_irq_tx._entry.24, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ps2_gpio_irq_tx._entry_ptr.26, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/input/serio/ps2-gpio.c", i32 282, i32 4}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ps2_gpio_irq_tx._entry.27, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ps2_gpio_irq_tx._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/serio/ps2-gpio.c", i32 297, i32 3}
!67 = !{ptr @ps2_gpio_irq_tx._entry.31, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ps2_gpio_irq_tx._entry_ptr.33, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @ps2_gpio_irq_rx.old_jiffies, !70, !"old_jiffies", i1 false, i1 false}
!70 = !{!"../drivers/input/serio/ps2-gpio.c", i32 131, i32 23}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/input/serio/ps2-gpio.c", i32 140, i32 3}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ps2_gpio_irq_rx._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ps2_gpio_irq_rx._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/input/serio/ps2-gpio.c", i32 148, i32 3}
!78 = !{ptr @ps2_gpio_irq_rx._entry.36, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ps2_gpio_irq_rx._entry_ptr.38, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/serio/ps2-gpio.c", i32 157, i32 4}
!82 = !{ptr @ps2_gpio_irq_rx._entry.39, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ps2_gpio_irq_rx._entry_ptr.41, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/serio/ps2-gpio.c", i32 177, i32 4}
!86 = !{ptr @ps2_gpio_irq_rx._entry.42, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ps2_gpio_irq_rx._entry_ptr.44, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.45, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/input/serio/ps2-gpio.c", i32 199, i32 3}
!90 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ps2_gpio_irq_rx.__UNIQUE_ID_ddebug187, !89, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/input/serio/ps2-gpio.c", i32 204, i32 4}
!94 = !{ptr @ps2_gpio_irq_rx._entry.47, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ps2_gpio_irq_rx._entry_ptr.49, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.51, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/input/serio/ps2-gpio.c", i32 211, i32 3}
!98 = !{ptr @ps2_gpio_irq_rx._entry.50, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ps2_gpio_irq_rx._entry_ptr.52, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @init_completion.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../include/linux/completion.h", i32 87, i32 2}
!102 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @ps2_gpio_match, !104, !"ps2_gpio_match", i1 false, i1 false}
!104 = !{!"../drivers/input/serio/ps2-gpio.c", i32 431, i32 34}
!105 = !{!"sp"}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{i8 0, i8 2}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{!"branch_weights", i32 2000, i32 1}
!118 = !{i64 2148176402, i64 2148176407, i64 2148176420, i64 2148176464, i64 2148176498, i64 2148176519}
