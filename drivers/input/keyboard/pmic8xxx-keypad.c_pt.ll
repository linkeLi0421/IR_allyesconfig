; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/pmic8xxx-keypad.c_pt.bc'
source_filename = "../drivers/input/keyboard/pmic8xxx-keypad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.pmic8xxx_kp = type { i32, i32, ptr, ptr, i32, i32, [144 x i16], ptr, [18 x i16], [18 x i16], i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_pmic8xxx_keypad__231_684_pmic8xxx_kp_driver_init6 = internal global ptr @pmic8xxx_kp_driver_init, section ".initcall6.init", align 4
@pmic8xxx_kp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pmic8xxx_kp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_kp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pmic8xxx_kp_driver_exit = internal global ptr @pmic8xxx_kp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file232 = internal constant [60 x i8] c"pmic8xxx_keypad.file=drivers/input/keyboard/pmic8xxx-keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [31 x i8] c"pmic8xxx_keypad.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [51 x i8] c"pmic8xxx_keypad.description=PMIC8XXX keypad driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [47 x i8] c"pmic8xxx_keypad.alias=platform:pmic8xxx_keypad\00", section ".modinfo", align 1
@__UNIQUE_ID_author236 = internal constant [58 x i8] c"pmic8xxx_keypad.author=Trilok Soni <tsoni@codeaurora.org>\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pm8xxx-keypad\00", [18 x i8] zeroinitializer }, align 32
@pm8xxx_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-keypad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@pm8xxx_kp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pmic8xxx_kp_suspend, ptr @pmic8xxx_kp_resume, ptr @pmic8xxx_kp_suspend, ptr @pmic8xxx_kp_resume, ptr @pmic8xxx_kp_suspend, ptr @pmic8xxx_kp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 516, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid platform data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic8xxx_kp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/input/keyboard/pmic8xxx-keypad.c\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr = internal global ptr @pmic8xxx_kp_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"linux,input-no-autorepeat\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"linux,keypad-wakeup\00", [44 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 542, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.11 = internal global ptr @pmic8xxx_kp_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PMIC8XXX keypad\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmic8xxx_keypad/input0\00", [41 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 569, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to build keymap\0A\00", [40 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.16 = internal global ptr @pmic8xxx_kp_probe._entry.14, section ".printk_index", align 4
@pmic8xxx_kp_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 585, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to initialize keypad controller\0A\00", [56 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.19 = internal global ptr @pmic8xxx_kp_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmic-keypad\00", [20 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request keypad sense irq\0A\00", [60 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.23 = internal global ptr @pmic8xxx_kp_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic-keypad-stuck\00", [46 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 601, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to request keypad stuck irq\0A\00", [60 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.27 = internal global ptr @pmic8xxx_kp_probe._entry.25, section ".printk_index", align 4
@pmic8xxx_kp_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 607, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read KEYP_CTRL register\0A\00", [61 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.30 = internal global ptr @pmic8xxx_kp_probe._entry.28, section ".printk_index", align 4
@pmic8xxx_kp_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"unable to register keypad input device\0A\00", [56 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_probe._entry_ptr.33 = internal global ptr @pmic8xxx_kp_probe._entry.31, section ".printk_index", align 4
@pmic8xxx_kp_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 458, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error writing KEYP_CTRL reg, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pmic8xxx_kp_enable\00", [45 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_enable._entry_ptr = internal global ptr @pmic8xxx_kp_enable._entry, section ".printk_index", align 4
@pmic8xxx_kpd_init.row_bits = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\00\01\02\03\04\04\05\05\06\06\06\07\07\07", [18 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.36, ptr @.str.3, i32 397, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic8xxx_kpd_init\00", [46 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry_ptr = internal global ptr @pmic8xxx_kpd_init._entry, section ".printk_index", align 4
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scan-delay\00", [21 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.3, i32 406, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"invalid keypad scan time supplied\0A\00", [61 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry_ptr.40 = internal global ptr @pmic8xxx_kpd_init._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"row-hold\00", [23 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.36, ptr @.str.3, i32 416, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"invalid keypad row hold time supplied\0A\00", [57 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry_ptr.44 = internal global ptr @pmic8xxx_kpd_init._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"debounce\00", [23 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.3, i32 426, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid debounce time supplied\0A\00", [32 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry_ptr.48 = internal global ptr @pmic8xxx_kpd_init._entry.46, section ".printk_index", align 4
@pmic8xxx_kpd_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error writing KEYP_SCAN reg, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@pmic8xxx_kpd_init._entry_ptr.51 = internal global ptr @pmic8xxx_kpd_init._entry.49, section ".printk_index", align 4
@pmic8xxx_kp_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to read keyp_ctrl register\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmic8xxx_kp_irq\00", [16 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_irq._entry_ptr = internal global ptr @pmic8xxx_kp_irq._entry, section ".printk_index", align 4
@pmic8xxx_kp_irq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.3, i32 361, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to scan matrix\0A\00", [41 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_irq._entry_ptr.56 = internal global ptr @pmic8xxx_kp_irq._entry.54, section ".printk_index", align 4
@pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.58, ptr @.str.3, ptr @.str.59, i8 0, i8 75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pmic8xxx_keypad\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pmic8xxx_kp_scan_matrix\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Some key events were lost\0A\00", [37 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_read_matrix._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 189, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error reading KEYP_OLD_DATA, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pmic8xxx_kp_read_matrix\00", [40 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_read_matrix._entry_ptr = internal global ptr @pmic8xxx_kp_read_matrix._entry, section ".printk_index", align 4
@pmic8xxx_kp_read_matrix._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error reading KEYP_RECENT_DATA, rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_read_matrix._entry_ptr.64 = internal global ptr @pmic8xxx_kp_read_matrix._entry.62, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pmic8xxx_kp_read_matrix._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error reading KEYP_SCAN reg, rc=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_read_matrix._entry_ptr.67 = internal global ptr @pmic8xxx_kp_read_matrix._entry.65, section ".printk_index", align 4
@pmic8xxx_kp_read_matrix._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.61, ptr @.str.3, i32 214, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_read_matrix._entry_ptr.69 = internal global ptr @pmic8xxx_kp_read_matrix._entry.68, section ".printk_index", align 4
@pmic8xxx_chk_sync_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.70, ptr @.str.3, i32 136, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmic8xxx_chk_sync_read\00", [41 x i8] zeroinitializer }, align 32
@pmic8xxx_chk_sync_read._entry_ptr = internal global ptr @pmic8xxx_chk_sync_read._entry, section ".printk_index", align 4
@pmic8xxx_chk_sync_read._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.70, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@pmic8xxx_chk_sync_read._entry_ptr.72 = internal global ptr @pmic8xxx_chk_sync_read._entry.71, section ".printk_index", align 4
@pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.73, ptr @.str.3, ptr @.str.74, i8 0, i8 41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmic8xxx_kp_read_data\00", [42 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d = %d\0A\00", [23 x i8] zeroinitializer }, align 32
@pmic8xxx_detect_ghost_keys.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pmic8xxx_detect_ghost_keys\00", [37 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"detected ghost key on row[%d] and row[%d]\0A\00", [53 x i8] zeroinitializer }, align 32
@__pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"__pmic8xxx_kp_scan_matrix\00", [38 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"key [%d:%d] %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pressed\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"released\00", [23 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_stuck_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 336, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read keypad matrix\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmic8xxx_kp_stuck_irq\00", [42 x i8] zeroinitializer }, align 32
@pmic8xxx_kp_stuck_irq._entry_ptr = internal global ptr @pmic8xxx_kp_stuck_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.83 = private unnamed_addr constant [19 x i8] c"pmic8xxx_kp_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 676, i32 31 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 679, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant [19 x i8] c"pm8xxx_match_table\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 669, i32 34 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"pm8xxx_kp_pm_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 666, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 516, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 520, i32 38 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 522, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 524, i32 30 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 542, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 554, i32 20 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 555, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 569, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 585, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 590, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 593, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 599, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 601, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 607, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 615, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 458, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [9 x i8] c"row_bits\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 375, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 397, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 401, i32 36 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 406, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 410, i32 36 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 416, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 420, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 426, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 444, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 353, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 361, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 302, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 188, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 197, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 207, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 214, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 136, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 144, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 164, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 264, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 234, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.314 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.315 = private constant [44 x i8] c"../drivers/input/keyboard/pmic8xxx-keypad.c\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.315, i32 336, i32 3 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author236, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_pmic8xxx_kp_driver_exit, ptr @__initcall__kmod_pmic8xxx_keypad__231_684_pmic8xxx_kp_driver_init6, ptr @pmic8xxx_chk_sync_read._entry, ptr @pmic8xxx_chk_sync_read._entry.71, ptr @pmic8xxx_chk_sync_read._entry_ptr, ptr @pmic8xxx_chk_sync_read._entry_ptr.72, ptr @pmic8xxx_kp_driver_exit, ptr @pmic8xxx_kp_enable._entry, ptr @pmic8xxx_kp_enable._entry_ptr, ptr @pmic8xxx_kp_irq._entry, ptr @pmic8xxx_kp_irq._entry.54, ptr @pmic8xxx_kp_irq._entry_ptr, ptr @pmic8xxx_kp_irq._entry_ptr.56, ptr @pmic8xxx_kp_probe._entry, ptr @pmic8xxx_kp_probe._entry.14, ptr @pmic8xxx_kp_probe._entry.17, ptr @pmic8xxx_kp_probe._entry.21, ptr @pmic8xxx_kp_probe._entry.25, ptr @pmic8xxx_kp_probe._entry.28, ptr @pmic8xxx_kp_probe._entry.31, ptr @pmic8xxx_kp_probe._entry.9, ptr @pmic8xxx_kp_probe._entry_ptr, ptr @pmic8xxx_kp_probe._entry_ptr.11, ptr @pmic8xxx_kp_probe._entry_ptr.16, ptr @pmic8xxx_kp_probe._entry_ptr.19, ptr @pmic8xxx_kp_probe._entry_ptr.23, ptr @pmic8xxx_kp_probe._entry_ptr.27, ptr @pmic8xxx_kp_probe._entry_ptr.30, ptr @pmic8xxx_kp_probe._entry_ptr.33, ptr @pmic8xxx_kp_read_matrix._entry, ptr @pmic8xxx_kp_read_matrix._entry.62, ptr @pmic8xxx_kp_read_matrix._entry.65, ptr @pmic8xxx_kp_read_matrix._entry.68, ptr @pmic8xxx_kp_read_matrix._entry_ptr, ptr @pmic8xxx_kp_read_matrix._entry_ptr.64, ptr @pmic8xxx_kp_read_matrix._entry_ptr.67, ptr @pmic8xxx_kp_read_matrix._entry_ptr.69, ptr @pmic8xxx_kp_stuck_irq._entry, ptr @pmic8xxx_kp_stuck_irq._entry_ptr, ptr @pmic8xxx_kpd_init._entry, ptr @pmic8xxx_kpd_init._entry.38, ptr @pmic8xxx_kpd_init._entry.42, ptr @pmic8xxx_kpd_init._entry.46, ptr @pmic8xxx_kpd_init._entry.49, ptr @pmic8xxx_kpd_init._entry_ptr, ptr @pmic8xxx_kpd_init._entry_ptr.40, ptr @pmic8xxx_kpd_init._entry_ptr.44, ptr @pmic8xxx_kpd_init._entry_ptr.48, ptr @pmic8xxx_kpd_init._entry_ptr.51, ptr @pmic8xxx_kp_driver, ptr @.str, ptr @pm8xxx_match_table, ptr @pm8xxx_kp_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @pmic8xxx_kpd_init.row_bits, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.70, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_kp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init.row_bits to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kpd_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_irq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_read_matrix._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_read_matrix._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_read_matrix._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_read_matrix._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_chk_sync_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_chk_sync_read._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic8xxx_kp_stuck_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic8xxx_kp_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic8xxx_kp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic8xxx_kp_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %scan_delay_ms.i = alloca i32, align 4
  %row_hold_ns.i = alloca i32, align 4
  %debounce_ms.i = alloca i32, align 4
  %rows = alloca i32, align 4
  %cols = alloca i32, align 4
  %ctrl_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rows) #6
  %2 = ptrtoint ptr %rows to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rows, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cols) #6
  %3 = ptrtoint ptr %cols to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %cols, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #6
  %4 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !168
  %call = call i32 @matrix_keypad_parse_properties(ptr noundef %dev, ptr noundef nonnull %rows, ptr noundef nonnull %cols) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp ugt i32 %6, 8
  br i1 %cmp, label %if.end.do.end_crit_edge, label %lor.lhs.false

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rows, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %8)
  %cmp2 = icmp ugt i32 %8, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %6)
  %cmp4 = icmp ult i32 %6, 5
  %or.cond = select i1 %cmp2, i1 true, i1 %cmp4
  br i1 %or.cond, label %lor.lhs.false.do.end_crit_edge, label %if.end7

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %call.i = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  %call.i206 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef null) #6
  %tobool.i207.not = icmp eq ptr %call.i206, null
  br i1 %tobool.i207.not, label %lor.rhs, label %if.end7.lor.end_crit_edge

if.end7.lor.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.rhs:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %call.i208 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef null) #6
  %tobool.i209 = icmp ne ptr %call.i208, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end7.lor.end_crit_edge
  %9 = phi i1 [ true, %if.end7.lor.end_crit_edge ], [ %tobool.i209, %lor.rhs ]
  %call.i210 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 392, i32 noundef 3520) #6
  %tobool14.not = icmp eq ptr %call.i210, null
  br i1 %tobool14.not, label %lor.end.cleanup_crit_edge, label %if.end16

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %lor.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  %call18 = call ptr @dev_get_regmap(ptr noundef %11, ptr noundef null) #6
  %regmap = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call18, ptr %regmap, align 4
  %tobool20.not = icmp eq ptr %call18, null
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i210, ptr %driver_data.i.i, align 4
  %14 = ptrtoint ptr %rows to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rows, align 4
  %16 = ptrtoint ptr %call.i210 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %call.i210, align 4
  %17 = ptrtoint ptr %cols to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cols, align 4
  %num_cols = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 1
  %19 = ptrtoint ptr %num_cols to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %num_cols, align 4
  %dev24 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 7
  %20 = ptrtoint ptr %dev24 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev, ptr %dev24, align 4
  %call26 = call ptr @devm_input_allocate_device(ptr noundef %dev) #6
  %input = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 2
  %21 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %input, align 4
  %tobool28.not = icmp eq ptr %call26, null
  br i1 %tobool28.not, label %do.end32, label %if.end34

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %call35 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #6
  %key_sense_irq = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 4
  %22 = ptrtoint ptr %key_sense_irq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call35, ptr %key_sense_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %if.end34.cleanup_crit_edge, label %if.end40

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end34
  %call41 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #6
  %key_stuck_irq = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 5
  %23 = ptrtoint ptr %key_stuck_irq to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call41, ptr %key_stuck_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp43 = icmp slt i32 %call41, 0
  br i1 %cmp43, label %if.end40.cleanup_crit_edge, label %if.end46

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end46:                                         ; preds = %if.end40
  %24 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %input, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.12, ptr %25, align 8
  %27 = load ptr, ptr %input, align 4
  %phys = getelementptr inbounds %struct.input_dev, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.13, ptr %phys, align 4
  %29 = load ptr, ptr %input, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 24, ptr %id, align 4
  %31 = load ptr, ptr %input, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 3, i32 3
  %32 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 1, ptr %version, align 2
  %33 = load ptr, ptr %input, align 4
  %product = getelementptr inbounds %struct.input_dev, ptr %33, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 1, ptr %product, align 4
  %35 = load ptr, ptr %input, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %35, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %vendor, align 2
  %37 = load ptr, ptr %input, align 4
  %open = getelementptr inbounds %struct.input_dev, ptr %37, i32 0, i32 31
  %38 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @pmic8xxx_kp_open, ptr %open, align 8
  %39 = load ptr, ptr %input, align 4
  %close = getelementptr inbounds %struct.input_dev, ptr %39, i32 0, i32 32
  %40 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pmic8xxx_kp_close, ptr %close, align 4
  %keycodes = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 6
  %41 = load ptr, ptr %input, align 4
  %call59 = call i32 @matrix_keypad_build_keymap(ptr noundef null, ptr noundef null, i32 noundef 18, i32 noundef 8, ptr noundef %keycodes, ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end66:                                         ; preds = %if.end46
  br i1 %tobool.i.not, label %if.then68, label %if.end66.if.end71_crit_edge

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %input, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %evbit, align 4
  %or.i = or i32 %45, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end66.if.end71_crit_edge
  %46 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input, align 4
  call void @input_set_capability(ptr noundef %47, i32 noundef 4, i32 noundef 4) #6
  %48 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input, align 4
  %driver_data.i.i211 = getelementptr inbounds %struct.input_dev, ptr %49, i32 0, i32 40, i32 8
  %50 = ptrtoint ptr %driver_data.i.i211 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i210, ptr %driver_data.i.i211, align 4
  %keystate = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 8
  %51 = call ptr @memset(ptr %keystate, i32 255, i32 72)
  %52 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_delay_ms.i) #6
  %54 = ptrtoint ptr %scan_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %scan_delay_ms.i, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row_hold_ns.i) #6
  %55 = ptrtoint ptr %row_hold_ns.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 -1, ptr %row_hold_ns.i, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debounce_ms.i) #6
  %56 = ptrtoint ptr %debounce_ms.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %debounce_ms.i, align 4, !annotation !168
  %57 = ptrtoint ptr %num_cols to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %58)
  %cmp.i = icmp ult i32 %58, 5
  %59 = shl i32 %58, 5
  %60 = add i32 %59, 96
  %phi.cast.i = and i32 %60, 96
  %bits.0.i = select i1 %cmp.i, i32 0, i32 %phi.cast.i
  %61 = ptrtoint ptr %call.i210 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %call.i210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %62)
  %cmp3.i = icmp ult i32 %62, 5
  br i1 %cmp3.i, label %if.end71.if.end10.i_crit_edge, label %if.else6.i

