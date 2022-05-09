; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/samsung/pinctrl-s3c24xx.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-s3c24xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pin_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_pinctrl_of_match_data = type { ptr, i32 }
%struct.samsung_pin_bank_data = type { ptr, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.s3c24xx_eint_data = type { ptr, [24 x ptr], [6 x i32] }
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.s3c24xx_eint_domain_data = type { ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@s3c2412_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s3c2412_pin_banks, i32 9, i32 0, ptr null, ptr null, ptr @s3c24xx_eint_init, ptr null, ptr null }], section ".init.rodata", align 4
@s3c2412_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s3c2412_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@s3c2416_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s3c2416_pin_banks, i32 11, i32 0, ptr null, ptr null, ptr @s3c24xx_eint_init, ptr null, ptr null }], section ".init.rodata", align 4
@s3c2416_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s3c2416_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@s3c2440_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s3c2440_pin_banks, i32 9, i32 0, ptr null, ptr null, ptr @s3c24xx_eint_init, ptr null, ptr null }], section ".init.rodata", align 4
@s3c2440_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s3c2440_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@s3c2450_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s3c2450_pin_banks, i32 12, i32 0, ptr null, ptr null, ptr @s3c24xx_eint_init, ptr null, ptr null }], section ".init.rodata", align 4
@s3c2450_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s3c2450_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@s3c2412_pin_banks = internal constant [9 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_1bit, i32 0, i8 0, i8 23, i8 0, i32 0, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 16, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 32, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 48, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 64, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 80, i8 0, i8 8, i8 2, i32 2, i32 255, i32 0, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 96, i8 0, i8 16, i8 2, i32 2, i32 16776960, i32 8, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 112, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 128, i8 0, i8 13, i8 0, i32 0, i32 0, i32 0, ptr @.str.8 }], section ".init.rodata", align 4
@bank_type_1bit = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\01\01\00\00\00\00", [6 x i8] c"\00\04\00\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpa\00", [28 x i8] zeroinitializer }, align 32
@bank_type_2bit = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\02\01\02\00\00\00", [6 x i8] c"\00\04\08\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpb\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpd\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpe\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpf\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gph\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpj\00", [28 x i8] zeroinitializer }, align 32
@s3c24xx_eint_irq_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2412-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@s3c24xx_eint_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 497, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get wakeup EINT IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c24xx_eint_init\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/samsung/pinctrl-s3c24xx.c\00", [54 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c24xx_eint_init._entry_ptr = internal global ptr @s3c24xx_eint_init._entry, section ".printk_index", align 4
@s3c24xx_gpf_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @s3c24xx_gpf_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@s3c24xx_gpg_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @s3c24xx_gpg_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@s3c24xx_eint_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.11, i32 531, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wkup irq domain add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c24xx_eint_init._entry_ptr.16 = internal global ptr @s3c24xx_eint_init._entry.14, section ".printk_index", align 4
@s3c2410_eint0_3_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @s3c2410_eint0_3_ack, ptr @s3c2410_eint0_3_mask, ptr null, ptr @s3c2410_eint0_3_unmask, ptr null, ptr null, ptr null, ptr @s3c24xx_eint_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@s3c2412_eint0_3_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr @s3c2412_eint0_3_ack, ptr @s3c2412_eint0_3_mask, ptr null, ptr @s3c2412_eint0_3_unmask, ptr null, ptr null, ptr null, ptr @s3c24xx_eint_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@s3c24xx_eint_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.21, ptr null, ptr null, ptr null, ptr null, ptr @s3c24xx_eint_ack, ptr @s3c24xx_eint_mask, ptr null, ptr @s3c24xx_eint_unmask, ptr null, ptr null, ptr null, ptr @s3c24xx_eint_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c2410-eint0_3\00", [16 x i8] zeroinitializer }, align 32
@s3c24xx_eint_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.11, i32 170, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unsupported external interrupt type\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"s3c24xx_eint_type\00", [46 x i8] zeroinitializer }, align 32
@s3c24xx_eint_type._entry_ptr = internal global ptr @s3c24xx_eint_type._entry, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"s3c2412-eint0_3\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"s3c-eint\00", [23 x i8] zeroinitializer }, align 32
@s3c2416_pin_banks = internal constant [11 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_1bit, i32 0, i8 0, i8 27, i8 0, i32 0, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 16, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 32, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 48, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 64, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 80, i8 0, i8 8, i8 2, i32 2, i32 255, i32 0, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 96, i8 0, i8 8, i8 2, i32 2, i32 65280, i32 8, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 112, i8 0, i8 15, i8 0, i32 0, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 224, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.22 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 240, i8 0, i8 14, i8 0, i32 0, i32 0, i32 0, ptr @.str.23 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 256, i8 0, i8 2, i8 0, i32 0, i32 0, i32 0, ptr @.str.24 }], section ".init.rodata", align 4
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpk\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpl\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpm\00", [28 x i8] zeroinitializer }, align 32
@s3c2440_pin_banks = internal constant [9 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_1bit, i32 0, i8 0, i8 25, i8 0, i32 0, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 16, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 32, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 48, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 64, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 80, i8 0, i8 8, i8 2, i32 2, i32 255, i32 0, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 96, i8 0, i8 16, i8 2, i32 2, i32 16776960, i32 8, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 112, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 208, i8 0, i8 13, i8 0, i32 0, i32 0, i32 0, ptr @.str.8 }], section ".init.rodata", align 4
@s3c2450_pin_banks = internal constant [12 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_1bit, i32 0, i8 0, i8 28, i8 0, i32 0, i32 0, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 16, i8 0, i8 11, i8 0, i32 0, i32 0, i32 0, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 32, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 48, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 64, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 80, i8 0, i8 8, i8 2, i32 2, i32 255, i32 0, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 96, i8 0, i8 16, i8 2, i32 2, i32 16776960, i32 8, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 112, i8 0, i8 15, i8 0, i32 0, i32 0, i32 0, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 208, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 224, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.22 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 240, i8 0, i8 15, i8 0, i32 0, i32 0, i32 0, ptr @.str.23 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit, i32 256, i8 0, i8 2, i8 0, i32 0, i32 0, i32 0, ptr @.str.24 }], section ".init.rodata", align 4
@switch.table.s3c24xx_eint_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 2, i32 6, i32 1, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"bank_type_1bit\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 42, i32 43 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 551, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"bank_type_2bit\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 47, i32 43 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 552, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 553, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 554, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 555, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 556, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 557, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 558, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 559, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [21 x i8] c"s3c24xx_eint_irq_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 452, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 497, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"s3c24xx_gpf_irq_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 428, i32 36 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"s3c24xx_gpg_irq_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 447, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 531, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"s3c2410_eint0_3_chip\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 225, i32 24 }
@___asan_gen_.94 = private unnamed_addr constant [21 x i8] c"s3c2412_eint0_3_chip\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 278, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"s3c24xx_eint_chip\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 338, i32 24 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 226, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 170, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 279, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 339, i32 11 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 584, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 585, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.125 = private constant [45 x i8] c"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 586, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"switch.table.s3c24xx_eint_type\00", align 1
@llvm.compiler.used = appending global [38 x ptr] [ptr @s3c24xx_eint_init._entry, ptr @s3c24xx_eint_init._entry.14, ptr @s3c24xx_eint_init._entry_ptr, ptr @s3c24xx_eint_init._entry_ptr.16, ptr @s3c24xx_eint_type._entry, ptr @s3c24xx_eint_type._entry_ptr, ptr @bank_type_1bit, ptr @.str, ptr @bank_type_2bit, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @s3c24xx_eint_irq_ids, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @s3c24xx_gpf_irq_ops, ptr @s3c24xx_gpg_irq_ops, ptr @.str.15, ptr @s3c2410_eint0_3_chip, ptr @s3c2412_eint0_3_chip, ptr @s3c24xx_eint_chip, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @switch.table.s3c24xx_eint_type], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_1bit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_2bit to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_eint_irq_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_eint_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_gpf_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_gpg_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_eint_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2410_eint0_3_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c2412_eint0_3_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_eint_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_eint_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c24xx_eint_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_eint_init(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_next_child(ptr noundef %3, ptr noundef null) #4
  %cmp.not147 = icmp eq ptr %call, null
  br i1 %cmp.not147, label %entry.cleanup77_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.0148 = phi ptr [ %call5, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @s3c24xx_eint_irq_ids, ptr noundef nonnull %np.0148) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.inc, label %if.end8

for.inc:                                          ; preds = %for.body
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call5 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %np.0148) #4
  %cmp.not = icmp eq ptr %call5, null
  br i1 %cmp.not, label %for.inc.cleanup77_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup77_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

