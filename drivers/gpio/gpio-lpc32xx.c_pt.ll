; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-lpc32xx.c_pt.bc'
source_filename = "../drivers/gpio/gpio-lpc32xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lpc32xx_gpio_chip = type { %struct.gpio_chip, ptr, ptr }
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
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.gpio_regs = type { i32, i32, i32, i32, i32, i32 }
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_gpio_lpc32xx__223_543_lpc32xx_gpio_driver_init6 = internal global ptr @lpc32xx_gpio_driver_init, section ".initcall6.init", align 4
@lpc32xx_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc32xx_gpio_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc32xx_gpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc32xx_gpio_driver_exit = internal global ptr @lpc32xx_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [54 x i8] c"gpio_lpc32xx.author=Kevin Wells <kevin.wells@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file225 = internal constant [44 x i8] c"gpio_lpc32xx.file=drivers/gpio/gpio-lpc32xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license226 = internal constant [25 x i8] c"gpio_lpc32xx.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [53 x i8] c"gpio_lpc32xx.description=GPIO driver for LPC32xx SoC\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc32xx-gpio\00", [19 x i8] zeroinitializer }, align 32
@lpc32xx_gpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc3220-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc32xx_gpiochip = internal global { [6 x %struct.lpc32xx_gpio_chip], [520 x i8] } { [6 x %struct.lpc32xx_gpio_chip] [%struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr @lpc32xx_gpio_dir_input_p012, ptr @lpc32xx_gpio_dir_output_p012, ptr @lpc32xx_gpio_get_value_p012, ptr null, ptr @lpc32xx_gpio_set_value_p012, ptr null, ptr null, ptr @lpc32xx_gpio_to_irq_p01, ptr null, ptr null, ptr null, i32 0, i16 8, i16 0, ptr @gpio_p0_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p0, ptr null }, %struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.2, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr @lpc32xx_gpio_dir_input_p012, ptr @lpc32xx_gpio_dir_output_p012, ptr @lpc32xx_gpio_get_value_p012, ptr null, ptr @lpc32xx_gpio_set_value_p012, ptr null, ptr null, ptr @lpc32xx_gpio_to_irq_p01, ptr null, ptr null, ptr null, i32 8, i16 24, i16 0, ptr @gpio_p1_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p1, ptr null }, %struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.3, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr @lpc32xx_gpio_dir_input_p012, ptr @lpc32xx_gpio_dir_output_p012, ptr @lpc32xx_gpio_get_value_p012, ptr null, ptr @lpc32xx_gpio_set_value_p012, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 32, i16 13, i16 0, ptr @gpio_p2_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p2, ptr null }, %struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr @lpc32xx_gpio_dir_input_p3, ptr @lpc32xx_gpio_dir_output_p3, ptr @lpc32xx_gpio_get_value_p3, ptr null, ptr @lpc32xx_gpio_set_value_p3, ptr null, ptr null, ptr @lpc32xx_gpio_to_irq_gpio_p3, ptr null, ptr null, ptr null, i32 45, i16 6, i16 0, ptr @gpio_p3_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p3, ptr null }, %struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr @lpc32xx_gpio_dir_in_always, ptr null, ptr @lpc32xx_gpi_get_value, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_to_irq_gpi_p3, ptr null, ptr null, ptr null, i32 51, i16 29, i16 0, ptr @gpi_p3_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p3, ptr null }, %struct.lpc32xx_gpio_chip { %struct.gpio_chip { ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_request, ptr null, ptr null, ptr null, ptr @lpc32xx_gpio_dir_out_always, ptr @lpc32xx_gpo_get_value, ptr null, ptr @lpc32xx_gpo_set_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 80, i16 24, i16 0, ptr @gpo_p3_names, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, ptr @gpio_grp_regs_p3, ptr null }], [520 x i8] zeroinitializer }, align 32
@lpc32xx_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpc32xx_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_p0\00", [24 x i8] zeroinitializer }, align 32
@gpio_p0_names = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [32 x i8] zeroinitializer }, align 32
@gpio_grp_regs_p0 = internal global { %struct.gpio_regs, [40 x i8] } { %struct.gpio_regs { i32 64, i32 0, i32 68, i32 72, i32 80, i32 84 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_p1\00", [24 x i8] zeroinitializer }, align 32
@gpio_p1_names = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], [32 x i8] zeroinitializer }, align 32
@gpio_grp_regs_p1 = internal global { %struct.gpio_regs, [40 x i8] } { %struct.gpio_regs { i32 96, i32 0, i32 100, i32 104, i32 112, i32 116 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_p2\00", [24 x i8] zeroinitializer }, align 32
@gpio_p2_names = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [44 x i8] zeroinitializer }, align 32
@gpio_grp_regs_p2 = internal global { %struct.gpio_regs, [40 x i8] } { %struct.gpio_regs { i32 28, i32 0, i32 32, i32 36, i32 16, i32 20 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gpio_p3\00", [24 x i8] zeroinitializer }, align 32
@gpio_p3_names = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [40 x i8] zeroinitializer }, align 32
@gpio_grp_regs_p3 = internal global { %struct.gpio_regs, [40 x i8] } { %struct.gpio_regs { i32 0, i32 12, i32 4, i32 8, i32 16, i32 20 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpi_p3\00", [25 x i8] zeroinitializer }, align 32
@gpi_p3_names = internal global { [29 x ptr], [44 x i8] } { [29 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpo_p3\00", [25 x i8] zeroinitializer }, align 32
@gpo_p3_names = internal global { [24 x ptr], [32 x i8] } { [24 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.0\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.1\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.2\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.3\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.4\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.5\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.6\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p0.7\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.0\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.1\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.2\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.3\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.4\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.5\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.6\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.7\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.8\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p1.9\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.10\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.11\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.12\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.13\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.14\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.15\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.16\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.17\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.18\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.19\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.20\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.21\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.22\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p1.23\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.0\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.1\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.2\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.3\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.4\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.5\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.6\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.7\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.8\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p2.9\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2.10\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2.11\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"p2.12\00", [26 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio00\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio01\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio02\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio03\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio04\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio05\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi00\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi01\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi02\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi03\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi04\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi05\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi06\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi07\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi08\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi09\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi15\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi16\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi17\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi18\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi19\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi20\00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi21\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi22\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi23\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi24\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi25\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi26\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi27\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpi28\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo00\00", [26 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo01\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo02\00", [26 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo03\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo04\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo05\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo06\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo07\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo08\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo09\00", [26 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo10\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo11\00", [26 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo12\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo13\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo14\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo15\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo16\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo17\00", [26 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo18\00", [26 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo19\00", [26 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo20\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo21\00", [26 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo22\00", [26 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpo23\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"lpc32xx_gpio_driver\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 535, i32 31 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 537, i32 11 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"lpc32xx_gpio_of_match\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 529, i32 34 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"lpc32xx_gpiochip\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 397, i32 33 }
@___asan_gen_.118 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 521, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 400, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant [14 x i8] c"gpio_p0_names\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 83, i32 20 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"gpio_grp_regs_p0\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 129, i32 25 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 416, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"gpio_p1_names\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 88, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"gpio_grp_regs_p1\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 137, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 432, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"gpio_p2_names\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 97, i32 20 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"gpio_grp_regs_p2\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 145, i32 25 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 447, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"gpio_p3_names\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 104, i32 20 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"gpio_grp_regs_p3\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 153, i32 25 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 463, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant [13 x i8] c"gpi_p3_names\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 109, i32 20 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 477, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant [13 x i8] c"gpo_p3_names\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 120, i32 20 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 84, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 84, i32 10 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 84, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 84, i32 26 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 85, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 85, i32 10 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 85, i32 18 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 85, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 89, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 89, i32 10 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 89, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 89, i32 26 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 90, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 90, i32 10 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 90, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 90, i32 26 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 91, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 91, i32 10 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 91, i32 18 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 91, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 92, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 92, i32 11 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 92, i32 20 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 92, i32 29 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 93, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 93, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 93, i32 20 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 93, i32 29 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 94, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 94, i32 11 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 94, i32 20 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 94, i32 29 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 98, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 98, i32 10 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 98, i32 18 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 98, i32 26 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 99, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 99, i32 10 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 99, i32 18 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 99, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 100, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 100, i32 10 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 100, i32 18 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 100, i32 27 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 101, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 105, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 105, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 105, i32 22 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 105, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 106, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 106, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 110, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 110, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 110, i32 20 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 110, i32 29 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 111, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 111, i32 11 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 111, i32 20 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 111, i32 29 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 112, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 112, i32 11 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 113, i32 29 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 114, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 114, i32 11 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 114, i32 20 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 114, i32 29 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 115, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 115, i32 11 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 115, i32 20 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 115, i32 29 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 116, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 116, i32 11 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 116, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 116, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 117, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 121, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 121, i32 11 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 121, i32 20 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 121, i32 29 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 122, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 122, i32 11 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 122, i32 20 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 122, i32 29 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 123, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 123, i32 11 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 123, i32 20 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 123, i32 29 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 124, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 124, i32 11 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 124, i32 20 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 124, i32 29 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 125, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 125, i32 11 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 125, i32 20 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 125, i32 29 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 126, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 126, i32 11 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 126, i32 20 }
@___asan_gen_.466 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.467 = private constant [31 x i8] c"../drivers/gpio/gpio-lpc32xx.c\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.467, i32 126, i32 29 }
@llvm.compiler.used = appending global [128 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file225, ptr @__UNIQUE_ID_license226, ptr @__exitcall_lpc32xx_gpio_driver_exit, ptr @__initcall__kmod_gpio_lpc32xx__223_543_lpc32xx_gpio_driver_init6, ptr @lpc32xx_gpio_driver_exit, ptr @lpc32xx_gpio_driver, ptr @.str, ptr @lpc32xx_gpio_of_match, ptr @lpc32xx_gpiochip, ptr @lpc32xx_gpio_probe.lock_key, ptr @lpc32xx_gpio_probe.request_key, ptr @.str.1, ptr @gpio_p0_names, ptr @gpio_grp_regs_p0, ptr @.str.2, ptr @gpio_p1_names, ptr @gpio_grp_regs_p1, ptr @.str.3, ptr @gpio_p2_names, ptr @gpio_grp_regs_p2, ptr @.str.4, ptr @gpio_p3_names, ptr @gpio_grp_regs_p3, ptr @.str.5, ptr @gpi_p3_names, ptr @.str.6, ptr @gpo_p3_names, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105], section "llvm.metadata"
@0 = internal global [121 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_gpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_gpiochip to i32), i32 2136, i32 2656, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc32xx_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_p0_names to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_grp_regs_p0 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_p1_names to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_grp_regs_p1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_p2_names to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_grp_regs_p2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_p3_names to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_grp_regs_p3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpi_p3_names to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpo_p3_names to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc32xx_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc32xx_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 0, i32 0, i32 2), align 4
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.cond.preheader.if.end11_crit_edge, label %if.then4

for.cond.preheader.if.end11_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.then4:                                         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 0, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 0, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 0, i32 2), align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %for.cond.preheader.if.end11_crit_edge
  %call16 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull @lpc32xx_gpiochip, ptr noundef nonnull @lpc32xx_gpiochip, ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1, i32 0, i32 2), align 4
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %if.end11.if.end11.1_crit_edge, label %if.then4.1

if.end11.if.end11.1_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.1

if.then4.1:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1, i32 2), align 4
  br label %if.end11.1

if.end11.1:                                       ; preds = %if.then4.1, %if.end11.if.end11.1_crit_edge
  %call16.1 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1), ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 1), ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2, i32 0, i32 2), align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not.2 = icmp eq ptr %6, null
  br i1 %tobool.not.2, label %if.end11.1.if.end11.2_crit_edge, label %if.then4.2

if.end11.1.if.end11.2_crit_edge:                  ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.2

if.then4.2:                                       ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2, i32 2), align 4
  br label %if.end11.2

if.end11.2:                                       ; preds = %if.then4.2, %if.end11.1.if.end11.2_crit_edge
  %call16.2 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2), ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 2), ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3, i32 0, i32 2), align 4
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool.not.3 = icmp eq ptr %8, null
  br i1 %tobool.not.3, label %if.end11.2.if.end11.3_crit_edge, label %if.then4.3