if.end71.if.end10.i_crit_edge:                    ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.else6.i:                                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #8
  %sub8.i = add i32 %62, -5
  %arrayidx.i = getelementptr [14 x i8], ptr @pmic8xxx_kpd_init.row_bits, i32 0, i32 %sub8.i
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.i, align 1
  %conv9.i = zext i8 %64 to i32
  %phi.bo.i = shl nuw nsw i32 %conv9.i, 2
  %phi.bo136.i = and i32 %phi.bo.i, 252
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else6.i, %if.end71.if.end10.i_crit_edge
  %bits.1.i = phi i32 [ %phi.bo136.i, %if.else6.i ], [ 0, %if.end71.if.end10.i_crit_edge ]
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %conv14.i = or i32 %bits.1.i, %bits.0.i
  %call.i212 = call i32 @regmap_write(ptr noundef %66, i32 noundef 328, i32 noundef %conv14.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp15.i = icmp slt i32 %call.i212, 0
  br i1 %cmp15.i, label %do.end.i, label %if.end19.i

do.end.i:                                         ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.34, i32 noundef %call.i212) #9
  br label %pmic8xxx_kpd_init.exit.thread

if.end19.i:                                       ; preds = %if.end10.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %53, ptr noundef nonnull @.str.37, ptr noundef nonnull %scan_delay_ms.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end19.i.if.end22.i_crit_edge, label %if.then21.i