if.end8:                                          ; preds = %for.body
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool3 = icmp ne ptr %7, null
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 124, i32 noundef 3520) #4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %np.0148) #4
  br label %cleanup77

if.end12:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %d, ptr %call.i, align 4
  %call17 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end12.do.end_crit_edge, label %if.end20

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end20.4.do.end_crit_edge, %if.end20.3.do.end_crit_edge, %if.end20.2.do.end_crit_edge, %if.end20.1.do.end_crit_edge, %if.end20.do.end_crit_edge, %if.end12.do.end_crit_edge
  %i.0149.lcssa = phi i32 [ 0, %if.end12.do.end_crit_edge ], [ 1, %if.end20.do.end_crit_edge ], [ 2, %if.end20.1.do.end_crit_edge ], [ 3, %if.end20.2.do.end_crit_edge ], [ 4, %if.end20.3.do.end_crit_edge ], [ 5, %if.end20.4.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %i.0149.lcssa) #7
  tail call void @of_node_put(ptr noundef nonnull %np.0148) #4
  br label %cleanup77

if.end20:                                         ; preds = %if.end12
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call17, ptr %arrayidx, align 4
  %10 = select i1 %tobool3, ptr @s3c2410_demux_eint0_3, ptr @s3c2412_demux_eint0_3
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17, ptr noundef nonnull %10, ptr noundef nonnull %call.i) #4
  %call17.1 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.1)
  %tobool18.not.1 = icmp eq i32 %call17.1, 0
  br i1 %tobool18.not.1, label %if.end20.do.end_crit_edge, label %if.end20.1

