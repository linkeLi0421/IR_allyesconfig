; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/vitesse-vsc73xx-core.c_pt.bc'
source_filename = "../drivers/net/dsa/vitesse-vsc73xx-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+vsc73xx_is_addr_valid\22, \22a\22\09"
module asm "\09.weak\09__crc_vsc73xx_is_addr_valid\09\09\09\09"
module asm "\09.long\09__crc_vsc73xx_is_addr_valid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsc73xx_is_addr_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22vsc73xx_is_addr_valid\22\09\09\09\09\09"
module asm "__kstrtabns_vsc73xx_is_addr_valid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vsc73xx_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_vsc73xx_probe\09\09\09\09"
module asm "\09.long\09__crc_vsc73xx_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsc73xx_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22vsc73xx_probe\22\09\09\09\09\09"
module asm "__kstrtabns_vsc73xx_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vsc73xx_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_vsc73xx_remove\09\09\09\09"
module asm "\09.long\09__crc_vsc73xx_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsc73xx_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22vsc73xx_remove\22\09\09\09\09\09"
module asm "__kstrtabns_vsc73xx_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+vsc73xx_shutdown\22, \22a\22\09"
module asm "\09.weak\09__crc_vsc73xx_shutdown\09\09\09\09"
module asm "\09.long\09__crc_vsc73xx_shutdown\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vsc73xx_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22vsc73xx_shutdown\22\09\09\09\09\09"
module asm "__kstrtabns_vsc73xx_shutdown:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dsa_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.vsc73xx_counter = type { i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vsc73xx = type { ptr, ptr, ptr, %struct.gpio_chip, i16, [6 x i8], ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.161, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.161 = type { ptr }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.vsc73xx_ops = type { ptr, ptr }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__kstrtab_vsc73xx_is_addr_valid = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsc73xx_is_addr_valid = external dso_local constant [0 x i8], align 1
@__ksymtab_vsc73xx_is_addr_valid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsc73xx_is_addr_valid to i32), ptr @__kstrtab_vsc73xx_is_addr_valid, ptr @__kstrtabns_vsc73xx_is_addr_valid }, section "___ksymtab+vsc73xx_is_addr_valid", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get RESET GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vsc73xx_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/net/dsa/vitesse-vsc73xx-core.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry_ptr = internal global ptr @vsc73xx_probe._entry, section ".printk_index", align 4
@vsc73xx_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Chip seems to be out of control. Assert reset and try again.\0A\00", [34 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry_ptr.8 = internal global ptr @vsc73xx_probe._entry.6, section ".printk_index", align 4
@vsc73xx_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 1170, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no chip found (%d)\0A\00", [44 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry_ptr.11 = internal global ptr @vsc73xx_probe._entry.9, section ".printk_index", align 4
@vsc73xx_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1178, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"MAC for control frames: %02X:%02X:%02X:%02X:%02X:%02X\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry_ptr.15 = internal global ptr @vsc73xx_probe._entry.12, section ".printk_index", align 4
@vsc73xx_ds_ops = internal constant { %struct.dsa_switch_ops, [96 x i8] } { %struct.dsa_switch_ops { ptr @vsc73xx_get_tag_protocol, ptr null, ptr null, ptr @vsc73xx_setup, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_phy_read, ptr @vsc73xx_phy_write, ptr @vsc73xx_adjust_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_get_strings, ptr @vsc73xx_get_ethtool_stats, ptr @vsc73xx_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_port_enable, ptr @vsc73xx_port_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vsc73xx_change_mtu, ptr @vsc73xx_get_max_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [96 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 1202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to register switch (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@vsc73xx_probe._entry_ptr.18 = internal global ptr @vsc73xx_probe._entry.16, section ".printk_index", align 4
@__kstrtab_vsc73xx_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsc73xx_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_vsc73xx_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsc73xx_probe to i32), ptr @__kstrtab_vsc73xx_probe, ptr @__kstrtabns_vsc73xx_probe }, section "___ksymtab+vsc73xx_probe", align 4
@__kstrtab_vsc73xx_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsc73xx_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_vsc73xx_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsc73xx_remove to i32), ptr @__kstrtab_vsc73xx_remove, ptr @__kstrtabns_vsc73xx_remove }, section "___ksymtab+vsc73xx_remove", align 4
@__kstrtab_vsc73xx_shutdown = external dso_local constant [0 x i8], align 1
@__kstrtabns_vsc73xx_shutdown = external dso_local constant [0 x i8], align 1
@__ksymtab_vsc73xx_shutdown = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vsc73xx_shutdown to i32), ptr @__kstrtab_vsc73xx_shutdown, ptr @__kstrtabns_vsc73xx_shutdown }, section "___ksymtab+vsc73xx_shutdown", align 4
@__UNIQUE_ID_author505 = internal constant [69 x i8] c"vitesse_vsc73xx_core.author=Linus Walleij <linus.walleij@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description506 = internal constant [71 x i8] c"vitesse_vsc73xx_core.description=Vitesse VSC7385/7388/7395/7398 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file507 = internal constant [63 x i8] c"vitesse_vsc73xx_core.file=drivers/net/dsa/vitesse-vsc73xx-core\00", section ".modinfo", align 1
@__UNIQUE_ID_license508 = internal constant [36 x i8] c"vitesse_vsc73xx_core.license=GPL v2\00", section ".modinfo", align 1
@vsc73xx_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read mailbox (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vsc73xx_detect\00", [17 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr = internal global ptr @vsc73xx_detect._entry, section ".printk_index", align 4
@vsc73xx_detect._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 420, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"chip seems dead.\0A\00", [46 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.23 = internal global ptr @vsc73xx_detect._entry.21, section ".printk_index", align 4
@vsc73xx_detect._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.3, i32 427, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read chip id (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.26 = internal global ptr @vsc73xx_detect._entry.24, section ".printk_index", align 4
@vsc73xx_detect._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.20, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unsupported chip, id=%04x\0A\00", [37 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.29 = internal global ptr @vsc73xx_detect._entry.27, section ".printk_index", align 4
@vsc73xx_detect._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.3, i32 447, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VSC%04X (rev: %d) switch found\0A\00", [32 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.32 = internal global ptr @vsc73xx_detect._entry.30, section ".printk_index", align 4
@vsc73xx_detect._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.20, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to read iCPU control\0A\00", [35 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.35 = internal global ptr @vsc73xx_detect._entry.33, section ".printk_index", align 4
@vsc73xx_detect._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.20, ptr @.str.3, i32 466, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"iCPU enabled boots from SI, has external memory\0A\00", [47 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.38 = internal global ptr @vsc73xx_detect._entry.36, section ".printk_index", align 4
@vsc73xx_detect._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.20, ptr @.str.3, i32 467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no idea how to deal with this\0A\00", [33 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.41 = internal global ptr @vsc73xx_detect._entry.39, section ".printk_index", align 4
@vsc73xx_detect._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.20, ptr @.str.3, i32 472, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"iCPU enabled boots from PI/SI, no external memory\0A\00", [45 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.44 = internal global ptr @vsc73xx_detect._entry.42, section ".printk_index", align 4
@vsc73xx_detect._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.20, ptr @.str.3, i32 477, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"iCPU enabled, boots from PI external memory\0A\00", [51 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.47 = internal global ptr @vsc73xx_detect._entry.45, section ".printk_index", align 4
@vsc73xx_detect._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.20, ptr @.str.3, i32 478, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.49 = internal global ptr @vsc73xx_detect._entry.48, section ".printk_index", align 4
@vsc73xx_detect._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.20, ptr @.str.3, i32 482, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iCPU disabled, no external memory\0A\00", [61 x i8] zeroinitializer }, align 32
@vsc73xx_detect._entry_ptr.52 = internal global ptr @vsc73xx_detect._entry.50, section ".printk_index", align 4
@vsc73xx_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 565, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set up the switch\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vsc73xx_setup\00", [18 x i8] zeroinitializer }, align 32
@vsc73xx_setup._entry_ptr = internal global ptr @vsc73xx_setup._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@vsc73xx_phy_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.3, i32 505, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"reading reg %02x from phy%d failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vsc73xx_phy_read\00", [47 x i8] zeroinitializer }, align 32
@vsc73xx_phy_read._entry_ptr = internal global ptr @vsc73xx_phy_read._entry, section ".printk_index", align 4
@vsc73xx_phy_read.__UNIQUE_ID_ddebug497 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.56, ptr @.str.3, ptr @.str.58, i8 0, i8 127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vitesse_vsc73xx_core\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"read reg %02x from phy%d = %04x\0A\00", [63 x i8] zeroinitializer }, align 32
@vsc73xx_phy_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.3, i32 530, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"reset PHY - disallowed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vsc73xx_phy_write\00", [46 x i8] zeroinitializer }, align 32
@vsc73xx_phy_write._entry_ptr = internal global ptr @vsc73xx_phy_write._entry, section ".printk_index", align 4
@vsc73xx_phy_write.__UNIQUE_ID_ddebug498 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 0, i8 -121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"write %04x to reg %02x in phy%d\0A\00", [63 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug499 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 0, i8 -60, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vsc73xx_adjust_link\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"port %d: went down\0A\00", [44 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.3, i32 806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout waiting for block arbiter\0A\00", [61 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link._entry_ptr = internal global ptr @vsc73xx_adjust_link._entry, section ".printk_index", align 4
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug500 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.65, i8 0, i8 -48, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"port %d: 1000 Mbit mode full duplex\0A\00", [59 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug501 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.66, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"port %d: 100 Mbit full duplex mode\0A\00", [60 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug502 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.67, i8 0, i8 -43, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"port %d: 100 Mbit half duplex mode\0A\00", [60 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug503 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.68, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d: 10 Mbit full duplex mode\0A\00", [61 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link.__UNIQUE_ID_ddebug504 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.62, ptr @.str.3, ptr @.str.69, i8 0, i8 -40, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port %d: 10 Mbit half duplex mode\0A\00", [61 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.62, ptr @.str.3, i32 870, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not adjust link: unknown speed\0A\00", [58 x i8] zeroinitializer }, align 32
@vsc73xx_adjust_link._entry_ptr.72 = internal global ptr @vsc73xx_adjust_link._entry.70, section ".printk_index", align 4
@vsc73xx_tx_counters = internal constant { [26 x %struct.vsc73xx_counter], [48 x i8] } { [26 x %struct.vsc73xx_counter] [%struct.vsc73xx_counter { i8 0, ptr @.str.75 }, %struct.vsc73xx_counter { i8 1, ptr @.str.76 }, %struct.vsc73xx_counter { i8 2, ptr @.str.77 }, %struct.vsc73xx_counter { i8 3, ptr @.str.78 }, %struct.vsc73xx_counter { i8 4, ptr @.str.79 }, %struct.vsc73xx_counter { i8 5, ptr @.str.80 }, %struct.vsc73xx_counter { i8 6, ptr @.str.81 }, %struct.vsc73xx_counter { i8 7, ptr @.str.82 }, %struct.vsc73xx_counter { i8 8, ptr @.str.83 }, %struct.vsc73xx_counter { i8 9, ptr @.str.84 }, %struct.vsc73xx_counter { i8 10, ptr @.str.85 }, %struct.vsc73xx_counter { i8 11, ptr @.str.86 }, %struct.vsc73xx_counter { i8 12, ptr @.str.87 }, %struct.vsc73xx_counter { i8 13, ptr @.str.88 }, %struct.vsc73xx_counter { i8 14, ptr @.str.89 }, %struct.vsc73xx_counter { i8 15, ptr @.str.90 }, %struct.vsc73xx_counter { i8 16, ptr @.str.91 }, %struct.vsc73xx_counter { i8 17, ptr @.str.92 }, %struct.vsc73xx_counter { i8 18, ptr @.str.93 }, %struct.vsc73xx_counter { i8 19, ptr @.str.94 }, %struct.vsc73xx_counter { i8 20, ptr @.str.95 }, %struct.vsc73xx_counter { i8 25, ptr @.str.96 }, %struct.vsc73xx_counter { i8 26, ptr @.str.97 }, %struct.vsc73xx_counter { i8 27, ptr @.str.98 }, %struct.vsc73xx_counter { i8 28, ptr @.str.99 }, %struct.vsc73xx_counter { i8 29, ptr @.str.100 }], [48 x i8] zeroinitializer }, align 32
@vsc73xx_rx_counters = internal constant { [27 x %struct.vsc73xx_counter], [40 x i8] } { [27 x %struct.vsc73xx_counter] [%struct.vsc73xx_counter { i8 0, ptr @.str.101 }, %struct.vsc73xx_counter { i8 1, ptr @.str.102 }, %struct.vsc73xx_counter { i8 2, ptr @.str.103 }, %struct.vsc73xx_counter { i8 3, ptr @.str.104 }, %struct.vsc73xx_counter { i8 4, ptr @.str.105 }, %struct.vsc73xx_counter { i8 5, ptr @.str.106 }, %struct.vsc73xx_counter { i8 6, ptr @.str.107 }, %struct.vsc73xx_counter { i8 7, ptr @.str.108 }, %struct.vsc73xx_counter { i8 8, ptr @.str.109 }, %struct.vsc73xx_counter { i8 9, ptr @.str.110 }, %struct.vsc73xx_counter { i8 10, ptr @.str.111 }, %struct.vsc73xx_counter { i8 11, ptr @.str.112 }, %struct.vsc73xx_counter { i8 12, ptr @.str.113 }, %struct.vsc73xx_counter { i8 13, ptr @.str.114 }, %struct.vsc73xx_counter { i8 14, ptr @.str.115 }, %struct.vsc73xx_counter { i8 15, ptr @.str.116 }, %struct.vsc73xx_counter { i8 16, ptr @.str.117 }, %struct.vsc73xx_counter { i8 17, ptr @.str.118 }, %struct.vsc73xx_counter { i8 18, ptr @.str.119 }, %struct.vsc73xx_counter { i8 19, ptr @.str.120 }, %struct.vsc73xx_counter { i8 20, ptr @.str.121 }, %struct.vsc73xx_counter { i8 21, ptr @.str.122 }, %struct.vsc73xx_counter { i8 25, ptr @.str.123 }, %struct.vsc73xx_counter { i8 26, ptr @.str.124 }, %struct.vsc73xx_counter { i8 27, ptr @.str.125 }, %struct.vsc73xx_counter { i8 28, ptr @.str.126 }, %struct.vsc73xx_counter { i8 29, ptr @.str.127 }], [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TxEtherStatsPkts\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TxBroadcast+MulticastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxTotalErrorPackets\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TxEtherStatsBroadcastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TxEtherStatsMulticastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TxEtherStatsPkts64Octets\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"TxEtherStatsPkts65to127Octets\00", [34 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TxEtherStatsPkts128to255Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"TxEtherStatsPkts256to511Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TxEtherStatsPkts512to1023Octets\00", [32 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TxEtherStatsPkts1024to1518Octets\00", [63 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxJumboFrames\00", [18 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"TxaPauseMACControlFramesTransmitted\00", [60 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxFIFODrops\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"TxDrops\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"TxEtherStatsCollisions\00", [41 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TxEtherStatsCRCAlignErrors\00", [37 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"TxEtherStatsUndersizePkts\00", [38 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"TxEtherStatsOversizePkts\00", [39 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TxEtherStatsFragments\00", [42 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxEtherStatsJabbers\00", [44 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"TxaFramesReceivedOK\00", [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxQoSClass0\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxQoSClass1\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxQoSClass2\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TxQoSClass3\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RxEtherStatsPkts\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RxBroadcast+MulticastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxTotalErrorPackets\00", [44 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RxEtherStatsBroadcastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RxEtherStatsMulticastPkts\00", [38 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RxEtherStatsPkts64Octets\00", [39 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RxEtherStatsPkts65to127Octets\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RxEtherStatsPkts128to255Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"RxEtherStatsPkts256to511Octets\00", [33 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RxEtherStatsPkts512to1023Octets\00", [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RxEtherStatsPkts1024to1518Octets\00", [63 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxJumboFrames\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"RxaPauseMACControlFramesTransmitted\00", [60 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxFIFODrops\00", [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RxBackwardDrops\00", [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RxClassifierDrops\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RxEtherStatsCRCAlignErrors\00", [37 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"RxEtherStatsUndersizePkts\00", [38 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"RxEtherStatsOversizePkts\00", [39 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RxEtherStatsFragments\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxEtherStatsJabbers\00", [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"RxaMACControlFramesReceived\00", [36 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"RxaFramesReceivedOK\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxQoSClass0\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxQoSClass1\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxQoSClass2\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RxQoSClass3\00", [20 x i8] zeroinitializer }, align 32
@vsc73xx_get_ethtool_stats._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.129, ptr @.str.3, i32 1016, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading counter %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vsc73xx_get_ethtool_stats\00", [38 x i8] zeroinitializer }, align 32
@vsc73xx_get_ethtool_stats._entry_ptr = internal global ptr @vsc73xx_get_ethtool_stats._entry, section ".printk_index", align 4
@vsc73xx_port_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.3, i32 883, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"enable port %d\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vsc73xx_port_enable\00", [44 x i8] zeroinitializer }, align 32
@vsc73xx_port_enable._entry_ptr = internal global ptr @vsc73xx_port_enable._entry, section ".printk_index", align 4
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"VSC%04x\00", [24 x i8] zeroinitializer }, align 32
@vsc73xx_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vsc73xx_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@vsc73xx_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.3, i32 1134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unable to register GPIO chip\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"vsc73xx_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@vsc73xx_gpio_probe._entry_ptr = internal global ptr @vsc73xx_gpio_probe._entry, section ".printk_index", align 4
@str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RxEtherStatsOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@str.135 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TxEtherStatsOctets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [63 x i8] zeroinitializer }, align 32
@switch.table.vsc73xx_is_addr_valid = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.vsc73xx_get_strings = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 0, i32 0, i32 0, i32 22, i32 23, i32 24, i32 25, i32 26], [40 x i8] zeroinitializer }, align 32
@switch.table.vsc73xx_get_strings.136 = internal constant { [30 x i32], [40 x i8] } { [30 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 0, i32 0, i32 0, i32 0, i32 21, i32 22, i32 23, i32 24, i32 25], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 16, i64 29573, i64 29576, i64 29589, i64 29592]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 16, i64 29589, i64 29592]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 10, i64 100, i64 1000]
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1146, i32 44 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1148, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1157, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1170, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1175, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"vsc73xx_ds_ops\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1041, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1202, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 415, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 420, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 427, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 440, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 447, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 452, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 465, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 467, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 471, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 476, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 478, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 482, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 565, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 504, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 510, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 530, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 539, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 785, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 805, i32 5 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 833, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 845, i32 4 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 850, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 858, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 863, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 869, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c"vsc73xx_tx_counters\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 313, i32 37 }
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c"vsc73xx_rx_counters\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 282, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 314, i32 7 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 315, i32 7 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 316, i32 7 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 317, i32 7 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 318, i32 7 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 319, i32 7 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 320, i32 7 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 321, i32 7 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 322, i32 7 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 323, i32 7 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 324, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 325, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 326, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 327, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 328, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 329, i32 8 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 330, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 331, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 332, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 333, i32 8 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 334, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 336, i32 8 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 337, i32 8 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 338, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 339, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 340, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 283, i32 7 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 284, i32 7 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 285, i32 7 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 286, i32 7 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 287, i32 7 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 288, i32 7 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 289, i32 7 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 290, i32 7 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 291, i32 7 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 292, i32 7 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 293, i32 8 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 294, i32 8 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 295, i32 8 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 296, i32 8 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 297, i32 8 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 298, i32 8 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 299, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 300, i32 8 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 301, i32 8 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 302, i32 8 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 303, i32 8 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 304, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 306, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 307, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 308, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 309, i32 8 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 310, i32 8 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1016, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 883, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1120, i32 55 }
@___asan_gen_.518 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.521 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1132, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private constant [42 x i8] c"../drivers/net/dsa/vitesse-vsc73xx-core.c\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1134, i32 3 }
@___asan_gen_.533 = private unnamed_addr constant [4 x i8] c"str\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [8 x i8] c"str.135\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [35 x i8] c"switch.table.vsc73xx_is_addr_valid\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [33 x i8] c"switch.table.vsc73xx_get_strings\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [37 x i8] c"switch.table.vsc73xx_get_strings.136\00", align 1
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_author505, ptr @__UNIQUE_ID_description506, ptr @__UNIQUE_ID_file507, ptr @__UNIQUE_ID_license508, ptr @__ksymtab_vsc73xx_is_addr_valid, ptr @__ksymtab_vsc73xx_probe, ptr @__ksymtab_vsc73xx_remove, ptr @__ksymtab_vsc73xx_shutdown, ptr @vsc73xx_adjust_link._entry, ptr @vsc73xx_adjust_link._entry.70, ptr @vsc73xx_adjust_link._entry_ptr, ptr @vsc73xx_adjust_link._entry_ptr.72, ptr @vsc73xx_detect._entry, ptr @vsc73xx_detect._entry.21, ptr @vsc73xx_detect._entry.24, ptr @vsc73xx_detect._entry.27, ptr @vsc73xx_detect._entry.30, ptr @vsc73xx_detect._entry.33, ptr @vsc73xx_detect._entry.36, ptr @vsc73xx_detect._entry.39, ptr @vsc73xx_detect._entry.42, ptr @vsc73xx_detect._entry.45, ptr @vsc73xx_detect._entry.48, ptr @vsc73xx_detect._entry.50, ptr @vsc73xx_detect._entry_ptr, ptr @vsc73xx_detect._entry_ptr.23, ptr @vsc73xx_detect._entry_ptr.26, ptr @vsc73xx_detect._entry_ptr.29, ptr @vsc73xx_detect._entry_ptr.32, ptr @vsc73xx_detect._entry_ptr.35, ptr @vsc73xx_detect._entry_ptr.38, ptr @vsc73xx_detect._entry_ptr.41, ptr @vsc73xx_detect._entry_ptr.44, ptr @vsc73xx_detect._entry_ptr.47, ptr @vsc73xx_detect._entry_ptr.49, ptr @vsc73xx_detect._entry_ptr.52, ptr @vsc73xx_get_ethtool_stats._entry, ptr @vsc73xx_get_ethtool_stats._entry_ptr, ptr @vsc73xx_gpio_probe._entry, ptr @vsc73xx_gpio_probe._entry_ptr, ptr @vsc73xx_phy_read._entry, ptr @vsc73xx_phy_read._entry_ptr, ptr @vsc73xx_phy_write._entry, ptr @vsc73xx_phy_write._entry_ptr, ptr @vsc73xx_port_enable._entry, ptr @vsc73xx_port_enable._entry_ptr, ptr @vsc73xx_probe._entry, ptr @vsc73xx_probe._entry.12, ptr @vsc73xx_probe._entry.16, ptr @vsc73xx_probe._entry.6, ptr @vsc73xx_probe._entry.9, ptr @vsc73xx_probe._entry_ptr, ptr @vsc73xx_probe._entry_ptr.11, ptr @vsc73xx_probe._entry_ptr.15, ptr @vsc73xx_probe._entry_ptr.18, ptr @vsc73xx_probe._entry_ptr.8, ptr @vsc73xx_setup._entry, ptr @vsc73xx_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @vsc73xx_ds_ops, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @vsc73xx_tx_counters, ptr @vsc73xx_rx_counters, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @vsc73xx_gpio_probe.lock_key, ptr @vsc73xx_gpio_probe.request_key, ptr @.str.133, ptr @.str.134, ptr @str, ptr @str.135, ptr @switch.table.vsc73xx_is_addr_valid, ptr @switch.table.vsc73xx_get_strings, ptr @switch.table.vsc73xx_get_strings.136], section "llvm.metadata"
@0 = internal global [136 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_ds_ops to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_detect._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_phy_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_phy_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_adjust_link._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_tx_counters to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_rx_counters to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_get_ethtool_stats._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_port_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsc73xx_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str.135 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vsc73xx_is_addr_valid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vsc73xx_get_strings to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.vsc73xx_get_strings.136 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @vsc73xx_is_addr_valid(i8 noundef zeroext %block, i8 noundef zeroext %subblock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %block to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %block, label %entry.sw.epilog12_crit_edge [
    i8 1, label %sw.bb
    i8 2, label %entry.sw.bb4_crit_edge
    i8 7, label %entry.sw.bb4_crit_edge15
    i8 3, label %entry.sw.bb8_crit_edge
    i8 4, label %entry.sw.bb8_crit_edge16
    i8 5, label %entry.sw.bb8_crit_edge17
  ]

entry.sw.bb8_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb8_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb4_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb4

entry.sw.epilog12_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %subblock)
  %1 = icmp ult i8 %subblock, 7
  br i1 %1, label %switch.lookup, label %sw.bb.sw.epilog12_crit_edge

sw.bb.sw.epilog12_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %subblock)
  %cond = icmp eq i8 %subblock, 0
  br i1 %cond, label %sw.bb4.return_crit_edge, label %sw.bb4.sw.epilog12_crit_edge

sw.bb4.sw.epilog12_crit_edge:                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

sw.bb4.return_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge16, %entry.sw.bb8_crit_edge17
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %subblock)
  %switch = icmp ult i8 %subblock, 2
  br i1 %switch, label %sw.bb8.return_crit_edge, label %sw.bb8.sw.epilog12_crit_edge

sw.bb8.sw.epilog12_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog12

sw.bb8.return_crit_edge:                          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.epilog12:                                      ; preds = %sw.bb8.sw.epilog12_crit_edge, %sw.bb4.sw.epilog12_crit_edge, %sw.bb.sw.epilog12_crit_edge, %entry.sw.epilog12_crit_edge
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %2 = sext i8 %subblock to i32
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.vsc73xx_is_addr_valid, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %sw.epilog12, %sw.bb8.return_crit_edge, %sw.bb4.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog12 ], [ 1, %sw.bb4.return_crit_edge ], [ 1, %sw.bb8.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @vsc73xx_probe(ptr noundef %vsc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsc, align 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str, i32 noundef 3) #6
  %reset = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 1
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %reset, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.1) #9
  %3 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reset, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 20) #6
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  %call9 = tail call fastcc i32 @vsc73xx_detect(ptr noundef %vsc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call9)
  %cmp = icmp eq i32 %call9, -11
  br i1 %cmp, label %do.end13, label %if.end8.if.end18_crit_edge

if.end8.if.end18_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vsc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.7) #9
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %9, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 100, i32 noundef 2) #6
  %10 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %call17 = tail call fastcc i32 @vsc73xx_detect(ptr noundef %vsc)
  br label %if.end18

if.end18:                                         ; preds = %do.end13, %if.end8.if.end18_crit_edge
  %ret.0 = phi i32 [ %call17, %do.end13 ], [ %call9, %if.end8.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool19.not = icmp eq i32 %ret.0, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10, i32 noundef %ret.0) #9
  br label %cleanup

if.end24:                                         ; preds = %if.end18
  %addr = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 5
  tail call void @get_random_bytes(ptr noundef %addr, i32 noundef 6) #6
  %12 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %addr, align 1
  %14 = and i8 %13, -4
  %15 = or i8 %14, 2
  store i8 %15, ptr %addr, align 1
  %16 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vsc, align 4
  %conv = zext i8 %15 to i32
  %arrayidx31 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %19 to i32
  %arrayidx34 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx34, align 2
  %conv35 = zext i8 %21 to i32
  %arrayidx37 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %23 to i32
  %arrayidx40 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 4
  %24 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx40, align 2
  %conv41 = zext i8 %25 to i32
  %arrayidx43 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 5
  %26 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv32, i32 noundef %conv35, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %conv44) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 84, i32 noundef 3520) #6
  %ds = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 2
  %28 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %ds, align 4
  %tobool47.not = icmp eq ptr %call.i, null
  br i1 %tobool47.not, label %if.end24.cleanup_crit_edge, label %if.end49

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %if.end24
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %1, ptr %call.i, align 4
  %num_ports = getelementptr inbounds %struct.dsa_switch, ptr %call.i, i32 0, i32 18
  %30 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %num_ports, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %vsc, ptr %priv, align 4
  %ops = getelementptr inbounds %struct.dsa_switch, ptr %call.i, i32 0, i32 8
  %32 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @vsc73xx_ds_ops, ptr %ops, align 4
  %call56 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end62, label %do.end61

do.end61:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, i32 noundef %call56) #9
  br label %cleanup

if.end62:                                         ; preds = %if.end49
  %33 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %vsc, align 4
  %chipid.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 4
  %35 = ptrtoint ptr %chipid.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %chipid.i, align 4
  %conv.i = zext i16 %36 to i32
  %call.i108 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %34, i32 noundef 3264, ptr noundef nonnull @.str.132, i32 noundef %conv.i) #6
  %gc.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3
  %37 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i108, ptr %gc.i, align 4
  %ngpio.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 4, ptr %ngpio.i, align 4
  %owner.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %owner.i, align 4
  %40 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vsc, align 4
  %parent.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %parent.i, align 4
  %base.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 19
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %base.i, align 4
  %get.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 10
  %44 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @vsc73xx_gpio_get, ptr %get.i, align 4
  %set.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 12
  %45 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @vsc73xx_gpio_set, ptr %set.i, align 4
  %direction_input.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 8
  %46 = ptrtoint ptr %direction_input.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @vsc73xx_gpio_direction_input, ptr %direction_input.i, align 4
  %direction_output.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 9
  %47 = ptrtoint ptr %direction_output.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @vsc73xx_gpio_direction_output, ptr %direction_output.i, align 4
  %get_direction.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 7
  %48 = ptrtoint ptr %get_direction.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @vsc73xx_gpio_get_direction, ptr %get_direction.i, align 4
  %can_sleep.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 3, i32 23
  %49 = ptrtoint ptr %can_sleep.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %can_sleep.i, align 4
  %call14.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %41, ptr noundef %gc.i, ptr noundef %vsc, ptr noundef nonnull @vsc73xx_gpio_probe.lock_key, ptr noundef nonnull @vsc73xx_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end62.cleanup_crit_edge, label %if.then65

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then65:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %vsc, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.133) #9
  %52 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %53) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %if.end62.cleanup_crit_edge, %do.end61, %if.end24.cleanup_crit_edge, %do.end23, %do.end
  %retval.0 = phi i32 [ %5, %do.end ], [ -19, %do.end23 ], [ %call56, %do.end61 ], [ %call14.i, %if.then65 ], [ -12, %if.end24.cleanup_crit_edge ], [ 0, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vsc73xx_detect(ptr noundef %vsc) unnamed_addr #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !284
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 %4(ptr noundef %vsc, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 21, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.19, i32 noundef %call.i) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp = icmp eq i32 %8, -1
  br i1 %cmp, label %do.end4, label %if.end6

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %10, ptr noundef nonnull @.str.22) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %call.i120 = call i32 %14(ptr noundef %vsc, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 24, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool8.not = icmp eq i32 %call.i120, 0
  br i1 %tobool8.not, label %if.end14, label %do.end12

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.25, i32 noundef %call.i120) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %shr = lshr i32 %18, 12
  %and = and i32 %shr, 65535
  %trunc = trunc i32 %shr to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.137)
  switch i16 %trunc, label %do.end17 [
    i16 29573, label %if.end14.sw.epilog_crit_edge
    i16 29576, label %if.end14.sw.epilog_crit_edge123
    i16 29589, label %if.end14.sw.epilog_crit_edge124
    i16 29592, label %if.end14.sw.epilog_crit_edge125
  ]

if.end14.sw.epilog_crit_edge125:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end14.sw.epilog_crit_edge124:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end14.sw.epilog_crit_edge123:                  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.28, i32 noundef %and) #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end14.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge123, %if.end14.sw.epilog_crit_edge124, %if.end14.sw.epilog_crit_edge125
  %chipid = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 4
  %22 = ptrtoint ptr %chipid to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %trunc, ptr %chipid, align 4
  %shr19 = lshr i32 %18, 28
  %23 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.31, i32 noundef %and, i32 noundef %shr19) #9
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %call.i122 = call i32 %28(ptr noundef %vsc, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122)
  %tobool26.not = icmp eq i32 %call.i122, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %and33 = and i32 %32, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  %and36 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %33 = and i32 %32, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %33)
  %.not = icmp eq i32 %33, 72
  br i1 %.not, label %do.end48, label %if.end54

do.end48:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.37) #9
  %36 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.40) #9
  br label %cleanup

