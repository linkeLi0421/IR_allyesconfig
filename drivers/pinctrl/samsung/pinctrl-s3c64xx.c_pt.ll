; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/samsung/pinctrl-s3c64xx.c_pt.bc'
source_filename = "../drivers/pinctrl/samsung/pinctrl-s3c64xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.samsung_pin_ctrl = type { ptr, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.samsung_pinctrl_of_match_data = type { ptr, i32 }
%struct.samsung_pin_bank_data = type { ptr, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.samsung_pin_bank_type = type { [6 x i8], [6 x i8] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_pinctrl_drv_data = type { %struct.list_head, ptr, ptr, i32, %struct.pinctrl_desc, ptr, ptr, i32, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.samsung_pin_bank = type { ptr, ptr, i32, i8, ptr, i8, i32, i32, i32, ptr, i32, ptr, ptr, ptr, ptr, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.raw_spinlock, [7 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.65, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.65 = type { ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.s3c64xx_eint_gpio_data = type { ptr, [0 x ptr] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.s3c64xx_eint0_data = type { ptr, [28 x ptr], [28 x i8] }
%struct.s3c64xx_eint0_domain_data = type { ptr, [0 x i8] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@s3c64xx_pin_ctrl = internal constant [1 x %struct.samsung_pin_ctrl] [%struct.samsung_pin_ctrl { ptr @s3c64xx_pin_banks0, i32 17, i32 0, ptr null, ptr @s3c64xx_eint_gpio_init, ptr @s3c64xx_eint_eint0_init, ptr null, ptr null }], section ".init.rodata", align 4
@s3c64xx_of_data = dso_local local_unnamed_addr constant %struct.samsung_pinctrl_of_match_data { ptr @s3c64xx_pin_ctrl, i32 1 }, section ".init.rodata", align 4
@s3c64xx_pin_banks0 = internal constant [17 x %struct.samsung_pin_bank_data] [%struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 0, i8 0, i8 8, i8 7, i32 1, i32 255, i32 0, ptr @.str }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 32, i8 0, i8 7, i8 7, i32 1, i32 127, i32 8, ptr @.str.1 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 64, i8 0, i8 8, i8 7, i32 1, i32 255, i32 16, ptr @.str.2 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 96, i8 0, i8 5, i8 7, i32 1, i32 31, i32 32, ptr @.str.3 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 128, i8 0, i8 5, i8 0, i32 0, i32 0, i32 0, ptr @.str.4 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 160, i8 0, i8 16, i8 3, i32 1, i32 16383, i32 48, ptr @.str.5 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_off, i32 192, i8 0, i8 7, i8 7, i32 1, i32 127, i32 64, ptr @.str.6 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit2_off, i32 224, i8 0, i8 10, i8 7, i32 1, i32 1023, i32 80, ptr @.str.7 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 256, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.8 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 288, i8 0, i8 12, i8 0, i32 0, i32 0, i32 0, ptr @.str.9 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit2_alive, i32 2048, i8 0, i8 16, i8 0, i32 0, i32 0, i32 0, ptr @.str.10 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit2_alive, i32 2064, i8 0, i8 15, i8 3, i32 2, i32 32512, i32 16, ptr @.str.11 }, %struct.samsung_pin_bank_data { ptr @bank_type_4bit_alive, i32 2080, i8 0, i8 6, i8 3, i32 2, i32 31, i32 23, ptr @.str.12 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_alive, i32 2096, i8 0, i8 16, i8 2, i32 2, i32 65535, i32 0, ptr @.str.13 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 320, i8 0, i8 16, i8 3, i32 1, i32 65535, i32 96, ptr @.str.14 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 352, i8 0, i8 15, i8 3, i32 1, i32 32767, i32 112, ptr @.str.15 }, %struct.samsung_pin_bank_data { ptr @bank_type_2bit_off, i32 384, i8 0, i8 9, i8 3, i32 1, i32 511, i32 128, ptr @.str.16 }], section ".init.rodata", align 4
@bank_type_4bit_off = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\00\02\02", [6 x i8] c"\00\04\08\00\0C\10" }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpa\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpb\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpc\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpd\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpe\00", [28 x i8] zeroinitializer }, align 32
@bank_type_2bit_off = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\02\01\02\00\02\02", [6 x i8] c"\00\04\08\00\0C\10" }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpf\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpg\00", [28 x i8] zeroinitializer }, align 32
@bank_type_4bit2_off = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\00\02\02", [6 x i8] c"\00\08\0C\00\10\14" }, [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gph\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpi\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpj\00", [28 x i8] zeroinitializer }, align 32
@bank_type_4bit2_alive = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\00\00\00", [6 x i8] c"\00\08\0C\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpk\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpl\00", [28 x i8] zeroinitializer }, align 32
@bank_type_4bit_alive = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\04\01\02\00\00\00", [6 x i8] c"\00\04\08\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpm\00", [28 x i8] zeroinitializer }, align 32
@bank_type_2bit_alive = internal constant { %struct.samsung_pin_bank_type, [20 x i8] } { %struct.samsung_pin_bank_type { [6 x i8] c"\02\01\02\00\00\00", [6 x i8] c"\00\04\08\00\00\00" }, [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpn\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpo\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpp\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gpq\00", [28 x i8] zeroinitializer }, align 32
@s3c64xx_eint_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.19, i32 458, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"irq number not available\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"s3c64xx_eint_gpio_init\00", [41 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/pinctrl/samsung/pinctrl-s3c64xx.c\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@s3c64xx_eint_gpio_init._entry_ptr = internal global ptr @s3c64xx_eint_gpio_init._entry, section ".printk_index", align 4
@s3c64xx_gpio_irqd_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @s3c64xx_gpio_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@s3c64xx_eint_gpio_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.19, i32 477, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpio irq domain add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c64xx_eint_gpio_init._entry_ptr.24 = internal global ptr @s3c64xx_eint_gpio_init._entry.22, section ".printk_index", align 4
@s3c64xx_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_gpio_irq_ack, ptr @s3c64xx_gpio_irq_mask, ptr null, ptr @s3c64xx_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @s3c64xx_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@s3c64xx_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.19, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013unsupported external interrupt type\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"s3c64xx_gpio_irq_set_type\00", [38 x i8] zeroinitializer }, align 32
@s3c64xx_gpio_irq_set_type._entry_ptr = internal global ptr @s3c64xx_gpio_irq_set_type._entry, section ".printk_index", align 4
@s3c64xx_eint0_irq_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c64xx-wakeup-eint\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@s3c64xx_eint_eint0_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.19, i32 715, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to get wakeup EINT IRQ %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s3c64xx_eint_eint0_init\00", [40 x i8] zeroinitializer }, align 32
@s3c64xx_eint_eint0_init._entry_ptr = internal global ptr @s3c64xx_eint_eint0_init._entry, section ".printk_index", align 4
@s3c64xx_eint0_irqd_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @s3c64xx_eint0_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@s3c64xx_eint_eint0_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.19, i32 749, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wkup irq domain add failed\0A\00", [36 x i8] zeroinitializer }, align 32
@s3c64xx_eint_eint0_init._entry_ptr.32 = internal global ptr @s3c64xx_eint_eint0_init._entry.30, section ".printk_index", align 4
@s3c64xx_eint0_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr @s3c64xx_eint0_irq_ack, ptr @s3c64xx_eint0_irq_mask, ptr null, ptr @s3c64xx_eint0_irq_unmask, ptr null, ptr null, ptr null, ptr @s3c64xx_eint0_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EINT0\00", [26 x i8] zeroinitializer }, align 32
@s3c64xx_eint0_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.34, ptr @.str.19, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"s3c64xx_eint0_irq_set_type\00", [37 x i8] zeroinitializer }, align 32
@s3c64xx_eint0_irq_set_type._entry_ptr = internal global ptr @s3c64xx_eint0_irq_set_type._entry, section ".printk_index", align 4
@switch.table.s3c64xx_gpio_irq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 2, i32 6, i32 1, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@switch.table.s3c64xx_eint0_irq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 2, i32 6, i32 1, i32 4, i32 4, i32 4, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.35 = private unnamed_addr constant [19 x i8] c"bank_type_4bit_off\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 66, i32 43 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 770, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 771, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 772, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 773, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 774, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"bank_type_2bit_off\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 86, i32 43 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 775, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 776, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"bank_type_4bit2_off\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 76, i32 43 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 777, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 778, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 779, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [22 x i8] c"bank_type_4bit2_alive\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 81, i32 43 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 780, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 781, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [21 x i8] c"bank_type_4bit_alive\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 71, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 782, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant [21 x i8] c"bank_type_2bit_alive\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 91, i32 43 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 783, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 784, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 785, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 786, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 458, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [22 x i8] c"s3c64xx_gpio_irqd_ops\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 400, i32 36 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 477, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant [22 x i8] c"s3c64xx_gpio_irq_chip\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 374, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 375, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 350, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [22 x i8] c"s3c64xx_eint0_irq_ids\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 676, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 715, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant [23 x i8] c"s3c64xx_eint0_irqd_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 670, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 749, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [23 x i8] c"s3c64xx_eint0_irq_chip\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 584, i32 24 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 585, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private constant [45 x i8] c"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 556, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [39 x i8] c"switch.table.s3c64xx_gpio_irq_set_type\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [40 x i8] c"switch.table.s3c64xx_eint0_irq_set_type\00", align 1
@llvm.compiler.used = appending global [56 x ptr] [ptr @s3c64xx_eint0_irq_set_type._entry, ptr @s3c64xx_eint0_irq_set_type._entry_ptr, ptr @s3c64xx_eint_eint0_init._entry, ptr @s3c64xx_eint_eint0_init._entry.30, ptr @s3c64xx_eint_eint0_init._entry_ptr, ptr @s3c64xx_eint_eint0_init._entry_ptr.32, ptr @s3c64xx_eint_gpio_init._entry, ptr @s3c64xx_eint_gpio_init._entry.22, ptr @s3c64xx_eint_gpio_init._entry_ptr, ptr @s3c64xx_eint_gpio_init._entry_ptr.24, ptr @s3c64xx_gpio_irq_set_type._entry, ptr @s3c64xx_gpio_irq_set_type._entry_ptr, ptr @bank_type_4bit_off, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bank_type_2bit_off, ptr @.str.5, ptr @.str.6, ptr @bank_type_4bit2_off, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bank_type_4bit2_alive, ptr @.str.10, ptr @.str.11, ptr @bank_type_4bit_alive, ptr @.str.12, ptr @bank_type_2bit_alive, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @s3c64xx_gpio_irqd_ops, ptr @.str.23, ptr @s3c64xx_gpio_irq_chip, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @s3c64xx_eint0_irq_ids, ptr @.str.28, ptr @.str.29, ptr @s3c64xx_eint0_irqd_ops, ptr @.str.31, ptr @s3c64xx_eint0_irq_chip, ptr @.str.33, ptr @.str.34, ptr @switch.table.s3c64xx_gpio_irq_set_type, ptr @switch.table.s3c64xx_eint0_irq_set_type], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_4bit_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_2bit_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_4bit2_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_4bit2_alive to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_4bit_alive to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bank_type_2bit_alive to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpio_irqd_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint_gpio_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint0_irq_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint_eint0_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint0_irqd_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint_eint0_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint0_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c64xx_eint0_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c64xx_gpio_irq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s3c64xx_eint0_irq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_eint_gpio_init(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %irq = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #7
  br label %cleanup36

if.end:                                           ; preds = %entry
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 10
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 11
  %4 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp72.not = icmp eq i32 %5, 0
  br i1 %cmp72.not, label %if.end.for.end_crit_edge, label %for.body.preheader

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %6 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pin_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.076 = phi i32 [ %inc14, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %nr_domains.075 = phi i32 [ %nr_domains.1.ph, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bank.073 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %7, %for.body.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.073, i32 0, i32 6
  %8 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp2.not = icmp eq i32 %9, 1
  br i1 %cmp2.not, label %if.end4, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end4:                                          ; preds = %for.body
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.073, i32 0, i32 7
  %10 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %eint_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #4, !range !107
  %sub.i = sub nuw nsw i32 32, %12
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %of_node = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.073, i32 0, i32 12
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 4
  %tobool.not.i.i = icmp eq ptr %14, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %14, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %cond.i, i32 noundef %cond.i, i32 noundef 0, ptr noundef nonnull @s3c64xx_gpio_irqd_ops, ptr noundef %bank.073) #4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.073, i32 0, i32 14
  %15 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool7.not = icmp eq ptr %call1.i, null
  br i1 %tobool7.not, label %cleanup, label %if.end12

if.end12:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %inc = add i32 %nr_domains.075, 1
  br label %for.inc

cleanup:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.23) #7
  br label %cleanup36

for.inc:                                          ; preds = %if.end12, %for.body.for.inc_crit_edge
  %nr_domains.1.ph = phi i32 [ %nr_domains.075, %for.body.for.inc_crit_edge ], [ %inc, %if.end12 ]
  %inc14 = add nuw i32 %i.076, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.073, i32 1
  %16 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_banks, align 4
  %cmp = icmp ult i32 %inc14, %17
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %nr_domains.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %nr_domains.1.ph, %for.inc.for.end_crit_edge ]
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_domains.0.lcssa, i32 4) #4
  %19 = extractvalue { i32, i1 } %18, 1
  %20 = extractvalue { i32, i1 } %18, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %20, i32 4) #4
  %retval.0.i = select i1 %19, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %retval.0.i, i32 noundef 3520) #4
  %tobool17.not = icmp eq ptr %call.i, null
  br i1 %tobool17.not, label %for.end.cleanup36_crit_edge, label %if.end19