if.end20.do.end_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.1:                                       ; preds = %if.end20
  %arrayidx.1 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call17.1, ptr %arrayidx.1, align 4
  %12 = select i1 %tobool3, ptr @s3c2410_demux_eint0_3, ptr @s3c2412_demux_eint0_3
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17.1, ptr noundef nonnull %12, ptr noundef nonnull %call.i) #4
  %call17.2 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.2)
  %tobool18.not.2 = icmp eq i32 %call17.2, 0
  br i1 %tobool18.not.2, label %if.end20.1.do.end_crit_edge, label %if.end20.2

if.end20.1.do.end_crit_edge:                      ; preds = %if.end20.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.2:                                       ; preds = %if.end20.1
  %arrayidx.2 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call17.2, ptr %arrayidx.2, align 4
  %14 = select i1 %tobool3, ptr @s3c2410_demux_eint0_3, ptr @s3c2412_demux_eint0_3
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17.2, ptr noundef nonnull %14, ptr noundef nonnull %call.i) #4
  %call17.3 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.3)
  %tobool18.not.3 = icmp eq i32 %call17.3, 0
  br i1 %tobool18.not.3, label %if.end20.2.do.end_crit_edge, label %if.end20.3

if.end20.2.do.end_crit_edge:                      ; preds = %if.end20.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.3:                                       ; preds = %if.end20.2
  %arrayidx.3 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17.3, ptr %arrayidx.3, align 4
  %16 = select i1 %tobool3, ptr @s3c2410_demux_eint0_3, ptr @s3c2412_demux_eint0_3
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17.3, ptr noundef nonnull %16, ptr noundef nonnull %call.i) #4
  %call17.4 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.4)
  %tobool18.not.4 = icmp eq i32 %call17.4, 0
  br i1 %tobool18.not.4, label %if.end20.3.do.end_crit_edge, label %if.end20.4

if.end20.3.do.end_crit_edge:                      ; preds = %if.end20.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.4:                                       ; preds = %if.end20.3
  %arrayidx.4 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call17.4, ptr %arrayidx.4, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17.4, ptr noundef nonnull @s3c24xx_demux_eint4_7, ptr noundef nonnull %call.i) #4
  %call17.5 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0148, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.5)
  %tobool18.not.5 = icmp eq i32 %call17.5, 0
  br i1 %tobool18.not.5, label %if.end20.4.do.end_crit_edge, label %if.end20.5

if.end20.4.do.end_crit_edge:                      ; preds = %if.end20.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.5:                                       ; preds = %if.end20.4
  %arrayidx.5 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call17.5, ptr %arrayidx.5, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call17.5, ptr noundef nonnull @s3c24xx_demux_eint8_23, ptr noundef nonnull %call.i) #4
  tail call void @of_node_put(ptr noundef nonnull %np.0148) #4
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 11
  %19 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp25155.not = icmp eq i32 %20, 0
  br i1 %cmp25155.not, label %if.end20.5.cleanup77_crit_edge, label %for.body26.lr.ph

if.end20.5.cleanup77_crit_edge:                   ; preds = %if.end20.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

for.body26.lr.ph:                                 ; preds = %if.end20.5
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 10
  %21 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pin_banks, align 4
  %frombool39 = zext i1 %tobool3 to i8
  br label %for.body26