if.end54:                                         ; preds = %if.end32
  %tobool34.not.not = xor i1 %tobool34.not, true
  %brmerge117 = select i1 %tobool37.not, i1 true, i1 %tobool34.not.not
  br i1 %brmerge117, label %if.end64, label %do.end62

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.43) #9
  br label %cleanup

if.end64:                                         ; preds = %if.end54
  %tobool37.not.not = xor i1 %tobool37.not, true
  %brmerge118 = select i1 %tobool37.not.not, i1 true, i1 %tobool34.not
  %40 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vsc, align 4
  br i1 %brmerge118, label %do.end81, label %do.end72

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.46) #9
  %42 = ptrtoint ptr %vsc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vsc, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.40) #9
  br label %cleanup

do.end81:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str.51) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end81, %do.end72, %do.end62, %do.end48, %do.end30, %do.end17, %do.end12, %do.end4, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ -11, %do.end4 ], [ %call.i120, %do.end12 ], [ -19, %do.end17 ], [ %call.i122, %do.end30 ], [ -19, %do.end48 ], [ 0, %do.end81 ], [ -19, %do.end72 ], [ -11, %do.end62 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc73xx_remove(ptr nocapture noundef readonly %vsc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 2
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %1) #6
  %reset = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 1
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vsc73xx_shutdown(ptr nocapture noundef readonly %vsc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ds = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 2
  %0 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc73xx_get_tag_protocol(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %mp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_setup(ptr nocapture noundef readonly %ds) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.53) #9
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 20, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 125, i32 noundef 200, i32 noundef 2) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.083 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = and i32 %i.083, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %switch = icmp eq i32 %8, 6
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %add = add nuw nsw i32 %i.083, 16843776
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %write.i57 = getelementptr inbounds %struct.vsc73xx_ops, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %write.i57 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %write.i57, align 4
  %call.i58 = tail call i32 %12(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 2, i8 noundef zeroext 0, i32 noundef %add) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %while.body.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

while.body.preheader:                             ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  %44 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i, align 4
  %write.i60 = getelementptr inbounds %struct.vsc73xx_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write.i60 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i60, align 4
  %call.i61 = tail call i32 %47(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext -80, i32 noundef 5) #6
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ops.i, align 4
  %write.i63 = getelementptr inbounds %struct.vsc73xx_ops, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %write.i63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %write.i63, align 4
  %call.i64 = tail call i32 %51(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext -48, i32 noundef 3) #6
  tail call void @msleep(i32 noundef 40) #6
  %chipid = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 4
  %52 = ptrtoint ptr %chipid to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %chipid, align 4
  %54 = zext i16 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.138)
  switch i16 %53, label %while.body.preheader.for.inc24.6_crit_edge [
    i16 29589, label %while.body.preheader.if.then12_crit_edge
    i16 29592, label %while.body.preheader.if.then12_crit_edge89
  ]