for.end.cleanup36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup36

if.end19:                                         ; preds = %for.end
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %d, ptr %call.i, align 4
  %22 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp2377.not = icmp eq i32 %23, 0
  br i1 %cmp2377.not, label %if.end19.for.end34_crit_edge, label %for.body24.preheader

if.end19.for.end34_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.body24.preheader:                             ; preds = %if.end19
  %24 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pin_banks, align 4
  br label %for.body24

for.body24:                                       ; preds = %for.inc31.for.body24_crit_edge, %for.body24.preheader
  %i.181 = phi i32 [ %inc32, %for.inc31.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %nr_domains.280 = phi i32 [ %nr_domains.3, %for.inc31.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %bank.178 = phi ptr [ %incdec.ptr33, %for.inc31.for.body24_crit_edge ], [ %25, %for.body24.preheader ]
  %eint_type25 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.178, i32 0, i32 6
  %26 = ptrtoint ptr %eint_type25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %eint_type25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp26.not = icmp eq i32 %27, 1
  br i1 %cmp26.not, label %if.end28, label %for.body24.for.inc31_crit_edge

for.body24.for.inc31_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc31

if.end28:                                         ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  %irq_domain29 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.178, i32 0, i32 14
  %28 = ptrtoint ptr %irq_domain29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_domain29, align 4
  %inc30 = add i32 %nr_domains.280, 1
  %arrayidx = getelementptr %struct.s3c64xx_eint_gpio_data, ptr %call.i, i32 0, i32 1, i32 %nr_domains.280
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %arrayidx, align 4
  br label %for.inc31

for.inc31:                                        ; preds = %if.end28, %for.body24.for.inc31_crit_edge
  %nr_domains.3 = phi i32 [ %nr_domains.280, %for.body24.for.inc31_crit_edge ], [ %inc30, %if.end28 ]
  %inc32 = add nuw i32 %i.181, 1
  %incdec.ptr33 = getelementptr %struct.samsung_pin_bank, ptr %bank.178, i32 1
  %exitcond.not = icmp eq i32 %inc32, %23
  br i1 %exitcond.not, label %for.inc31.for.end34_crit_edge, label %for.inc31.for.body24_crit_edge

for.inc31.for.body24_crit_edge:                   ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

for.inc31.for.end34_crit_edge:                    ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end34

for.end34:                                        ; preds = %for.inc31.for.end34_crit_edge, %if.end19.for.end34_crit_edge
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %32, ptr noundef nonnull @s3c64xx_eint_gpio_irq, ptr noundef nonnull %call.i) #4
  br label %cleanup36

cleanup36:                                        ; preds = %for.end34, %for.end.cleanup36_crit_edge, %cleanup, %do.end
  %retval.2 = phi i32 [ -6, %cleanup ], [ 0, %for.end34 ], [ -22, %do.end ], [ -12, %for.end.cleanup36_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_eint_eint0_init(ptr noundef %d) #0 align 64 {
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
  %cmp.not131 = icmp eq ptr %call, null
  br i1 %cmp.not131, label %entry.cleanup69_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.0132 = phi ptr [ %call4, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @of_match_node(ptr noundef nonnull @s3c64xx_eint0_irq_ids, ptr noundef nonnull %np.0132) #4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.inc, label %if.end7

for.inc:                                          ; preds = %for.body
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call4 = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %np.0132) #4
  %cmp.not = icmp eq ptr %call4, null
  br i1 %cmp.not, label %for.inc.cleanup69_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup69_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

if.end7:                                          ; preds = %for.body
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 144, i32 noundef 3520) #4
  %tobool9.not = icmp eq ptr %call.i, null
  br i1 %tobool9.not, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %np.0132) #4
  br label %cleanup69

