; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-stmpe.c_pt.bc'
source_filename = "../drivers/gpio/gpio-stmpe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.stmpe = type { ptr, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, [2 x i8], [2 x i8], ptr, i8, i8, i8, i8 }
%struct.stmpe_gpio = type { %struct.gpio_chip, ptr, ptr, %struct.mutex, i32, [3 x [3 x i8]], [3 x [3 x i8]] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_stmpe__227_540_stmpe_gpio_init4 = internal global ptr @stmpe_gpio_init, section ".initcall4.init", align 4
@stmpe_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stmpe_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stmpe-gpio\00", [21 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 465, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Need to increase maximum GPIO number\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stmpe_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-stmpe.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe._entry_ptr = internal global ptr @stmpe_gpio_probe._entry, section ".printk_index", align 4
@stmpe_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&stmpe_gpio->irq_lock\00", [42 x i8] zeroinitializer }, align 32
@template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_gpio_request, ptr null, ptr @stmpe_gpio_get_direction, ptr @stmpe_gpio_direction_input, ptr @stmpe_gpio_direction_output, ptr @stmpe_gpio_get, ptr null, ptr @stmpe_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"st,norequest-mask\00", [46 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 492, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"device configured in no-irq mode: irqs are not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe._entry_ptr.11 = internal global ptr @stmpe_gpio_probe._entry.8, section ".printk_index", align 4
@stmpe_gpio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unable to get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe._entry_ptr.14 = internal global ptr @stmpe_gpio_probe._entry.12, section ".printk_index", align 4
@stmpe_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmpe_gpio_irq_mask, ptr null, ptr @stmpe_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @stmpe_gpio_irq_set_type, ptr null, ptr @stmpe_gpio_irq_lock, ptr @stmpe_gpio_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@stmpe_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stmpe_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stmpe\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" gpio-%-3d (%-20.20s) out %s\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"(none)\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"hi\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"lo\00", [29 x i8] zeroinitializer }, align 32
@stmpe_dbg_show_one.edge_det_values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge-inactive\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edge-asserted\00", [18 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"not-supported\00", [18 x i8] zeroinitializer }, align 32
@stmpe_dbg_show_one.rise_values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no-rising-edge-detection\00", [39 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rising-edge-detection\00", [42 x i8] zeroinitializer }, align 32
@stmpe_dbg_show_one.fall_values = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no-falling-edge-detection\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"falling-edge-detection\00", [41 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c" gpio-%-3d (%-20.20s) in  %s %13s %13s %25s %25s\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"IRQ-enabled\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ-disabled\00", [19 x i8] zeroinitializer }, align 32
@stmpe_gpio_irq_sync_unlock.regmap = internal constant { [3 x [3 x i8]], [23 x i8] } { [3 x [3 x i8]] [[3 x i8] c"\17\18\19", [3 x i8] c"\1A\1B\1C", [3 x i8] c" !\22"], [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"stmpe_gpio_driver\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 528, i32 31 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 531, i32 13 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 465, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 473, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [14 x i8] c"template_chip\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 128, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 485, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 490, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 509, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"stmpe_gpio_irq_chip\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 360, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 525, i32 9 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 129, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 270, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 271, i32 22 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 272, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 272, i32 20 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"edge_det_values\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 279, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 280, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 281, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 282, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"rise_values\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 284, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 285, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 286, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [12 x i8] c"fall_values\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 289, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 290, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 291, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 339, i32 17 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 343, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 343, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant [7 x i8] c"regmap\00", align 1
@___asan_gen_.150 = private constant [29 x i8] c"../drivers/gpio/gpio-stmpe.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 183, i32 18 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__initcall__kmod_gpio_stmpe__227_540_stmpe_gpio_init4, ptr @stmpe_gpio_probe._entry, ptr @stmpe_gpio_probe._entry.12, ptr @stmpe_gpio_probe._entry.8, ptr @stmpe_gpio_probe._entry_ptr, ptr @stmpe_gpio_probe._entry_ptr.11, ptr @stmpe_gpio_probe._entry_ptr.14, ptr @stmpe_gpio_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stmpe_gpio_probe.__key, ptr @.str.6, ptr @template_chip, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @stmpe_gpio_irq_chip, ptr @stmpe_gpio_probe.lock_key, ptr @stmpe_gpio_probe.request_key, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @stmpe_dbg_show_one.edge_det_values, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @stmpe_dbg_show_one.rise_values, ptr @.str.23, ptr @.str.24, ptr @stmpe_dbg_show_one.fall_values, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @stmpe_gpio_irq_sync_unlock.regmap], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_dbg_show_one.edge_det_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_dbg_show_one.rise_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_dbg_show_one.fall_values to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmpe_gpio_irq_sync_unlock.regmap to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmpe_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %num_gpios = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp = icmp sgt i32 %7, 24
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup58

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 472, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup58_crit_edge, label %do.body7

if.end.cleanup58_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

do.body7:                                         ; preds = %if.end
  %irq_lock = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stmpe_gpio_probe.__key) #6
  %dev11 = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %dev11, align 4
  %stmpe12 = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %stmpe12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %stmpe12, align 4
  %10 = call ptr @memcpy(ptr %call.i, ptr @template_chip, i32 348)
  %11 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_gpios, align 4
  %conv = trunc i32 %12 to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %13 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv, ptr %ngpio, align 4
  %parent17 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %parent17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent17, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %base, align 4
  %dbg_show = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 16
  %16 = ptrtoint ptr %dbg_show to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @stmpe_dbg_show, ptr %dbg_show, align 4
  %norequest_mask = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef %norequest_mask, i32 noundef 1, i32 noundef 0) #6
  %call21 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %do.end27, label %do.body7.if.end29_crit_edge

do.body7.if.end29_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

do.end27:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  br label %if.end29

if.end29:                                         ; preds = %do.end27, %do.body7.if.end29_crit_edge
  %call30 = tail call i32 @stmpe_enable(ptr noundef %3, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end29.cleanup58_crit_edge

if.end29.cleanup58_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup58

if.end33:                                         ; preds = %if.end29
  %call.i106 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @stmpe_gpio_disable, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %tobool.not.i = icmp eq i32 %call.i106, 0
  br i1 %tobool.not.i, label %if.end38, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i107 = tail call i32 @stmpe_disable(ptr noundef %3, i32 noundef 1) #6
  br label %cleanup58

if.end38:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp39 = icmp sgt i32 %call21, 0
  br i1 %cmp39, label %if.then41, label %if.end38.if.end54_crit_edge

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then41:                                        ; preds = %if.end38
  %call43 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call21, ptr noundef null, ptr noundef nonnull @stmpe_gpio_irq, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call43) #9
  br label %cleanup58

if.end50:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %irq52 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %17 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @stmpe_gpio_irq_chip, ptr %irq52, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %18 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %20 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %21 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %22 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @handle_simple_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 18
  %23 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %threaded, align 4
  %init_valid_mask = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 21
  %24 = ptrtoint ptr %init_valid_mask to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @stmpe_init_irq_valid_mask, ptr %init_valid_mask, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.end38.if.end54_crit_edge
  %call57 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @stmpe_gpio_probe.lock_key, ptr noundef nonnull @stmpe_gpio_probe.request_key) #6
  br label %cleanup58

cleanup58:                                        ; preds = %if.end54, %do.end48, %devm_add_action_or_reset.exit, %if.end29.cleanup58_crit_edge, %if.end.cleanup58_crit_edge, %do.end
  %retval.1 = phi i32 [ -22, %do.end ], [ %call57, %if.end54 ], [ -12, %if.end.cleanup58_crit_edge ], [ %call30, %if.end29.cleanup58_crit_edge ], [ %call.i106, %devm_add_action_or_reset.exit ], [ %call43, %do.end48 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_dbg_show(ptr noundef %s, ptr noundef %gc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  br label %for.body

for.body:                                         ; preds = %stmpe_dbg_show_one.exit.for.body_crit_edge, %for.body.preheader
  %gpio.012 = phi i32 [ %inc2, %stmpe_dbg_show_one.exit.for.body_crit_edge ], [ %3, %for.body.preheader ]
  %i.011 = phi i32 [ %inc, %stmpe_dbg_show_one.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %stmpe1.i = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %stmpe1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stmpe1.i, align 4
  %call2.i = tail call ptr @gpiochip_is_requested(ptr noundef %gc, i32 noundef %i.011) #6
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %stmpe1.i.i = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %stmpe1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmpe1.i.i, align 4
  %regs.i.i = getelementptr inbounds %struct.stmpe, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %div14.i.i = lshr i32 %i.011, 3
  %add.i.i = add nuw nsw i32 %div14.i.i, 8
  %arrayidx.i.i = getelementptr i8, ptr %9, i32 %add.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %call2.i.i = tail call i32 @stmpe_reg_read(ptr noundef %7, i8 noundef zeroext %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i, 0
  %rem.i.i = and i32 %i.011, 7
  %12 = lshr i32 %call2.i.i, %rem.i.i
  %13 = and i32 %12, 1
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call2.i.i, i32 %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  %regs.i = getelementptr inbounds %struct.stmpe, ptr %5, i32 0, i32 10
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %conv5.i = and i32 %div14.i.i, 255
  %add.i = add nuw nsw i32 %conv5.i, 17
  %arrayidx.i = getelementptr i8, ptr %15, i32 %add.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %call7.i = tail call i32 @stmpe_reg_read(ptr noundef %5, i8 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp.i = icmp slt i32 %call7.i, 0
  br i1 %cmp.i, label %for.body.stmpe_dbg_show_one.exit_crit_edge, label %if.end.i

for.body.stmpe_dbg_show_one.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

if.end.i:                                         ; preds = %for.body
  %shl.i = shl nuw nsw i32 1, %rem.i.i
  %and.i = and i32 %call7.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %tobool16.not.i = icmp eq ptr %call2.i, null
  %..str.17.i = select i1 %tobool16.not.i, ptr @.str.17, ptr %call2.i
  %cond19.i = select i1 %tobool.not.i, ptr @.str.19, ptr @.str.18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, i32 noundef %gpio.012, ptr noundef %..str.17.i, ptr noundef nonnull %cond19.i) #6
  br label %stmpe_dbg_show_one.exit

if.else.i:                                        ; preds = %if.end.i
  %partnum.i = getelementptr inbounds %struct.stmpe, ptr %5, i32 0, i32 8
  %18 = ptrtoint ptr %partnum.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %partnum.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.else.i.stmpe_dbg_show_one.exit_crit_edge [
    i32 0, label %if.else.i.sw.bb.i_crit_edge
    i32 2, label %if.else.i.sw.bb.i_crit_edge14
    i32 4, label %if.else.i.sw.bb.i_crit_edge15
    i32 6, label %if.else.i.sw.bb.i_crit_edge16
    i32 7, label %if.else.i.sw.bb.i_crit_edge17
    i32 5, label %if.else.i.sw.bb37.i_crit_edge
    i32 1, label %if.else.i.sw.bb72.i_crit_edge
    i32 3, label %if.else.i.sw.bb72.i_crit_edge18
  ]

if.else.i.sw.bb72.i_crit_edge18:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72.i

if.else.i.sw.bb72.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb72.i

if.else.i.sw.bb37.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb37.i

if.else.i.sw.bb.i_crit_edge17:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge16:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge15:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge14:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.i.sw.bb.i_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.else.i.stmpe_dbg_show_one.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

sw.bb.i:                                          ; preds = %if.else.i.sw.bb.i_crit_edge, %if.else.i.sw.bb.i_crit_edge14, %if.else.i.sw.bb.i_crit_edge15, %if.else.i.sw.bb.i_crit_edge16, %if.else.i.sw.bb.i_crit_edge17
  %21 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i, align 4
  %add22.i = add nuw nsw i32 %conv5.i, 20
  %arrayidx23.i = getelementptr i8, ptr %22, i32 %add22.i
  %23 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.i, align 1
  %call24.i = tail call i32 @stmpe_reg_read(ptr noundef %5, i8 noundef zeroext %24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %sw.bb.i.stmpe_dbg_show_one.exit_crit_edge, label %if.end28.i

sw.bb.i.stmpe_dbg_show_one.exit_crit_edge:        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

if.end28.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = lshr i32 %call24.i, %rem.i.i
  %26 = and i32 %25, 1
  br label %sw.bb37.i

sw.bb37.i:                                        ; preds = %if.end28.i, %if.else.i.sw.bb37.i_crit_edge
  %edge_det.0.i = phi i32 [ 2, %if.else.i.sw.bb37.i_crit_edge ], [ %26, %if.end28.i ]
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add40.i = add nuw nsw i32 %conv5.i, 23
  %arrayidx41.i = getelementptr i8, ptr %28, i32 %add40.i
  %29 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx41.i, align 1
  %add44.i = add nuw nsw i32 %conv5.i, 26
  %arrayidx45.i = getelementptr i8, ptr %28, i32 %add44.i
  %31 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx45.i, align 1
  %call46.i = tail call i32 @stmpe_reg_read(ptr noundef %5, i8 noundef zeroext %30) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %sw.bb37.i.stmpe_dbg_show_one.exit_crit_edge, label %if.end50.i

sw.bb37.i.stmpe_dbg_show_one.exit_crit_edge:      ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

if.end50.i:                                       ; preds = %sw.bb37.i
  %call59.i = tail call i32 @stmpe_reg_read(ptr noundef %5, i8 noundef zeroext %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %cmp60.i = icmp slt i32 %call59.i, 0
  br i1 %cmp60.i, label %if.end50.i.stmpe_dbg_show_one.exit_crit_edge, label %if.end63.i

if.end50.i.stmpe_dbg_show_one.exit_crit_edge:     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

if.end63.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = lshr i32 %call46.i, %rem.i.i
  %34 = and i32 %33, 1
  %35 = lshr i32 %call59.i, %rem.i.i
  %36 = and i32 %35, 1
  br label %sw.bb72.i

sw.bb72.i:                                        ; preds = %if.end63.i, %if.else.i.sw.bb72.i_crit_edge, %if.else.i.sw.bb72.i_crit_edge18
  %edge_det.1.i = phi i32 [ 2, %if.else.i.sw.bb72.i_crit_edge ], [ 2, %if.else.i.sw.bb72.i_crit_edge18 ], [ %edge_det.0.i, %if.end63.i ]
  %rise.0.i = phi i32 [ 2, %if.else.i.sw.bb72.i_crit_edge ], [ 2, %if.else.i.sw.bb72.i_crit_edge18 ], [ %34, %if.end63.i ]
  %fall.0.i = phi i32 [ 2, %if.else.i.sw.bb72.i_crit_edge ], [ 2, %if.else.i.sw.bb72.i_crit_edge18 ], [ %36, %if.end63.i ]
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %add75.i = add nuw nsw i32 %conv5.i, 32
  %arrayidx76.i = getelementptr i8, ptr %38, i32 %add75.i
  %39 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx76.i, align 1
  %call77.i = tail call i32 @stmpe_reg_read(ptr noundef %5, i8 noundef zeroext %40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %sw.bb72.i.stmpe_dbg_show_one.exit_crit_edge, label %if.end81.i

sw.bb72.i.stmpe_dbg_show_one.exit_crit_edge:      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stmpe_dbg_show_one.exit

if.end81.i:                                       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #8
  %and83.i = and i32 %call77.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83.i)
  %tobool84.not.i = icmp eq i32 %and83.i, 0
  %tobool90.not.i = icmp eq ptr %call2.i, null
  %..str.17126.i = select i1 %tobool90.not.i, ptr @.str.17, ptr %call2.i
  %cond97.i = select i1 %tobool.not.i, ptr @.str.19, ptr @.str.18
  %arrayidx98.i = getelementptr [3 x ptr], ptr @stmpe_dbg_show_one.edge_det_values, i32 0, i32 %edge_det.1.i
  %41 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx98.i, align 4
  %cond101.i = select i1 %tobool84.not.i, ptr @.str.29, ptr @.str.28
  %arrayidx103.i = getelementptr [3 x ptr], ptr @stmpe_dbg_show_one.rise_values, i32 0, i32 %rise.0.i
  %43 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx103.i, align 4
  %arrayidx105.i = getelementptr [3 x ptr], ptr @stmpe_dbg_show_one.fall_values, i32 0, i32 %fall.0.i
  %45 = ptrtoint ptr %arrayidx105.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx105.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, i32 noundef %gpio.012, ptr noundef %..str.17126.i, ptr noundef nonnull %cond97.i, ptr noundef %42, ptr noundef nonnull %cond101.i, ptr noundef %44, ptr noundef %46) #6
  br label %stmpe_dbg_show_one.exit

stmpe_dbg_show_one.exit:                          ; preds = %if.end81.i, %sw.bb72.i.stmpe_dbg_show_one.exit_crit_edge, %if.end50.i.stmpe_dbg_show_one.exit_crit_edge, %sw.bb37.i.stmpe_dbg_show_one.exit_crit_edge, %sw.bb.i.stmpe_dbg_show_one.exit_crit_edge, %if.else.i.stmpe_dbg_show_one.exit_crit_edge, %if.then15.i, %for.body.stmpe_dbg_show_one.exit_crit_edge
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  %inc = add nuw nsw i32 %i.011, 1
  %inc2 = add i32 %gpio.012, 1
  %47 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %48 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %stmpe_dbg_show_one.exit.for.body_crit_edge, label %stmpe_dbg_show_one.exit.for.end_crit_edge

stmpe_dbg_show_one.exit.for.end_crit_edge:        ; preds = %stmpe_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

stmpe_dbg_show_one.exit.for.body_crit_edge:       ; preds = %stmpe_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %stmpe_dbg_show_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_disable(ptr noundef %stmpe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stmpe_disable(ptr noundef %stmpe, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_irq(i32 noundef %irq, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %status = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  %num_gpios = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_gpios, align 4
  %sub = add i32 %3, 7
  %div = sdiv i32 %sub, 8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %status) #6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !82
  %5 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !82
  %7 = getelementptr inbounds [3 x i8], ptr %status, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !82
  %partnum = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %partnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp = icmp eq i32 %10, 3
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %. = select i1 %cmp, i32 35, i32 37
  %arrayidx3 = getelementptr i8, ptr %12, i32 %.
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %statmsbreg.0 = load i8, ptr %arrayidx3, align 1
  %conv = trunc i32 %div to i8
  %call = call i32 @stmpe_block_read(ptr noundef %1, i8 noundef zeroext %statmsbreg.0, i8 noundef zeroext %conv, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %entry.cleanup56_crit_edge, label %for.cond.preheader

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp896 = icmp sgt i32 %sub, 7
  br i1 %cmp896, label %for.body.lr.ph, label %for.cond.preheader.cleanup56_crit_edge

for.cond.preheader.cleanup56_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %dev, i32 0, i32 37, i32 1
  %regs46 = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %14 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stmpe1, align 4
  %partnum11 = getelementptr inbounds %struct.stmpe, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %partnum11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %partnum11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cmp12 = icmp eq i32 %17, 3
  %18 = xor i32 %i.097, -1
  %sub15 = add nsw i32 %div, %18
  %cond = select i1 %cmp12, i32 %i.097, i32 %sub15
  %arrayidx18 = getelementptr %struct.stmpe_gpio, ptr %dev, i32 0, i32 5, i32 2, i32 %cond
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr [3 x i8], ptr %status, i32 0, i32 %i.097
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 1
  %and93 = and i8 %22, %20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and93)
  %tobool.not = icmp eq i8 %and93, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %while.cond.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.preheader:                             ; preds = %for.body
  %and = zext i8 %and93 to i32
  %mul = shl i32 %cond, 3
  br label %while.body

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %while.cond.preheader
  %stat.095 = phi i32 [ %and, %while.cond.preheader ], [ %and29, %irq_find_mapping.exit.while.body_crit_edge ]
  %23 = call i32 @llvm.cttz.i32(i32 %stat.095, i1 true) #6, !range !83
  %add26 = add i32 %23, %mul
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #6
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %irq.i, align 4, !annotation !82
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %25, i32 noundef %add26, ptr noundef nonnull %irq.i) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %28, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #6
  call void @handle_nested_irq(i32 noundef %retval.0.i) #6
  %shl = shl nuw i32 1, %23
  %neg = xor i32 %shl, -1
  %and29 = and i32 %stat.095, %neg
  %tobool24.not = icmp eq i32 %and29, 0
  br i1 %tobool24.not, label %while.cond.while.end_crit_edge, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %irq_find_mapping.exit
  %29 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %partnum, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %30, label %if.then40 [
    i32 1, label %while.cond.while.end_crit_edge.cleanup_crit_edge
    i32 3, label %while.cond.while.end_crit_edge.cleanup_crit_edge99
    i32 5, label %while.cond.while.end_crit_edge.cleanup_crit_edge100
  ]

while.cond.while.end_crit_edge.cleanup_crit_edge100: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.while.end_crit_edge.cleanup_crit_edge99: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

while.cond.while.end_crit_edge.cleanup_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then40:                                        ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #8
  %32 = trunc i32 %i.097 to i8
  %conv43 = add i8 %statmsbreg.0, %32
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx20, align 1
  %call45 = call i32 @stmpe_reg_write(ptr noundef %1, i8 noundef zeroext %conv43, i8 noundef zeroext %34) #6
  %35 = ptrtoint ptr %regs46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs46, align 4
  %arrayidx47 = getelementptr i8, ptr %36, i32 22
  %37 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx47, align 1
  %conv50 = add i8 %38, %32
  %39 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx20, align 1
  %call52 = call i32 @stmpe_reg_write(ptr noundef %1, i8 noundef zeroext %conv50, i8 noundef zeroext %40) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %while.cond.while.end_crit_edge.cleanup_crit_edge, %while.cond.while.end_crit_edge.cleanup_crit_edge99, %while.cond.while.end_crit_edge.cleanup_crit_edge100, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.097, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %cleanup.cleanup56_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup.cleanup56_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup56

cleanup56:                                        ; preds = %cleanup.cleanup56_crit_edge, %for.cond.preheader.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup56_crit_edge ], [ 1, %for.cond.preheader.cleanup56_crit_edge ], [ 1, %cleanup.cleanup56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_init_irq_valid_mask(ptr noundef %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #6
  %norequest_mask = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %norequest_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %norequest_mask, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.preheader.for.inc_crit_edge, label %if.then3

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %valid_mask) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.preheader.for.inc_crit_edge
  %4 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %norequest_mask, align 4
  %and.1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool2.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool2.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then3.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %valid_mask) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %6 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %norequest_mask, align 4
  %and.2 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool2.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool2.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then3.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %valid_mask) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %8 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %norequest_mask, align 4
  %and.3 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool2.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool2.not.3, label %for.inc.2.cleanup_crit_edge, label %if.then3.3

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %valid_mask) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3.3, %for.inc.2.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %norequest_mask = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %norequest_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %norequest_mask, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stmpe1, align 4
  %call3 = tail call i32 @stmpe_set_altfunc(ptr noundef %3, i32 noundef %shl, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %3, i32 17
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %div17 = lshr i32 %offset, 3
  %6 = trunc i32 %div17 to i8
  %conv2 = sub i8 %5, %6
  %call4 = tail call i32 @stmpe_reg_read(ptr noundef %1, i8 noundef zeroext %conv2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  %rem = and i32 %offset, 7
  %7 = xor i32 %call4, -1
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  %retval.0 = select i1 %cmp, i32 %call4, i32 %9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %div5 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div5, 17
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %conv = trunc i32 %shl to i8
  %call2 = tail call i32 @stmpe_set_bits(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %conv, i8 noundef zeroext 0) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %div8 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div8, 17
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %conv = trunc i32 %shl to i8
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1.i = getelementptr inbounds %struct.stmpe_gpio, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %stmpe1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmpe1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  %cond.i = select i1 %tobool.not.i, i32 14, i32 11
  %regs.i = getelementptr inbounds %struct.stmpe, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.i = add nuw nsw i32 %cond.i, %div8
  %arrayidx.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr i8, ptr %9, i32 11
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx3.i, align 1
  %arrayidx6.i = getelementptr i8, ptr %9, i32 14
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.i = icmp eq i8 %13, %15
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select.i = select i1 %tobool.not.i, i8 0, i8 %conv
  %call13.i = tail call i32 @stmpe_set_bits(ptr noundef %7, i8 noundef zeroext %11, i8 noundef zeroext %conv, i8 noundef zeroext %spec.select.i) #6
  br label %stmpe_gpio_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 @stmpe_reg_write(ptr noundef %7, i8 noundef zeroext %11, i8 noundef zeroext %conv) #6
  br label %stmpe_gpio_set.exit

stmpe_gpio_set.exit:                              ; preds = %if.else.i, %if.then.i
  %call2 = tail call i32 @stmpe_set_bits(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %div14 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div14, 8
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %call2 = tail call i32 @stmpe_reg_read(ptr noundef %1, i8 noundef zeroext %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %rem = and i32 %offset, 7
  %6 = lshr i32 %call2, %rem
  %7 = and i32 %6, 1
  %retval.0 = select i1 %cmp, i32 %call2, i32 %7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %stmpe1 = getelementptr inbounds %struct.stmpe_gpio, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmpe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmpe1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, i32 14, i32 11
  %regs = getelementptr inbounds %struct.stmpe, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %div24 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %cond, %div24
  %arrayidx = getelementptr i8, ptr %3, i32 %add
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %conv = trunc i32 %shl to i8
  %arrayidx3 = getelementptr i8, ptr %3, i32 11
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3, align 1
  %arrayidx6 = getelementptr i8, ptr %3, i32 14
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp = icmp eq i8 %7, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %spec.select = select i1 %tobool.not, i8 0, i8 %conv
  %call13 = tail call i32 @stmpe_set_bits(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %conv, i8 noundef zeroext %spec.select) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 @stmpe_reg_write(ptr noundef %1, i8 noundef zeroext %5, i8 noundef zeroext %conv) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_altfunc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_set_bits(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_is_requested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmpe_block_read(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem6 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem6
  %arrayidx2 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 2, i32 %div
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv3 = and i8 %5, %7
  store i8 %conv3, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem6 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem6
  %arrayidx2 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 2, i32 %div
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %6 = trunc i32 %shl to i8
  %conv3 = or i8 %5, %6
  store i8 %conv3, ptr %arrayidx2, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmpe_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div = sdiv i32 %3, 8
  %rem60 = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem60
  %4 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %stmpe = getelementptr inbounds %struct.stmpe_gpio, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %stmpe to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmpe, align 4
  %partnum = getelementptr inbounds %struct.stmpe, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %partnum, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %9, label %if.end9 [
    i32 1, label %if.end.cleanup_crit_edge
    i32 3, label %if.end.cleanup_crit_edge61
  ]

if.end.cleanup_crit_edge61:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %and10 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %regs15 = getelementptr inbounds %struct.stmpe_gpio, ptr %call1, i32 0, i32 5
  %arrayidx17 = getelementptr [3 x i8], ptr %regs15, i32 0, i32 %div
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17, align 1
  %13 = trunc i32 %shl to i8
  %14 = xor i8 %13, -1
  %conv20 = and i8 %12, %14
  %conv14 = or i8 %12, %13
  %conv20.sink = select i1 %tobool11.not, i8 %conv20, i8 %conv14
  store i8 %conv20.sink, ptr %arrayidx17, align 1
  %and22 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %arrayidx35 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 1, i32 %div
  %15 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx35, align 1
  %17 = trunc i32 %shl to i8
  %conv30 = or i8 %16, %17
  %18 = xor i8 %17, -1
  %conv38 = and i8 %16, %18
  %conv30.sink = select i1 %tobool23.not, i8 %conv38, i8 %conv30
  store i8 %conv30.sink, ptr %arrayidx35, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge61, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge61 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_irq_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %irq_lock = getelementptr inbounds %struct.stmpe_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmpe_gpio_irq_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %stmpe2 = getelementptr inbounds %struct.stmpe_gpio, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %stmpe2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stmpe2, align 4
  %num_gpios = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %num_gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_gpios, align 4
  %sub = add i32 %5, 7
  %div = sdiv i32 %sub, 8
  %partnum = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %partnum, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %arrayidx = getelementptr i8, ptr %9, i32 8
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call3 = tail call i32 @stmpe_reg_read(ptr noundef %3, i8 noundef zeroext %11) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %arrayidx5 = getelementptr i8, ptr %13, i32 9
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx5, align 1
  %call6 = tail call i32 @stmpe_reg_read(ptr noundef %3, i8 noundef zeroext %15) #6
  %16 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %partnum, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %17 = phi i32 [ %.pr, %if.then ], [ %7, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub)
  %cmp1666 = icmp sgt i32 %sub, 7
  %regs31 = getelementptr inbounds %struct.stmpe, ptr %3, i32 0, i32 10
  %smax = call i32 @llvm.smax.i32(i32 %div, i32 1)
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %17, label %if.end14 [
    i32 1, label %if.end.for.inc37_crit_edge
    i32 3, label %if.end.for.inc37_crit_edge74
  ]

if.end.for.inc37_crit_edge74:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.end.for.inc37_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.end14:                                         ; preds = %if.end
  br i1 %cmp1666, label %if.end14.for.body17_crit_edge, label %if.end14.for.inc37_crit_edge

if.end14.for.inc37_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

if.end14.for.body17_crit_edge:                    ; preds = %if.end14
  br label %for.body17

for.body17:                                       ; preds = %cleanup.for.body17_crit_edge, %if.end14.for.body17_crit_edge
  %j.067 = phi i32 [ %inc, %cleanup.for.body17_crit_edge ], [ 0, %if.end14.for.body17_crit_edge ]
  %arrayidx19 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 6, i32 0, i32 %j.067
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19, align 1
  %arrayidx22 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 0, i32 %j.067
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %20)
  %cmp24 = icmp eq i8 %22, %20
  br i1 %cmp24, label %for.body17.cleanup_crit_edge, label %if.end27

for.body17.cleanup_crit_edge:                     ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end27:                                         ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx19, align 1
  %24 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs31, align 4
  %arrayidx33 = getelementptr [3 x [3 x i8]], ptr @stmpe_gpio_irq_sync_unlock.regmap, i32 0, i32 0, i32 %j.067
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx33, align 1
  %idxprom = zext i8 %27 to i32
  %arrayidx34 = getelementptr i8, ptr %25, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx34, align 1
  %call35 = tail call i32 @stmpe_reg_write(ptr noundef %3, i8 noundef zeroext %29, i8 noundef zeroext %22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %for.body17.cleanup_crit_edge
  %inc = add nuw nsw i32 %j.067, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %cleanup.for.inc37_crit_edge, label %cleanup.for.body17_crit_edge

cleanup.for.body17_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

cleanup.for.inc37_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37

for.inc37:                                        ; preds = %cleanup.for.inc37_crit_edge, %if.end14.for.inc37_crit_edge, %if.end.for.inc37_crit_edge, %if.end.for.inc37_crit_edge74
  %30 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %partnum, align 4
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %31, label %if.end14.1 [
    i32 1, label %for.inc37.for.inc37.1_crit_edge
    i32 3, label %for.inc37.for.inc37.1_crit_edge75
  ]

for.inc37.for.inc37.1_crit_edge75:                ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.1

for.inc37.for.inc37.1_crit_edge:                  ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.1

if.end14.1:                                       ; preds = %for.inc37
  br i1 %cmp1666, label %if.end14.1.for.body17.1_crit_edge, label %if.end14.1.for.inc37.1_crit_edge

if.end14.1.for.inc37.1_crit_edge:                 ; preds = %if.end14.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.1

if.end14.1.for.body17.1_crit_edge:                ; preds = %if.end14.1
  br label %for.body17.1

for.body17.1:                                     ; preds = %cleanup.1.for.body17.1_crit_edge, %if.end14.1.for.body17.1_crit_edge
  %j.067.1 = phi i32 [ %inc.1, %cleanup.1.for.body17.1_crit_edge ], [ 0, %if.end14.1.for.body17.1_crit_edge ]
  %arrayidx19.1 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 6, i32 1, i32 %j.067.1
  %33 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx19.1, align 1
  %arrayidx22.1 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 1, i32 %j.067.1
  %35 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx22.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %34)
  %cmp24.1 = icmp eq i8 %36, %34
  br i1 %cmp24.1, label %for.body17.1.cleanup.1_crit_edge, label %if.end27.1

for.body17.1.cleanup.1_crit_edge:                 ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.1

if.end27.1:                                       ; preds = %for.body17.1
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx19.1, align 1
  %38 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs31, align 4
  %arrayidx33.1 = getelementptr [3 x [3 x i8]], ptr @stmpe_gpio_irq_sync_unlock.regmap, i32 0, i32 1, i32 %j.067.1
  %40 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx33.1, align 1
  %idxprom.1 = zext i8 %41 to i32
  %arrayidx34.1 = getelementptr i8, ptr %39, i32 %idxprom.1
  %42 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx34.1, align 1
  %call35.1 = tail call i32 @stmpe_reg_write(ptr noundef %3, i8 noundef zeroext %43, i8 noundef zeroext %36) #6
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end27.1, %for.body17.1.cleanup.1_crit_edge
  %inc.1 = add nuw nsw i32 %j.067.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, %smax
  br i1 %exitcond.1.not, label %for.inc37.1thread-pre-split, label %cleanup.1.for.body17.1_crit_edge

cleanup.1.for.body17.1_crit_edge:                 ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.1

for.inc37.1thread-pre-split:                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %partnum to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr73 = load i32, ptr %partnum, align 4
  br label %for.inc37.1

for.inc37.1:                                      ; preds = %for.inc37.1thread-pre-split, %if.end14.1.for.inc37.1_crit_edge, %for.inc37.for.inc37.1_crit_edge, %for.inc37.for.inc37.1_crit_edge75
  %45 = phi i32 [ %.pr73, %for.inc37.1thread-pre-split ], [ %31, %for.inc37.for.inc37.1_crit_edge ], [ %31, %for.inc37.for.inc37.1_crit_edge75 ], [ %31, %if.end14.1.for.inc37.1_crit_edge ]
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %45, label %if.end14.2 [
    i32 1, label %for.inc37.1.land.lhs.true.2_crit_edge
    i32 3, label %for.inc37.1.land.lhs.true.2_crit_edge76
  ]

for.inc37.1.land.lhs.true.2_crit_edge76:          ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

for.inc37.1.land.lhs.true.2_crit_edge:            ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.2

land.lhs.true.2:                                  ; preds = %for.inc37.1.land.lhs.true.2_crit_edge, %for.inc37.1.land.lhs.true.2_crit_edge76
  br i1 %cmp1666, label %land.lhs.true.2.for.body17.2.preheader_crit_edge, label %land.lhs.true.2.for.inc37.2_crit_edge

land.lhs.true.2.for.inc37.2_crit_edge:            ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.2

land.lhs.true.2.for.body17.2.preheader_crit_edge: ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.2.preheader

if.end14.2:                                       ; preds = %for.inc37.1
  br i1 %cmp1666, label %if.end14.2.for.body17.2.preheader_crit_edge, label %if.end14.2.for.inc37.2_crit_edge

if.end14.2.for.inc37.2_crit_edge:                 ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.2

if.end14.2.for.body17.2.preheader_crit_edge:      ; preds = %if.end14.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.2.preheader

for.body17.2.preheader:                           ; preds = %if.end14.2.for.body17.2.preheader_crit_edge, %land.lhs.true.2.for.body17.2.preheader_crit_edge
  br label %for.body17.2

for.body17.2:                                     ; preds = %cleanup.2.for.body17.2_crit_edge, %for.body17.2.preheader
  %j.067.2 = phi i32 [ %inc.2, %cleanup.2.for.body17.2_crit_edge ], [ 0, %for.body17.2.preheader ]
  %arrayidx19.2 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 6, i32 2, i32 %j.067.2
  %47 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx19.2, align 1
  %arrayidx22.2 = getelementptr %struct.stmpe_gpio, ptr %call1, i32 0, i32 5, i32 2, i32 %j.067.2
  %49 = ptrtoint ptr %arrayidx22.2 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx22.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %50, i8 %48)
  %cmp24.2 = icmp eq i8 %50, %48
  br i1 %cmp24.2, label %for.body17.2.cleanup.2_crit_edge, label %if.end27.2

for.body17.2.cleanup.2_crit_edge:                 ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.2

if.end27.2:                                       ; preds = %for.body17.2
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx19.2, align 1
  %52 = ptrtoint ptr %regs31 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs31, align 4
  %arrayidx33.2 = getelementptr [3 x [3 x i8]], ptr @stmpe_gpio_irq_sync_unlock.regmap, i32 0, i32 2, i32 %j.067.2
  %54 = ptrtoint ptr %arrayidx33.2 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx33.2, align 1
  %idxprom.2 = zext i8 %55 to i32
  %arrayidx34.2 = getelementptr i8, ptr %53, i32 %idxprom.2
  %56 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx34.2, align 1
  %call35.2 = tail call i32 @stmpe_reg_write(ptr noundef %3, i8 noundef zeroext %57, i8 noundef zeroext %50) #6
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end27.2, %for.body17.2.cleanup.2_crit_edge
  %inc.2 = add nuw nsw i32 %j.067.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, %smax
  br i1 %exitcond.2.not, label %cleanup.2.for.inc37.2_crit_edge, label %cleanup.2.for.body17.2_crit_edge

cleanup.2.for.body17.2_crit_edge:                 ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.2

cleanup.2.for.inc37.2_crit_edge:                  ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc37.2

for.inc37.2:                                      ; preds = %cleanup.2.for.inc37.2_crit_edge, %if.end14.2.for.inc37.2_crit_edge, %land.lhs.true.2.for.inc37.2_crit_edge
  %irq_lock = getelementptr inbounds %struct.stmpe_gpio, ptr %call1, i32 0, i32 3
  tail call void @mutex_unlock(ptr noundef %irq_lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_gpio_stmpe__227_540_stmpe_gpio_init4, !1, !"__initcall__kmod_gpio_stmpe__227_540_stmpe_gpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-stmpe.c", i32 540, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-stmpe.c", i32 531, i32 13}
!4 = !{ptr @stmpe_gpio_driver, !5, !"stmpe_gpio_driver", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-stmpe.c", i32 528, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-stmpe.c", i32 465, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @stmpe_gpio_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @stmpe_gpio_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @stmpe_gpio_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-stmpe.c", i32 473, i32 2}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-stmpe.c", i32 485, i32 27}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-stmpe.c", i32 490, i32 3}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stmpe_gpio_probe._entry.8, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @stmpe_gpio_probe._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-stmpe.c", i32 509, i32 4}
!26 = !{ptr @stmpe_gpio_probe._entry.12, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @stmpe_gpio_probe._entry_ptr.14, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @stmpe_gpio_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-stmpe.c", i32 525, i32 9}
!30 = !{ptr @stmpe_gpio_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-stmpe.c", i32 129, i32 13}
!33 = !{ptr @template_chip, !34, !"template_chip", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-stmpe.c", i32 128, i32 31}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-stmpe.c", i32 270, i32 17}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-stmpe.c", i32 271, i32 22}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-stmpe.c", i32 272, i32 13}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-stmpe.c", i32 272, i32 20}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-stmpe.c", i32 280, i32 4}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-stmpe.c", i32 281, i32 4}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-stmpe.c", i32 282, i32 4}
!49 = !{ptr @stmpe_dbg_show_one.edge_det_values, !50, !"edge_det_values", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-stmpe.c", i32 279, i32 29}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-stmpe.c", i32 285, i32 4}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-stmpe.c", i32 286, i32 4}
!55 = !{ptr @stmpe_dbg_show_one.rise_values, !56, !"rise_values", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-stmpe.c", i32 284, i32 29}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-stmpe.c", i32 290, i32 4}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-stmpe.c", i32 291, i32 4}
!61 = !{ptr @stmpe_dbg_show_one.fall_values, !62, !"fall_values", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-stmpe.c", i32 289, i32 29}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-stmpe.c", i32 339, i32 17}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-stmpe.c", i32 343, i32 15}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-stmpe.c", i32 343, i32 31}
!69 = !{ptr @stmpe_gpio_irq_chip, !70, !"stmpe_gpio_irq_chip", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-stmpe.c", i32 360, i32 24}
!71 = !{ptr @stmpe_gpio_irq_sync_unlock.regmap, !72, !"regmap", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-stmpe.c", i32 183, i32 18}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{!"auto-init"}
!83 = !{i32 0, i32 33}