if.end19.i.if.end22.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %69 = ptrtoint ptr %scan_delay_ms.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %scan_delay_ms.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end22.i_crit_edge
  %70 = ptrtoint ptr %scan_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %scan_delay_ms.i, align 4
  %72 = add i32 %71, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %72)
  %73 = icmp ult i32 %72, 128
  %74 = call i32 @llvm.ctpop.i32(i32 %71) #6, !range !169
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %74)
  %cmp1.i.i = icmp ult i32 %74, 2
  %or.cond144.i = and i1 %73, %cmp1.i.i
  br i1 %or.cond144.i, label %if.end34.i, label %do.end32.i

do.end32.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.39) #9
  br label %pmic8xxx_kpd_init.exit.thread

if.end34.i:                                       ; preds = %if.end22.i
  %call.i.i141.i = call i32 @of_property_read_variable_u32_array(ptr noundef %53, ptr noundef nonnull @.str.41, ptr noundef nonnull %row_hold_ns.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i141.i)
  %tobool36.not.i = icmp sgt i32 %call.i.i141.i, -1
  br i1 %tobool36.not.i, label %if.end34.i.if.end38.i_crit_edge, label %if.then37.i

if.end34.i.if.end38.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %row_hold_ns.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 30500, ptr %row_hold_ns.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.end34.i.if.end38.i_crit_edge
  %76 = ptrtoint ptr %row_hold_ns.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %row_hold_ns.i, align 4
  %78 = add i32 %77, -30500
  call void @__sanitizer_cov_trace_const_cmp4(i32 91501, i32 %78)
  %79 = icmp ult i32 %78, 91501
  %rem.i = urem i32 %77, 30500
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp45.not.i = icmp eq i32 %rem.i, 0
  %or.cond138.i = and i1 %79, %cmp45.not.i
  br i1 %or.cond138.i, label %if.end52.i, label %do.end50.i

do.end50.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %pmic8xxx_kpd_init.exit.thread