if.end11:                                         ; preds = %if.end7
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %d, ptr %call.i, align 4
  %call15 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0132, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end11.do.end_crit_edge, label %if.end18

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %if.end18.2.do.end_crit_edge, %if.end18.1.do.end_crit_edge, %if.end18.do.end_crit_edge, %if.end11.do.end_crit_edge
  %i.0133.lcssa = phi i32 [ 0, %if.end11.do.end_crit_edge ], [ 1, %if.end18.do.end_crit_edge ], [ 2, %if.end18.1.do.end_crit_edge ], [ 3, %if.end18.2.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef %i.0133.lcssa) #7
  tail call void @of_node_put(ptr noundef nonnull %np.0132) #4
  br label %cleanup69

if.end18:                                         ; preds = %if.end11
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call15, ptr noundef nonnull @s3c64xx_demux_eint0_3, ptr noundef nonnull %call.i) #4
  %call15.1 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0132, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %tobool16.not.1 = icmp eq i32 %call15.1, 0
  br i1 %tobool16.not.1, label %if.end18.do.end_crit_edge, label %if.end18.1

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end18.1:                                       ; preds = %if.end18
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call15.1, ptr noundef nonnull @s3c64xx_demux_eint4_11, ptr noundef nonnull %call.i) #4
  %call15.2 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0132, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %tobool16.not.2 = icmp eq i32 %call15.2, 0
  br i1 %tobool16.not.2, label %if.end18.1.do.end_crit_edge, label %if.end18.2