for.body26:                                       ; preds = %for.inc74.for.body26_crit_edge, %for.body26.lr.ph
  %i.1158 = phi i32 [ 0, %for.body26.lr.ph ], [ %inc75, %for.inc74.for.body26_crit_edge ]
  %bank.0156 = phi ptr [ %22, %for.body26.lr.ph ], [ %incdec.ptr, %for.inc74.for.body26_crit_edge ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 6
  %23 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp28.not = icmp eq i32 %24, 2
  br i1 %cmp28.not, label %if.end30, label %for.body26.for.inc74_crit_edge

for.body26.for.inc74_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc74

if.end30:                                         ; preds = %for.body26
  %call.i138 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #4
  %tobool32.not = icmp eq ptr %call.i138, null
  br i1 %tobool32.not, label %if.end30.cleanup77_crit_edge, label %if.end34

if.end30.cleanup77_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

if.end34:                                         ; preds = %if.end30
  %25 = ptrtoint ptr %call.i138 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bank.0156, ptr %call.i138, align 4
  %eint_data36 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %call.i138, i32 0, i32 1
  %26 = ptrtoint ptr %eint_data36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i, ptr %eint_data36, align 4
  %eint0_3_parent_only38 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %call.i138, i32 0, i32 2
  %27 = ptrtoint ptr %eint0_3_parent_only38 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool39, ptr %eint0_3_parent_only38, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 8
  %28 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %eint_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp40 = icmp eq i32 %29, 0
  %cond41 = select i1 %cmp40, ptr @s3c24xx_gpf_irq_ops, ptr @s3c24xx_gpg_irq_ops
  %of_node42 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 12
  %30 = ptrtoint ptr %of_node42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node42, align 4
  %nr_pins = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 3
  %32 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nr_pins, align 4
  %conv = zext i8 %33 to i32
  %tobool.not.i.i = icmp eq ptr %31, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %31, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv, i32 noundef %conv, i32 noundef 0, ptr noundef nonnull %cond41, ptr noundef nonnull %call.i138) #4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 14
  %34 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool45.not = icmp eq ptr %call1.i, null
  br i1 %tobool45.not, label %do.end49, label %if.end50

do.end49:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.15) #7
  br label %cleanup77

if.end50:                                         ; preds = %if.end34
  %35 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %eint_offset, align 4
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0156, i32 0, i32 7
  %37 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %eint_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool53.not150 = icmp eq i32 %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %36)
  %cmp55151 = icmp ugt i32 %36, 23
  %or.cond152 = select i1 %tobool53.not150, i1 true, i1 %cmp55151
  br i1 %or.cond152, label %if.end50.for.inc74_crit_edge, label %if.end50.if.end58_crit_edge

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  br label %if.end58

if.end50.for.inc74_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc74

if.end58:                                         ; preds = %for.inc65.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %irq27.0154 = phi i32 [ %irq27.1, %for.inc65.if.end58_crit_edge ], [ %36, %if.end50.if.end58_crit_edge ]
  %mask.0153 = phi i32 [ %shr, %for.inc65.if.end58_crit_edge ], [ %38, %if.end50.if.end58_crit_edge ]
  %and = and i32 %mask.0153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool59.not = icmp eq i32 %and, 0
  br i1 %tobool59.not, label %if.end58.for.inc65_crit_edge, label %if.end61

if.end58.for.inc65_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc65

if.end61:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %39 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %irq_domain, align 4
  %arrayidx63 = getelementptr %struct.s3c24xx_eint_data, ptr %call.i, i32 0, i32 1, i32 %irq27.0154
  %41 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %arrayidx63, align 4
  %inc64 = add nuw nsw i32 %irq27.0154, 1
  br label %for.inc65

for.inc65:                                        ; preds = %if.end61, %if.end58.for.inc65_crit_edge
  %irq27.1 = phi i32 [ %inc64, %if.end61 ], [ %irq27.0154, %if.end58.for.inc65_crit_edge ]
  %shr = lshr i32 %mask.0153, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask.0153)
  %tobool53.not = icmp ult i32 %mask.0153, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %irq27.1)
  %cmp55 = icmp ugt i32 %irq27.1, 23
  %or.cond = select i1 %tobool53.not, i1 true, i1 %cmp55
  br i1 %or.cond, label %for.inc65.for.inc74_crit_edge, label %for.inc65.if.end58_crit_edge

for.inc65.if.end58_crit_edge:                     ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

for.inc65.for.inc74_crit_edge:                    ; preds = %for.inc65
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc74

for.inc74:                                        ; preds = %for.inc65.for.inc74_crit_edge, %if.end50.for.inc74_crit_edge, %for.body26.for.inc74_crit_edge
  %inc75 = add nuw i32 %i.1158, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.0156, i32 1
  %42 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_banks, align 4
  %cmp25 = icmp ult i32 %inc75, %43
  br i1 %cmp25, label %for.inc74.for.body26_crit_edge, label %for.inc74.cleanup77_crit_edge

for.inc74.cleanup77_crit_edge:                    ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup77

for.inc74.for.body26_crit_edge:                   ; preds = %for.inc74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body26