if.end11.2.if.end11.3_crit_edge:                  ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.3

if.then4.3:                                       ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3, i32 2), align 4
  br label %if.end11.3

if.end11.3:                                       ; preds = %if.then4.3, %if.end11.2.if.end11.3_crit_edge
  %call16.3 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3), ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 3), ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4, i32 0, i32 2), align 4
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool.not.4 = icmp eq ptr %10, null
  br i1 %tobool.not.4, label %if.end11.3.if.end11.4_crit_edge, label %if.then4.4

if.end11.3.if.end11.4_crit_edge:                  ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.4

if.then4.4:                                       ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4, i32 2), align 4
  br label %if.end11.4

if.end11.4:                                       ; preds = %if.then4.4, %if.end11.3.if.end11.4_crit_edge
  %call16.4 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4), ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 4), ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  store ptr %dev, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5, i32 0, i32 2), align 4
  %11 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node, align 8
  %tobool.not.5 = icmp eq ptr %12, null
  br i1 %tobool.not.5, label %if.end11.4.if.end11.5_crit_edge, label %if.then4.5

if.end11.4.if.end11.5_crit_edge:                  ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11.5

if.then4.5:                                       ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #8
  store ptr @lpc32xx_of_xlate, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5, i32 0, i32 41), align 4
  store i32 3, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5, i32 0, i32 40), align 4
  store ptr %call, ptr getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5, i32 2), align 4
  br label %if.end11.5

