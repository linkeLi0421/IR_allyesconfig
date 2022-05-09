; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/realtek-smi-core.c_pt.bc'
source_filename = "../drivers/net/dsa/realtek-smi-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+realtek_smi_write_reg_noack\22, \22a\22\09"
module asm "\09.weak\09__crc_realtek_smi_write_reg_noack\09\09\09\09"
module asm "\09.long\09__crc_realtek_smi_write_reg_noack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_realtek_smi_write_reg_noack:\09\09\09\09\09"
module asm "\09.asciz \09\22realtek_smi_write_reg_noack\22\09\09\09\09\09"
module asm "__kstrtabns_realtek_smi_write_reg_noack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.realtek_smi_variant = type { ptr, ptr, i32, i8, i8, i32 }
%struct.realtek_smi = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.spinlock, ptr, ptr, i8, i32, i32, i32, i32, ptr, ptr, i32, i32, [4096 x i8], ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.mii_bus = type { ptr, ptr, [61 x i8], ptr, ptr, ptr, ptr, [32 x %struct.mdio_bus_stats], %struct.mutex, ptr, i32, %struct.device, [32 x ptr], i32, i32, [32 x i32], i32, i32, ptr, i32, %struct.mutex, [32 x ptr] }
%struct.mdio_bus_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.dsa_switch = type { ptr, ptr, i32, i16, %struct.notifier_block, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.realtek_smi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__kstrtab_realtek_smi_write_reg_noack = external dso_local constant [0 x i8], align 1
@__kstrtabns_realtek_smi_write_reg_noack = external dso_local constant [0 x i8], align 1
@__ksymtab_realtek_smi_write_reg_noack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @realtek_smi_write_reg_noack to i32), ptr @__kstrtab_realtek_smi_write_reg_noack, ptr @__kstrtabns_realtek_smi_write_reg_noack }, section "___ksymtab_gpl+realtek_smi_write_reg_noack", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"realtek,smi-mdio\00", [47 x i8] zeroinitializer }, align 32
@realtek_smi_setup_mdio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 352, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no MDIO bus node\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"realtek_smi_setup_mdio\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/dsa/realtek-smi-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@realtek_smi_setup_mdio._entry_ptr = internal global ptr @realtek_smi_setup_mdio._entry, section ".printk_index", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SMI slave MII\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SMI-%d\00", [25 x i8] zeroinitializer }, align 32
@realtek_smi_setup_mdio._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 374, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to register MDIO bus %s\0A\00", [32 x i8] zeroinitializer }, align 32
@realtek_smi_setup_mdio._entry_ptr.10 = internal global ptr @realtek_smi_setup_mdio._entry.8, section ".printk_index", align 4
@__initcall__kmod_realtek_smi__495_521_realtek_smi_driver_init6 = internal global ptr @realtek_smi_driver_init, section ".initcall6.init", align 4
@realtek_smi_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @realtek_smi_probe, ptr @realtek_smi_remove, ptr @realtek_smi_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.13, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @realtek_smi_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_realtek_smi_driver_exit = internal global ptr @realtek_smi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file496 = internal constant [45 x i8] c"realtek_smi.file=drivers/net/dsa/realtek-smi\00", section ".modinfo", align 1
@__UNIQUE_ID_license497 = internal constant [24 x i8] c"realtek_smi.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@realtek_smi_wait_for_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ACK timeout\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"realtek_smi_wait_for_ack\00", [39 x i8] zeroinitializer }, align 32
@realtek_smi_wait_for_ack._entry_ptr = internal global ptr @realtek_smi_wait_for_ack._entry, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"realtek-smi\00", [20 x i8] zeroinitializer }, align 32
@realtek_smi_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8366rb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rtl8366rb_variant }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8366s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"realtek,rtl8365mb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rtl8365mb_variant }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@realtek_smi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@realtek_smi_mdio_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 10, i32 1, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @realtek_smi_read, ptr @realtek_smi_write, ptr null, i8 0, i32 65535, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 1, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"realtek_smi_core:402:(&realtek_smi_mdio_regmap_config)->lock\00", [35 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 405, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap init failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"realtek_smi_probe\00", [46 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry_ptr = internal global ptr @realtek_smi_probe._entry, section ".printk_index", align 4
@realtek_smi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&smi->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get RESET GPIO\0A\00", [38 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry_ptr.21 = internal global ptr @realtek_smi_probe._entry.19, section ".printk_index", align 4
@realtek_smi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.16, ptr @.str.3, i32 430, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"deasserted RESET\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry_ptr.25 = internal global ptr @realtek_smi_probe._entry.22, section ".printk_index", align 4
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mdc\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mdio\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"realtek,disable-leds\00", [43 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.3, i32 444, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to detect switch\0A\00", [39 x i8] zeroinitializer }, align 32
@realtek_smi_probe._entry_ptr.31 = internal global ptr @realtek_smi_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to register switch\0A\00", [37 x i8] zeroinitializer }, align 32
@rtl8366rb_variant = external dso_local constant %struct.realtek_smi_variant, align 4
@rtl8365mb_variant = external dso_local constant %struct.realtek_smi_variant, align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 350, i32 55 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 352, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 362, i32 29 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 365, i32 52 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 373, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"realtek_smi_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 512, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 154, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 514, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [21 x i8] c"realtek_smi_of_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 494, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [31 x i8] c"realtek_smi_mdio_regmap_config\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 318, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 401, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 405, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 417, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 422, i32 44 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 424, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 430, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 433, i32 42 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 436, i32 43 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 440, i32 49 }
@___asan_gen_.135 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 444, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [38 x i8] c"../drivers/net/dsa/realtek-smi-core.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 459, i32 27 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_file496, ptr @__UNIQUE_ID_license497, ptr @__exitcall_realtek_smi_driver_exit, ptr @__initcall__kmod_realtek_smi__495_521_realtek_smi_driver_init6, ptr @__ksymtab_realtek_smi_write_reg_noack, ptr @realtek_smi_driver_exit, ptr @realtek_smi_probe._entry, ptr @realtek_smi_probe._entry.19, ptr @realtek_smi_probe._entry.22, ptr @realtek_smi_probe._entry.29, ptr @realtek_smi_probe._entry_ptr, ptr @realtek_smi_probe._entry_ptr.21, ptr @realtek_smi_probe._entry_ptr.25, ptr @realtek_smi_probe._entry_ptr.31, ptr @realtek_smi_setup_mdio._entry, ptr @realtek_smi_setup_mdio._entry.8, ptr @realtek_smi_setup_mdio._entry_ptr, ptr @realtek_smi_setup_mdio._entry_ptr.10, ptr @realtek_smi_wait_for_ack._entry, ptr @realtek_smi_wait_for_ack._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @realtek_smi_driver, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @realtek_smi_of_match, ptr @realtek_smi_probe._key, ptr @realtek_smi_mdio_regmap_config, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @realtek_smi_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_setup_mdio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_setup_mdio._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_wait_for_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_mdio_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @realtek_smi_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @realtek_smi_write_reg_noack(ptr noundef %smi, i32 noundef %addr, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @realtek_smi_write_reg(ptr noundef %smi, i32 noundef %addr, i32 noundef %data, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @realtek_smi_write_reg(ptr noundef %smi, i32 noundef %addr, i32 noundef %data, i1 noundef zeroext %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @realtek_smi_start(ptr noundef %smi)
  %cmd_write = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 8
  %0 = ptrtoint ptr %cmd_write to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_write, align 1
  %call5 = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %smi, i8 noundef zeroext %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %conv6 = trunc i32 %addr to i8
  %call7 = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %smi, i8 noundef zeroext %conv6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %if.end
  %shr = lshr i32 %addr, 8
  %conv11 = trunc i32 %shr to i8
  %call12 = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %smi, i8 noundef zeroext %conv11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.out_crit_edge

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end15:                                         ; preds = %if.end10
  %conv17 = trunc i32 %data to i8
  %call18 = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %smi, i8 noundef zeroext %conv17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end21:                                         ; preds = %if.end15
  %shr24 = lshr i32 %data, 8
  %conv25 = trunc i32 %shr24 to i8
  br i1 %ack, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %call26 = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %smi, i8 noundef zeroext %conv25)
  br label %out

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @realtek_smi_write_byte_noack(ptr noundef %smi, i8 noundef zeroext %conv25)
  br label %out