while.body.preheader.if.then12_crit_edge89:       ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

while.body.preheader.if.then12_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

while.body.preheader.for.inc24.6_crit_edge:       ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc24.6

if.then12:                                        ; preds = %while.body.preheader.if.then12_crit_edge, %while.body.preheader.if.then12_crit_edge89
  %55 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ops.i, align 4
  %write.i66 = getelementptr inbounds %struct.vsc73xx_ops, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %write.i66 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %write.i66, align 4
  %call.i67 = tail call i32 %58(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 31, i8 noundef zeroext -33, i32 noundef -2147483648) #6
  br label %for.inc24.6

for.inc24.6:                                      ; preds = %if.then12, %while.body.preheader.for.inc24.6_crit_edge
  %59 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ops.i, align 4
  %write.i69 = getelementptr inbounds %struct.vsc73xx_ops, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %write.i69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %write.i69, align 4
  %call.i70 = tail call i32 %62(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %63 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ops.i, align 4
  %write.i69.1 = getelementptr inbounds %struct.vsc73xx_ops, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %write.i69.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %write.i69.1, align 4
  %call.i70.1 = tail call i32 %66(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %67 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i, align 4
  %write.i69.2 = getelementptr inbounds %struct.vsc73xx_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write.i69.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i69.2, align 4
  %call.i70.2 = tail call i32 %70(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %71 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ops.i, align 4
  %write.i69.3 = getelementptr inbounds %struct.vsc73xx_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write.i69.3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i69.3, align 4
  %call.i70.3 = tail call i32 %74(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %75 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ops.i, align 4
  %write.i69.4 = getelementptr inbounds %struct.vsc73xx_ops, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %write.i69.4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %write.i69.4, align 4
  %call.i70.4 = tail call i32 %78(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %79 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ops.i, align 4
  %write.i69.6 = getelementptr inbounds %struct.vsc73xx_ops, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %write.i69.6 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %write.i69.6, align 4
  %call.i70.6 = tail call i32 %82(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 536870960) #6
  %83 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i, align 4
  %write.i72 = getelementptr inbounds %struct.vsc73xx_ops, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %write.i72 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %write.i72, align 4
  %call.i73 = tail call i32 %86(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 5, i32 noundef 51) #6
  %87 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ops.i, align 4
  %write.i75 = getelementptr inbounds %struct.vsc73xx_ops, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %write.i75 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %write.i75, align 4
  %call.i76 = tail call i32 %90(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 16, i32 noundef 95) #6
  %91 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ops.i, align 4
  %write.i78 = getelementptr inbounds %struct.vsc73xx_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write.i78 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write.i78, align 4
  %call.i79 = tail call i32 %94(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 4, i32 noundef 255) #6
  br label %while.body34

while.body34:                                     ; preds = %while.body34.while.body34_crit_edge, %for.inc24.6
  %__ms30.087 = phi i32 [ 50, %for.inc24.6 ], [ %dec32, %while.body34.while.body34_crit_edge ]
  %dec32 = add nsw i32 %__ms30.087, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748000) #6
  %tobool33.not = icmp eq i32 %dec32, 0
  br i1 %tobool33.not, label %while.end35, label %while.body34.while.body34_crit_edge

while.body34.while.body34_crit_edge:              ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body34

while.end35:                                      ; preds = %while.body34
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ops.i, align 4
  %write.i81 = getelementptr inbounds %struct.vsc73xx_ops, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %write.i81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %write.i81, align 4
  %call.i82 = tail call i32 %99(ptr noundef %1, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 20, i32 noundef 2) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 858992) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_phy_read(ptr nocapture noundef readonly %ds, i32 noundef %phy, i32 noundef %regnum) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !284
  %shl = shl i32 %phy, 21
  %shl1 = shl i32 %regnum, 16
  %or = or i32 %shl, %shl1
  %or2 = or i32 %or, 67108864
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %or2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 2) #6
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call.i35 = call i32 %10(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool4.not = icmp eq i32 %call.i35, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.55, i32 noundef %regnum, i32 noundef %phy) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %and10 = and i32 %12, 65535
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and10, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_phy_read.__UNIQUE_ID_ddebug497, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_phy_read, %if.then16)) #6
          to label %do.end20 [label %if.then16], !srcloc !285

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_phy_read.__UNIQUE_ID_ddebug497, ptr noundef %17, ptr noundef nonnull @.str.58, i32 noundef %regnum, i32 noundef %phy, i32 noundef %19) #6
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %if.end9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %21, %do.end20 ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i35, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_phy_write(ptr nocapture noundef readonly %ds, i32 noundef %phy, i32 noundef %regnum, i16 noundef zeroext %val) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %regnum)
  %cmp = icmp ne i32 %regnum, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %val)
  %tobool.not = icmp sgt i16 %val, -1
  %or.cond = or i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %phy, 21
  %shl1 = shl i32 %regnum, 16
  %or = or i32 %shl1, %shl
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %7(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %do.body5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_phy_write.__UNIQUE_ID_ddebug498, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_phy_write, %if.then10)) #6
          to label %cleanup [label %if.then10], !srcloc !285