if.end11.5:                                       ; preds = %if.then4.5, %if.end11.4.if.end11.5_crit_edge
  %call16.5 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5), ptr noundef getelementptr inbounds ([6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 5), ptr noundef nonnull @lpc32xx_gpio_probe.lock_key, ptr noundef nonnull @lpc32xx_gpio_probe.request_key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11.5, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end11.5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_of_xlate(ptr noundef readnone %gc, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp = icmp ult i32 %1, 6
  %arrayidx1 = getelementptr [6 x %struct.lpc32xx_gpio_chip], ptr @lpc32xx_gpiochip, i32 0, i32 %1
  %cmp2.not = icmp eq ptr %arrayidx1, %gc
  %or.cond = and i1 %cmp, %cmp2.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx5 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx5, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %arrayidx8 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_gpio_request(ptr nocapture noundef readonly %chip, i32 noundef %pin) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp = icmp ugt i32 %conv, %pin
  %. = select i1 %cmp, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_input_p012(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %shl1.i = shl nuw i32 1, %pin
  %gpio_grp2.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp2.i, align 4
  %dir_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dir_clr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir_clr.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl1.i) #6, !srcloc !260
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_output_p012(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %pin
  %gpio_grp2.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp2.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpio_level_p012.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i7.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpio_level_p012.exit

__set_gpio_level_p012.exit:                       ; preds = %if.else.i, %if.then.i
  %10 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_grp2.i, align 4
  %dir_set.i = getelementptr inbounds %struct.gpio_regs, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dir_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir_set.i, align 4
  %reg_base.i7.i5 = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %reg_base.i7.i5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i7.i5, align 4
  %add.ptr.i8.i6 = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i6, i32 %shl1.i) #6, !srcloc !260
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_get_value_p012(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %gpio_grp.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !261
  %7 = lshr i32 %6, %pin
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_gpio_set_value_p012(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %pin
  %gpio_grp2.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp2.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpio_level_p012.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i7.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpio_level_p012.exit

__set_gpio_level_p012.exit:                       ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_gpio_to_irq_p01(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_input_p3(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %add.i = add i32 %pin, 25
  %shl.i = shl nuw i32 1, %add.i
  %gpio_grp1.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp1.i, align 4
  %dir_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dir_clr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir_clr.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i) #6, !srcloc !260
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_output_p3(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %add.i = add i32 %pin, 25
  %shl.i = shl nuw i32 1, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %gpio_grp1.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp1.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i) #6, !srcloc !260
  br label %__set_gpio_level_p3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i6.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %shl.i) #6, !srcloc !260
  br label %__set_gpio_level_p3.exit

__set_gpio_level_p3.exit:                         ; preds = %if.else.i, %if.then.i
  %10 = ptrtoint ptr %gpio_grp1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_grp1.i, align 4
  %dir_set.i = getelementptr inbounds %struct.gpio_regs, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %dir_set.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir_set.i, align 4
  %reg_base.i6.i6 = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %14 = ptrtoint ptr %reg_base.i6.i6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %reg_base.i6.i6, align 4
  %add.ptr.i7.i7 = getelementptr i8, ptr %15, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i7, i32 %shl.i) #6, !srcloc !260
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_get_value_p3(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %gpio_grp.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !261
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %pin)
  %cmp.i = icmp eq i32 %pin, 5
  %add.i = add i32 %pin, 10
  %add.i.op = shl nuw i32 1, %add.i
  %7 = select i1 %cmp.i, i32 16777216, i32 %add.i.op
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool = icmp ne i32 %8, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_gpio_set_value_p3(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %add.i = add i32 %pin, 25
  %shl.i = shl nuw i32 1, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %gpio_grp1.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp1.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl.i) #6, !srcloc !260
  br label %__set_gpio_level_p3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i6.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i6.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %shl.i) #6, !srcloc !260
  br label %__set_gpio_level_p3.exit

__set_gpio_level_p3.exit:                         ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_gpio_to_irq_gpio_p3(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_in_always(ptr nocapture noundef readnone %chip, i32 noundef %pin) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpi_get_value(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %gpio_grp.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !261
  %7 = lshr i32 %6, %pin
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @lpc32xx_gpio_to_irq_gpi_p3(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpio_dir_out_always(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %pin
  %gpio_grp2.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp2.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpo_level_p3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i7.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpo_level_p3.exit

__set_gpo_level_p3.exit:                          ; preds = %if.else.i, %if.then.i
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc32xx_gpo_get_value(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %gpio_grp.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp.i, align 4
  %outp_state.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %outp_state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_state.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !261
  %7 = lshr i32 %6, %pin
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc32xx_gpo_set_value(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %pin
  %gpio_grp2.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %gpio_grp2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpio_grp2.i, align 4
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_set.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %outp_set.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %outp_set.i, align 4
  %reg_base.i.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %reg_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpo_level_p3.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %outp_clr.i = getelementptr inbounds %struct.gpio_regs, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %outp_clr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %outp_clr.i, align 4
  %reg_base.i7.i = getelementptr inbounds %struct.lpc32xx_gpio_chip, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %reg_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i7.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %shl1.i) #6, !srcloc !260
  br label %__set_gpo_level_p3.exit

__set_gpo_level_p3.exit:                          ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 121)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @__initcall__kmod_gpio_lpc32xx__223_543_lpc32xx_gpio_driver_init6, !1, !"__initcall__kmod_gpio_lpc32xx__223_543_lpc32xx_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 543, i32 1}
!2 = !{ptr @__exitcall_lpc32xx_gpio_driver_exit, !1, !"__exitcall_lpc32xx_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 545, i32 1}
!5 = !{ptr @__UNIQUE_ID_file225, !6, !"__UNIQUE_ID_file225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 546, i32 1}
!7 = !{ptr @__UNIQUE_ID_license226, !6, !"__UNIQUE_ID_license226", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description227, !9, !"__UNIQUE_ID_description227", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 547, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 537, i32 11}
!12 = !{ptr @lpc32xx_gpio_driver, !13, !"lpc32xx_gpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 535, i32 31}
!14 = !{ptr @lpc32xx_gpio_probe.lock_key, !15, !"lock_key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 521, i32 3}
!16 = !{ptr @lpc32xx_gpio_probe.request_key, !15, !"request_key", i1 false, i1 false}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 400, i32 15}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 416, i32 15}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 432, i32 15}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 447, i32 15}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 463, i32 15}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 477, i32 15}
!29 = !{ptr @lpc32xx_gpiochip, !30, !"lpc32xx_gpiochip", i1 false, i1 false}
!30 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 397, i32 33}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 84, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 84, i32 10}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 84, i32 18}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 84, i32 26}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 85, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 85, i32 10}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 85, i32 18}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 85, i32 26}
!47 = !{ptr @gpio_p0_names, !48, !"gpio_p0_names", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 83, i32 20}
!49 = !{ptr @gpio_grp_regs_p0, !50, !"gpio_grp_regs_p0", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 129, i32 25}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 89, i32 2}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 89, i32 10}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 89, i32 18}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 89, i32 26}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 90, i32 2}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 90, i32 10}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 90, i32 18}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 90, i32 26}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 91, i32 2}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 91, i32 10}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 91, i32 18}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 91, i32 27}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 92, i32 2}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 92, i32 11}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 92, i32 20}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 92, i32 29}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 93, i32 2}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 93, i32 11}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 93, i32 20}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 93, i32 29}
!91 = !{ptr @.str.35, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 94, i32 2}
!93 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 94, i32 11}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 94, i32 20}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 94, i32 29}
!99 = !{ptr @gpio_p1_names, !100, !"gpio_p1_names", i1 false, i1 false}
!100 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 88, i32 20}
!101 = !{ptr @gpio_grp_regs_p1, !102, !"gpio_grp_regs_p1", i1 false, i1 false}
!102 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 137, i32 25}
!103 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 98, i32 2}
!105 = !{ptr @.str.40, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 98, i32 10}
!107 = !{ptr @.str.41, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 98, i32 18}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 98, i32 26}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 99, i32 2}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 99, i32 10}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 99, i32 18}
!117 = !{ptr @.str.46, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 99, i32 26}
!119 = !{ptr @.str.47, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 100, i32 2}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 100, i32 10}
!123 = !{ptr @.str.49, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 100, i32 18}
!125 = !{ptr @.str.50, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 100, i32 27}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 101, i32 2}
!129 = !{ptr @gpio_p2_names, !130, !"gpio_p2_names", i1 false, i1 false}
!130 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 97, i32 20}
!131 = !{ptr @gpio_grp_regs_p2, !132, !"gpio_grp_regs_p2", i1 false, i1 false}
!132 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 145, i32 25}
!133 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 105, i32 2}
!135 = !{ptr @.str.53, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 105, i32 12}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 105, i32 22}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 105, i32 32}
!141 = !{ptr @.str.56, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 106, i32 2}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 106, i32 12}
!145 = !{ptr @gpio_p3_names, !146, !"gpio_p3_names", i1 false, i1 false}
!146 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 104, i32 20}
!147 = !{ptr @gpio_grp_regs_p3, !148, !"gpio_grp_regs_p3", i1 false, i1 false}
!148 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 153, i32 25}
!149 = !{ptr @.str.58, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 110, i32 2}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 110, i32 11}
!153 = !{ptr @.str.60, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 110, i32 20}
!155 = !{ptr @.str.61, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 110, i32 29}
!157 = !{ptr @.str.62, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 111, i32 2}
!159 = !{ptr @.str.63, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 111, i32 11}
!161 = !{ptr @.str.64, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 111, i32 20}
!163 = !{ptr @.str.65, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 111, i32 29}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 112, i32 2}
!167 = !{ptr @.str.67, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 112, i32 11}
!169 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 113, i32 29}
!171 = !{ptr @.str.69, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 114, i32 2}
!173 = !{ptr @.str.70, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 114, i32 11}
!175 = !{ptr @.str.71, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 114, i32 20}
!177 = !{ptr @.str.72, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 114, i32 29}
!179 = !{ptr @.str.73, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 115, i32 2}
!181 = !{ptr @.str.74, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 115, i32 11}
!183 = !{ptr @.str.75, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 115, i32 20}
!185 = !{ptr @.str.76, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 115, i32 29}
!187 = !{ptr @.str.77, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 116, i32 2}
!189 = !{ptr @.str.78, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 116, i32 11}
!191 = !{ptr @.str.79, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 116, i32 20}
!193 = !{ptr @.str.80, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 116, i32 29}
!195 = !{ptr @.str.81, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 117, i32 2}
!197 = !{ptr @gpi_p3_names, !198, !"gpi_p3_names", i1 false, i1 false}
!198 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 109, i32 20}
!199 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 121, i32 2}
!201 = !{ptr @.str.83, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 121, i32 11}
!203 = !{ptr @.str.84, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 121, i32 20}
!205 = !{ptr @.str.85, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 121, i32 29}
!207 = !{ptr @.str.86, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 122, i32 2}
!209 = !{ptr @.str.87, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 122, i32 11}
!211 = !{ptr @.str.88, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 122, i32 20}
!213 = !{ptr @.str.89, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 122, i32 29}
!215 = !{ptr @.str.90, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 123, i32 2}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 123, i32 11}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 123, i32 20}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 123, i32 29}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 124, i32 2}
!225 = !{ptr @.str.95, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 124, i32 11}
!227 = !{ptr @.str.96, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 124, i32 20}
!229 = !{ptr @.str.97, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 124, i32 29}
!231 = !{ptr @.str.98, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 125, i32 2}
!233 = !{ptr @.str.99, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 125, i32 11}
!235 = !{ptr @.str.100, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 125, i32 20}
!237 = !{ptr @.str.101, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 125, i32 29}
!239 = !{ptr @.str.102, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 126, i32 2}
!241 = !{ptr @.str.103, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 126, i32 11}
!243 = !{ptr @.str.104, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 126, i32 20}
!245 = !{ptr @.str.105, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 126, i32 29}
!247 = !{ptr @gpo_p3_names, !248, !"gpo_p3_names", i1 false, i1 false}
!248 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 120, i32 20}
!249 = !{ptr @lpc32xx_gpio_of_match, !250, !"lpc32xx_gpio_of_match", i1 false, i1 false}
!250 = !{!"../drivers/gpio/gpio-lpc32xx.c", i32 529, i32 34}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{i64 1258507}
!261 = !{i64 1258925}