out:                                              ; preds = %if.else, %if.then23, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %call5, %entry.out_crit_edge ], [ %call7, %if.end.out_crit_edge ], [ %call12, %if.end10.out_crit_edge ], [ %call18, %if.end15.out_crit_edge ], [ %call26, %if.then23 ], [ 0, %if.else ]
  tail call fastcc void @realtek_smi_stop(ptr noundef %smi)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @realtek_smi_setup_mdio(ptr noundef %smi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %smi, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_compatible_child(ptr noundef %3, ptr noundef nonnull @.str) #6
  %tobool.not = icmp eq ptr %call, null
  %4 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %smi, align 4
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @devm_mdiobus_alloc_size(ptr noundef %5, i32 noundef 0) #6
  %slave_mii_bus = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 5
  %6 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %slave_mii_bus, align 4
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.err_put_node_crit_edge, label %if.end7

if.end.err_put_node_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_put_node

if.end7:                                          ; preds = %if.end
  %priv = getelementptr inbounds %struct.mii_bus, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %smi, ptr %priv, align 8
  %8 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slave_mii_bus, align 4
  %name = getelementptr inbounds %struct.mii_bus, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @.str.6, ptr %name, align 4
  %11 = load ptr, ptr %slave_mii_bus, align 4
  %read = getelementptr inbounds %struct.mii_bus, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @realtek_smi_mdio_read, ptr %read, align 4
  %13 = load ptr, ptr %slave_mii_bus, align 4
  %write = getelementptr inbounds %struct.mii_bus, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @realtek_smi_mdio_write, ptr %write, align 8
  %15 = load ptr, ptr %slave_mii_bus, align 4
  %id = getelementptr inbounds %struct.mii_bus, ptr %15, i32 0, i32 2
  %ds = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 10
  %16 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ds, align 4
  %index = getelementptr inbounds %struct.dsa_switch, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %id, i32 noundef 61, ptr noundef nonnull @.str.7, i32 noundef %19)
  %20 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave_mii_bus, align 4
  %of_node16 = getelementptr inbounds %struct.mii_bus, ptr %21, i32 0, i32 11, i32 27
  %22 = ptrtoint ptr %of_node16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call, ptr %of_node16, align 8
  %23 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smi, align 4
  %25 = load ptr, ptr %slave_mii_bus, align 4
  %parent = getelementptr inbounds %struct.mii_bus, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %parent, align 4
  %27 = load ptr, ptr %slave_mii_bus, align 4
  %28 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ds, align 4
  %slave_mii_bus21 = getelementptr inbounds %struct.dsa_switch, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %slave_mii_bus21 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %slave_mii_bus21, align 4
  %31 = load ptr, ptr %smi, align 4
  %32 = load ptr, ptr %slave_mii_bus, align 4
  %call24 = tail call i32 @devm_of_mdiobus_register(ptr noundef %31, ptr noundef %32, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end7.cleanup_crit_edge, label %do.end29

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end29:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %smi, align 4
  %35 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %slave_mii_bus, align 4
  %id32 = getelementptr inbounds %struct.mii_bus, ptr %36, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.9, ptr noundef %id32) #9
  br label %err_put_node