if.then10:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv12 = zext i16 %val to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_phy_write.__UNIQUE_ID_ddebug498, ptr noundef %9, ptr noundef nonnull @.str.61, i32 noundef %conv12, i32 noundef %regnum, i32 noundef %phy) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %do.body5, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %call.i, %if.end.cleanup_crit_edge ], [ 0, %if.then10 ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_adjust_link(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readonly %phydev) #1 align 64 {
entry:
  %orig.i277 = alloca i32, align 4
  %orig.i266 = alloca i32, align 4
  %orig.i254 = alloca i32, align 4
  %orig.i243 = alloca i32, align 4
  %orig.i226 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !284
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %cmp = icmp eq i32 %port, 6
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @vsc73xx_init_port(ptr noundef %1, i32 noundef 6)
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 6, i8 noundef zeroext 25, i32 noundef 44) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %link = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 4
  %7 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %link, align 8
  %8 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.then1, label %if.end34

if.then1:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug499, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then6)) #6
          to label %do.end [label %if.then6], !srcloc !285

if.then6:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug499, ptr noundef %10, ptr noundef nonnull @.str.63, i32 noundef %port) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.then1
  %conv = trunc i32 %port to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %11 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %orig.i, align 4, !annotation !284
  %ops.i.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.i = call i32 %15(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.vsc73xx_update_bits.exit_crit_edge

do.end.vsc73xx_update_bits.exit_crit_edge:        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %orig.i, align 4
  %and.i = and i32 %17, -65537
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %write.i.i, align 4
  %call.i13.i = call i32 %21(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %and.i) #6
  br label %vsc73xx_update_bits.exit

vsc73xx_update_bits.exit:                         ; preds = %if.end.i, %do.end.vsc73xx_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  %shl = shl nuw i32 1, %port
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i226) #6
  %22 = ptrtoint ptr %orig.i226 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %orig.i226, align 4, !annotation !284
  %23 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %call.i.i228 = call i32 %26(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 14, ptr noundef nonnull %orig.i226) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i228)
  %tobool.not.i229 = icmp eq i32 %call.i.i228, 0
  br i1 %tobool.not.i229, label %if.end.i233, label %vsc73xx_update_bits.exit.vsc73xx_update_bits.exit235_crit_edge

vsc73xx_update_bits.exit.vsc73xx_update_bits.exit235_crit_edge: ; preds = %vsc73xx_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit235

if.end.i233:                                      ; preds = %vsc73xx_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %orig.i226 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %orig.i226, align 4
  %or.i = or i32 %28, %shl
  %29 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ops.i.i, align 4
  %write.i.i231 = getelementptr inbounds %struct.vsc73xx_ops, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %write.i.i231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %write.i.i231, align 4
  %call.i13.i232 = call i32 %32(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 14, i32 noundef %or.i) #6
  br label %vsc73xx_update_bits.exit235

vsc73xx_update_bits.exit235:                      ; preds = %if.end.i233, %vsc73xx_update_bits.exit.vsc73xx_update_bits.exit235_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i226) #6
  %33 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i237 = call i32 %36(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 12, ptr noundef nonnull %val) #6
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %vsc73xx_update_bits.exit235
  %maxloop.0 = phi i32 [ 10, %vsc73xx_update_bits.exit235 ], [ %dec, %while.body.while.cond_crit_edge ]
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and = and i32 %38, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %while.cond
  call void @msleep(i32 noundef 1) #6
  %39 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ops.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %call.i239 = call i32 %42(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 12, ptr noundef nonnull %val) #6
  %dec = add nsw i32 %maxloop.0, -1
  %cmp17 = icmp eq i32 %dec, 0
  br i1 %cmp17, label %do.end22, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