if.end52.i:                                       ; preds = %if.end38.i
  %call.i.i142.i = call i32 @of_property_read_variable_u32_array(ptr noundef %53, ptr noundef nonnull @.str.45, ptr noundef nonnull %debounce_ms.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i142.i)
  %tobool54.not.i = icmp sgt i32 %call.i.i142.i, -1
  br i1 %tobool54.not.i, label %if.end52.i.if.end56.i_crit_edge, label %if.then55.i

if.end52.i.if.end56.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end56.i

if.then55.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #8
  %80 = ptrtoint ptr %debounce_ms.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 5, ptr %debounce_ms.i, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then55.i, %if.end52.i.if.end56.i_crit_edge
  %81 = ptrtoint ptr %debounce_ms.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %debounce_ms.i, align 4
  %rem57.i = urem i32 %82, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem57.i)
  %cmp58.not.i = icmp ne i32 %rem57.i, 0
  %83 = add i32 %82, -21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %83)
  %84 = icmp ult i32 %83, -16
  %85 = or i1 %84, %cmp58.not.i
  br i1 %85, label %do.end69.i, label %if.end71.i

do.end69.i:                                       ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.47) #9
  br label %pmic8xxx_kpd_init.exit.thread

if.end71.i:                                       ; preds = %if.end56.i
  %div.lhs.trunc.i = trunc i32 %82 to i8
  %div143.i = udiv i8 %div.lhs.trunc.i, 5
  %86 = shl nuw nsw i8 %div143.i, 1
  %87 = zext i8 %86 to i32
  %conv76.i = add nuw nsw i32 %87, 254
  %88 = ptrtoint ptr %scan_delay_ms.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %scan_delay_ms.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not.i.i = icmp eq i32 %89, 0
  %90 = call i32 @llvm.ctlz.i32(i32 %89, i1 true) #6, !range !169
  %.neg.i = mul nuw nsw i32 %90, 248
  %sub.i.op.op.i = add nuw nsw i32 %.neg.i, 248
  %shl79.i = select i1 %tobool.not.i.i, i32 248, i32 %sub.i.op.op.i
  %or81.i = or i32 %shl79.i, %conv76.i
  %91 = ptrtoint ptr %row_hold_ns.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %row_hold_ns.i, align 4
  %mul.i = shl i32 %92, 15
  %div83.i = udiv i32 %mul.i, 1000000000
  %shl84.i = shl nuw nsw i32 %div83.i, 6
  %or86.i = or i32 %or81.i, %shl84.i
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %conv89.i = and i32 %or86.i, 254
  %call90.i = call i32 @regmap_write(ptr noundef %94, i32 noundef 329, i32 noundef %conv89.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %tobool91.not.i = icmp eq i32 %call90.i, 0
  br i1 %tobool91.not.i, label %pmic8xxx_kpd_init.exit.thread216, label %pmic8xxx_kpd_init.exit

pmic8xxx_kpd_init.exit.thread216:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce_ms.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row_hold_ns.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_delay_ms.i) #6
  br label %if.end83

pmic8xxx_kpd_init.exit.thread:                    ; preds = %do.end69.i, %do.end50.i, %do.end32.i, %do.end.i
  %retval.0.i.ph = phi i32 [ -22, %do.end69.i ], [ -22, %do.end50.i ], [ -22, %do.end32.i ], [ %call.i212, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce_ms.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row_hold_ns.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_delay_ms.i) #6
  br label %do.end81

pmic8xxx_kpd_init.exit:                           ; preds = %if.end71.i
  %95 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev24, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.50, i32 noundef %call90.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debounce_ms.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row_hold_ns.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_delay_ms.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90.i)
  %cmp77 = icmp slt i32 %call90.i, 0
  br i1 %cmp77, label %pmic8xxx_kpd_init.exit.do.end81_crit_edge, label %pmic8xxx_kpd_init.exit.if.end83_crit_edge

pmic8xxx_kpd_init.exit.if.end83_crit_edge:        ; preds = %pmic8xxx_kpd_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

pmic8xxx_kpd_init.exit.do.end81_crit_edge:        ; preds = %pmic8xxx_kpd_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81

do.end81:                                         ; preds = %pmic8xxx_kpd_init.exit.do.end81_crit_edge, %pmic8xxx_kpd_init.exit.thread
  %retval.0.i215 = phi i32 [ %retval.0.i.ph, %pmic8xxx_kpd_init.exit.thread ], [ %call90.i, %pmic8xxx_kpd_init.exit.do.end81_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end83:                                         ; preds = %pmic8xxx_kpd_init.exit.if.end83_crit_edge, %pmic8xxx_kpd_init.exit.thread216
  %97 = ptrtoint ptr %key_sense_irq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %key_sense_irq, align 4
  %call86 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %98, ptr noundef nonnull @pmic8xxx_kp_irq, i32 noundef 1, ptr noundef nonnull @.str.20, ptr noundef nonnull %call.i210) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end91, label %if.end93

do.end91:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end93:                                         ; preds = %if.end83
  %99 = ptrtoint ptr %key_stuck_irq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %key_stuck_irq, align 4
  %call96 = call i32 @devm_request_any_context_irq(ptr noundef %dev, i32 noundef %100, ptr noundef nonnull @pmic8xxx_kp_stuck_irq, i32 noundef 1, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i210) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %cmp97 = icmp slt i32 %call96, 0
  br i1 %cmp97, label %do.end101, label %if.end103