if.end18.1.do.end_crit_edge:                      ; preds = %if.end18.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end18.2:                                       ; preds = %if.end18.1
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call15.2, ptr noundef nonnull @s3c64xx_demux_eint12_19, ptr noundef nonnull %call.i) #4
  %call15.3 = tail call i32 @irq_of_parse_and_map(ptr noundef nonnull %np.0132, i32 noundef 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3)
  %tobool16.not.3 = icmp eq i32 %call15.3, 0
  br i1 %tobool16.not.3, label %if.end18.2.do.end_crit_edge, label %if.end18.3

if.end18.2.do.end_crit_edge:                      ; preds = %if.end18.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end18.3:                                       ; preds = %if.end18.2
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call15.3, ptr noundef nonnull @s3c64xx_demux_eint20_27, ptr noundef nonnull %call.i) #4
  tail call void @of_node_put(ptr noundef nonnull %np.0132) #4
  %nr_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 11
  %7 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp22139.not = icmp eq i32 %8, 0
  br i1 %cmp22139.not, label %if.end18.3.cleanup69_crit_edge, label %for.body23.preheader

if.end18.3.cleanup69_crit_edge:                   ; preds = %if.end18.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

for.body23.preheader:                             ; preds = %if.end18.3
  %pin_banks = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %d, i32 0, i32 10
  %9 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin_banks, align 4
  br label %for.body23

for.body23:                                       ; preds = %for.inc66.for.body23_crit_edge, %for.body23.preheader
  %i.1142 = phi i32 [ %inc67, %for.inc66.for.body23_crit_edge ], [ 0, %for.body23.preheader ]
  %bank.0140 = phi ptr [ %incdec.ptr, %for.inc66.for.body23_crit_edge ], [ %10, %for.body23.preheader ]
  %eint_type = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0140, i32 0, i32 6
  %11 = ptrtoint ptr %eint_type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %eint_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp25.not = icmp eq i32 %12, 2
  br i1 %cmp25.not, label %if.end27, label %for.body23.for.inc66_crit_edge

for.body23.for.inc66_crit_edge:                   ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc66

if.end27:                                         ; preds = %for.body23
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0140, i32 0, i32 7
  %13 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %eint_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  %15 = tail call i32 @llvm.ctlz.i32(i32 %14, i1 true) #4, !range !107
  %sub.i = sub nuw nsw i32 32, %15
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %add = add nuw nsw i32 %cond.i, 4
  %call.i123 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %add, i32 noundef 3520) #4
  %tobool30.not = icmp eq ptr %call.i123, null
  br i1 %tobool30.not, label %if.end27.cleanup69_crit_edge, label %if.end32

if.end27.cleanup69_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

if.end32:                                         ; preds = %if.end27
  %16 = ptrtoint ptr %call.i123 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %bank.0140, ptr %call.i123, align 4
  %of_node34 = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0140, i32 0, i32 12
  %17 = ptrtoint ptr %of_node34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node34, align 4
  %tobool.not.i.i = icmp eq ptr %18, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %18, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %cond.i, i32 noundef %cond.i, i32 noundef 0, ptr noundef nonnull @s3c64xx_eint0_irqd_ops, ptr noundef nonnull %call.i123) #4
  %irq_domain = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0140, i32 0, i32 14
  %19 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool37.not = icmp eq ptr %call1.i, null
  br i1 %tobool37.not, label %do.end41, label %if.end42

do.end41:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #7
  br label %cleanup69

if.end42:                                         ; preds = %if.end32
  %20 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %eint_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool45.not134 = icmp eq i32 %21, 0
  br i1 %tobool45.not134, label %if.end42.for.inc66_crit_edge, label %for.body46.preheader

if.end42.for.inc66_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc66

for.body46.preheader:                             ; preds = %if.end42
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %bank.0140, i32 0, i32 8
  %22 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %eint_offset, align 4
  br label %for.body46

for.body46:                                       ; preds = %for.inc56.for.body46_crit_edge, %for.body46.preheader
  %pin.0137 = phi i32 [ %inc57, %for.inc56.for.body46_crit_edge ], [ 0, %for.body46.preheader ]
  %irq24.0136 = phi i32 [ %irq24.1, %for.inc56.for.body46_crit_edge ], [ %23, %for.body46.preheader ]
  %mask.0135 = phi i32 [ %shr, %for.inc56.for.body46_crit_edge ], [ %21, %for.body46.preheader ]
  %and = and i32 %mask.0135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool47.not = icmp eq i32 %and, 0
  br i1 %tobool47.not, label %for.body46.for.inc56_crit_edge, label %if.end49

for.body46.for.inc56_crit_edge:                   ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc56

if.end49:                                         ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_domain, align 4
  %arrayidx51 = getelementptr %struct.s3c64xx_eint0_data, ptr %call.i, i32 0, i32 1, i32 %irq24.0136
  %26 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %arrayidx51, align 4
  %conv = trunc i32 %pin.0137 to i8
  %arrayidx52 = getelementptr %struct.s3c64xx_eint0_data, ptr %call.i, i32 0, i32 2, i32 %irq24.0136
  %27 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %arrayidx52, align 1
  %conv53 = trunc i32 %irq24.0136 to i8
  %arrayidx54 = getelementptr %struct.s3c64xx_eint0_domain_data, ptr %call.i123, i32 0, i32 1, i32 %pin.0137
  %28 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv53, ptr %arrayidx54, align 1
  %inc55 = add i32 %irq24.0136, 1
  br label %for.inc56

for.inc56:                                        ; preds = %if.end49, %for.body46.for.inc56_crit_edge
  %irq24.1 = phi i32 [ %inc55, %if.end49 ], [ %irq24.0136, %for.body46.for.inc56_crit_edge ]
  %inc57 = add nuw nsw i32 %pin.0137, 1
  %shr = lshr i32 %mask.0135, 1
  %tobool45.not = icmp ult i32 %mask.0135, 2
  br i1 %tobool45.not, label %for.inc56.for.inc66_crit_edge, label %for.inc56.for.body46_crit_edge

for.inc56.for.body46_crit_edge:                   ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body46

for.inc56.for.inc66_crit_edge:                    ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc66

for.inc66:                                        ; preds = %for.inc56.for.inc66_crit_edge, %if.end42.for.inc66_crit_edge, %for.body23.for.inc66_crit_edge
  %inc67 = add nuw i32 %i.1142, 1
  %incdec.ptr = getelementptr %struct.samsung_pin_bank, ptr %bank.0140, i32 1
  %29 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_banks, align 4
  %cmp22 = icmp ult i32 %inc67, %30
  br i1 %cmp22, label %for.inc66.for.body23_crit_edge, label %for.inc66.cleanup69_crit_edge