do.end22:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.64) #9
  br label %while.end

while.end:                                        ; preds = %do.end22, %while.cond.while.end_crit_edge
  %45 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ops.i.i, align 4
  %write.i241 = getelementptr inbounds %struct.vsc73xx_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %write.i241 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %write.i241, align 4
  %call.i242 = call i32 %48(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef 536870960) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i243) #6
  %49 = ptrtoint ptr %orig.i243 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %orig.i243, align 4, !annotation !284
  %50 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ops.i.i, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call.i.i245 = call i32 %53(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 14, ptr noundef nonnull %orig.i243) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i245)
  %tobool.not.i246 = icmp eq i32 %call.i.i245, 0
  br i1 %tobool.not.i246, label %if.end.i251, label %while.end.vsc73xx_update_bits.exit253_crit_edge

while.end.vsc73xx_update_bits.exit253_crit_edge:  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit253

if.end.i251:                                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %orig.i243 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %orig.i243, align 4
  %neg.i247 = xor i32 %shl, -1
  %and.i248 = and i32 %55, %neg.i247
  %56 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ops.i.i, align 4
  %write.i.i249 = getelementptr inbounds %struct.vsc73xx_ops, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %write.i.i249 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %write.i.i249, align 4
  %call.i13.i250 = call i32 %59(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 14, i32 noundef %and.i248) #6
  br label %vsc73xx_update_bits.exit253

vsc73xx_update_bits.exit253:                      ; preds = %if.end.i251, %while.end.vsc73xx_update_bits.exit253_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i243) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i254) #6
  %60 = ptrtoint ptr %orig.i254 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %orig.i254, align 4, !annotation !284
  %61 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ops.i.i, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %call.i.i256 = call i32 %64(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 18, ptr noundef nonnull %orig.i254) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i256)
  %tobool.not.i257 = icmp eq i32 %call.i.i256, 0
  br i1 %tobool.not.i257, label %if.end.i263, label %vsc73xx_update_bits.exit253.vsc73xx_update_bits.exit265_crit_edge

vsc73xx_update_bits.exit253.vsc73xx_update_bits.exit265_crit_edge: ; preds = %vsc73xx_update_bits.exit253
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit265

if.end.i263:                                      ; preds = %vsc73xx_update_bits.exit253
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %orig.i254 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %orig.i254, align 4
  %or.i260 = or i32 %66, %shl
  %67 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ops.i.i, align 4
  %write.i.i261 = getelementptr inbounds %struct.vsc73xx_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %write.i.i261 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %write.i.i261, align 4
  %call.i13.i262 = call i32 %70(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef %or.i260) #6
  br label %vsc73xx_update_bits.exit265

vsc73xx_update_bits.exit265:                      ; preds = %if.end.i263, %vsc73xx_update_bits.exit253.vsc73xx_update_bits.exit265_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i254) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i266) #6
  %71 = ptrtoint ptr %orig.i266 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %orig.i266, align 4, !annotation !284
  %72 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %call.i.i268 = call i32 %75(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %orig.i266) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i268)
  %tobool.not.i269 = icmp eq i32 %call.i.i268, 0
  br i1 %tobool.not.i269, label %if.end.i274, label %vsc73xx_update_bits.exit265.vsc73xx_update_bits.exit276_crit_edge

vsc73xx_update_bits.exit265.vsc73xx_update_bits.exit276_crit_edge: ; preds = %vsc73xx_update_bits.exit265
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit276

if.end.i274:                                      ; preds = %vsc73xx_update_bits.exit265
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %orig.i266 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %orig.i266, align 4
  %neg.i270 = xor i32 %shl, -1
  %and.i271 = and i32 %77, %neg.i270
  %78 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ops.i.i, align 4
  %write.i.i272 = getelementptr inbounds %struct.vsc73xx_ops, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %write.i.i272 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %write.i.i272, align 4
  %call.i13.i273 = call i32 %81(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 16, i32 noundef %and.i271) #6
  br label %vsc73xx_update_bits.exit276

vsc73xx_update_bits.exit276:                      ; preds = %if.end.i274, %vsc73xx_update_bits.exit265.vsc73xx_update_bits.exit276_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i266) #6
  br label %cleanup

if.end34:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 8
  %82 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %speed, align 8
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %83, label %do.end151 [
    i32 1000, label %do.body38
    i32 100, label %if.then63
    i32 10, label %if.then107
  ]

do.body38:                                        ; preds = %if.end34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug500, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then50)) #6
          to label %do.end54 [label %if.then50], !srcloc !285

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug500, ptr noundef %86, ptr noundef nonnull @.str.65, i32 noundef %port) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body38
  %interface = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 7
  %87 = ptrtoint ptr %interface to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %interface, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %88)
  %cmp55 = icmp eq i32 %88, 9
  %. = select i1 %cmp55, i32 393601, i32 393604
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %., ptr %val, align 4
  tail call fastcc void @vsc73xx_adjust_enable_port(ptr noundef %1, i32 noundef %port, i32 noundef %.)
  br label %if.end155

if.then63:                                        ; preds = %if.end34
  %duplex = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %90 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %91)
  %cmp64 = icmp eq i32 %91, 1
  br i1 %cmp64, label %if.then66, label %if.else84

if.then66:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 263236, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug501, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then79)) #6
          to label %if.end102 [label %if.then79], !srcloc !285

if.then79:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug501, ptr noundef %94, ptr noundef nonnull @.str.66, i32 noundef %port) #6
  br label %if.end102

if.else84:                                        ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1092, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug502, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then97)) #6
          to label %if.end102 [label %if.then97], !srcloc !285

if.then97:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug502, ptr noundef %97, ptr noundef nonnull @.str.67, i32 noundef %port) #6
  br label %if.end102

if.end102:                                        ; preds = %if.then97, %if.else84, %if.then79, %if.then66
  %98 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %val, align 4
  tail call fastcc void @vsc73xx_adjust_enable_port(ptr noundef %1, i32 noundef %port, i32 noundef %99)
  br label %if.end155

if.then107:                                       ; preds = %if.end34
  %duplex108 = getelementptr inbounds %struct.phy_device, ptr %phydev, i32 0, i32 9
  %100 = ptrtoint ptr %duplex108 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %duplex108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp109 = icmp eq i32 %101, 1
  br i1 %cmp109, label %if.then111, label %if.else129

if.then111:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 263236, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug503, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then124)) #6
          to label %if.end147 [label %if.then124], !srcloc !285

if.then124:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug503, ptr noundef %104, ptr noundef nonnull @.str.68, i32 noundef %port) #6
  br label %if.end147

if.else129:                                       ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 1092, ptr %val, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug504, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vsc73xx_adjust_link, %if.then142)) #6
          to label %if.end147 [label %if.then142], !srcloc !285

if.then142:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vsc73xx_adjust_link.__UNIQUE_ID_ddebug504, ptr noundef %107, ptr noundef nonnull @.str.69, i32 noundef %port) #6
  br label %if.end147

if.end147:                                        ; preds = %if.then142, %if.else129, %if.then124, %if.then111
  %108 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %val, align 4
  tail call fastcc void @vsc73xx_adjust_enable_port(ptr noundef %1, i32 noundef %port, i32 noundef %109)
  br label %if.end155

do.end151:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.71) #9
  br label %if.end155

if.end155:                                        ; preds = %do.end151, %if.end147, %if.end102, %do.end54
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i277) #6
  %112 = ptrtoint ptr %orig.i277 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 -1, ptr %orig.i277, align 4, !annotation !284
  %ops.i.i278 = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %113 = ptrtoint ptr %ops.i.i278 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ops.i.i278, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %call.i.i279 = call i32 %116(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 16, ptr noundef nonnull %orig.i277) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i279)
  %tobool.not.i280 = icmp eq i32 %call.i.i279, 0
  br i1 %tobool.not.i280, label %if.end.i286, label %if.end155.vsc73xx_update_bits.exit288_crit_edge

if.end155.vsc73xx_update_bits.exit288_crit_edge:  ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit288

if.end.i286:                                      ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #8
  %shl156 = shl nuw i32 1, %port
  %117 = ptrtoint ptr %orig.i277 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %orig.i277, align 4
  %or.i283 = or i32 %118, %shl156
  %119 = ptrtoint ptr %ops.i.i278 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ops.i.i278, align 4
  %write.i.i284 = getelementptr inbounds %struct.vsc73xx_ops, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write.i.i284 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write.i.i284, align 4
  %call.i13.i285 = call i32 %122(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 16, i32 noundef %or.i283) #6
  br label %vsc73xx_update_bits.exit288

vsc73xx_update_bits.exit288:                      ; preds = %if.end.i286, %if.end155.vsc73xx_update_bits.exit288_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i277) #6
  br label %cleanup

cleanup:                                          ; preds = %vsc73xx_update_bits.exit288, %vsc73xx_update_bits.exit276
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_get_strings(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %stringset, ptr noundef %data) #1 align 64 {
entry:
  %indices = alloca [6 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %indices) #6
  %2 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !284
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cmp.not = icmp eq i32 %stringset, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call.i = call i32 %11(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 88, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = trunc i32 %13 to i8
  %conv3 = and i8 %14, 31
  %15 = ptrtoint ptr %indices to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv3, ptr %indices, align 1
  %shr = lshr i32 %13, 5
  %16 = trunc i32 %shr to i8
  %conv5 = and i8 %16, 31
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv5, ptr %2, align 1
  %shr7 = lshr i32 %13, 10
  %18 = trunc i32 %shr7 to i8
  %conv9 = and i8 %18, 31
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9, ptr %3, align 1
  %shr11 = lshr i32 %13, 16
  %20 = trunc i32 %shr11 to i8
  %conv13 = and i8 %20, 31
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv13, ptr %4, align 1
  %shr15 = lshr i32 %13, 21
  %22 = trunc i32 %shr15 to i8
  %conv17 = and i8 %22, 31
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv17, ptr %5, align 1
  %shr19 = lshr i32 %13, 26
  %24 = trunc i32 %shr19 to i8
  %conv21 = and i8 %24, 31
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv21, ptr %6, align 1
  %26 = call ptr @memcpy(ptr %data, ptr @str, i32 32)
  %27 = load i8, ptr %indices, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %27)
  %28 = icmp ult i8 %27, 30
  br i1 %28, label %switch.hole_check, label %if.end2.if.end33_crit_edge

if.end2.if.end33_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

switch.hole_check:                                ; preds = %if.end2
  %switch.maskindex = zext i8 %27 to i32
  %switch.shifted = lshr i32 1044381695, %switch.maskindex
  %29 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %switch.lobit.not = icmp eq i32 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end33_crit_edge, label %switch.lookup

switch.hole_check.if.end33_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %30 = sext i8 %27 to i32
  %switch.gep = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings, i32 0, i32 %30
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load i32, ptr %switch.gep, align 4
  %add.ptr31 = getelementptr i8, ptr %data, i32 32
  %name = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_rx_counters, i32 %switch.load, i32 1
  %32 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name, align 4
  %call32 = call ptr @strncpy(ptr noundef %add.ptr31, ptr noundef %33, i32 noundef 32)
  br label %if.end33