err_put_node:                                     ; preds = %do.end29, %if.end.err_put_node_crit_edge
  %ret.0 = phi i32 [ %call24, %do.end29 ], [ -12, %if.end.err_put_node_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  br label %cleanup

cleanup:                                          ; preds = %err_put_node, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.0, %err_put_node ], [ -19, %do.end ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_compatible_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_mdio_read(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phy_read = getelementptr inbounds %struct.realtek_smi_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %phy_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_read, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %addr, i32 noundef %regnum) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_mdio_write(ptr nocapture noundef readonly %bus, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.mii_bus, ptr %bus, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %phy_write = getelementptr inbounds %struct.realtek_smi_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %phy_write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy_write, align 4
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %addr, i32 noundef %regnum, i16 noundef zeroext %val) #6
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_mdiobus_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @realtek_smi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @realtek_smi_driver_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @realtek_smi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @realtek_smi_start(ptr nocapture noundef readonly %smi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdc = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 2
  %0 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdc, align 4
  %call = tail call i32 @gpiod_direction_output(ptr noundef %1, i32 noundef 0) #6
  %mdio = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 3
  %2 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mdio, align 4
  %call1 = tail call i32 @gpiod_direction_output(ptr noundef %3, i32 noundef 1) #6
  %clk_delay.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 6
  %4 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i = add i32 %5, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %6(i32 noundef %div.i.i) #6
  %7 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #6
  %9 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i22 = add i32 %10, 999
  %div.i.i23 = udiv i32 %sub.i.i22, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %div.i.i23) #6
  %12 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef 0) #6
  %14 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i32 = add i32 %15, 999
  %div.i.i33 = udiv i32 %sub.i.i32, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %div.i.i33) #6
  %17 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %18, i32 noundef 1) #6
  %19 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i42 = add i32 %20, 999
  %div.i.i43 = udiv i32 %sub.i.i42, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %21(i32 noundef %div.i.i43) #6
  %22 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mdio, align 4
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef 0) #6
  %24 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i52 = add i32 %25, 999
  %div.i.i53 = udiv i32 %sub.i.i52, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %div.i.i53) #6
  %27 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %28, i32 noundef 0) #6
  %29 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i62 = add i32 %30, 999
  %div.i.i63 = udiv i32 %sub.i.i62, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %div.i.i63) #6
  %32 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mdio, align 4
  tail call void @gpiod_set_value(ptr noundef %33, i32 noundef 1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @realtek_smi_write_byte(ptr nocapture noundef readonly %smi, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  %ack.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i32
  %clk_delay.i.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 6
  %mdio.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 3
  %mdc.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 2
  br label %cond.false8.i.i.i

cond.false8.i.i.i:                                ; preds = %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge, %entry
  %len.addr.031.i = phi i32 [ 8, %entry ], [ %sub.i, %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge ]
  %0 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i.i = add i32 %1, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %div.i.i.i) #6
  %3 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio.i, align 4
  %sub.i = add nsw i32 %len.addr.031.i, -1
  %5 = lshr i32 %conv, %sub.i
  %6 = and i32 %5, 1
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef %6) #6
  %7 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i11.i = add i32 %8, 999
  %div.i.i12.i = udiv i32 %sub.i.i11.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i.i12.i) #6
  %10 = ptrtoint ptr %mdc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdc.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #6
  %12 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i21.i = add i32 %13, 999
  %div.i.i22.i = udiv i32 %sub.i.i21.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %div.i.i22.i) #6
  %15 = ptrtoint ptr %mdc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdc.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #6
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %realtek_smi_write_bits.exit, label %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge

cond.false8.i.i.i.cond.false8.i.i.i_crit_edge:    ; preds = %cond.false8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false8.i.i.i

realtek_smi_write_bits.exit:                      ; preds = %cond.false8.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %17 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %18 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp14.i = icmp eq i32 %19, 0
  br i1 %cmp14.i, label %realtek_smi_write_bits.exit.do.end6.i_crit_edge, label %if.end.preheader.i

realtek_smi_write_bits.exit.do.end6.i_crit_edge:  ; preds = %realtek_smi_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

if.end.preheader.i:                               ; preds = %realtek_smi_write_bits.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %20 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %21 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i = icmp eq i32 %22, 0
  br i1 %cmp.i, label %if.end.preheader.i.do.end6.i_crit_edge, label %if.end.1.i

if.end.preheader.i.do.end6.i_crit_edge:           ; preds = %if.end.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

cleanup.thread.i:                                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %smi to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %smi, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.11) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  br label %realtek_smi_wait_for_ack.exit

if.end.1.i:                                       ; preds = %if.end.preheader.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %25 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %26 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.1.i = icmp eq i32 %27, 0
  br i1 %cmp.1.i, label %if.end.1.i.do.end6.i_crit_edge, label %if.end.2.i

if.end.1.i.do.end6.i_crit_edge:                   ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

if.end.2.i:                                       ; preds = %if.end.1.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %28 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %29 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.2.i = icmp eq i32 %30, 0
  br i1 %cmp.2.i, label %if.end.2.i.do.end6.i_crit_edge, label %if.end.3.i

if.end.2.i.do.end6.i_crit_edge:                   ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

if.end.3.i:                                       ; preds = %if.end.2.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %31 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %32 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.3.i = icmp eq i32 %33, 0
  br i1 %cmp.3.i, label %if.end.3.i.do.end6.i_crit_edge, label %if.end.4.i

if.end.3.i.do.end6.i_crit_edge:                   ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

if.end.4.i:                                       ; preds = %if.end.3.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ack.i) #6
  %34 = ptrtoint ptr %ack.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %ack.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %smi, i32 noundef 1, ptr noundef nonnull %ack.i) #6
  %35 = ptrtoint ptr %ack.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.4.i = icmp eq i32 %36, 0
  br i1 %cmp.4.i, label %if.end.4.i.do.end6.i_crit_edge, label %cleanup.thread.i

if.end.4.i.do.end6.i_crit_edge:                   ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end6.i

do.end6.i:                                        ; preds = %if.end.4.i.do.end6.i_crit_edge, %if.end.3.i.do.end6.i_crit_edge, %if.end.2.i.do.end6.i_crit_edge, %if.end.1.i.do.end6.i_crit_edge, %if.end.preheader.i.do.end6.i_crit_edge, %realtek_smi_write_bits.exit.do.end6.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ack.i) #6
  br label %realtek_smi_wait_for_ack.exit