for.inc66.cleanup69_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup69

for.inc66.for.body23_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body23

cleanup69:                                        ; preds = %for.inc66.cleanup69_crit_edge, %do.end41, %if.end27.cleanup69_crit_edge, %if.end18.3.cleanup69_crit_edge, %do.end, %if.then10, %for.inc.cleanup69_crit_edge, %entry.cleanup69_crit_edge
  %retval.4 = phi i32 [ -12, %if.then10 ], [ -6, %do.end ], [ -6, %do.end41 ], [ 0, %if.end18.3.cleanup69_crit_edge ], [ -19, %entry.cleanup69_crit_edge ], [ 0, %for.inc66.cleanup69_crit_edge ], [ -12, %if.end27.cleanup69_crit_edge ], [ -19, %for.inc.cleanup69_crit_edge ]
  ret i32 %retval.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_eint_gpio_irq(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #4
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #4
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %13(ptr noundef %irq_data4.i) #4
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end10.do.body_crit_edge, %chained_irq_enter.exit
  %14 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 644
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !108
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !109
  %shr = lshr i32 %17, 4
  %and = and i32 %shr, 15
  %and5 = and i32 %17, 15
  %18 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.body.if.end10_crit_edge [
    i32 0, label %do.end28
    i32 1, label %if.then6
  ]

do.body.if.end10_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and5)
  %cmp7 = icmp ult i32 %and5, 8
  %sub = add nsw i32 %and5, -8
  %spec.select = select i1 %cmp7, i32 %and5, i32 %sub
  %not.cmp7 = xor i1 %cmp7, true
  %spec.select39 = zext i1 %not.cmp7 to i32
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %do.body.if.end10_crit_edge
  %pin.0 = phi i32 [ %and5, %do.body.if.end10_crit_edge ], [ %spec.select, %if.then6 ]
  %group.0 = phi i32 [ %and, %do.body.if.end10_crit_edge ], [ %spec.select39, %if.then6 ]
  %arrayidx = getelementptr %struct.s3c64xx_eint_gpio_data, ptr %3, i32 0, i32 1, i32 %group.0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call11 = tail call i32 @generic_handle_domain_irq(ptr noundef %20, i32 noundef %pin.0) #4
  %tobool13.not = icmp eq i32 %call11, 0
  br i1 %tobool13.not, label %if.end10.do.body_crit_edge, label %do.body17, !prof !110

if.end10.do.body_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c64xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 439, 0\0A.popsection", ""() #4, !srcloc !111
  unreachable

do.end28:                                         ; preds = %do.body
  %21 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i41 = icmp eq ptr %22, null
  br i1 %tobool.not.i41, label %if.else.i42, label %do.end28.chained_irq_exit.exit_crit_edge

do.end28.chained_irq_exit.exit_crit_edge:         ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_exit.exit