if.end33:                                         ; preds = %switch.lookup, %switch.hole_check.if.end33_crit_edge, %if.end2.if.end33_crit_edge
  %arrayidx26.1 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx26.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %35)
  %36 = icmp ult i8 %35, 30
  br i1 %36, label %switch.hole_check.1, label %if.end33.if.end33.1_crit_edge

if.end33.if.end33.1_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.1

switch.hole_check.1:                              ; preds = %if.end33
  %switch.maskindex.1 = zext i8 %35 to i32
  %switch.shifted.1 = lshr i32 1044381695, %switch.maskindex.1
  %37 = and i32 %switch.shifted.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %switch.lobit.not.1 = icmp eq i32 %37, 0
  br i1 %switch.lobit.not.1, label %switch.hole_check.1.if.end33.1_crit_edge, label %switch.lookup.1

switch.hole_check.1.if.end33.1_crit_edge:         ; preds = %switch.hole_check.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.1

switch.lookup.1:                                  ; preds = %switch.hole_check.1
  call void @__sanitizer_cov_trace_pc() #8
  %38 = sext i8 %35 to i32
  %switch.gep.1 = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load.1 = load i32, ptr %switch.gep.1, align 4
  %add.ptr31.1 = getelementptr i8, ptr %data, i32 64
  %name.1 = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_rx_counters, i32 %switch.load.1, i32 1
  %40 = ptrtoint ptr %name.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.1, align 4
  %call32.1 = call ptr @strncpy(ptr noundef %add.ptr31.1, ptr noundef %41, i32 noundef 32)
  br label %if.end33.1

if.end33.1:                                       ; preds = %switch.lookup.1, %switch.hole_check.1.if.end33.1_crit_edge, %if.end33.if.end33.1_crit_edge
  %arrayidx26.2 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 2
  %42 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx26.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %43)
  %44 = icmp ult i8 %43, 30
  br i1 %44, label %switch.hole_check.2, label %if.end33.1.if.end33.2_crit_edge

if.end33.1.if.end33.2_crit_edge:                  ; preds = %if.end33.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.2

switch.hole_check.2:                              ; preds = %if.end33.1
  %switch.maskindex.2 = zext i8 %43 to i32
  %switch.shifted.2 = lshr i32 1044381695, %switch.maskindex.2
  %45 = and i32 %switch.shifted.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %switch.lobit.not.2 = icmp eq i32 %45, 0
  br i1 %switch.lobit.not.2, label %switch.hole_check.2.if.end33.2_crit_edge, label %switch.lookup.2

switch.hole_check.2.if.end33.2_crit_edge:         ; preds = %switch.hole_check.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.2

switch.lookup.2:                                  ; preds = %switch.hole_check.2
  call void @__sanitizer_cov_trace_pc() #8
  %46 = sext i8 %43 to i32
  %switch.gep.2 = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings, i32 0, i32 %46
  %47 = ptrtoint ptr %switch.gep.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %switch.load.2 = load i32, ptr %switch.gep.2, align 4
  %add.ptr31.2 = getelementptr i8, ptr %data, i32 96
  %name.2 = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_rx_counters, i32 %switch.load.2, i32 1
  %48 = ptrtoint ptr %name.2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %name.2, align 4
  %call32.2 = call ptr @strncpy(ptr noundef %add.ptr31.2, ptr noundef %49, i32 noundef 32)
  br label %if.end33.2

if.end33.2:                                       ; preds = %switch.lookup.2, %switch.hole_check.2.if.end33.2_crit_edge, %if.end33.1.if.end33.2_crit_edge
  %add.ptr37 = getelementptr i8, ptr %data, i32 128
  %50 = call ptr @memcpy(ptr %add.ptr37, ptr @str.135, i32 32)
  %arrayidx44 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %52)
  %53 = icmp ult i8 %52, 30
  br i1 %53, label %switch.hole_check161, label %if.end33.2.if.end52_crit_edge

if.end33.2.if.end52_crit_edge:                    ; preds = %if.end33.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

switch.hole_check161:                             ; preds = %if.end33.2
  %switch.maskindex163 = zext i8 %52 to i32
  %switch.shifted164 = lshr i32 1042284543, %switch.maskindex163
  %54 = and i32 %switch.shifted164, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %switch.lobit165.not = icmp eq i32 %54, 0
  br i1 %switch.lobit165.not, label %switch.hole_check161.if.end52_crit_edge, label %switch.lookup162

switch.hole_check161.if.end52_crit_edge:          ; preds = %switch.hole_check161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

switch.lookup162:                                 ; preds = %switch.hole_check161
  call void @__sanitizer_cov_trace_pc() #8
  %55 = sext i8 %52 to i32
  %switch.gep166 = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings.136, i32 0, i32 %55
  %56 = ptrtoint ptr %switch.gep166 to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load167 = load i32, ptr %switch.gep166, align 4
  %add.ptr49 = getelementptr i8, ptr %data, i32 160
  %name50 = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_tx_counters, i32 %switch.load167, i32 1
  %57 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name50, align 4
  %call51 = call ptr @strncpy(ptr noundef %add.ptr49, ptr noundef %58, i32 noundef 32)
  br label %if.end52

if.end52:                                         ; preds = %switch.lookup162, %switch.hole_check161.if.end52_crit_edge, %if.end33.2.if.end52_crit_edge
  %arrayidx44.1 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 4
  %59 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx44.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %60)
  %61 = icmp ult i8 %60, 30
  br i1 %61, label %switch.hole_check161.1, label %if.end52.if.end52.1_crit_edge

if.end52.if.end52.1_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.1

switch.hole_check161.1:                           ; preds = %if.end52
  %switch.maskindex163.1 = zext i8 %60 to i32
  %switch.shifted164.1 = lshr i32 1042284543, %switch.maskindex163.1
  %62 = and i32 %switch.shifted164.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %switch.lobit165.not.1 = icmp eq i32 %62, 0
  br i1 %switch.lobit165.not.1, label %switch.hole_check161.1.if.end52.1_crit_edge, label %switch.lookup162.1

switch.hole_check161.1.if.end52.1_crit_edge:      ; preds = %switch.hole_check161.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52.1

switch.lookup162.1:                               ; preds = %switch.hole_check161.1
  call void @__sanitizer_cov_trace_pc() #8
  %63 = sext i8 %60 to i32
  %switch.gep166.1 = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings.136, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep166.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load167.1 = load i32, ptr %switch.gep166.1, align 4
  %add.ptr49.1 = getelementptr i8, ptr %data, i32 192
  %name50.1 = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_tx_counters, i32 %switch.load167.1, i32 1
  %65 = ptrtoint ptr %name50.1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name50.1, align 4
  %call51.1 = call ptr @strncpy(ptr noundef %add.ptr49.1, ptr noundef %66, i32 noundef 32)
  br label %if.end52.1

if.end52.1:                                       ; preds = %switch.lookup162.1, %switch.hole_check161.1.if.end52.1_crit_edge, %if.end52.if.end52.1_crit_edge
  %arrayidx44.2 = getelementptr inbounds [6 x i8], ptr %indices, i32 0, i32 5
  %67 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx44.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %68)
  %69 = icmp ult i8 %68, 30
  br i1 %69, label %switch.hole_check161.2, label %if.end52.1.cleanup_crit_edge

if.end52.1.cleanup_crit_edge:                     ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.hole_check161.2:                           ; preds = %if.end52.1
  %switch.maskindex163.2 = zext i8 %68 to i32
  %switch.shifted164.2 = lshr i32 1042284543, %switch.maskindex163.2
  %70 = and i32 %switch.shifted164.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %switch.lobit165.not.2 = icmp eq i32 %70, 0
  br i1 %switch.lobit165.not.2, label %switch.hole_check161.2.cleanup_crit_edge, label %switch.lookup162.2