do.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end103:                                        ; preds = %if.end93
  %101 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap, align 4
  %call105 = call i32 @regmap_read(ptr noundef %102, i32 noundef 328, ptr noundef nonnull %ctrl_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp slt i32 %call105, 0
  br i1 %cmp106, label %do.end110, label %if.end112

do.end110:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #9
  br label %cleanup

if.end112:                                        ; preds = %if.end103
  %103 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ctrl_val, align 4
  %conv = trunc i32 %104 to i8
  %ctrl_reg = getelementptr inbounds %struct.pmic8xxx_kp, ptr %call.i210, i32 0, i32 10
  %105 = ptrtoint ptr %ctrl_reg to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv, ptr %ctrl_reg, align 4
  %106 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %input, align 4
  %call114 = call i32 @input_register_device(ptr noundef %107) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %do.end120, label %if.end122

do.end120:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #9
  br label %cleanup

if.end122:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #8
  %call125 = call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext %9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %do.end120, %do.end110, %do.end101, %do.end91, %do.end81, %do.end64, %if.end40.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %do.end32, %if.end16.cleanup_crit_edge, %lor.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call59, %do.end64 ], [ %retval.0.i215, %do.end81 ], [ %call86, %do.end91 ], [ %call96, %do.end101 ], [ %call105, %do.end110 ], [ %call114, %do.end120 ], [ 0, %if.end122 ], [ -12, %do.end32 ], [ %call, %entry.cleanup_crit_edge ], [ -12, %lor.end.cleanup_crit_edge ], [ -19, %if.end16.cleanup_crit_edge ], [ %call35, %if.end34.cleanup_crit_edge ], [ %call41, %if.end40.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cols) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rows) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_parse_properties(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_open(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_reg.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_reg.i, align 4
  %4 = or i8 %3, -128
  store i8 %4, ptr %ctrl_reg.i, align 4
  %regmap.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %4 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 328, i32 noundef %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.pmic8xxx_kp_enable.exit_crit_edge

entry.pmic8xxx_kp_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmic8xxx_kp_enable.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.34, i32 noundef %call.i) #9
  br label %pmic8xxx_kp_enable.exit

pmic8xxx_kp_enable.exit:                          ; preds = %do.end.i, %entry.pmic8xxx_kp_enable.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic8xxx_kp_close(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_reg.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_reg.i, align 4
  %4 = and i8 %3, 127
  store i8 %4, ptr %ctrl_reg.i, align 4
  %regmap.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %4 to i32
  %call.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 328, i32 noundef %conv3.i) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @matrix_keypad_build_keymap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %ctrl_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #6
  %0 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !168
  %regmap = getelementptr inbounds %struct.pmic8xxx_kp, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 328, ptr noundef nonnull %ctrl_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ctrl_val, align 4
  %and = and i32 %4, 3
  %call1 = call fastcc i32 @pmic8xxx_kp_scan_matrix(ptr noundef %data, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.55.sink = phi ptr [ @.str.52, %entry.cleanup.sink.split_crit_edge ], [ @.str.55, %if.end.cleanup.sink.split_crit_edge ]
  %dev7 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %data, i32 0, i32 7
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull %.str.55.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_val) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_stuck_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %new_state = alloca [18 x i16], align 2
  %old_state = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %new_state) #6
  %0 = call ptr @memset(ptr %new_state, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %old_state) #6
  %1 = call ptr @memset(ptr %old_state, i32 255, i32 36)
  %call = call fastcc i32 @pmic8xxx_kp_read_matrix(ptr noundef %data, ptr noundef nonnull %new_state, ptr noundef nonnull %old_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pmic8xxx_kp, ptr %data, i32 0, i32 7
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.81) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %stuckstate = getelementptr inbounds %struct.pmic8xxx_kp, ptr %data, i32 0, i32 9
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %data, ptr noundef nonnull %new_state, ptr noundef %stuckstate)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %old_state) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %new_state) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmic8xxx_kp_scan_matrix(ptr nocapture noundef %kp, i32 noundef %events) unnamed_addr #2 align 64 {
entry:
  %new_state = alloca [18 x i16], align 2
  %old_state = alloca [18 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %new_state) #6
  %0 = call ptr @memset(ptr %new_state, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %old_state) #6
  %1 = call ptr @memset(ptr %old_state, i32 255, i32 36)
  %2 = zext i32 %events to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %events, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb10
    i32 2, label %do.body
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call = call fastcc i32 @pmic8xxx_kp_read_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef null)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %3 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp212.not.i = icmp eq i32 %4, 0
  br i1 %cmp212.not.i, label %if.end.if.end4_crit_edge, label %for.body.lr.ph.i

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.end
  %num_cols.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end160.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %row.0216.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end160.i.for.body.i_crit_edge ]
  %check.0214.i = phi i16 [ 0, %for.body.lr.ph.i ], [ %or194.i, %if.end160.i.for.body.i_crit_edge ]
  %found_first.0213.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %found_first.2.i, %if.end160.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i16, ptr %new_state, i32 %row.0216.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx.i, align 2
  %7 = ptrtoint ptr %num_cols.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_cols.i, align 4
  %notmask.i = shl nsw i32 -1, %8
  %9 = trunc i32 %notmask.i to i16
  %10 = or i16 %6, %9
  %conv1.i = xor i16 %10, -1
  %conv139.i = zext i16 %conv1.i to i32
  %call.i.i = tail call i32 @__sw_hweight16(i32 noundef %conv139.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp140.i = icmp ugt i32 %call.i.i, 1
  br i1 %cmp140.i, label %if.then.i, label %for.body.i.if.end160.i_crit_edge

for.body.i.if.end160.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %found_first.0213.i)
  %cmp142.i = icmp eq i32 %found_first.0213.i, -1
  %spec.select.i = select i1 %cmp142.i, i32 %row.0216.i, i32 %found_first.0213.i
  %and147195.i = and i16 %check.0214.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %and147195.i)
  %tobool148.not.i = icmp eq i16 %and147195.i, 0
  br i1 %tobool148.not.i, label %if.then.i.if.end160.i_crit_edge, label %do.body.i

if.then.i.if.end160.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end160.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic8xxx_detect_ghost_keys.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic8xxx_kp_scan_matrix, %if.then157.i)) #6
          to label %cleanup [label %if.then157.i], !srcloc !170

if.then157.i:                                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic8xxx_detect_ghost_keys.__UNIQUE_ID_ddebug229, ptr noundef %12, ptr noundef nonnull @.str.76, i32 noundef %spec.select.i, i32 noundef %row.0216.i) #6
  br label %cleanup

if.end160.i:                                      ; preds = %if.then.i.if.end160.i_crit_edge, %for.body.i.if.end160.i_crit_edge
  %found_first.2.i = phi i32 [ %spec.select.i, %if.then.i.if.end160.i_crit_edge ], [ %found_first.0213.i, %for.body.i.if.end160.i_crit_edge ]
  %or194.i = or i16 %check.0214.i, %conv1.i
  %inc.i = add nuw i32 %row.0216.i, 1
  %13 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %kp, align 4
  %cmp.i = icmp ult i32 %inc.i, %14
  br i1 %cmp.i, label %if.end160.i.for.body.i_crit_edge, label %if.end160.i.if.end4_crit_edge

if.end160.i.if.end4_crit_edge:                    ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end160.i.for.body.i_crit_edge:                 ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end4:                                          ; preds = %if.end160.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %keystate = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 8
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef %keystate)
  %15 = call ptr @memcpy(ptr %keystate, ptr %new_state, i32 36)
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %call13 = call fastcc i32 @pmic8xxx_kp_read_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef nonnull %old_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %sw.bb10.cleanup_crit_edge, label %if.end16

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %keystate18 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 8
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %kp, ptr noundef nonnull %old_state, ptr noundef %keystate18)
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef nonnull %old_state)
  %16 = call ptr @memcpy(ptr %keystate18, ptr %new_state, i32 36)
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic8xxx_kp_scan_matrix, %if.then29)) #6
          to label %do.end [label %if.then29], !srcloc !170

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug230, ptr noundef %18, ptr noundef nonnull @.str.59) #6
  br label %do.end

do.end:                                           ; preds = %if.then29, %do.body
  %call33 = call fastcc i32 @pmic8xxx_kp_read_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef nonnull %old_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %do.end.cleanup_crit_edge, label %if.end36

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %keystate38 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 8
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %kp, ptr noundef nonnull %old_state, ptr noundef %keystate38)
  call fastcc void @__pmic8xxx_kp_scan_matrix(ptr noundef %kp, ptr noundef nonnull %new_state, ptr noundef nonnull %old_state)
  %19 = call ptr @memcpy(ptr %keystate38, ptr %new_state, i32 36)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end.cleanup_crit_edge, %if.end16, %sw.bb10.cleanup_crit_edge, %if.end4, %if.then157.i, %do.body.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.bb.cleanup_crit_edge ], [ %call13, %sw.bb10.cleanup_crit_edge ], [ %call33, %do.end.cleanup_crit_edge ], [ %call33, %if.end36 ], [ %call13, %if.end16 ], [ %call, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ 0, %do.body.i ], [ 0, %if.then157.i ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %old_state) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %new_state) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmic8xxx_kp_read_matrix(ptr nocapture noundef readonly %kp, ptr nocapture noundef writeonly %new_state, ptr noundef writeonly %old_state) unnamed_addr #2 align 64 {