if.else.i42:                                      ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i42, %do.end28.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %24, %if.else.i42 ], [ %22, %do.end28.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_gpio_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %eint_mask = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %eint_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %eint_mask, align 4
  %shl = shl nuw i32 1, %hw
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @s3c64xx_gpio_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_gpio_irq_ack(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
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
  %rem = and i32 %5, 31
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %add = add i32 %rem, %7
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base, align 4
  %10 = lshr i32 %5, 3
  %mul = and i32 %10, 536870908
  %add3 = add nuw nsw i32 %mul, 608
  %add.ptr = getelementptr i8, ptr %9, i32 %add3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !112
  tail call void @arm_heavy_mb() #4
  %conv4 = and i32 %add, 255
  %shl = shl nuw i32 1, %conv4
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %11) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_gpio_irq_mask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %drvdata.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %eint_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset.i, align 4
  %rem.i = and i32 %5, 31
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  %add.i = add i32 %rem.i, %7
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base.i, align 4
  %10 = lshr i32 %5, 3
  %mul.i = and i32 %10, 536870908
  %add3.i = add nuw nsw i32 %mul.i, 576
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  %conv6.i = and i32 %add.i, 255
  %shl.i = shl nuw i32 1, %conv6.i
  %or.i = or i32 %12, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_gpio_irq_unmask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %drvdata.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %eint_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %eint_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eint_offset.i, align 4
  %rem.i = and i32 %5, 31
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  %add.i = add i32 %rem.i, %7
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_base.i, align 4
  %10 = lshr i32 %5, 3
  %mul.i = and i32 %10, 536870908
  %add3.i = add nuw nsw i32 %mul.i, 576
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add3.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !114
  %conv6.i = and i32 %add.i, 255
  %shl.i = shl nuw i32 1, %conv6.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %12, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !115
  tail call void @arm_heavy_mb() #4
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_gpio_irq_set_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.s3c64xx_gpio_irq_set_type, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and.i = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %common.i.i2.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %7 = ptrtoint ptr %common.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %common.i.i2.i, align 4
  %handle_irq.i3.i = getelementptr inbounds %struct.irq_desc, ptr %8, i32 0, i32 3
  %handle_level_irq.handle_edge_irq.i = select i1 %tobool.not.i, ptr @handle_level_irq, ptr @handle_edge_irq
  %9 = ptrtoint ptr %handle_irq.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %handle_level_irq.handle_edge_irq.i, ptr %handle_irq.i3.i, align 4
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_base, align 4
  %eint_offset = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %eint_offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %eint_offset, align 4
  %14 = lshr i32 %13, 3
  %mul = and i32 %14, 536870908
  %add = add nuw nsw i32 %mul, 512
  %add.ptr = getelementptr i8, ptr %11, i32 %add
  %rem = and i32 %13, 31
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %15 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwirq, align 4
  %add5 = add i32 %rem, %16
  %conv9 = and i32 %add5, 252
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !108
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !116
  %shl = shl i32 15, %conv9
  %neg = xor i32 %shl, -1
  %and = and i32 %18, %neg
  %shl15 = shl i32 %switch.load, %conv9
  %or = or i32 %and, %shl15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !117
  tail call void @arm_heavy_mb() #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %19) #4, !srcloc !113
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %24 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %virt_base, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %23, align 1
  %conv1.i = zext i8 %29 to i32
  %conv2.i = and i32 %21, 255
  %mul.i = mul nuw nsw i32 %conv2.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 31
  %sub.i = add i32 %21, 248
  %shift.0.in.i = select i1 %cmp.i, i32 %sub.i, i32 %21
  %reg.0.idx.i = select i1 %cmp.i, i32 4, i32 0
  %reg.0.i = getelementptr i8, ptr %add.ptr.i, i32 %reg.0.idx.i
  %30 = trunc i32 %shift.0.in.i to i8
  %conv12.i = mul i8 %29, %30
  %notmask.i = shl nsw i32 -1, %conv1.i
  %sub16.i = xor i32 %notmask.i, -1
  %slock.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 18
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #4, !srcloc !108
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  %conv22.i = zext i8 %conv12.i to i32
  %shl23.i = shl i32 %sub16.i, %conv22.i
  %neg.i = xor i32 %shl23.i, -1
  %and.i42 = and i32 %32, %neg.i
  %eint_func.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %eint_func.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %eint_func.i, align 4
  %conv24.i = zext i8 %34 to i32
  %shl26.i = shl i32 %conv24.i, %conv22.i
  %or.i = or i32 %and.i42, %shl26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %35 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %35) #4, !srcloc !113
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_demux_eint0_3(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 8
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i42.i = icmp eq ptr %7, null
  br i1 %tobool.not.i42.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %add.ptr.i = getelementptr i8, ptr %15, i32 2340
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %18 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 2336
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %and.i = and i32 %17, 15
  %21 = xor i32 %20, -1
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #4
  %and12.i = and i32 %and.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool.not47.i = icmp eq i32 %and12.i, 0
  br i1 %tobool.not47.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %chained_irq_enter.exit.i.while.body.i_crit_edge

chained_irq_enter.exit.i.while.body.i_crit_edge:  ; preds = %chained_irq_enter.exit.i
  br label %while.body.i

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i:                                     ; preds = %do.end27.i.while.body.i_crit_edge, %chained_irq_enter.exit.i.while.body.i_crit_edge
  %pend.048.i = phi i32 [ %and16.i, %do.end27.i.while.body.i_crit_edge ], [ %and12.i, %chained_irq_enter.exit.i.while.body.i_crit_edge ]
  %23 = tail call i32 @llvm.ctlz.i32(i32 %pend.048.i, i1 true) #4, !range !107
  %sub.i = xor i32 %23, 31
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 1, i32 %sub.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 2, i32 %sub.i
  %26 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = zext i8 %27 to i32
  %call18.i = tail call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end27.i, label %do.body22.i, !prof !110

do.body22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c64xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 618, 0\0A.popsection", ""() #4, !srcloc !122
  unreachable

do.end27.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %sub.i
  %neg15.i = xor i32 %shl.i, -1
  %and16.i = and i32 %pend.048.i, %neg15.i
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end27.i.while.end.i_crit_edge, label %do.end27.i.while.body.i_crit_edge

do.end27.i.while.body.i_crit_edge:                ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end27.i.while.end.i_crit_edge:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end27.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %28 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %29, null
  br i1 %tobool.not.i44.i, label %if.else.i45.i, label %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge

while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c64xx_irq_demux_eint.exit

if.else.i45.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c64xx_irq_demux_eint.exit

s3c64xx_irq_demux_eint.exit:                      ; preds = %if.else.i45.i, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %31, %if.else.i45.i ], [ %29, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_demux_eint4_11(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 8
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i42.i = icmp eq ptr %7, null
  br i1 %tobool.not.i42.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %add.ptr.i = getelementptr i8, ptr %15, i32 2340
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 2336
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %20 = and i32 %16, -267452416
  %21 = xor i32 %19, -1
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not47.i = icmp eq i32 %22, 0
  br i1 %tobool.not47.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %while.body.i.preheader

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.preheader:                           ; preds = %chained_irq_enter.exit.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %while.body.i

while.body.i:                                     ; preds = %do.end27.i.while.body.i_crit_edge, %while.body.i.preheader
  %pend.048.i = phi i32 [ %and16.i, %do.end27.i.while.body.i_crit_edge ], [ %23, %while.body.i.preheader ]
  %24 = tail call i32 @llvm.ctlz.i32(i32 %pend.048.i, i1 true) #4, !range !107
  %sub.i = xor i32 %24, 31
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 1, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 2, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = zext i8 %28 to i32
  %call18.i = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end27.i, label %do.body22.i, !prof !110

do.body22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c64xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 618, 0\0A.popsection", ""() #4, !srcloc !122
  unreachable

do.end27.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %sub.i
  %neg15.i = xor i32 %shl.i, -1
  %and16.i = and i32 %pend.048.i, %neg15.i
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end27.i.while.end.i_crit_edge, label %do.end27.i.while.body.i_crit_edge

do.end27.i.while.body.i_crit_edge:                ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end27.i.while.end.i_crit_edge:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end27.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %30, null
  br i1 %tobool.not.i44.i, label %if.else.i45.i, label %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge

while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c64xx_irq_demux_eint.exit

if.else.i45.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c64xx_irq_demux_eint.exit

s3c64xx_irq_demux_eint.exit:                      ; preds = %if.else.i45.i, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %32, %if.else.i45.i ], [ %30, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_demux_eint12_19(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 8
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i42.i = icmp eq ptr %7, null
  br i1 %tobool.not.i42.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %add.ptr.i = getelementptr i8, ptr %15, i32 2340
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 2336
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %20 = and i32 %16, 15732480
  %21 = xor i32 %19, -1
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not47.i = icmp eq i32 %22, 0
  br i1 %tobool.not47.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %while.body.i.preheader

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.preheader:                           ; preds = %chained_irq_enter.exit.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %while.body.i

while.body.i:                                     ; preds = %do.end27.i.while.body.i_crit_edge, %while.body.i.preheader
  %pend.048.i = phi i32 [ %and16.i, %do.end27.i.while.body.i_crit_edge ], [ %23, %while.body.i.preheader ]
  %24 = tail call i32 @llvm.ctlz.i32(i32 %pend.048.i, i1 true) #4, !range !107
  %sub.i = xor i32 %24, 31
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 1, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 2, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = zext i8 %28 to i32
  %call18.i = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end27.i, label %do.body22.i, !prof !110

do.body22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c64xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 618, 0\0A.popsection", ""() #4, !srcloc !122
  unreachable

do.end27.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %sub.i
  %neg15.i = xor i32 %shl.i, -1
  %and16.i = and i32 %pend.048.i, %neg15.i
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end27.i.while.end.i_crit_edge, label %do.end27.i.while.body.i_crit_edge

do.end27.i.while.body.i_crit_edge:                ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end27.i.while.end.i_crit_edge:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end27.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %30, null
  br i1 %tobool.not.i44.i, label %if.else.i45.i, label %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge

while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c64xx_irq_demux_eint.exit

if.else.i45.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c64xx_irq_demux_eint.exit

s3c64xx_irq_demux_eint.exit:                      ; preds = %if.else.i45.i, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %32, %if.else.i45.i ], [ %30, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_demux_eint20_27(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i.i, align 8
  %handler_data.i.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %irq_eoi.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i42.i = icmp eq ptr %7, null
  br i1 %tobool.not.i42.i, label %if.end.i.i, label %entry.chained_irq_enter.exit.i_crit_edge

entry.chained_irq_enter.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %chained_irq_enter.exit.i

if.end.i.i:                                       ; preds = %entry
  %irq_mask_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i.i, align 4
  %irq_data4.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i.i) #4
  %irq_ack.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %add.ptr.i = getelementptr i8, ptr %15, i32 2340
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !120
  %17 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_base.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %18, i32 2336
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.i) #4, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !121
  %20 = and i32 %16, 61455
  %21 = xor i32 %19, -1
  %22 = and i32 %20, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not47.i = icmp eq i32 %22, 0
  br i1 %tobool.not47.i, label %chained_irq_enter.exit.i.while.end.i_crit_edge, label %while.body.i.preheader

chained_irq_enter.exit.i.while.end.i_crit_edge:   ; preds = %chained_irq_enter.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.body.i.preheader:                           ; preds = %chained_irq_enter.exit.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  br label %while.body.i

while.body.i:                                     ; preds = %do.end27.i.while.body.i_crit_edge, %while.body.i.preheader
  %pend.048.i = phi i32 [ %and16.i, %do.end27.i.while.body.i_crit_edge ], [ %23, %while.body.i.preheader ]
  %24 = tail call i32 @llvm.ctlz.i32(i32 %pend.048.i, i1 true) #4, !range !107
  %sub.i = xor i32 %24, 31
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 1, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx17.i = getelementptr %struct.s3c64xx_eint0_data, ptr %3, i32 0, i32 2, i32 %sub.i
  %27 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx17.i, align 1
  %conv.i = zext i8 %28 to i32
  %call18.i = tail call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %conv.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %do.end27.i, label %do.body22.i, !prof !110

do.body22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/samsung/pinctrl-s3c64xx.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 618, 0\0A.popsection", ""() #4, !srcloc !122
  unreachable

do.end27.i:                                       ; preds = %while.body.i
  %shl.i = shl nuw i32 1, %sub.i
  %neg15.i = xor i32 %shl.i, -1
  %and16.i = and i32 %pend.048.i, %neg15.i
  %tobool.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool.not.i, label %do.end27.i.while.end.i_crit_edge, label %do.end27.i.while.body.i_crit_edge

do.end27.i.while.body.i_crit_edge:                ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

do.end27.i.while.end.i_crit_edge:                 ; preds = %do.end27.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end.i

while.end.i:                                      ; preds = %do.end27.i.while.end.i_crit_edge, %chained_irq_enter.exit.i.while.end.i_crit_edge
  %29 = ptrtoint ptr %irq_eoi.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_eoi.i.i, align 4
  %tobool.not.i44.i = icmp eq ptr %30, null
  br i1 %tobool.not.i44.i, label %if.else.i45.i, label %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge

while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge: ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %s3c64xx_irq_demux_eint.exit

if.else.i45.i:                                    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %irq_unmask.i.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %31 = ptrtoint ptr %irq_unmask.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_unmask.i.i, align 4
  br label %s3c64xx_irq_demux_eint.exit

s3c64xx_irq_demux_eint.exit:                      ; preds = %if.else.i45.i, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge
  %.sink.i.i = phi ptr [ %32, %if.else.i45.i ], [ %30, %while.end.i.s3c64xx_irq_demux_eint.exit_crit_edge ]
  %irq_data2.i.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i.i(ptr noundef %irq_data2.i.i) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_eint0_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
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
  %shl = shl nuw i32 1, %hw
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @s3c64xx_eint0_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_eint0_irq_ack(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !123
  tail call void @arm_heavy_mb() #4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c64xx_eint0_domain_data, ptr %1, i32 0, i32 1, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_base, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 2340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_eint0_irq_mask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %drvdata.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2336
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_domain_data, ptr %1, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %or.i = or i32 %shl.i, %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  %15 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %14) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s3c64xx_eint0_irq_unmask(ptr nocapture noundef readonly %irqd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %drvdata.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %virt_base.i = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 2336
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !108
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !124
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr %struct.s3c64xx_eint0_domain_data, ptr %1, i32 0, i32 1, i32 %11
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %13 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %9, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !125
  tail call void @arm_heavy_mb() #4
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #4
  %15 = ptrtoint ptr %virt_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 2336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %14) #4, !srcloc !113
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c64xx_eint0_irq_set_type(ptr nocapture noundef readonly %irqd, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %drvdata = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 8
  br i1 %6, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #7
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.s3c64xx_eint0_irq_set_type, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  %and.i = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %common.i.i2.i = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 3
  %9 = ptrtoint ptr %common.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %common.i.i2.i, align 4
  %handle_irq.i3.i = getelementptr inbounds %struct.irq_desc, ptr %10, i32 0, i32 3
  %handle_level_irq.handle_edge_irq.i = select i1 %tobool.not.i, ptr @handle_level_irq, ptr @handle_edge_irq
  %11 = ptrtoint ptr %handle_irq.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %handle_level_irq.handle_edge_irq.i, ptr %handle_irq.i3.i, align 4
  %virt_base = getelementptr inbounds %struct.samsung_pinctrl_drv_data, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_base, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irqd, i32 0, i32 2
  %14 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.s3c64xx_eint0_domain_data, ptr %1, i32 0, i32 1, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %17)
  %cmp4 = icmp ugt i8 %17, 15
  %reg.0.v = select i1 %cmp4, i32 2308, i32 2304
  %reg.0 = getelementptr i8, ptr %13, i32 %reg.0.v
  %18 = shl i8 %17, 1
  %19 = add i8 %18, -32
  %20 = select i1 %cmp4, i8 %19, i8 %18
  %mul = and i8 %20, -4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0) #4, !srcloc !108
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !126
  %conv16 = zext i8 %mul to i32
  %shl = shl i32 15, %conv16
  %neg = xor i32 %shl, -1
  %and = and i32 %22, %neg
  %shl18 = shl i32 %switch.load, %conv16
  %or = or i32 %and, %shl18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !127
  tail call void @arm_heavy_mb() #4
  %23 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0, i32 %23) #4, !srcloc !113
  %24 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwirq, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %28 = ptrtoint ptr %virt_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_base, align 4
  %pctl_offset.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %pctl_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pctl_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 %31
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %27, align 1
  %conv1.i = zext i8 %33 to i32
  %conv2.i = and i32 %25, 255
  %mul.i = mul nuw nsw i32 %conv2.i, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul.i)
  %cmp.i = icmp ugt i32 %mul.i, 31
  %sub.i = add i32 %25, 248
  %shift.0.in.i = select i1 %cmp.i, i32 %sub.i, i32 %25
  %reg.0.idx.i = select i1 %cmp.i, i32 4, i32 0
  %reg.0.i = getelementptr i8, ptr %add.ptr.i, i32 %reg.0.idx.i
  %34 = trunc i32 %shift.0.in.i to i8
  %conv12.i = mul i8 %33, %34
  %notmask.i = shl nsw i32 -1, %conv1.i
  %sub16.i = xor i32 %notmask.i, -1
  %slock.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock.i) #4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg.0.i) #4, !srcloc !108
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !118
  %conv22.i = zext i8 %conv12.i to i32
  %shl23.i = shl i32 %sub16.i, %conv22.i
  %neg.i = xor i32 %shl23.i, -1
  %and.i45 = and i32 %36, %neg.i
  %eint_func.i = getelementptr inbounds %struct.samsung_pin_bank, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %eint_func.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %eint_func.i, align 4
  %conv24.i = zext i8 %38 to i32
  %shl26.i = shl i32 %conv24.i, %conv22.i
  %or.i = or i32 %and.i45, %shl26.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !119
  tail call void @arm_heavy_mb() #4
  %39 = tail call i32 @llvm.bswap.i32(i32 %or.i) #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %reg.0.i, i32 %39) #4, !srcloc !113
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %slock.i, i32 noundef %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !88, !90, !92, !94, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @s3c64xx_of_data, !1, !"s3c64xx_of_data", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 803, i32 44}
!2 = !{ptr @s3c64xx_pin_ctrl, !3, !"s3c64xx_pin_ctrl", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 793, i32 38}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 770, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 771, i32 2}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 772, i32 2}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 773, i32 2}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 774, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 775, i32 2}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 776, i32 2}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 777, i32 2}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 778, i32 2}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 779, i32 2}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 780, i32 2}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 781, i32 2}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 782, i32 2}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 783, i32 2}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 784, i32 2}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 785, i32 2}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 786, i32 2}
!38 = !{ptr @s3c64xx_pin_banks0, !39, !"s3c64xx_pin_banks0", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 769, i32 43}
!40 = !{ptr @bank_type_4bit_off, !41, !"bank_type_4bit_off", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 66, i32 43}
!42 = !{ptr @bank_type_2bit_off, !43, !"bank_type_2bit_off", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 86, i32 43}
!44 = !{ptr @bank_type_4bit2_off, !45, !"bank_type_4bit2_off", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 76, i32 43}
!46 = !{ptr @bank_type_4bit2_alive, !47, !"bank_type_4bit2_alive", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 81, i32 43}
!48 = !{ptr @bank_type_4bit_alive, !49, !"bank_type_4bit_alive", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 71, i32 43}
!50 = !{ptr @bank_type_2bit_alive, !51, !"bank_type_2bit_alive", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 91, i32 43}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 458, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @s3c64xx_eint_gpio_init._entry, !53, !"_entry", i1 false, i1 false}
!59 = !{ptr @s3c64xx_eint_gpio_init._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 477, i32 4}
!62 = !{ptr @s3c64xx_eint_gpio_init._entry.22, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s3c64xx_eint_gpio_init._entry_ptr.24, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @s3c64xx_gpio_irqd_ops, !65, !"s3c64xx_gpio_irqd_ops", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 400, i32 36}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 375, i32 11}
!68 = !{ptr @s3c64xx_gpio_irq_chip, !69, !"s3c64xx_gpio_irq_chip", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 374, i32 24}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 350, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @s3c64xx_gpio_irq_set_type._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @s3c64xx_gpio_irq_set_type._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 715, i32 4}
!77 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @s3c64xx_eint_eint0_init._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @s3c64xx_eint_eint0_init._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 749, i32 4}
!82 = !{ptr @s3c64xx_eint_eint0_init._entry.30, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @s3c64xx_eint_eint0_init._entry_ptr.32, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @s3c64xx_eint0_irq_ids, !85, !"s3c64xx_eint0_irq_ids", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 676, i32 34}
!86 = distinct !{null, !87, !"s3c64xx_eint0_handlers", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 644, i32 27}
!88 = !{ptr @s3c64xx_eint0_irqd_ops, !89, !"s3c64xx_eint0_irqd_ops", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 670, i32 36}
!90 = !{ptr @.str.33, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 585, i32 11}
!92 = !{ptr @s3c64xx_eint0_irq_chip, !93, !"s3c64xx_eint0_irq_chip", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 584, i32 24}
!94 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/samsung/pinctrl-s3c64xx.c", i32 556, i32 3}
!96 = !{ptr @s3c64xx_eint0_irq_set_type._entry, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @s3c64xx_eint0_irq_set_type._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{i32 0, i32 33}
!108 = !{i64 4877161}
!109 = !{i64 2153949175}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2153949601, i64 2153950107, i64 2153949638, i64 2153949694, i64 2153949728, i64 2153949752, i64 2153949793, i64 2153949814, i64 2153949842, i64 2153949876}
!112 = !{i64 2153945818}
!113 = !{i64 4876743}
!114 = !{i64 2153945035}
!115 = !{i64 2153945235}
!116 = !{i64 2153948279}
!117 = !{i64 2153948483}
!118 = !{i64 2153943618}
!119 = !{i64 2153943818}
!120 = !{i64 2153959499}
!121 = !{i64 2153960027}
!122 = !{i64 2153960389, i64 2153960895, i64 2153960426, i64 2153960482, i64 2153960516, i64 2153960540, i64 2153960581, i64 2153960602, i64 2153960630, i64 2153960664}
!123 = !{i64 2153956099}
!124 = !{i64 2153955448}
!125 = !{i64 2153955671}
!126 = !{i64 2153958437}
!127 = !{i64 2153958641}