cleanup77:                                        ; preds = %for.inc74.cleanup77_crit_edge, %do.end49, %if.end30.cleanup77_crit_edge, %if.end20.5.cleanup77_crit_edge, %do.end, %if.then11, %for.inc.cleanup77_crit_edge, %entry.cleanup77_crit_edge
  %retval.4 = phi i32 [ -12, %if.then11 ], [ -6, %do.end ], [ -6, %do.end49 ], [ 0, %if.end20.5.cleanup77_crit_edge ], [ -19, %entry.cleanup77_crit_edge ], [ 0, %for.inc74.cleanup77_crit_edge ], [ -12, %if.end30.cleanup77_crit_edge ], [ -19, %for.inc.cleanup77_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_demux_eint0_3(ptr nocapture noundef readonly %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %1, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @generic_handle_domain_irq(ptr noundef %5, i32 noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.end11, label %do.body6, !prof !100

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c24xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 242, 0\0A.popsection", ""() #4, !srcloc !101
  unreachable

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_demux_eint4_7(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i.i) #4
  br label %chained_irq_enter.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i.i, label %if.else.i.i.chained_irq_enter.exit.i_crit_edge, label %if.then6.i.i

if.else.i.i.chained_irq_enter.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %13(ptr noundef %irq_data4.i.i) #4
  br label %chained_irq_enter.exit.i

chained_irq_enter.exit.i:                         ; preds = %if.then6.i.i, %if.else.i.i.chained_irq_enter.exit.i_crit_edge, %if.then2.i.i, %entry.chained_irq_enter.exit.i_crit_edge
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 168
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 164
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  %20 = xor i32 %19, -1
  %21 = and i32 %16, %20
  %22 = lshr i32 %21, 24
  %and11.i = and i32 %22, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not41.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not41.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %chained_irq_enter.exit.i.while.body.i_crit_edge

chained_irq_enter.exit.i.while.body.i_crit_edge:  ; preds = %chained_irq_enter.exit.i
  br label %while.body.i

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %do.end24.i.while.body.i_crit_edge, %chained_irq_enter.exit.i.while.body.i_crit_edge
  %pend.042.i = phi i32 [ %and14.i, %do.end24.i.while.body.i_crit_edge ], [ %and11.i, %chained_irq_enter.exit.i.while.body.i_crit_edge ]
  %23 = tail call i32 @llvm.cttz.i32(i32 %pend.042.i, i1 true) #4, !range !105
  %arrayidx.i = getelementptr %struct.s3c24xx_eint_data, ptr %1, i32 0, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %call15.i = tail call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %23) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.end24.i, label %do.body19.i, !prof !100

do.body19.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c24xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #4, !srcloc !106
  unreachable

do.end24.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %23
  %neg13.i = xor i32 %shl.i, -1
  %and14.i = and i32 %pend.042.i, %neg13.i
  %tobool.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not.i, label %do.end24.i.while.end.i_crit_edge, label %do.end24.i.while.body.i_crit_edge

do.end24.i.while.body.i_crit_edge:                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end24.i.while.end.i_crit_edge:                 ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end24.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %26 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i38.i = icmp eq ptr %27, null
  br i1 %tobool.not.i38.i, label %if.else.i39.i, label %while.end.i.s3c24xx_demux_eint.exit_crit_edge

while.end.i.s3c24xx_demux_eint.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c24xx_demux_eint.exit

if.else.i39.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %28 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c24xx_demux_eint.exit

s3c24xx_demux_eint.exit:                          ; preds = %if.else.i39.i, %while.end.i.s3c24xx_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %29, %if.else.i39.i ], [ %27, %while.end.i.s3c24xx_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_demux_eint8_23(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i.i, align 4
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i.i, align 8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_data.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i.i) #4
  br label %chained_irq_enter.exit.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i.i, label %if.else.i.i.chained_irq_enter.exit.i_crit_edge, label %if.then6.i.i

if.else.i.i.chained_irq_enter.exit.i_crit_edge:   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.then6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %13(ptr noundef %irq_data4.i.i) #4
  br label %chained_irq_enter.exit.i

chained_irq_enter.exit.i:                         ; preds = %if.then6.i.i, %if.else.i.i.chained_irq_enter.exit.i_crit_edge, %if.then2.i.i, %entry.chained_irq_enter.exit.i_crit_edge
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 168
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !103
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %18, i32 164
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #4, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !104
  %20 = xor i32 %19, -1
  %21 = and i32 %16, 16776960
  %22 = and i32 %21, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not41.i = icmp eq i32 %22, 0
  br i1 %tobool.not41.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %while.body.i.preheader

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.preheader:                           ; preds = %chained_irq_enter.exit.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %while.body.i

while.body.i:                                     ; preds = %do.end24.i.while.body.i_crit_edge, %while.body.i.preheader
  %pend.042.i = phi i32 [ %and14.i, %do.end24.i.while.body.i_crit_edge ], [ %23, %while.body.i.preheader ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %pend.042.i, i1 true) #4, !range !105
  %arrayidx.i = getelementptr %struct.s3c24xx_eint_data, ptr %1, i32 0, i32 1, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %sub.i = add nsw i32 %24, -8
  %call15.i = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %sub.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %do.end24.i, label %do.body19.i, !prof !100

do.body19.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c24xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 370, 0\0A.popsection", ""() #4, !srcloc !106
  unreachable

do.end24.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %24
  %neg13.i = xor i32 %shl.i, -1
  %and14.i = and i32 %pend.042.i, %neg13.i
  %tobool.not.i = icmp eq i32 %and14.i, 0
  br i1 %tobool.not.i, label %do.end24.i.while.end.i_crit_edge, label %do.end24.i.while.body.i_crit_edge

do.end24.i.while.body.i_crit_edge:                ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end24.i.while.end.i_crit_edge:                 ; preds = %do.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end24.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %27 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i38.i = icmp eq ptr %28, null
  br i1 %tobool.not.i38.i, label %if.else.i39.i, label %while.end.i.s3c24xx_demux_eint.exit_crit_edge

while.end.i.s3c24xx_demux_eint.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c24xx_demux_eint.exit

if.else.i39.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c24xx_demux_eint.exit

s3c24xx_demux_eint.exit:                          ; preds = %if.else.i39.i, %while.end.i.s3c24xx_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %30, %if.else.i39.i ], [ %28, %while.end.i.s3c24xx_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_demux_eint0_3(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.end.i.chained_irq_enter.exit.sink.split_crit_edge

if.end.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.sink.split

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  tail call void %9(ptr noundef %irq_data.i) #4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.else.i.chained_irq_enter.exit.sink.split_crit_edge

if.else.i.chained_irq_enter.exit.sink.split_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.sink.split

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit.sink.split:                ; preds = %if.else.i.chained_irq_enter.exit.sink.split_crit_edge, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge
  %.sink = phi ptr [ %7, %if.end.i.chained_irq_enter.exit.sink.split_crit_edge ], [ %11, %if.else.i.chained_irq_enter.exit.sink.split_crit_edge ]
  tail call void %.sink(ptr noundef %irq_data.i) #4
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %chained_irq_enter.exit.sink.split, %if.else.i.chained_irq_enter.exit_crit_edge, %entry.chained_irq_enter.exit_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %1, i32 0, i32 1, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %15, i32 noundef %13) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end12, label %do.body7, !prof !100

do.body7:                                         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c24xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 298, 0\0A.popsection", ""() #4, !srcloc !107
  unreachable

do.end12:                                         ; preds = %chained_irq_enter.exit
  %16 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i21 = icmp eq ptr %17, null
  br i1 %tobool.not.i21, label %if.else.i22, label %do.end12.chained_irq_exit.exit_crit_edge

do.end12.chained_irq_exit.exit_crit_edge:         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_exit.exit

if.else.i22:                                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %18 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i22, %do.end12.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %19, %if.else.i22 ], [ %17, %do.end12.chained_irq_exit.exit_crit_edge ]
  tail call void %.sink.i(ptr noundef %irq_data.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_gpf_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_mask, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %add = add i32 %7, %hw
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hw)
  %cmp = icmp ult i32 %hw, 4
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %eint0_3_parent_only = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %eint0_3_parent_only to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %eint0_3_parent_only, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  %s3c2412_eint0_3_chip.s3c2410_eint0_3_chip = select i1 %tobool3.not, ptr @s3c2412_eint0_3_chip, ptr @s3c2410_eint0_3_chip
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %s3c2410_eint0_3_chip.sink = phi ptr [ %s3c2412_eint0_3_chip.s3c2410_eint0_3_chip, %if.then2 ], [ @s3c24xx_eint_chip, %if.end.if.end7_crit_edge ]
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull %s3c2410_eint0_3_chip.sink, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_eint0_3_ack(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %eint_data1 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %eint_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint_data1, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %7, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip.exit_crit_edge, label %cond.true.i

entry.irq_get_chip.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %entry.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %13, %cond.true.i ], [ null, %entry.irq_get_chip.exit_crit_edge ]
  %irq_ack = getelementptr inbounds %struct.irq_chip, ptr %cond.i, i32 0, i32 6
  %14 = ptrtoint ptr %irq_ack to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_ack, align 4
  %call3 = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  tail call void %15(ptr noundef %call3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_eint0_3_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %eint_data1 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %eint_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint_data1, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %7, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip.exit_crit_edge, label %cond.true.i

entry.irq_get_chip.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %entry.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %13, %cond.true.i ], [ null, %entry.irq_get_chip.exit_crit_edge ]
  %irq_mask = getelementptr inbounds %struct.irq_chip, ptr %cond.i, i32 0, i32 7
  %14 = ptrtoint ptr %irq_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_mask, align 4
  %call3 = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  tail call void %15(ptr noundef %call3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2410_eint0_3_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %eint_data1 = getelementptr inbounds %struct.s3c24xx_eint_domain_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %eint_data1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %eint_data1, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c24xx_eint_data, ptr %7, i32 0, i32 2, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_get_chip.exit_crit_edge, label %cond.true.i

entry.irq_get_chip.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %irq_get_chip.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip.i, align 4
  br label %irq_get_chip.exit

irq_get_chip.exit:                                ; preds = %cond.true.i, %entry.irq_get_chip.exit_crit_edge
  %cond.i = phi ptr [ %13, %cond.true.i ], [ null, %entry.irq_get_chip.exit_crit_edge ]
  %irq_unmask = getelementptr inbounds %struct.irq_chip, ptr %cond.i, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask, align 4
  %call3 = tail call ptr @irq_get_irq_data(i32 noundef %11) #4
  tail call void %15(ptr noundef %call3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_eint_type(ptr nocapture noundef readonly %data, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 8
  br i1 %8, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.18) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %11 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %switch.lobit.not = icmp eq i8 %11, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.s3c24xx_eint_type, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add = add i32 %7, %5
  %and.i = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %common.i.i2.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %13 = ptrtoint ptr %common.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %common.i.i2.i, align 4
  %handle_irq.i3.i = getelementptr inbounds %struct.irq_desc, ptr %14, i32 0, i32 3
  %handle_level_irq.handle_edge_irq.i = select i1 %tobool.not.i, ptr @handle_level_irq, ptr @handle_edge_irq
  %15 = ptrtoint ptr %handle_irq.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %handle_level_irq.handle_edge_irq.i, ptr %handle_irq.i3.i, align 4
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_base, align 4
  %add.frozen = freeze i32 %add
  %div = sdiv i32 %add.frozen, 8
  %mul = shl nsw i32 %div, 2
  %add2 = add nsw i32 %mul, 136
  %add.ptr = getelementptr i8, ptr %17, i32 %add2
  %18 = mul i32 %div, 8
  %rem.decomposed = sub i32 %add.frozen, %18
  %conv = shl nsw i32 %rem.decomposed, 2
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !102
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  %conv6 = and i32 %conv, 252
  %shl = shl i32 15, %conv6
  %neg = xor i32 %shl, -1
  %and = and i32 %20, %neg
  %shl8 = shl i32 %switch.load, %conv6
  %or = or i32 %and, %shl8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !110
  tail call void @arm_heavy_mb() #4
  %21 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #4, !srcloc !111
  %22 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hwirq, align 4
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %26 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt_base, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %29
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %25, align 1
  %conv.i = zext i8 %31 to i32
  %32 = trunc i32 %23 to i8
  %conv1.i = mul i8 %31, %32
  %notmask.i = shl nsw i32 -1, %conv.i
  %sub.i = xor i32 %notmask.i, -1
  %slock.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #4
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !102
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  %conv9.i = zext i8 %conv1.i to i32
  %shl10.i = shl i32 %sub.i, %conv9.i
  %neg.i = xor i32 %shl10.i, -1
  %and.i33 = and i32 %34, %neg.i
  %eint_func.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 5
  %35 = ptrtoint ptr %eint_func.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %eint_func.i, align 4
  %conv11.i = zext i8 %36 to i32
  %shl13.i = shl i32 %conv11.i, %conv9.i
  %or.i = or i32 %shl13.i, %and.i33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !113
  tail call void @arm_heavy_mb() #4
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #4, !srcloc !111
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_eint0_3_ack(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  tail call void @arm_heavy_mb() #4
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_eint0_3_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !102
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %9
  %or = or i32 %shl, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %or)
  %11 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_base, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c2412_eint0_3_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 164
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !102
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %9
  %neg = xor i32 %shl, -1
  %and = and i32 %7, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  tail call void @arm_heavy_mb() #4
  %10 = tail call i32 @llvm.bswap.i32(i32 %and)
  %11 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_base, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_eint_ack(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %7, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %conv1 = and i32 %add, 255
  %shl = shl nuw i32 1, %conv1
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_eint_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %7, %5
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !102
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %conv3 = and i32 %add, 255
  %shl = shl nuw i32 1, %conv3
  %or = or i32 %11, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %or)
  %13 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_base, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c24xx_eint_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %7, %5
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 164
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !102
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !122
  %conv3 = and i32 %add, 255
  %shl = shl nuw i32 1, %conv3
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_base, align 4
  %add.ptr5 = getelementptr i8, ptr %14, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %12) #4, !srcloc !111
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c24xx_gpg_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_mask, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %eint_offset, align 4
  %add = add i32 %7, %hw
  %shl = shl nuw i32 1, %add
  %and = and i32 %shl, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @s3c24xx_eint_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @s3c2412_of_data, !1, !"s3c2412_of_data", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 570, i32 44}
!2 = !{ptr @s3c2416_of_data, !3, !"s3c2416_of_data", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 597, i32 44}
!4 = !{ptr @s3c2440_of_data, !5, !"s3c2440_of_data", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 622, i32 44}
!6 = !{ptr @s3c2450_of_data, !7, !"s3c2450_of_data", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 650, i32 44}
!8 = !{ptr @s3c2412_pin_ctrl, !9, !"s3c2412_pin_ctrl", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 562, i32 38}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 551, i32 2}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 552, i32 2}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 553, i32 2}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 554, i32 2}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 555, i32 2}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 556, i32 2}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 557, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 558, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 559, i32 2}
!28 = !{ptr @s3c2412_pin_banks, !29, !"s3c2412_pin_banks", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 550, i32 43}
!30 = !{ptr @bank_type_1bit, !31, !"bank_type_1bit", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 42, i32 43}
!32 = !{ptr @bank_type_2bit, !33, !"bank_type_2bit", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 47, i32 43}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 497, i32 4}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s3c24xx_eint_init._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @s3c24xx_eint_init._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 531, i32 4}
!44 = !{ptr @s3c24xx_eint_init._entry.14, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @s3c24xx_eint_init._entry_ptr.16, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @s3c24xx_eint_irq_ids, !47, !"s3c24xx_eint_irq_ids", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 452, i32 34}
!48 = distinct !{null, !49, !"s3c2410_eint_handlers", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 386, i32 27}
!50 = distinct !{null, !51, !"s3c2412_eint_handlers", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 395, i32 27}
!52 = !{ptr @s3c24xx_gpf_irq_ops, !53, !"s3c24xx_gpf_irq_ops", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 428, i32 36}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 226, i32 11}
!56 = !{ptr @s3c2410_eint0_3_chip, !57, !"s3c2410_eint0_3_chip", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 225, i32 24}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 170, i32 3}
!60 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @s3c24xx_eint_type._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @s3c24xx_eint_type._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 279, i32 11}
!65 = !{ptr @s3c2412_eint0_3_chip, !66, !"s3c2412_eint0_3_chip", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 278, i32 24}
!67 = !{ptr @.str.21, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 339, i32 11}
!69 = !{ptr @s3c24xx_eint_chip, !70, !"s3c24xx_eint_chip", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 338, i32 24}
!71 = !{ptr @s3c24xx_gpg_irq_ops, !72, !"s3c24xx_gpg_irq_ops", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 447, i32 36}
!73 = !{ptr @s3c2416_pin_ctrl, !74, !"s3c2416_pin_ctrl", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 589, i32 38}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 584, i32 2}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 585, i32 2}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 586, i32 2}
!81 = !{ptr @s3c2416_pin_banks, !82, !"s3c2416_pin_banks", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 575, i32 43}
!83 = !{ptr @s3c2440_pin_ctrl, !84, !"s3c2440_pin_ctrl", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 614, i32 38}
!85 = !{ptr @s3c2440_pin_banks, !86, !"s3c2440_pin_banks", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 602, i32 43}
!87 = !{ptr @s3c2450_pin_ctrl, !88, !"s3c2450_pin_ctrl", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 642, i32 38}
!89 = !{ptr @s3c2450_pin_banks, !90, !"s3c2450_pin_banks", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c24xx.c", i32 627, i32 43}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 2000, i32 1}
!101 = !{i64 2153945218, i64 2153945724, i64 2153945255, i64 2153945311, i64 2153945345, i64 2153945369, i64 2153945410, i64 2153945431, i64 2153945459, i64 2153945493}
!102 = !{i64 4875165}
!103 = !{i64 2153953228}
!104 = !{i64 2153953727}
!105 = !{i32 0, i32 33}
!106 = !{i64 2153954089, i64 2153954595, i64 2153954126, i64 2153954182, i64 2153954216, i64 2153954240, i64 2153954281, i64 2153954302, i64 2153954330, i64 2153954364}
!107 = !{i64 2153949058, i64 2153949564, i64 2153949095, i64 2153949151, i64 2153949185, i64 2153949209, i64 2153949250, i64 2153949271, i64 2153949299, i64 2153949333}
!108 = !{i8 0, i8 2}
!109 = !{i64 2153944491}
!110 = !{i64 2153944695}
!111 = !{i64 4874747}
!112 = !{i64 2153941621}
!113 = !{i64 2153941821}
!114 = !{i64 2153946708}
!115 = !{i64 2153947393}
!116 = !{i64 2153947615}
!117 = !{i64 2153948294}
!118 = !{i64 2153948516}
!119 = !{i64 2153950554}
!120 = !{i64 2153951257}
!121 = !{i64 2153951479}
!122 = !{i64 2153952158}
!123 = !{i64 2153952380}