realtek_smi_wait_for_ack.exit:                    ; preds = %do.end6.i, %cleanup.thread.i
  %retval.2.i = phi i32 [ 0, %do.end6.i ], [ -110, %cleanup.thread.i ]
  ret i32 %retval.2.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @realtek_smi_write_byte_noack(ptr nocapture noundef readonly %smi, i8 noundef zeroext %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i32
  %clk_delay.i.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 6
  %mdio.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 3
  %mdc.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 2
  br label %cond.false8.i.i.i

cond.false8.i.i.i:                                ; preds = %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge, %entry
  %len.addr.031.i = phi i32 [ 8, %entry ], [ %sub.i, %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge ]
  %0 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i.i = add i32 %1, 999
  %div.i.i.i = udiv i32 %sub.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %div.i.i.i) #6
  %3 = ptrtoint ptr %mdio.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio.i, align 4
  %sub.i = add nsw i32 %len.addr.031.i, -1
  %5 = lshr i32 %conv, %sub.i
  %6 = and i32 %5, 1
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef %6) #6
  %7 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i11.i = add i32 %8, 999
  %div.i.i12.i = udiv i32 %sub.i.i11.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i.i12.i) #6
  %10 = ptrtoint ptr %mdc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdc.i, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #6
  %12 = ptrtoint ptr %clk_delay.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_delay.i.i, align 4
  %sub.i.i21.i = add i32 %13, 999
  %div.i.i22.i = udiv i32 %sub.i.i21.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %div.i.i22.i) #6
  %15 = ptrtoint ptr %mdc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdc.i, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 0) #6
  %cmp.not.i = icmp eq i32 %sub.i, 0
  br i1 %cmp.not.i, label %realtek_smi_write_bits.exit, label %cond.false8.i.i.i.cond.false8.i.i.i_crit_edge

cond.false8.i.i.i.cond.false8.i.i.i_crit_edge:    ; preds = %cond.false8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false8.i.i.i