switch.hole_check161.2.cleanup_crit_edge:         ; preds = %switch.hole_check161.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup162.2:                               ; preds = %switch.hole_check161.2
  call void @__sanitizer_cov_trace_pc() #8
  %71 = sext i8 %68 to i32
  %switch.gep166.2 = getelementptr inbounds [30 x i32], ptr @switch.table.vsc73xx_get_strings.136, i32 0, i32 %71
  %72 = ptrtoint ptr %switch.gep166.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load167.2 = load i32, ptr %switch.gep166.2, align 4
  %add.ptr49.2 = getelementptr i8, ptr %data, i32 224
  %name50.2 = getelementptr %struct.vsc73xx_counter, ptr @vsc73xx_tx_counters, i32 %switch.load167.2, i32 1
  %73 = ptrtoint ptr %name50.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %name50.2, align 4
  %call51.2 = call ptr @strncpy(ptr noundef %add.ptr49.2, ptr noundef %74, i32 noundef 32)
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup162.2, %switch.hole_check161.2.cleanup_crit_edge, %if.end52.1.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %indices) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_get_ethtool_stats(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef writeonly %data) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !284
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ops.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call.i = call i32 %6(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 80, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end.6.do.end_crit_edge, %if.end.5.do.end_crit_edge, %if.end.4.do.end_crit_edge, %if.end.3.do.end_crit_edge, %if.end.2.do.end_crit_edge, %if.end.1.do.end_crit_edge, %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  %i.013.lcssa = phi i32 [ 0, %entry.do.end_crit_edge ], [ 1, %if.end.do.end_crit_edge ], [ 2, %if.end.1.do.end_crit_edge ], [ 3, %if.end.2.do.end_crit_edge ], [ 4, %if.end.3.do.end_crit_edge ], [ 5, %if.end.4.do.end_crit_edge ], [ 6, %if.end.5.do.end_crit_edge ], [ 7, %if.end.6.do.end_crit_edge ]
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.128, i32 noundef %i.013.lcssa) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv1 = zext i32 %10 to i64
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv1, ptr %data, align 8
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call.i.1 = call i32 %15(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 82, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.1, label %if.end.1, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.1:                                         ; preds = %if.end
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %conv1.1 = zext i32 %17 to i64
  %arrayidx2.1 = getelementptr i64, ptr %data, i32 1
  %18 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %conv1.1, ptr %arrayidx2.1, align 8
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %call.i.2 = call i32 %22(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 83, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.2, label %if.end.2, label %if.end.1.do.end_crit_edge

if.end.1.do.end_crit_edge:                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.2:                                         ; preds = %if.end.1
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %conv1.2 = zext i32 %24 to i64
  %arrayidx2.2 = getelementptr i64, ptr %data, i32 2
  %25 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %conv1.2, ptr %arrayidx2.2, align 8
  %26 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ops.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %call.i.3 = call i32 %29(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 84, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %tobool.not.3 = icmp eq i32 %call.i.3, 0
  br i1 %tobool.not.3, label %if.end.3, label %if.end.2.do.end_crit_edge

if.end.2.do.end_crit_edge:                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.3:                                         ; preds = %if.end.2
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %conv1.3 = zext i32 %31 to i64
  %arrayidx2.3 = getelementptr i64, ptr %data, i32 3
  %32 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv1.3, ptr %arrayidx2.3, align 8
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call.i.4 = call i32 %36(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 81, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %tobool.not.4 = icmp eq i32 %call.i.4, 0
  br i1 %tobool.not.4, label %if.end.4, label %if.end.3.do.end_crit_edge

if.end.3.do.end_crit_edge:                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.4:                                         ; preds = %if.end.3
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %conv1.4 = zext i32 %38 to i64
  %arrayidx2.4 = getelementptr i64, ptr %data, i32 4
  %39 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv1.4, ptr %arrayidx2.4, align 8
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %call.i.5 = call i32 %43(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 85, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %tobool.not.5 = icmp eq i32 %call.i.5, 0
  br i1 %tobool.not.5, label %if.end.5, label %if.end.4.do.end_crit_edge

if.end.4.do.end_crit_edge:                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.5:                                         ; preds = %if.end.4
  %44 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val, align 4
  %conv1.5 = zext i32 %45 to i64
  %arrayidx2.5 = getelementptr i64, ptr %data, i32 5
  %46 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %conv1.5, ptr %arrayidx2.5, align 8
  %47 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i.6 = call i32 %50(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 86, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6)
  %tobool.not.6 = icmp eq i32 %call.i.6, 0
  br i1 %tobool.not.6, label %if.end.6, label %if.end.5.do.end_crit_edge

if.end.5.do.end_crit_edge:                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.6:                                         ; preds = %if.end.5
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  %conv1.6 = zext i32 %52 to i64
  %arrayidx2.6 = getelementptr i64, ptr %data, i32 6
  %53 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv1.6, ptr %arrayidx2.6, align 8
  %54 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ops.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %call.i.7 = call i32 %57(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 87, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7)
  %tobool.not.7 = icmp eq i32 %call.i.7, 0
  br i1 %tobool.not.7, label %if.end.7, label %if.end.6.do.end_crit_edge

if.end.6.do.end_crit_edge:                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.7:                                         ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val, align 4
  %conv1.7 = zext i32 %59 to i64
  %arrayidx2.7 = getelementptr i64, ptr %data, i32 7
  %60 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv1.7, ptr %arrayidx2.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc73xx_get_sset_count(ptr nocapture noundef readnone %ds, i32 noundef %port, i32 noundef %sset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cmp.not = icmp eq i32 %sset, 1
  %. = select i1 %cmp.not, i32 8, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_port_enable(ptr nocapture noundef readonly %ds, i32 noundef %port, ptr nocapture noundef readnone %phy) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.130, i32 noundef %port) #9
  tail call fastcc void @vsc73xx_init_port(ptr noundef %1, i32 noundef %port)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_port_disable(ptr nocapture noundef readonly %ds, i32 noundef %port) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef 536870960) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_change_mtu(ptr nocapture noundef readonly %ds, i32 noundef %port, i32 noundef %new_mtu) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %ds, i32 0, i32 5
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %5(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 16, i32 noundef %new_mtu) #6
  ret i32 %call.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vsc73xx_get_max_mtu(ptr nocapture noundef readnone %ds, i32 noundef %port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 9600
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc73xx_init_port(ptr noundef %vsc, i32 noundef %port) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 6
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %3(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef 536870960) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %port)
  %cmp = icmp eq i32 %port, 6
  %. = select i1 %cmp, i32 268894593, i32 268894596
  %4 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops.i, align 4
  %write.i73 = getelementptr inbounds %struct.vsc73xx_ops, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %write.i73 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write.i73, align 4
  %call.i74 = tail call i32 %7(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %.) #6
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %write.i76 = getelementptr inbounds %struct.vsc73xx_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %write.i76 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i76, align 4
  %call.i77 = tail call i32 %11(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 4, i32 noundef 196608) #6
  %val.1 = select i1 %cmp, i32 -2147483646, i32 -2147483647
  %12 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i, align 4
  %write.i79 = getelementptr inbounds %struct.vsc73xx_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %write.i79 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %write.i79, align 4
  %call.i80 = tail call i32 %15(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext -33, i32 noundef %val.1) #6
  %addr = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 5
  %arrayidx = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 5
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv15, 16
  %arrayidx17 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx17, align 2
  %conv18 = zext i8 %19 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %or20 = or i32 %shl19, %shl
  %arrayidx22 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 3
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %21 to i32
  %or24 = or i32 %or20, %conv23
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write.i82 = getelementptr inbounds %struct.vsc73xx_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write.i82 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i82, align 4
  %call.i83 = tail call i32 %25(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 8, i32 noundef %or24) #6
  %arrayidx28 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 2
  %26 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx28, align 2
  %conv29 = zext i8 %27 to i32
  %shl30 = shl nuw nsw i32 %conv29, 16
  %arrayidx32 = getelementptr %struct.vsc73xx, ptr %vsc, i32 0, i32 5, i32 1
  %28 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %29 to i32
  %shl34 = shl nuw nsw i32 %conv33, 8
  %or35 = or i32 %shl34, %shl30
  %30 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %addr, align 2
  %conv38 = zext i8 %31 to i32
  %or39 = or i32 %or35, %conv38
  %32 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops.i, align 4
  %write.i85 = getelementptr inbounds %struct.vsc73xx_ops, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %write.i85 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write.i85, align 4
  %call.i86 = tail call i32 %35(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 12, i32 noundef %or39) #6
  %36 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops.i, align 4
  %write.i88 = getelementptr inbounds %struct.vsc73xx_ops, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %write.i88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %write.i88, align 4
  %call.i89 = tail call i32 %39(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 110, i32 noundef 8) #6
  %40 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops.i, align 4
  %write.i91 = getelementptr inbounds %struct.vsc73xx_ops, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %write.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %write.i91, align 4
  %call.i92 = tail call i32 %43(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 82, i32 noundef 0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vsc73xx_adjust_enable_port(ptr noundef %vsc, i32 noundef %port, i32 noundef %initval) unnamed_addr #1 align 64 {
entry:
  %orig.i7 = alloca i32, align 4
  %orig.i = alloca i32, align 4
  %seed = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %seed) #6
  %0 = ptrtoint ptr %seed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %seed, align 1, !annotation !284
  %or = or i32 %initval, 536870960
  %conv = trunc i32 %port to i8
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %vsc, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write.i, align 4
  %call.i = tail call i32 %4(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %or) #6
  call void @get_random_bytes(ptr noundef nonnull %seed, i32 noundef 1) #6
  %5 = ptrtoint ptr %seed to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %seed, align 1
  %conv1 = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv1, 19
  %or2 = or i32 %shl, %initval
  %or4 = or i32 %or2, -1476394960
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 4
  %write.i2 = getelementptr inbounds %struct.vsc73xx_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i2, align 4
  %call.i3 = call i32 %10(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %or4) #6
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ops.i, align 4
  %write.i5 = getelementptr inbounds %struct.vsc73xx_ops, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %write.i5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write.i5, align 4
  %call.i6 = call i32 %14(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 4, i32 noundef 196863) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %15 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %orig.i, align 4, !annotation !284
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %call.i.i = call i32 %19(ptr noundef %vsc, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 18, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vsc73xx_update_bits.exit_crit_edge

entry.vsc73xx_update_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %shl9 = shl nuw i32 1, %port
  %20 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %orig.i, align 4
  %neg.i = xor i32 %shl9, -1
  %and.i = and i32 %21, %neg.i
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %write.i.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %write.i.i, align 4
  %call.i13.i = call i32 %25(ptr noundef %vsc, i8 noundef zeroext 5, i8 noundef zeroext 0, i8 noundef zeroext 18, i32 noundef %and.i) #6
  br label %vsc73xx_update_bits.exit

vsc73xx_update_bits.exit:                         ; preds = %if.end.i, %entry.vsc73xx_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i7) #6
  %26 = ptrtoint ptr %orig.i7 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %orig.i7, align 4, !annotation !284
  %27 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ops.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call.i.i9 = call i32 %30(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull %orig.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i9)
  %tobool.not.i10 = icmp eq i32 %call.i.i9, 0
  br i1 %tobool.not.i10, label %if.end.i14, label %vsc73xx_update_bits.exit.vsc73xx_update_bits.exit16_crit_edge

vsc73xx_update_bits.exit.vsc73xx_update_bits.exit16_crit_edge: ; preds = %vsc73xx_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit16

if.end.i14:                                       ; preds = %vsc73xx_update_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %orig.i7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %orig.i7, align 4
  %and.i11 = and i32 %32, -939589681
  %or.i = or i32 %and.i11, 268500992
  %33 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i, align 4
  %write.i.i12 = getelementptr inbounds %struct.vsc73xx_ops, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %write.i.i12 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i.i12, align 4
  %call.i13.i13 = call i32 %36(ptr noundef %vsc, i8 noundef zeroext 1, i8 noundef zeroext %conv, i8 noundef zeroext 0, i32 noundef %or.i) #6
  br label %vsc73xx_update_bits.exit16

vsc73xx_update_bits.exit16:                       ; preds = %if.end.i14, %vsc73xx_update_bits.exit.vsc73xx_update_bits.exit16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i7) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %seed) #6
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_gpio_get(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !284
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 %4(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = lshr i32 %6, %offset
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vsc73xx_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %0 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %orig.i, align 4, !annotation !284
  %ops.i.i = getelementptr inbounds %struct.vsc73xx, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = call i32 %4(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vsc73xx_update_bits.exit_crit_edge

entry.vsc73xx_update_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl = shl nuw i32 1, %offset
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %5 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig.i, align 4
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %6, %neg.i
  %or.i = or i32 %and.i, %spec.select
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i, align 4
  %call.i13.i = call i32 %10(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, i32 noundef %or.i) #6
  br label %vsc73xx_update_bits.exit

vsc73xx_update_bits.exit:                         ; preds = %if.end.i, %entry.vsc73xx_update_bits.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %0 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %orig.i, align 4, !annotation !284
  %ops.i.i = getelementptr inbounds %struct.vsc73xx, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = call i32 %4(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vsc73xx_update_bits.exit_crit_edge

entry.vsc73xx_update_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %offset, 4
  %shl = shl nuw i32 1, %add
  %5 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig.i, align 4
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %6, %neg.i
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i, align 4
  %call.i13.i = call i32 %10(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, i32 noundef %and.i) #6
  br label %vsc73xx_update_bits.exit

vsc73xx_update_bits.exit:                         ; preds = %if.end.i, %entry.vsc73xx_update_bits.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i13.i, %if.end.i ], [ %call.i.i, %entry.vsc73xx_update_bits.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #1 align 64 {
entry:
  %orig.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %orig.i) #6
  %0 = ptrtoint ptr %orig.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %orig.i, align 4, !annotation !284
  %ops.i.i = getelementptr inbounds %struct.vsc73xx, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = call i32 %4(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef nonnull %orig.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.vsc73xx_update_bits.exit_crit_edge

entry.vsc73xx_update_bits.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %vsc73xx_update_bits.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add = add i32 %offset, 4
  %shl1 = shl nuw i32 1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %shl = shl nuw i32 1, %offset
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %or5 = or i32 %spec.select, %shl1
  %or = or i32 %shl1, %shl
  %5 = ptrtoint ptr %orig.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %orig.i, align 4
  %neg.i = xor i32 %or, -1
  %and.i = and i32 %6, %neg.i
  %or.i = or i32 %or5, %and.i
  %7 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i.i, align 4
  %write.i.i = getelementptr inbounds %struct.vsc73xx_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %write.i.i, align 4
  %call.i13.i = call i32 %10(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, i32 noundef %or.i) #6
  br label %vsc73xx_update_bits.exit

vsc73xx_update_bits.exit:                         ; preds = %if.end.i, %entry.vsc73xx_update_bits.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i13.i, %if.end.i ], [ %call.i.i, %entry.vsc73xx_update_bits.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %orig.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vsc73xx_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !284
  %ops.i = getelementptr inbounds %struct.vsc73xx, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i = call i32 %4(ptr noundef %call, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext 52, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %offset, 4
  %7 = xor i32 %6, -1
  %8 = lshr i32 %7, %add
  %9 = and i32 %8, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #3

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 136)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !88, !89, !90, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !269, !270, !272, !273, !274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__ksymtab_vsc73xx_is_addr_valid, !1, !"__ksymtab_vsc73xx_is_addr_valid", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 374, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1146, i32 44}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1148, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @vsc73xx_probe._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @vsc73xx_probe._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1157, i32 3}
!14 = !{ptr @vsc73xx_probe._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @vsc73xx_probe._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1170, i32 3}
!18 = !{ptr @vsc73xx_probe._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vsc73xx_probe._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1175, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @vsc73xx_probe._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @vsc73xx_probe._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1202, i32 3}
!27 = !{ptr @vsc73xx_probe._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @vsc73xx_probe._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_vsc73xx_probe, !30, !"__ksymtab_vsc73xx_probe", i1 false, i1 false}
!30 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1214, i32 1}
!31 = !{ptr @__ksymtab_vsc73xx_remove, !32, !"__ksymtab_vsc73xx_remove", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1221, i32 1}
!33 = !{ptr @__ksymtab_vsc73xx_shutdown, !34, !"__ksymtab_vsc73xx_shutdown", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1227, i32 1}
!35 = !{ptr @__UNIQUE_ID_author505, !36, !"__UNIQUE_ID_author505", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1229, i32 1}
!37 = !{ptr @__UNIQUE_ID_description506, !38, !"__UNIQUE_ID_description506", i1 false, i1 false}
!38 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1230, i32 1}
!39 = !{ptr @__UNIQUE_ID_file507, !40, !"__UNIQUE_ID_file507", i1 false, i1 false}
!40 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1231, i32 1}
!41 = !{ptr @__UNIQUE_ID_license508, !40, !"__UNIQUE_ID_license508", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 415, i32 3}
!44 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @vsc73xx_detect._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @vsc73xx_detect._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 420, i32 3}
!49 = !{ptr @vsc73xx_detect._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @vsc73xx_detect._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 427, i32 3}
!53 = !{ptr @vsc73xx_detect._entry.24, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @vsc73xx_detect._entry_ptr.26, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 440, i32 3}
!57 = !{ptr @vsc73xx_detect._entry.27, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @vsc73xx_detect._entry_ptr.29, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 447, i32 2}
!61 = !{ptr @vsc73xx_detect._entry.30, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @vsc73xx_detect._entry_ptr.32, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 452, i32 3}
!65 = !{ptr @vsc73xx_detect._entry.33, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @vsc73xx_detect._entry_ptr.35, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 465, i32 3}
!69 = !{ptr @vsc73xx_detect._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @vsc73xx_detect._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 467, i32 3}
!73 = !{ptr @vsc73xx_detect._entry.39, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @vsc73xx_detect._entry_ptr.41, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 471, i32 3}
!77 = !{ptr @vsc73xx_detect._entry.42, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @vsc73xx_detect._entry_ptr.44, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 476, i32 3}
!81 = !{ptr @vsc73xx_detect._entry.45, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @vsc73xx_detect._entry_ptr.47, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @vsc73xx_detect._entry.48, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 478, i32 3}
!85 = !{ptr @vsc73xx_detect._entry_ptr.49, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.51, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 482, i32 2}
!88 = !{ptr @vsc73xx_detect._entry.50, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @vsc73xx_detect._entry_ptr.52, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @vsc73xx_ds_ops, !91, !"vsc73xx_ds_ops", i1 false, i1 false}
!91 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1041, i32 36}
!92 = !{ptr @.str.53, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 565, i32 2}
!94 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @vsc73xx_setup._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @vsc73xx_setup._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 504, i32 3}
!99 = !{ptr @.str.56, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @vsc73xx_phy_read._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @vsc73xx_phy_read._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.57, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 510, i32 2}
!104 = !{ptr @.str.58, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @vsc73xx_phy_read.__UNIQUE_ID_ddebug497, !103, !"__UNIQUE_ID_ddebug497", i1 false, i1 false}
!106 = !{ptr @.str.59, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 530, i32 3}
!108 = !{ptr @.str.60, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @vsc73xx_phy_write._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @vsc73xx_phy_write._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.61, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 539, i32 2}
!113 = !{ptr @vsc73xx_phy_write.__UNIQUE_ID_ddebug498, !112, !"__UNIQUE_ID_ddebug498", i1 false, i1 false}
!114 = !{ptr @.str.62, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 785, i32 3}
!116 = !{ptr @.str.63, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug499, !115, !"__UNIQUE_ID_ddebug499", i1 false, i1 false}
!118 = !{ptr @.str.64, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 805, i32 5}
!120 = !{ptr @vsc73xx_adjust_link._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @vsc73xx_adjust_link._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 833, i32 3}
!124 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug500, !123, !"__UNIQUE_ID_ddebug500", i1 false, i1 false}
!125 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 845, i32 4}
!127 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug501, !126, !"__UNIQUE_ID_ddebug501", i1 false, i1 false}
!128 = !{ptr @.str.67, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 850, i32 4}
!130 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug502, !129, !"__UNIQUE_ID_ddebug502", i1 false, i1 false}
!131 = !{ptr @.str.68, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 858, i32 4}
!133 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug503, !132, !"__UNIQUE_ID_ddebug503", i1 false, i1 false}
!134 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 863, i32 4}
!136 = !{ptr @vsc73xx_adjust_link.__UNIQUE_ID_ddebug504, !135, !"__UNIQUE_ID_ddebug504", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 869, i32 3}
!139 = !{ptr @vsc73xx_adjust_link._entry.70, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @vsc73xx_adjust_link._entry_ptr.72, !138, !"_entry_ptr", i1 false, i1 false}
!141 = distinct !{null, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 954, i32 3}
!143 = distinct !{null, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 973, i32 3}
!145 = !{ptr @.str.75, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 314, i32 7}
!147 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 315, i32 7}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 316, i32 7}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 317, i32 7}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 318, i32 7}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 319, i32 7}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 320, i32 7}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 321, i32 7}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 322, i32 7}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 323, i32 7}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 324, i32 8}
!167 = !{ptr @.str.86, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 325, i32 8}
!169 = !{ptr @.str.87, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 326, i32 8}
!171 = !{ptr @.str.88, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 327, i32 8}
!173 = !{ptr @.str.89, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 328, i32 8}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 329, i32 8}
!177 = !{ptr @.str.91, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 330, i32 8}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 331, i32 8}
!181 = !{ptr @.str.93, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 332, i32 8}
!183 = !{ptr @.str.94, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 333, i32 8}
!185 = !{ptr @.str.95, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 334, i32 8}
!187 = !{ptr @.str.96, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 336, i32 8}
!189 = !{ptr @.str.97, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 337, i32 8}
!191 = !{ptr @.str.98, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 338, i32 8}
!193 = !{ptr @.str.99, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 339, i32 8}
!195 = !{ptr @.str.100, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 340, i32 8}
!197 = !{ptr @vsc73xx_tx_counters, !198, !"vsc73xx_tx_counters", i1 false, i1 false}
!198 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 313, i32 37}
!199 = !{ptr @.str.101, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 283, i32 7}
!201 = !{ptr @.str.102, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 284, i32 7}
!203 = !{ptr @.str.103, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 285, i32 7}
!205 = !{ptr @.str.104, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 286, i32 7}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 287, i32 7}
!209 = !{ptr @.str.106, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 288, i32 7}
!211 = !{ptr @.str.107, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 289, i32 7}
!213 = !{ptr @.str.108, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 290, i32 7}
!215 = !{ptr @.str.109, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 291, i32 7}
!217 = !{ptr @.str.110, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 292, i32 7}
!219 = !{ptr @.str.111, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 293, i32 8}
!221 = !{ptr @.str.112, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 294, i32 8}
!223 = !{ptr @.str.113, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 295, i32 8}
!225 = !{ptr @.str.114, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 296, i32 8}
!227 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 297, i32 8}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 298, i32 8}
!231 = !{ptr @.str.117, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 299, i32 8}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 300, i32 8}
!235 = !{ptr @.str.119, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 301, i32 8}
!237 = !{ptr @.str.120, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 302, i32 8}
!239 = !{ptr @.str.121, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 303, i32 8}
!241 = !{ptr @.str.122, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 304, i32 8}
!243 = !{ptr @.str.123, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 306, i32 8}
!245 = !{ptr @.str.124, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 307, i32 8}
!247 = !{ptr @.str.125, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 308, i32 8}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 309, i32 8}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 310, i32 8}
!253 = !{ptr @vsc73xx_rx_counters, !254, !"vsc73xx_rx_counters", i1 false, i1 false}
!254 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 282, i32 37}
!255 = !{ptr @.str.128, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1016, i32 4}
!257 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @vsc73xx_get_ethtool_stats._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @vsc73xx_get_ethtool_stats._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.130, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 883, i32 2}
!262 = !{ptr @.str.131, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @vsc73xx_port_enable._entry, !261, !"_entry", i1 false, i1 false}
!264 = !{ptr @vsc73xx_port_enable._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.132, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1120, i32 55}
!267 = !{ptr @vsc73xx_gpio_probe.lock_key, !268, !"lock_key", i1 false, i1 false}
!268 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1132, i32 8}
!269 = !{ptr @vsc73xx_gpio_probe.request_key, !268, !"request_key", i1 false, i1 false}
!270 = !{ptr @.str.133, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/dsa/vitesse-vsc73xx-core.c", i32 1134, i32 3}
!272 = !{ptr @.str.134, !271, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @vsc73xx_gpio_probe._entry, !271, !"_entry", i1 false, i1 false}
!274 = !{ptr @vsc73xx_gpio_probe._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{!"auto-init"}
!285 = !{i64 2148725890, i64 2148725895, i64 2148725908, i64 2148725952, i64 2148725986, i64 2148726007}