entry:
  %val.i62 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %scan_val.i = alloca i32, align 4
  %scan_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_val) #6
  %0 = ptrtoint ptr %scan_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %scan_val, align 4, !annotation !168
  %1 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %kp, align 4
  %3 = tail call i32 @llvm.umax.i32(i32 %2, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scan_val.i) #6
  %4 = ptrtoint ptr %scan_val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %scan_val.i, align 4, !annotation !168
  %regmap.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 3
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 329, ptr noundef nonnull %scan_val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.66, i32 noundef %call.i) #9
  br label %pmic8xxx_chk_sync_read.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %scan_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %scan_val.i, align 4
  %or.i = or i32 %10, 1
  store i32 %or.i, ptr %scan_val.i, align 4
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 329, i32 noundef %or.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev8.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %13 = ptrtoint ptr %dev8.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev8.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.50, i32 noundef %call2.i) #9
  br label %pmic8xxx_chk_sync_read.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 13529124) #6
  br label %pmic8xxx_chk_sync_read.exit

pmic8xxx_chk_sync_read.exit:                      ; preds = %if.end9.i, %do.end7.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_val.i) #6
  %tobool.not = icmp eq ptr %old_state, null
  br i1 %tobool.not, label %pmic8xxx_chk_sync_read.exit.if.end7_crit_edge, label %if.then2

pmic8xxx_chk_sync_read.exit.if.end7_crit_edge:    ; preds = %pmic8xxx_chk_sync_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %pmic8xxx_chk_sync_read.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %val.i, align 4, !annotation !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.i = icmp sgt i32 %3, 0
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.then2.pmic8xxx_kp_read_data.exit.thread_crit_edge

if.then2.pmic8xxx_kp_read_data.exit.thread_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmic8xxx_kp_read_data.exit.thread

for.body.lr.ph.i:                                 ; preds = %if.then2
  %dev.i59 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %num_cols.i.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i61.for.body.i_crit_edge, %for.body.lr.ph.i
  %row.021.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %do.end.i61.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call.i60 = call i32 @regmap_read(ptr noundef %18, i32 noundef 332, ptr noundef nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i, label %do.body.i, label %pmic8xxx_kp_read_data.exit

do.body.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic8xxx_kp_read_matrix, %if.then5.i)) #6
          to label %do.end.i61 [label %if.then5.i], !srcloc !170

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i59, align 4
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227, ptr noundef %20, ptr noundef nonnull @.str.74, i32 noundef %row.021.i, i32 noundef %22) #6
  br label %do.end.i61

do.end.i61:                                       ; preds = %if.then5.i, %do.body.i
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val.i, align 4
  %conv7.i = trunc i32 %24 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7.i)
  %cmp.i.i = icmp eq i8 %conv7.i, 0
  %25 = ptrtoint ptr %num_cols.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cols.i.i, align 4
  %shl.i.i = shl nuw i32 1, %26
  %conv2.i.i = trunc i32 %shl.i.i to i8
  %notmask.i.i = shl nsw i32 -1, %26
  %27 = trunc i32 %notmask.i.i to i8
  %28 = xor i8 %27, -1
  %conv6.i.i = and i8 %28, %conv7.i
  %retval.0.i18.i = select i1 %cmp.i.i, i8 %conv2.i.i, i8 %conv6.i.i
  %conv9.i = zext i8 %retval.0.i18.i to i16
  %arrayidx.i = getelementptr i16, ptr %old_state, i32 %row.021.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv9.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %row.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %do.end.i61.pmic8xxx_kp_read_data.exit.thread_crit_edge, label %do.end.i61.for.body.i_crit_edge

do.end.i61.for.body.i_crit_edge:                  ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end.i61.pmic8xxx_kp_read_data.exit.thread_crit_edge: ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmic8xxx_kp_read_data.exit.thread

pmic8xxx_kp_read_data.exit.thread:                ; preds = %do.end.i61.pmic8xxx_kp_read_data.exit.thread_crit_edge, %if.then2.pmic8xxx_kp_read_data.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %if.end7

pmic8xxx_kp_read_data.exit:                       ; preds = %for.body.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp4 = icmp slt i32 %call.i60, 0
  br i1 %cmp4, label %do.end, label %pmic8xxx_kp_read_data.exit.if.end7_crit_edge

pmic8xxx_kp_read_data.exit.if.end7_crit_edge:     ; preds = %pmic8xxx_kp_read_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.end:                                           ; preds = %pmic8xxx_kp_read_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %dev.i59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i59, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.60, i32 noundef %call.i60) #9
  br label %cleanup

if.end7:                                          ; preds = %pmic8xxx_kp_read_data.exit.if.end7_crit_edge, %pmic8xxx_kp_read_data.exit.thread, %pmic8xxx_chk_sync_read.exit.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i62) #6
  %32 = ptrtoint ptr %val.i62 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i62, align 4, !annotation !168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.i64 = icmp sgt i32 %3, 0
  br i1 %cmp20.i64, label %for.body.lr.ph.i67, label %if.end7.pmic8xxx_kp_read_data.exit87.thread_crit_edge

if.end7.pmic8xxx_kp_read_data.exit87.thread_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmic8xxx_kp_read_data.exit87.thread

for.body.lr.ph.i67:                               ; preds = %if.end7
  %dev.i65 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %num_cols.i.i66 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 1
  br label %for.body.i71

for.body.i71:                                     ; preds = %do.end.i85.for.body.i71_crit_edge, %for.body.lr.ph.i67
  %row.021.i68 = phi i32 [ 0, %for.body.lr.ph.i67 ], [ %inc.i83, %do.end.i85.for.body.i71_crit_edge ]
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call.i69 = call i32 @regmap_read(ptr noundef %34, i32 noundef 331, ptr noundef nonnull %val.i62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool.not.i70 = icmp eq i32 %call.i69, 0
  br i1 %tobool.not.i70, label %do.body.i72, label %pmic8xxx_kp_read_data.exit87

do.body.i72:                                      ; preds = %for.body.i71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic8xxx_kp_read_matrix, %if.then5.i73)) #6
          to label %do.end.i85 [label %if.then5.i73], !srcloc !170

if.then5.i73:                                     ; preds = %do.body.i72
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i65, align 4
  %37 = ptrtoint ptr %val.i62 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i62, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227, ptr noundef %36, ptr noundef nonnull @.str.74, i32 noundef %row.021.i68, i32 noundef %38) #6
  br label %do.end.i85