realtek_smi_write_bits.exit:                      ; preds = %cond.false8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @realtek_smi_stop(ptr nocapture noundef readonly %smi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_delay.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 6
  %0 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i = add i32 %1, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %div.i.i) #6
  %mdio = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 3
  %3 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mdio, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 0) #6
  %mdc = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 2
  %5 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 1) #6
  %7 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i27 = add i32 %8, 999
  %div.i.i28 = udiv i32 %sub.i.i27, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %div.i.i28) #6
  %10 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdio, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #6
  %12 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i37 = add i32 %13, 999
  %div.i.i38 = udiv i32 %sub.i.i37, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %14(i32 noundef %div.i.i38) #6
  %15 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %16, i32 noundef 1) #6
  %17 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i47 = add i32 %18, 999
  %div.i.i48 = udiv i32 %sub.i.i47, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %19(i32 noundef %div.i.i48) #6
  %20 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %21, i32 noundef 0) #6
  %22 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i57 = add i32 %23, 999
  %div.i.i58 = udiv i32 %sub.i.i57, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %div.i.i58) #6
  %25 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 1) #6
  %27 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i67 = add i32 %28, 999
  %div.i.i68 = udiv i32 %sub.i.i67, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %29(i32 noundef %div.i.i68) #6
  %30 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %31, i32 noundef 0) #6
  %32 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i77 = add i32 %33, 999
  %div.i.i78 = udiv i32 %sub.i.i77, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %div.i.i78) #6
  %35 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %36, i32 noundef 1) #6
  %37 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mdio, align 4
  %call = tail call i32 @gpiod_direction_input(ptr noundef %38) #6
  %39 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mdc, align 4
  %call9 = tail call i32 @gpiod_direction_input(ptr noundef %40) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @realtek_smi_read_bits(ptr nocapture noundef readonly %smi, i32 noundef %len, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mdio = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 3
  %0 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdio, align 4
  %call = tail call i32 @gpiod_direction_input(ptr noundef %1) #6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not26 = icmp eq i32 %len, 0
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %clk_delay.i = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 6
  %mdc = getelementptr inbounds %struct.realtek_smi, ptr %smi, i32 0, i32 2
  br label %cond.false8.i.i

cond.false8.i.i:                                  ; preds = %cond.false8.i.i.cond.false8.i.i_crit_edge, %for.body.lr.ph
  %len.addr.027 = phi i32 [ %len, %for.body.lr.ph ], [ %sub, %cond.false8.i.i.cond.false8.i.i_crit_edge ]
  %3 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i = add i32 %4, 999
  %div.i.i = udiv i32 %sub.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %div.i.i) #6
  %6 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #6
  %8 = ptrtoint ptr %clk_delay.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_delay.i, align 4
  %sub.i.i17 = add i32 %9, 999
  %div.i.i18 = udiv i32 %sub.i.i17, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %div.i.i18) #6
  %11 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mdio, align 4
  %call2 = tail call i32 @gpiod_get_value(ptr noundef %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool = icmp ne i32 %call2, 0
  %lnot.ext = zext i1 %tobool to i32
  %13 = ptrtoint ptr %mdc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdc, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #6
  %sub = add i32 %len.addr.027, -1
  %shl = shl nuw i32 %lnot.ext, %sub
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data, align 4
  %or = or i32 %16, %shl
  store i32 %or, ptr %data, align 4
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %cond.false8.i.i.for.end_crit_edge, label %cond.false8.i.i.cond.false8.i.i_crit_edge

cond.false8.i.i.cond.false8.i.i_crit_edge:        ; preds = %cond.false8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false8.i.i

cond.false8.i.i.for.end_crit_edge:                ; preds = %cond.false8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cond.false8.i.i.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %mdio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %mdio, align 4
  %call6 = tail call i32 @gpiod_direction_output(ptr noundef %18, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_input(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mdiobus_alloc_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #6
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %chip_data_sz = getelementptr inbounds %struct.realtek_smi_variant, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %chip_data_sz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_data_sz, align 4
  %add = add i32 %3, 4220
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %add, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call.i, i32 4220
  %chip_data = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 22
  %4 = ptrtoint ptr %chip_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %add.ptr, ptr %chip_data, align 4
  %call3 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @realtek_smi_mdio_regmap_config, ptr noundef nonnull @realtek_smi_probe._key, ptr noundef nonnull @.str.14) #6
  %map = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %map, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %6) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %clk_delay = getelementptr inbounds %struct.realtek_smi_variant, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %clk_delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %clk_delay, align 4
  %clk_delay11 = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %clk_delay11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %clk_delay11, align 4
  %cmd_read = getelementptr inbounds %struct.realtek_smi_variant, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %cmd_read to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd_read, align 4
  %cmd_read12 = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %cmd_read12 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %cmd_read12, align 4
  %cmd_write = getelementptr inbounds %struct.realtek_smi_variant, ptr %call, i32 0, i32 4
  %14 = ptrtoint ptr %cmd_write to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cmd_write, align 1
  %cmd_write13 = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %cmd_write13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %cmd_write13, align 1
  %ops = getelementptr inbounds %struct.realtek_smi_variant, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops, align 4
  %ops14 = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 18
  %19 = ptrtoint ptr %ops14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %ops14, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @realtek_smi_probe.__key, i16 noundef signext 3) #6
  %call19 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef 7) #6
  %reset = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call19, ptr %reset, align 4
  %cmp.i139 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i139, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #9
  %22 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reset, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end9
  tail call void @msleep(i32 noundef 25) #6
  %25 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %26, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.23) #9
  %call33 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 3) #6
  %mdc = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %mdc to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call33, ptr %mdc, align 4
  %cmp.i140 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i140, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %call33 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end28
  %call40 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.27, i32 noundef 3) #6
  %mdio = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %mdio to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call40, ptr %mdio, align 4
  %cmp.i141 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i141, label %if.then43, label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call40 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.end39
  %call.i142 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i142, null
  %leds_disabled = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 12
  %frombool = zext i1 %tobool.i to i8
  %31 = ptrtoint ptr %leds_disabled to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %leds_disabled, align 4
  %32 = ptrtoint ptr %ops14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ops14, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %call49 = tail call i32 %35(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end55, label %do.end54

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end55:                                         ; preds = %if.end46
  %call.i143 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 84, i32 noundef 3520) #6
  %ds = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %ds to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i143, ptr %ds, align 4
  %tobool58.not = icmp eq ptr %call.i143, null
  br i1 %tobool58.not, label %if.end55.cleanup_crit_edge, label %if.end60

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end60:                                         ; preds = %if.end55
  %37 = ptrtoint ptr %call.i143 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %call.i143, align 4
  %num_ports = getelementptr inbounds %struct.realtek_smi, ptr %call.i, i32 0, i32 14
  %38 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_ports, align 4
  %num_ports64 = getelementptr inbounds %struct.dsa_switch, ptr %call.i143, i32 0, i32 18
  %40 = ptrtoint ptr %num_ports64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %num_ports64, align 4
  %priv = getelementptr inbounds %struct.dsa_switch, ptr %call.i143, i32 0, i32 5
  %41 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %priv, align 4
  %42 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call, align 4
  %ops67 = getelementptr inbounds %struct.dsa_switch, ptr %call.i143, i32 0, i32 8
  %44 = ptrtoint ptr %ops67 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %ops67, align 4
  %call69 = tail call i32 @dsa_register_switch(ptr noundef nonnull %call.i143) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end60.cleanup_crit_edge, label %if.then71

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %call72 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call69, ptr noundef nonnull @.str.32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then71, %if.end60.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %do.end54, %if.then43, %if.then36, %do.end25, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then6 ], [ %24, %do.end25 ], [ %28, %if.then36 ], [ %30, %if.then43 ], [ %call49, %do.end54 ], [ %call69, %if.then71 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end55.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_remove(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %ds = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #6
  %slave_mii_bus = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %slave_mii_bus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_mii_bus, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %of_node = getelementptr inbounds %struct.mii_bus, ptr %5, i32 0, i32 11, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  tail call void @of_node_put(ptr noundef %7) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %reset = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #6
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @realtek_smi_shutdown(ptr nocapture noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ds = getelementptr inbounds %struct.realtek_smi, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %ds to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ds, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #6
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dsa_register_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_read(ptr noundef %ctx, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  %t.i34.i = alloca i32, align 4
  %t.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.realtek_smi, ptr %ctx, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  tail call fastcc void @realtek_smi_start(ptr noundef %ctx) #6
  %cmd_read.i = getelementptr inbounds %struct.realtek_smi, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %cmd_read.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_read.i, align 4
  %call5.i = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %ctx, i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.realtek_smi_read_reg.exit_crit_edge

entry.realtek_smi_read_reg.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %realtek_smi_read_reg.exit

if.end.i:                                         ; preds = %entry
  %conv6.i = trunc i32 %reg to i8
  %call7.i = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %ctx, i8 noundef zeroext %conv6.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end.i.realtek_smi_read_reg.exit_crit_edge

if.end.i.realtek_smi_read_reg.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %realtek_smi_read_reg.exit

if.end10.i:                                       ; preds = %if.end.i
  %shr.i = lshr i32 %reg, 8
  %conv11.i = trunc i32 %shr.i to i8
  %call12.i = tail call fastcc i32 @realtek_smi_write_byte(ptr noundef %ctx, i8 noundef zeroext %conv11.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end10.i.realtek_smi_read_reg.exit_crit_edge

if.end10.i.realtek_smi_read_reg.exit_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %realtek_smi_read_reg.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i.i) #6
  %2 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %t.i.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %ctx, i32 noundef 8, ptr noundef nonnull %t.i.i) #6
  %3 = ptrtoint ptr %t.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %t.i.i, align 4
  %clk_delay.i.i.i.i = getelementptr inbounds %struct.realtek_smi, ptr %ctx, i32 0, i32 6
  %mdio.i.i.i = getelementptr inbounds %struct.realtek_smi, ptr %ctx, i32 0, i32 3
  %mdc.i.i.i = getelementptr inbounds %struct.realtek_smi, ptr %ctx, i32 0, i32 2
  %5 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %6, 999
  %div.i.i.i.i.i = udiv i32 %sub.i.i.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %div.i.i.i.i.i) #6
  %8 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mdio.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #6
  %10 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i11.i.i.i = add i32 %11, 999
  %div.i.i12.i.i.i = udiv i32 %sub.i.i11.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %12(i32 noundef %div.i.i12.i.i.i) #6
  %13 = ptrtoint ptr %mdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdc.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %14, i32 noundef 1) #6
  %15 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i21.i.i.i = add i32 %16, 999
  %div.i.i22.i.i.i = udiv i32 %sub.i.i21.i.i.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %div.i.i22.i.i.i) #6
  %18 = ptrtoint ptr %mdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mdc.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t.i34.i) #6
  %20 = ptrtoint ptr %t.i34.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %t.i34.i, align 4, !annotation !82
  call fastcc void @realtek_smi_read_bits(ptr noundef %ctx, i32 noundef 8, ptr noundef nonnull %t.i34.i) #6
  %21 = ptrtoint ptr %t.i34.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %t.i34.i, align 4
  %23 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i.i.i39.i = add i32 %24, 999
  %div.i.i.i.i40.i = udiv i32 %sub.i.i.i.i39.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %25(i32 noundef %div.i.i.i.i40.i) #6
  %26 = ptrtoint ptr %mdio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mdio.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %27, i32 noundef 1) #6
  %28 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i11.i.i47.i = add i32 %29, 999
  %div.i.i12.i.i48.i = udiv i32 %sub.i.i11.i.i47.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %div.i.i12.i.i48.i) #6
  %31 = ptrtoint ptr %mdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mdc.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %32, i32 noundef 1) #6
  %33 = ptrtoint ptr %clk_delay.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_delay.i.i.i.i, align 4
  %sub.i.i21.i.i56.i = add i32 %34, 999
  %div.i.i22.i.i57.i = udiv i32 %sub.i.i21.i.i56.i, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %35(i32 noundef %div.i.i22.i.i57.i) #6
  %36 = ptrtoint ptr %mdc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mdc.i.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %37, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t.i34.i) #6
  %conv18.i = and i32 %4, 255
  %conv19.i = shl i32 %22, 8
  %shl.i = and i32 %conv19.i, 65280
  %or.i = or i32 %shl.i, %conv18.i
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or.i, ptr %val, align 4
  br label %realtek_smi_read_reg.exit