do.end.i85:                                       ; preds = %if.then5.i73, %do.body.i72
  %39 = ptrtoint ptr %val.i62 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i62, align 4
  %conv7.i74 = trunc i32 %40 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv7.i74)
  %cmp.i.i75 = icmp eq i8 %conv7.i74, 0
  %41 = ptrtoint ptr %num_cols.i.i66 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_cols.i.i66, align 4
  %shl.i.i76 = shl nuw i32 1, %42
  %conv2.i.i77 = trunc i32 %shl.i.i76 to i8
  %notmask.i.i78 = shl nsw i32 -1, %42
  %43 = trunc i32 %notmask.i.i78 to i8
  %44 = xor i8 %43, -1
  %conv6.i.i79 = and i8 %44, %conv7.i74
  %retval.0.i18.i80 = select i1 %cmp.i.i75, i8 %conv2.i.i77, i8 %conv6.i.i79
  %conv9.i81 = zext i8 %retval.0.i18.i80 to i16
  %arrayidx.i82 = getelementptr i16, ptr %new_state, i32 %row.021.i68
  %45 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv9.i81, ptr %arrayidx.i82, align 2
  %inc.i83 = add nuw nsw i32 %row.021.i68, 1
  %exitcond.not.i84 = icmp eq i32 %inc.i83, %3
  br i1 %exitcond.not.i84, label %do.end.i85.pmic8xxx_kp_read_data.exit87.thread_crit_edge, label %do.end.i85.for.body.i71_crit_edge

do.end.i85.for.body.i71_crit_edge:                ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i71

do.end.i85.pmic8xxx_kp_read_data.exit87.thread_crit_edge: ; preds = %do.end.i85
  call void @__sanitizer_cov_trace_pc() #8
  br label %pmic8xxx_kp_read_data.exit87.thread

pmic8xxx_kp_read_data.exit87.thread:              ; preds = %do.end.i85.pmic8xxx_kp_read_data.exit87.thread_crit_edge, %if.end7.pmic8xxx_kp_read_data.exit87.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i62) #6
  br label %if.end15

pmic8xxx_kp_read_data.exit87:                     ; preds = %for.body.i71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i62) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp9 = icmp slt i32 %call.i69, 0
  br i1 %cmp9, label %do.end13, label %pmic8xxx_kp_read_data.exit87.if.end15_crit_edge

pmic8xxx_kp_read_data.exit87.if.end15_crit_edge:  ; preds = %pmic8xxx_kp_read_data.exit87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

do.end13:                                         ; preds = %pmic8xxx_kp_read_data.exit87
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %dev.i65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.63, i32 noundef %call.i69) #9
  br label %cleanup

if.end15:                                         ; preds = %pmic8xxx_kp_read_data.exit87.if.end15_crit_edge, %pmic8xxx_kp_read_data.exit87.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %48(i32 noundef 26843500) #6
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call16 = call i32 @regmap_read(ptr noundef %50, i32 noundef 329, ptr noundef nonnull %scan_val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %do.end21, label %if.end23

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %51 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev22, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.66, i32 noundef %call16) #9
  br label %cleanup

if.end23:                                         ; preds = %if.end15
  %53 = ptrtoint ptr %scan_val to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %scan_val, align 4
  %and = and i32 %54, 254
  store i32 %and, ptr %scan_val, align 4
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %call25 = call i32 @regmap_write(ptr noundef %56, i32 noundef 329, i32 noundef %and) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end30, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %dev31 = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %57 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.50, i32 noundef %call25) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.end23.cleanup_crit_edge, %do.end21, %do.end13, %do.end
  %retval.0 = phi i32 [ %call.i60, %do.end ], [ %call.i69, %do.end13 ], [ %call16, %do.end21 ], [ %call25, %do.end30 ], [ %call25, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scan_val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__pmic8xxx_kp_scan_matrix(ptr nocapture noundef readonly %kp, ptr nocapture noundef readonly %new_state, ptr nocapture noundef readonly %old_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %kp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp65.not = icmp eq i32 %1, 0
  br i1 %cmp65.not, label %entry.for.end36_crit_edge, label %for.body.lr.ph

entry.for.end36_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36

for.body.lr.ph:                                   ; preds = %entry
  %num_cols = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 1
  %dev = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 7
  %input = getelementptr inbounds %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %row.066 = phi i32 [ 0, %for.body.lr.ph ], [ %inc35, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %new_state, i32 %row.066
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %arrayidx1 = getelementptr i16, ptr %old_state, i32 %row.066
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %xor60 = xor i16 %5, %3
  %xor = zext i16 %xor60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %xor60)
  %tobool.not = icmp eq i16 %xor60, 0
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %for.cond3.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.body
  %6 = ptrtoint ptr %num_cols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_cols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp462.not = icmp eq i32 %7, 0
  br i1 %cmp462.not, label %for.cond3.preheader.cleanup_crit_edge, label %for.body6.lr.ph

for.cond3.preheader.cleanup_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body6.lr.ph:                                  ; preds = %for.cond3.preheader
  %shl22 = shl i32 %row.066, 3
  br label %for.body6

for.body6:                                        ; preds = %for.inc.for.body6_crit_edge, %for.body6.lr.ph
  %col.063 = phi i32 [ 0, %for.body6.lr.ph ], [ %inc, %for.inc.for.body6_crit_edge ]
  %shl = shl nuw i32 1, %col.063
  %and = and i32 %shl, %xor
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %for.body6.for.inc_crit_edge, label %do.body

for.body6.for.inc_crit_edge:                      ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

do.body:                                          ; preds = %for.body6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__pmic8xxx_kp_scan_matrix, %if.then13)) #6
          to label %do.end [label %if.then13], !srcloc !170

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx, align 2
  %conv15 = zext i16 %11 to i32
  %and17 = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, ptr @.str.79, ptr @.str.80
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug228, ptr noundef %9, ptr noundef nonnull @.str.78, i32 noundef %row.066, i32 noundef %col.063, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %add = add i32 %col.063, %shl22
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %13, i32 noundef 4, i32 noundef 4, i32 noundef %add) #6
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %arrayidx24 = getelementptr %struct.pmic8xxx_kp, ptr %kp, i32 0, i32 6, i32 %add
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx24, align 2
  %conv25 = zext i16 %17 to i32
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv27 = zext i16 %19 to i32
  %20 = xor i32 %conv27, -1
  %21 = lshr i32 %20, %col.063
  %22 = and i32 %21, 1
  tail call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef %conv25, i32 noundef %22) #6
  %23 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input, align 4
  tail call void @input_event(ptr noundef %24, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body6.for.inc_crit_edge
  %inc = add nuw i32 %col.063, 1
  %25 = ptrtoint ptr %num_cols to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_cols, align 4
  %cmp4 = icmp ult i32 %inc, %26
  br i1 %cmp4, label %for.inc.for.body6_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body6_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond3.preheader.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc35 = add nuw i32 %row.066, 1
  %27 = ptrtoint ptr %kp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %kp, align 4
  %cmp = icmp ult i32 %inc35, %28
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end36_crit_edge

cleanup.for.end36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end36

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end36:                                        ; preds = %cleanup.for.end36_crit_edge, %entry.for.end36_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight16(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %key_sense_irq = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %key_sense_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_sense_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 1) #6
  br label %if.end7

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call3, label %if.then4, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %ctrl_reg.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_reg.i, align 4
  %11 = and i8 %10, 127
  store i8 %11, ptr %ctrl_reg.i, align 4
  %regmap.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %11 to i32
  %call.i13 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 328, i32 noundef %conv3.i) #6
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic8xxx_kp_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %input = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  %key_sense_irq = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %key_sense_irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_sense_irq, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %8, i32 noundef 0) #6
  br label %if.end7

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #6
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #6
  br i1 %call3, label %if.then4, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then4:                                         ; preds = %if.else
  %ctrl_reg.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 10
  %9 = ptrtoint ptr %ctrl_reg.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctrl_reg.i, align 4
  %11 = or i8 %10, -128
  store i8 %11, ptr %ctrl_reg.i, align 4
  %regmap.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %conv3.i = zext i8 %11 to i32
  %call.i13 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 328, i32 noundef %conv3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %cmp.i = icmp slt i32 %call.i13, 0
  br i1 %cmp.i, label %do.end.i, label %if.then4.if.end_crit_edge

if.then4.if.end_crit_edge:                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pmic8xxx_kp, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.34, i32 noundef %call.i13) #9
  br label %if.end

if.end:                                           ; preds = %do.end.i, %if.then4.if.end_crit_edge, %if.else.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #6
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !88, !89, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !150, !152, !153, !154, !155, !157}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165, !166}
!llvm.ident = !{!167}

!0 = !{ptr @__initcall__kmod_pmic8xxx_keypad__231_684_pmic8xxx_kp_driver_init6, !1, !"__initcall__kmod_pmic8xxx_keypad__231_684_pmic8xxx_kp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 684, i32 1}
!2 = !{ptr @__exitcall_pmic8xxx_kp_driver_exit, !1, !"__exitcall_pmic8xxx_kp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file232, !4, !"__UNIQUE_ID_file232", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 686, i32 1}
!5 = !{ptr @__UNIQUE_ID_license233, !4, !"__UNIQUE_ID_license233", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 687, i32 1}
!8 = !{ptr @__UNIQUE_ID_alias235, !9, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 688, i32 1}
!10 = !{ptr @__UNIQUE_ID_author236, !11, !"__UNIQUE_ID_author236", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 689, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 679, i32 11}
!14 = !{ptr @pmic8xxx_kp_driver, !15, !"pmic8xxx_kp_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 676, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 516, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pmic8xxx_kp_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pmic8xxx_kp_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 520, i32 38}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 522, i32 37}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 524, i32 30}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 542, i32 3}
!32 = !{ptr @pmic8xxx_kp_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @pmic8xxx_kp_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 554, i32 20}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 555, i32 20}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 569, i32 3}
!40 = !{ptr @pmic8xxx_kp_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @pmic8xxx_kp_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 585, i32 3}
!44 = !{ptr @pmic8xxx_kp_probe._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @pmic8xxx_kp_probe._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 590, i32 42}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 593, i32 3}
!50 = !{ptr @pmic8xxx_kp_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @pmic8xxx_kp_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 599, i32 4}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 601, i32 3}
!56 = !{ptr @pmic8xxx_kp_probe._entry.25, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @pmic8xxx_kp_probe._entry_ptr.27, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 607, i32 3}
!60 = !{ptr @pmic8xxx_kp_probe._entry.28, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @pmic8xxx_kp_probe._entry_ptr.30, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 615, i32 3}
!64 = !{ptr @pmic8xxx_kp_probe._entry.31, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @pmic8xxx_kp_probe._entry_ptr.33, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 458, i32 3}
!68 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @pmic8xxx_kp_enable._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @pmic8xxx_kp_enable._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @pmic8xxx_kpd_init.row_bits, !72, !"row_bits", i1 false, i1 false}
!72 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 375, i32 18}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 397, i32 3}
!75 = !{ptr @pmic8xxx_kpd_init._entry, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @pmic8xxx_kpd_init._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 401, i32 36}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 406, i32 3}
!81 = !{ptr @pmic8xxx_kpd_init._entry.38, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @pmic8xxx_kpd_init._entry_ptr.40, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 410, i32 36}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 416, i32 3}
!87 = !{ptr @pmic8xxx_kpd_init._entry.42, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @pmic8xxx_kpd_init._entry_ptr.44, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.45, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 420, i32 36}
!91 = !{ptr @.str.47, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 426, i32 3}
!93 = !{ptr @pmic8xxx_kpd_init._entry.46, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @pmic8xxx_kpd_init._entry_ptr.48, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 444, i32 3}
!97 = !{ptr @pmic8xxx_kpd_init._entry.49, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @pmic8xxx_kpd_init._entry_ptr.51, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 353, i32 3}
!101 = !{ptr @.str.53, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pmic8xxx_kp_irq._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @pmic8xxx_kp_irq._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 361, i32 3}
!106 = !{ptr @pmic8xxx_kp_irq._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @pmic8xxx_kp_irq._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 302, i32 3}
!110 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.59, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug230, !109, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 188, i32 4}
!115 = !{ptr @.str.61, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @pmic8xxx_kp_read_matrix._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @pmic8xxx_kp_read_matrix._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 197, i32 3}
!120 = !{ptr @pmic8xxx_kp_read_matrix._entry.62, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @pmic8xxx_kp_read_matrix._entry_ptr.64, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.66, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 207, i32 3}
!124 = !{ptr @pmic8xxx_kp_read_matrix._entry.65, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @pmic8xxx_kp_read_matrix._entry_ptr.67, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @pmic8xxx_kp_read_matrix._entry.68, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 214, i32 3}
!128 = !{ptr @pmic8xxx_kp_read_matrix._entry_ptr.69, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.70, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 136, i32 3}
!131 = !{ptr @pmic8xxx_chk_sync_read._entry, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @pmic8xxx_chk_sync_read._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @pmic8xxx_chk_sync_read._entry.71, !134, !"_entry", i1 false, i1 false}
!134 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 144, i32 3}
!135 = !{ptr @pmic8xxx_chk_sync_read._entry_ptr.72, !134, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.73, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 164, i32 3}
!138 = !{ptr @.str.74, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @pmic8xxx_kp_read_data.__UNIQUE_ID_ddebug227, !137, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!140 = !{ptr @.str.75, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 264, i32 5}
!142 = !{ptr @.str.76, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @pmic8xxx_detect_ghost_keys.__UNIQUE_ID_ddebug229, !141, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!144 = !{ptr @.str.77, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 234, i32 4}
!146 = !{ptr @.str.78, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @__pmic8xxx_kp_scan_matrix.__UNIQUE_ID_ddebug228, !145, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!148 = !{ptr @.str.79, !145, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.80, !145, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.81, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 336, i32 3}
!152 = !{ptr @.str.82, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @pmic8xxx_kp_stuck_irq._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @pmic8xxx_kp_stuck_irq._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @pm8xxx_match_table, !156, !"pm8xxx_match_table", i1 false, i1 false}
!156 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 669, i32 34}
!157 = !{ptr @pm8xxx_kp_pm_ops, !158, !"pm8xxx_kp_pm_ops", i1 false, i1 false}
!158 = !{!"../drivers/input/keyboard/pmic8xxx-keypad.c", i32 666, i32 8}
!159 = !{i32 1, !"wchar_size", i32 2}
!160 = !{i32 1, !"min_enum_size", i32 4}
!161 = !{i32 8, !"branch-target-enforcement", i32 0}
!162 = !{i32 8, !"sign-return-address", i32 0}
!163 = !{i32 8, !"sign-return-address-all", i32 0}
!164 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!165 = !{i32 7, !"uwtable", i32 1}
!166 = !{i32 7, !"frame-pointer", i32 2}
!167 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!168 = !{!"auto-init"}
!169 = !{i32 0, i32 33}
!170 = !{i64 2148968508, i64 2148968513, i64 2148968526, i64 2148968570, i64 2148968604, i64 2148968625}