realtek_smi_read_reg.exit:                        ; preds = %if.end15.i, %if.end10.i.realtek_smi_read_reg.exit_crit_edge, %if.end.i.realtek_smi_read_reg.exit_crit_edge, %entry.realtek_smi_read_reg.exit_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %entry.realtek_smi_read_reg.exit_crit_edge ], [ %call7.i, %if.end.i.realtek_smi_read_reg.exit_crit_edge ], [ %call12.i, %if.end10.i.realtek_smi_read_reg.exit_crit_edge ], [ 0, %if.end15.i ]
  tail call fastcc void @realtek_smi_stop(ptr noundef %ctx) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  ret i32 %ret.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @realtek_smi_write(ptr noundef %ctx, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @realtek_smi_write_reg(ptr noundef %ctx, i32 noundef %reg, i32 noundef %val, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !25, !26, !28, !29, !30, !31, !33, !35, !37, !38, !40, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !56, !57, !59, !61, !63, !65, !66, !67, !69, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__ksymtab_realtek_smi_write_reg_noack, !1, !"__ksymtab_realtek_smi_write_reg_noack", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 300, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 350, i32 55}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 352, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @realtek_smi_setup_mdio._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @realtek_smi_setup_mdio._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 362, i32 29}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 365, i32 52}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 373, i32 3}
!18 = !{ptr @realtek_smi_setup_mdio._entry.8, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @realtek_smi_setup_mdio._entry_ptr.10, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__initcall__kmod_realtek_smi__495_521_realtek_smi_driver_init6, !21, !"__initcall__kmod_realtek_smi__495_521_realtek_smi_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 521, i32 1}
!22 = !{ptr @__exitcall_realtek_smi_driver_exit, !21, !"__exitcall_realtek_smi_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_file496, !24, !"__UNIQUE_ID_file496", i1 false, i1 false}
!24 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 523, i32 1}
!25 = !{ptr @__UNIQUE_ID_license497, !24, !"__UNIQUE_ID_license497", i1 false, i1 false}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 154, i32 4}
!28 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @realtek_smi_wait_for_ack._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @realtek_smi_wait_for_ack._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 514, i32 11}
!33 = !{ptr @realtek_smi_driver, !34, !"realtek_smi_driver", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 512, i32 31}
!35 = !{ptr @realtek_smi_probe._key, !36, !"_key", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 401, i32 13}
!37 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 405, i32 3}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @realtek_smi_probe._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @realtek_smi_probe._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @realtek_smi_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 417, i32 2}
!45 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 422, i32 44}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 424, i32 3}
!50 = !{ptr @realtek_smi_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @realtek_smi_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 430, i32 2}
!54 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @realtek_smi_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @realtek_smi_probe._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 433, i32 42}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 436, i32 43}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 440, i32 49}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 444, i32 3}
!65 = !{ptr @realtek_smi_probe._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @realtek_smi_probe._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 459, i32 27}
!69 = !{ptr @realtek_smi_mdio_regmap_config, !70, !"realtek_smi_mdio_regmap_config", i1 false, i1 false}
!70 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 318, i32 35}
!71 = !{ptr @realtek_smi_of_match, !72, !"realtek_smi_of_match", i1 false, i1 false}
!72 = !{!"../drivers/net/dsa/realtek-smi-core.c", i32 494, i32 34}
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
