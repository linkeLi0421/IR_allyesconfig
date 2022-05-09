; ModuleID = '/llk/IR_all_yes/drivers/edac/armada_xp_edac.c_pt.bc'
source_filename = "../drivers/edac/armada_xp_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.axp_mc_drvdata = type { ptr, i32, [4 x i8], [128 x i8] }
%struct.dimm_info = type { %struct.device, [32 x i8], [3 x i32], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i32, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.edac_device_counter = type { i32, i32 }
%struct.aurora_l2_drvdata = type { ptr, [128 x i8], i32, i32, i8, ptr }

@__initcall__kmod_armada_xp_edac__236_625_armada_xp_edac_init6 = internal global ptr @armada_xp_edac_init, section ".initcall6.init", align 4
@drivers = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @axp_mc_driver, ptr @aurora_l2_driver], [24 x i8] zeroinitializer }, align 32
@__exitcall_armada_xp_edac_exit = internal global ptr @armada_xp_edac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [48 x i8] c"armada_xp_edac.file=drivers/edac/armada_xp_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [30 x i8] c"armada_xp_edac.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [34 x i8] c"armada_xp_edac.author=Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [92 x i8] c"armada_xp_edac.description=EDAC Drivers for Marvell Armada XP SDRAM and L2 Cache Controller\00", section ".modinfo", align 1
@edac_op_state = external dso_local local_unnamed_addr global i32, align 4
@armada_xp_edac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014Armada XP EDAC drivers fail to register\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"armada_xp_edac_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/edac/armada_xp_edac.c\00", [34 x i8] zeroinitializer }, align 32
@armada_xp_edac_init._entry_ptr = internal global ptr @armada_xp_edac_init._entry, section ".printk_index", align 4
@axp_mc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @axp_mc_probe, ptr @axp_mc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axp_mc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@aurora_l2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @aurora_l2_probe, ptr @aurora_l2_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @aurora_l2_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"armada_xp_mc_edac\00", [46 x i8] zeroinitializer }, align 32
@axp_mc_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada-xp-sdram-controller\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axp_mc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 295, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to get mem resource\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axp_mc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axp_mc_probe._entry_ptr = internal global ptr @axp_mc_probe._entry, section ".printk_index", align 4
@axp_mc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 301, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unable to map regs\0A\00", [44 x i8] zeroinitializer }, align 32
@axp_mc_probe._entry_ptr.10 = internal global ptr @axp_mc_probe._entry.8, section ".printk_index", align 4
@axp_mc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 307, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SDRAM ECC is not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@axp_mc_probe._entry_ptr.14 = internal global ptr @axp_mc_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"marvell,armada380\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"marvell,armadaxp-98dx3236\00", [38 x i8] zeroinitializer }, align 32
@axp_mc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 163, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"inconsistent SBE count detected\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"axp_mc_check\00", [19 x i8] zeroinitializer }, align 32
@axp_mc_check._entry_ptr = internal global ptr @axp_mc_check._entry, section ".printk_index", align 4
@axp_mc_check._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 168, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"inconsistent DBE count detected\0A\00", [63 x i8] zeroinitializer }, align 32
@axp_mc_check._entry_ptr.22 = internal global ptr @axp_mc_check._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"details unavailable (multiple errors)\00", [58 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"row=0x%04x \00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bank=0x%x \00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"col=0x%04x \00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cs=%d\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aurora_l2_edac\00", [17 x i8] zeroinitializer }, align 32
@aurora_l2_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,aurora-system-cache\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@aurora_l2_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.29, ptr @.str.2, i32 523, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aurora_l2_probe\00", [16 x i8] zeroinitializer }, align 32
@aurora_l2_probe._entry_ptr = internal global ptr @aurora_l2_probe._entry, section ".printk_index", align 4
@aurora_l2_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.29, ptr @.str.2, i32 529, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@aurora_l2_probe._entry_ptr.31 = internal global ptr @aurora_l2_probe._entry.30, section ".printk_index", align 4
@aurora_l2_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.29, ptr @.str.2, i32 535, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tag parity is not enabled\0A\00", [37 x i8] zeroinitializer }, align 32
@aurora_l2_probe._entry_ptr.34 = internal global ptr @aurora_l2_probe._entry.32, section ".printk_index", align 4
@aurora_l2_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.29, ptr @.str.2, i32 537, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"data ECC is not enabled\0A\00", [39 x i8] zeroinitializer }, align 32
@aurora_l2_probe._entry_ptr.37 = internal global ptr @aurora_l2_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"L\00", [30 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_addr\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_mask\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inject_ctl\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"src=CPU%d \00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"src=IO \00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"txn=Data-Read \00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txn=Isn-Read \00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"txn=Clean-Flush \00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txn=Eviction \00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"txn=Read-Modify-Write \00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"err=CorrECC \00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"err=UnCorrECC \00", [17 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"err=TagParity \00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"addr=0x%x \00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"index=0x%x \00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"way=0x%x\00", [23 x i8] zeroinitializer }, align 32
@switch.table.axp_mc_probe = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 524288, i32 65536, i32 131072, i32 262144, i32 1048576, i32 2097152], [40 x i8] zeroinitializer }, align 32
@switch.table.axp_mc_probe.56 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 524288, i32 65536, i32 131072, i32 262144, i32 1048576, i32 2097152], [40 x i8] zeroinitializer }, align 32
@switch.table.axp_mc_probe.57 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 524288, i32 65536, i32 131072, i32 262144, i32 1048576, i32 2097152], [40 x i8] zeroinitializer }, align 32
@switch.table.axp_mc_probe.58 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 524288, i32 65536, i32 131072, i32 262144, i32 1048576, i32 2097152], [40 x i8] zeroinitializer }, align 32
@switch.table.aurora_l2_poll = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@switch.table.aurora_l2_poll.59 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.60 = private unnamed_addr constant [8 x i8] c"drivers\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 607, i32 39 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 621, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"axp_mc_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 372, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"aurora_l2_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 596, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 376, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"axp_mc_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 277, i32 34 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 295, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 301, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 307, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 329, i32 40 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 336, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 337, i32 31 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 163, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 168, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 178, i32 10 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 195, i32 22 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 196, i32 22 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 197, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 198, i32 22 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 600, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c"aurora_l2_of_match\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 506, i32 34 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 523, i32 3 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 529, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 535, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 537, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 540, i32 7 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 540, i32 17 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 567, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 570, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 573, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 432, i32 39 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 434, i32 39 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 439, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 442, i32 39 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 445, i32 39 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 448, i32 39 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 452, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 459, i32 39 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 462, i32 39 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 465, i32 39 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 469, i32 38 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 470, i32 38 }
@___asan_gen_.234 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.235 = private constant [33 x i8] c"../drivers/edac/armada_xp_edac.c\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.235, i32 471, i32 38 }
@___asan_gen_.237 = private unnamed_addr constant [26 x i8] c"switch.table.axp_mc_probe\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [29 x i8] c"switch.table.axp_mc_probe.56\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [29 x i8] c"switch.table.axp_mc_probe.57\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [29 x i8] c"switch.table.axp_mc_probe.58\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [28 x i8] c"switch.table.aurora_l2_poll\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [31 x i8] c"switch.table.aurora_l2_poll.59\00", align 1
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_armada_xp_edac_exit, ptr @__initcall__kmod_armada_xp_edac__236_625_armada_xp_edac_init6, ptr @armada_xp_edac_exit, ptr @armada_xp_edac_init._entry, ptr @armada_xp_edac_init._entry_ptr, ptr @aurora_l2_probe._entry, ptr @aurora_l2_probe._entry.30, ptr @aurora_l2_probe._entry.32, ptr @aurora_l2_probe._entry.35, ptr @aurora_l2_probe._entry_ptr, ptr @aurora_l2_probe._entry_ptr.31, ptr @aurora_l2_probe._entry_ptr.34, ptr @aurora_l2_probe._entry_ptr.37, ptr @axp_mc_check._entry, ptr @axp_mc_check._entry.20, ptr @axp_mc_check._entry_ptr, ptr @axp_mc_check._entry_ptr.22, ptr @axp_mc_probe._entry, ptr @axp_mc_probe._entry.11, ptr @axp_mc_probe._entry.8, ptr @axp_mc_probe._entry_ptr, ptr @axp_mc_probe._entry_ptr.10, ptr @axp_mc_probe._entry_ptr.14, ptr @drivers, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @axp_mc_driver, ptr @aurora_l2_driver, ptr @.str.3, ptr @axp_mc_of_match, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @aurora_l2_of_match, ptr @.str.29, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.axp_mc_probe, ptr @switch.table.axp_mc_probe.56, ptr @switch.table.axp_mc_probe.57, ptr @switch.table.axp_mc_probe.58, ptr @switch.table.aurora_l2_poll, ptr @switch.table.aurora_l2_poll.59], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @drivers to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armada_xp_edac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axp_mc_check._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aurora_l2_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp_mc_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp_mc_probe.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp_mc_probe.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.axp_mc_probe.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aurora_l2_poll to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.aurora_l2_poll.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @armada_xp_edac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 0, ptr @edac_op_state, align 4
  %call = tail call i32 @__platform_register_drivers(ptr noundef nonnull @drivers, i32 noundef 2, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @armada_xp_edac_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_unregister_drivers(ptr noundef nonnull @drivers, i32 noundef 2) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_unregister_drivers(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_register_drivers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp_mc_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %layers = alloca [1 x %struct.edac_mc_layer], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %layers) #7
  %0 = getelementptr inbounds i8, ptr %layers, i32 8
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call2) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !133
  %4 = and i32 %3, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not = icmp eq i32 %4, 0
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end19:                                         ; preds = %if.end10
  %5 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %6 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %7 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %is_virt_csrow, align 4
  %call22 = call ptr @edac_mc_alloc(i32 noundef 0, i32 noundef 1, ptr noundef nonnull %layers, i32 noundef 140) #7
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 26
  %8 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pvt_info, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %9, align 4
  %pdev28 = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 22
  %11 = ptrtoint ptr %pdev28 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %pdev28, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %driver_data.i.i, align 4
  %call30 = call ptr @of_match_device(ptr noundef nonnull @axp_mc_of_match, ptr noundef %dev) #7
  %edac_check = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 11
  %13 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @axp_mc_check, ptr %edac_check, align 4
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 4
  %14 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32768, ptr %mtype_cap, align 8
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 6
  %15 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %edac_cap, align 8
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %16 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 23
  %20 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %mod_name, align 4
  %tobool32.not = icmp eq ptr %call30, null
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call30, i32 0, i32 2
  %spec.select = select i1 %tobool32.not, ptr @.str.15, ptr %compatible
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 24
  %21 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spec.select, ptr %ctl_name, align 8
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.dev_name.exit_crit_edge

if.end25.dev_name.exit_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.end25.dev_name.exit_crit_edge ]
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 25
  %26 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %retval.0.i, ptr %dev_name, align 4
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 8
  %27 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %scrub_mode, align 8
  %28 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pvt_info, align 8
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !132
  %33 = call i32 @llvm.bswap.i32(i32 %32) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !134
  %and.i = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i111 = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i111, i32 4, i32 8
  %34 = getelementptr inbounds %struct.axp_mc_drvdata, ptr %29, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %spec.select.i, ptr %34, align 4
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %29, align 4
  %add.ptr6.i = getelementptr i8, ptr %37, i32 16
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !132
  %39 = call i32 @llvm.bswap.i32(i32 %38) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %40 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %29, align 4
  %add.ptr13.i = getelementptr i8, ptr %41, i32 480
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !132
  %43 = call i32 @llvm.bswap.i32(i32 %42) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  %dimms.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call22, i32 0, i32 21
  %and52.i = and i32 %33, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  %cond54.i = select i1 %tobool53.not.i, i32 15, i32 16
  %44 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dimms.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %and17.i = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %dev_name.exit.for.inc.i_crit_edge, label %if.end20.i

dev_name.exit.for.inc.i_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end20.i:                                       ; preds = %dev_name.exit
  %arrayidx25.i = getelementptr %struct.axp_mc_drvdata, ptr %29, i32 0, i32 2, i32 0
  %and22.i = lshr i32 %39, 16
  %48 = trunc i32 %and22.i to i8
  %49 = and i8 %48, 1
  %50 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx25.i, align 1
  %and27.i = and i32 %39, 3
  %and31.i = lshr i32 %39, 18
  %shr33.i = and i32 %and31.i, 4
  %and37.i = lshr i32 %39, 2
  %shr40.i = and i32 %and37.i, 3
  %or.i = or i32 %shr40.i, %shr33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or.i)
  %51 = icmp ult i32 %or.i, 6
  br i1 %51, label %switch.lookup, label %if.end20.i.sw.epilog.i_crit_edge

if.end20.i.sw.epilog.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.axp_mc_probe, i32 0, i32 %or.i
  %52 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %52)
  %switch.load = load i32, ptr %switch.gep, align 4
  %nr_pages50.i = getelementptr inbounds %struct.dimm_info, ptr %47, i32 0, i32 9
  %53 = ptrtoint ptr %nr_pages50.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %switch.load, ptr %nr_pages50.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end20.i.sw.epilog.i_crit_edge
  %grain.i = getelementptr inbounds %struct.dimm_info, ptr %47, i32 0, i32 5
  %54 = ptrtoint ptr %grain.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 8, ptr %grain.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool51.not.i = icmp eq i32 %and27.i, 0
  %cond.i = select i1 %tobool51.not.i, i32 4, i32 5
  %dtype.i = getelementptr inbounds %struct.dimm_info, ptr %47, i32 0, i32 6
  %55 = ptrtoint ptr %dtype.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond.i, ptr %dtype.i, align 8
  %mtype.i = getelementptr inbounds %struct.dimm_info, ptr %47, i32 0, i32 7
  %56 = ptrtoint ptr %mtype.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %cond54.i, ptr %mtype.i, align 4
  %edac_mode.i = getelementptr inbounds %struct.dimm_info, ptr %47, i32 0, i32 8
  %57 = ptrtoint ptr %edac_mode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 5, ptr %edac_mode.i, align 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %sw.epilog.i, %dev_name.exit.for.inc.i_crit_edge
  %58 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dimms.i, align 4
  %arrayidx.1.i = getelementptr ptr, ptr %59, i32 1
  %60 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.1.i, align 4
  %and17.1.i = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.1.i)
  %tobool18.not.1.i = icmp eq i32 %and17.1.i, 0
  br i1 %tobool18.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end20.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1.i

if.end20.1.i:                                     ; preds = %for.inc.i
  %arrayidx25.1.i = getelementptr %struct.axp_mc_drvdata, ptr %29, i32 0, i32 2, i32 1
  %and22.1.i = lshr i32 %39, 17
  %62 = trunc i32 %and22.1.i to i8
  %63 = and i8 %62, 1
  %64 = ptrtoint ptr %arrayidx25.1.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx25.1.i, align 1
  %and31.1.i = lshr i32 %39, 19
  %shr33.1.i = and i32 %and31.1.i, 4
  %and37.1.i = lshr i32 %39, 6
  %shr40.1.i = and i32 %and37.1.i, 3
  %or.1.i = or i32 %shr40.1.i, %shr33.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or.1.i)
  %65 = icmp ult i32 %or.1.i, 6
  br i1 %65, label %switch.lookup112, label %if.end20.1.i.sw.epilog.1.i_crit_edge

if.end20.1.i.sw.epilog.1.i_crit_edge:             ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.1.i

switch.lookup112:                                 ; preds = %if.end20.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep113 = getelementptr inbounds [6 x i32], ptr @switch.table.axp_mc_probe.56, i32 0, i32 %or.1.i
  %66 = ptrtoint ptr %switch.gep113 to i32
  call void @__asan_load4_noabort(i32 %66)
  %switch.load114 = load i32, ptr %switch.gep113, align 4
  %nr_pages.1.i = getelementptr inbounds %struct.dimm_info, ptr %61, i32 0, i32 9
  %67 = ptrtoint ptr %nr_pages.1.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %switch.load114, ptr %nr_pages.1.i, align 4
  br label %sw.epilog.1.i

sw.epilog.1.i:                                    ; preds = %switch.lookup112, %if.end20.1.i.sw.epilog.1.i_crit_edge
  %grain.1.i = getelementptr inbounds %struct.dimm_info, ptr %61, i32 0, i32 5
  %68 = ptrtoint ptr %grain.1.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 8, ptr %grain.1.i, align 4
  %69 = and i32 %39, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool51.not.1.i = icmp eq i32 %69, 0
  %cond.1.i = select i1 %tobool51.not.1.i, i32 4, i32 5
  %dtype.1.i = getelementptr inbounds %struct.dimm_info, ptr %61, i32 0, i32 6
  %70 = ptrtoint ptr %dtype.1.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %cond.1.i, ptr %dtype.1.i, align 8
  %mtype.1.i = getelementptr inbounds %struct.dimm_info, ptr %61, i32 0, i32 7
  %71 = ptrtoint ptr %mtype.1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %cond54.i, ptr %mtype.1.i, align 4
  %edac_mode.1.i = getelementptr inbounds %struct.dimm_info, ptr %61, i32 0, i32 8
  %72 = ptrtoint ptr %edac_mode.1.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 5, ptr %edac_mode.1.i, align 8
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %sw.epilog.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %73 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dimms.i, align 4
  %arrayidx.2.i = getelementptr ptr, ptr %74, i32 2
  %75 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.2.i, align 4
  %and17.2.i = and i32 %43, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.2.i)
  %tobool18.not.2.i = icmp eq i32 %and17.2.i, 0
  br i1 %tobool18.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end20.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.2.i

if.end20.2.i:                                     ; preds = %for.inc.1.i
  %arrayidx25.2.i = getelementptr %struct.axp_mc_drvdata, ptr %29, i32 0, i32 2, i32 2
  %and22.2.i = lshr i32 %39, 18
  %77 = trunc i32 %and22.2.i to i8
  %78 = and i8 %77, 1
  %79 = ptrtoint ptr %arrayidx25.2.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %arrayidx25.2.i, align 1
  %and31.2.i = lshr i32 %39, 20
  %shr33.2.i = and i32 %and31.2.i, 4
  %and37.2.i = lshr i32 %39, 10
  %shr40.2.i = and i32 %and37.2.i, 3
  %or.2.i = or i32 %shr40.2.i, %shr33.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or.2.i)
  %80 = icmp ult i32 %or.2.i, 6
  br i1 %80, label %switch.lookup115, label %if.end20.2.i.sw.epilog.2.i_crit_edge

if.end20.2.i.sw.epilog.2.i_crit_edge:             ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.2.i

switch.lookup115:                                 ; preds = %if.end20.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep116 = getelementptr inbounds [6 x i32], ptr @switch.table.axp_mc_probe.57, i32 0, i32 %or.2.i
  %81 = ptrtoint ptr %switch.gep116 to i32
  call void @__asan_load4_noabort(i32 %81)
  %switch.load117 = load i32, ptr %switch.gep116, align 4
  %nr_pages.2.i = getelementptr inbounds %struct.dimm_info, ptr %76, i32 0, i32 9
  %82 = ptrtoint ptr %nr_pages.2.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %switch.load117, ptr %nr_pages.2.i, align 4
  br label %sw.epilog.2.i

sw.epilog.2.i:                                    ; preds = %switch.lookup115, %if.end20.2.i.sw.epilog.2.i_crit_edge
  %grain.2.i = getelementptr inbounds %struct.dimm_info, ptr %76, i32 0, i32 5
  %83 = ptrtoint ptr %grain.2.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 8, ptr %grain.2.i, align 4
  %84 = and i32 %39, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool51.not.2.i = icmp eq i32 %84, 0
  %cond.2.i = select i1 %tobool51.not.2.i, i32 4, i32 5
  %dtype.2.i = getelementptr inbounds %struct.dimm_info, ptr %76, i32 0, i32 6
  %85 = ptrtoint ptr %dtype.2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %cond.2.i, ptr %dtype.2.i, align 8
  %mtype.2.i = getelementptr inbounds %struct.dimm_info, ptr %76, i32 0, i32 7
  %86 = ptrtoint ptr %mtype.2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %cond54.i, ptr %mtype.2.i, align 4
  %edac_mode.2.i = getelementptr inbounds %struct.dimm_info, ptr %76, i32 0, i32 8
  %87 = ptrtoint ptr %edac_mode.2.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 5, ptr %edac_mode.2.i, align 8
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %sw.epilog.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %88 = ptrtoint ptr %dimms.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dimms.i, align 4
  %arrayidx.3.i = getelementptr ptr, ptr %89, i32 3
  %90 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.3.i, align 4
  %and17.3.i = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.3.i)
  %tobool18.not.3.i = icmp eq i32 %and17.3.i, 0
  br i1 %tobool18.not.3.i, label %for.inc.2.i.axp_mc_read_config.exit_crit_edge, label %if.end20.3.i

for.inc.2.i.axp_mc_read_config.exit_crit_edge:    ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %axp_mc_read_config.exit

if.end20.3.i:                                     ; preds = %for.inc.2.i
  %arrayidx25.3.i = getelementptr %struct.axp_mc_drvdata, ptr %29, i32 0, i32 2, i32 3
  %and22.3.i = lshr i32 %39, 19
  %92 = trunc i32 %and22.3.i to i8
  %93 = and i8 %92, 1
  %94 = ptrtoint ptr %arrayidx25.3.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %arrayidx25.3.i, align 1
  %and31.3.i = lshr i32 %39, 21
  %shr33.3.i = and i32 %and31.3.i, 4
  %and37.3.i = lshr i32 %39, 14
  %shr40.3.i = and i32 %and37.3.i, 3
  %or.3.i = or i32 %shr40.3.i, %shr33.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %or.3.i)
  %95 = icmp ult i32 %or.3.i, 6
  br i1 %95, label %switch.lookup118, label %if.end20.3.i.sw.epilog.3.i_crit_edge

if.end20.3.i.sw.epilog.3.i_crit_edge:             ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.3.i

switch.lookup118:                                 ; preds = %if.end20.3.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep119 = getelementptr inbounds [6 x i32], ptr @switch.table.axp_mc_probe.58, i32 0, i32 %or.3.i
  %96 = ptrtoint ptr %switch.gep119 to i32
  call void @__asan_load4_noabort(i32 %96)
  %switch.load120 = load i32, ptr %switch.gep119, align 4
  %nr_pages.3.i = getelementptr inbounds %struct.dimm_info, ptr %91, i32 0, i32 9
  %97 = ptrtoint ptr %nr_pages.3.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %switch.load120, ptr %nr_pages.3.i, align 4
  br label %sw.epilog.3.i

sw.epilog.3.i:                                    ; preds = %switch.lookup118, %if.end20.3.i.sw.epilog.3.i_crit_edge
  %grain.3.i = getelementptr inbounds %struct.dimm_info, ptr %91, i32 0, i32 5
  %98 = ptrtoint ptr %grain.3.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 8, ptr %grain.3.i, align 4
  %99 = and i32 %39, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool51.not.3.i = icmp eq i32 %99, 0
  %cond.3.i = select i1 %tobool51.not.3.i, i32 4, i32 5
  %dtype.3.i = getelementptr inbounds %struct.dimm_info, ptr %91, i32 0, i32 6
  %100 = ptrtoint ptr %dtype.3.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %cond.3.i, ptr %dtype.3.i, align 8
  %mtype.3.i = getelementptr inbounds %struct.dimm_info, ptr %91, i32 0, i32 7
  %101 = ptrtoint ptr %mtype.3.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond54.i, ptr %mtype.3.i, align 4
  %edac_mode.3.i = getelementptr inbounds %struct.dimm_info, ptr %91, i32 0, i32 8
  %102 = ptrtoint ptr %edac_mode.3.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 5, ptr %edac_mode.3.i, align 8
  br label %axp_mc_read_config.exit

axp_mc_read_config.exit:                          ; preds = %sw.epilog.3.i, %for.inc.2.i.axp_mc_read_config.exit_crit_edge
  %call36 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %axp_mc_read_config.exit.if.then40_crit_edge

axp_mc_read_config.exit.if.then40_crit_edge:      ; preds = %axp_mc_read_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

lor.lhs.false:                                    ; preds = %axp_mc_read_config.exit
  %call38 = call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %lor.lhs.false.do.body42_crit_edge, label %lor.lhs.false.if.then40_crit_edge

lor.lhs.false.if.then40_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then40

lor.lhs.false.do.body42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body42

if.then40:                                        ; preds = %lor.lhs.false.if.then40_crit_edge, %axp_mc_read_config.exit.if.then40_crit_edge
  %width = getelementptr inbounds %struct.axp_mc_drvdata, ptr %9, i32 0, i32 1
  %103 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %width, align 4
  %div110 = lshr i32 %104, 1
  store i32 %div110, ptr %width, align 4
  br label %do.body42

do.body42:                                        ; preds = %if.then40, %lor.lhs.false.do.body42_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  call void @arm_heavy_mb() #7
  %105 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %9, align 4
  %add.ptr46 = getelementptr i8, ptr %106, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 256) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !139
  call void @arm_heavy_mb() #7
  %107 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %9, align 4
  %add.ptr51 = getelementptr i8, ptr %108, i32 208
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 -50331649) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  call void @arm_heavy_mb() #7
  %109 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %9, align 4
  %add.ptr56 = getelementptr i8, ptr %110, i32 216
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 -50331649) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  call void @arm_heavy_mb() #7
  %111 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %9, align 4
  %add.ptr61 = getelementptr i8, ptr %112, i32 88
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 0) #7, !srcloc !138
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  call void @arm_heavy_mb() #7
  %113 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %9, align 4
  %add.ptr66 = getelementptr i8, ptr %114, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 0) #7, !srcloc !138
  %call67 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call22, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  call void @edac_mc_free(ptr noundef nonnull %call22) #7
  br label %cleanup

if.end70:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 0, ptr @edac_op_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then69, %if.end19.cleanup_crit_edge, %do.end17, %do.end7, %do.end
  %retval.0 = phi i32 [ %2, %do.end7 ], [ -22, %if.then69 ], [ 0, %if.end70 ], [ -22, %do.end17 ], [ -19, %do.end ], [ -12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %layers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axp_mc_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_mc_del_mc(ptr noundef %dev) #7
  tail call void @edac_mc_free(ptr noundef %1) #7
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @axp_mc_check(ptr noundef %mci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %msg1 = getelementptr inbounds %struct.axp_mc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 64
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %add.ptr6 = getelementptr i8, ptr %6, i32 68
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 72
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr20 = getelementptr i8, ptr %12, i32 76
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #7, !srcloc !132
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add.ptr27 = getelementptr i8, ptr %16, i32 80
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #7, !srcloc !132
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %add.ptr34 = getelementptr i8, ptr %20, i32 88
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #7, !srcloc !132
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %add.ptr41 = getelementptr i8, ptr %24, i32 92
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !132
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr48 = getelementptr i8, ptr %28, i32 208
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr55 = getelementptr i8, ptr %31, i32 216
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %add.ptr60 = getelementptr i8, ptr %34, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 -50331649) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !153
  tail call void @arm_heavy_mb() #7
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %add.ptr65 = getelementptr i8, ptr %36, i32 216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 -50331649) #7, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not = icmp eq i32 %25, 0
  br i1 %tobool71.not, label %if.end.cleanup_crit_edge, label %if.end.if.end82.thread_crit_edge

if.end.if.end82.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.thread

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !154
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr70 = getelementptr i8, ptr %38, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 0) #7, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool71.not244 = icmp eq i32 %25, 0
  br i1 %tobool71.not244, label %if.end82, label %if.end.thread.if.end82.thread_crit_edge

if.end.thread.if.end82.thread_crit_edge:          ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.thread

if.end82:                                         ; preds = %if.end.thread
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool83.not = icmp eq i32 %and, 0
  br i1 %tobool83.not, label %if.end82.if.then86_crit_edge, label %do.end98

if.end82.if.then86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86

if.end82.thread:                                  ; preds = %if.end.thread.if.end82.thread_crit_edge, %if.end.if.end82.thread_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !155
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %add.ptr77 = getelementptr i8, ptr %40, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77, i32 0) #7, !srcloc !138
  %and231 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and231)
  %tobool83.not232 = icmp eq i32 %and231, 0
  br i1 %tobool83.not232, label %if.then84, label %if.then93

if.then84:                                        ; preds = %if.end82.thread
  br i1 %tobool.not, label %if.end101.thread, label %if.then84.if.then86_crit_edge

if.then84.if.then86_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then86

if.then86:                                        ; preds = %if.then84.if.then86_crit_edge, %if.end82.if.then86_crit_edge
  %dec = add i32 %22, -1
  br label %if.end101

if.end101.thread:                                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %41 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %42, ptr noundef nonnull @.str.18) #10
  br label %if.end104

if.then93:                                        ; preds = %if.end82.thread
  call void @__sanitizer_cov_trace_pc() #9
  %dec94 = add i32 %26, -1
  br label %if.end101

do.end98:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %pdev99 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 22
  %43 = ptrtoint ptr %pdev99 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pdev99, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.21) #10
  br label %if.end101

if.end101:                                        ; preds = %do.end98, %if.then93, %if.then86
  %tobool83.not233 = phi i1 [ false, %if.then93 ], [ false, %do.end98 ], [ true, %if.then86 ]
  %cnt_dbe.0 = phi i32 [ %dec94, %if.then93 ], [ 0, %do.end98 ], [ %26, %if.then86 ]
  %cnt_sbe.0 = phi i32 [ %22, %if.then93 ], [ %22, %do.end98 ], [ %dec, %if.then86 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_sbe.0)
  %tobool102.not = icmp eq i32 %cnt_sbe.0, 0
  br i1 %tobool102.not, label %if.end101.if.end104_crit_edge, label %if.then103

if.end101.if.end104_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %cnt_sbe.0 to i16
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %45 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %mci, i16 noundef zeroext %conv, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef %46, ptr noundef nonnull @.str.23) #7
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end101.if.end104_crit_edge, %if.end101.thread
  %cnt_dbe.0243 = phi i32 [ %26, %if.end101.thread ], [ %cnt_dbe.0, %if.then103 ], [ %cnt_dbe.0, %if.end101.if.end104_crit_edge ]
  %tobool83.not233242 = phi i1 [ true, %if.end101.thread ], [ %tobool83.not233, %if.then103 ], [ %tobool83.not233, %if.end101.if.end104_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_dbe.0243)
  %tobool105.not = icmp eq i32 %cnt_dbe.0243, 0
  br i1 %tobool105.not, label %if.end104.if.end109_crit_edge, label %if.then106

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then106:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %conv107 = trunc i32 %cnt_dbe.0243 to i16
  %ctl_name108 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %47 = ptrtoint ptr %ctl_name108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctl_name108, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %mci, i16 noundef zeroext %conv107, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef -1, ptr noundef %48, ptr noundef nonnull @.str.23) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end104.if.end109_crit_edge
  %49 = trunc i32 %18 to i8
  %50 = lshr i8 %49, 1
  %conv111 = and i8 %50, 3
  %and112 = lshr i32 %18, 23
  %shr113 = and i32 %and112, 7
  %and114 = lshr i32 %14, 8
  %shr115 = and i32 %and114, 65535
  %and116 = lshr i32 %18, 8
  %shr117 = and i32 %and116, 32767
  %51 = xor i32 %13, %10
  %52 = lshr i32 %51, 24
  %conv122 = trunc i32 %and116 to i16
  %width.i = getelementptr inbounds %struct.axp_mc_drvdata, ptr %1, i32 0, i32 1
  %53 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %width.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %if.else59.i [
    i32 8, label %if.then.i
    i32 4, label %if.then27.i
  ]

if.then.i:                                        ; preds = %if.end109
  %idxprom.i = zext i8 %conv111 to i32
  %arrayidx.i = getelementptr %struct.axp_mc_drvdata, ptr %1, i32 0, i32 2, i32 %idxprom.i
  %56 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = shl nuw i32 %shr115, 16
  %shl.i = and i32 %and.i, -524288
  %shl4.i = shl nuw nsw i32 %shr113, 16
  %or.i = or i32 %shl4.i, %shl.i
  %and6.i = shl nuw nsw i32 %shr115, 13
  %shl7.i = and i32 %and6.i, 57344
  %or8.i = or i32 %or.i, %shl7.i
  br label %axp_mc_calc_address.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %shl17.i = shl nuw nsw i32 %shr113, 13
  br label %axp_mc_calc_address.exit

if.then27.i:                                      ; preds = %if.end109
  %idxprom29.i = zext i8 %conv111 to i32
  %arrayidx30.i = getelementptr %struct.axp_mc_drvdata, ptr %1, i32 0, i32 2, i32 %idxprom29.i
  %58 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx30.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool31.not.i = icmp eq i8 %59, 0
  br i1 %tobool31.not.i, label %if.else48.i, label %if.then32.i

if.then32.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %and34.i = shl nuw nsw i32 %shr115, 15
  %shl35.i = and i32 %and34.i, 2146959360
  %shl38.i = shl nuw nsw i32 %shr113, 16
  %or39.i = or i32 %shl38.i, %shl35.i
  %and41.i = shl nuw nsw i32 %shr115, 12
  %shl42.i = and i32 %and41.i, 61440
  %or43.i = or i32 %or39.i, %shl42.i
  br label %axp_mc_calc_address.exit

if.else48.i:                                      ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = and i32 %and114, 32768
  %shl53.i = shl nuw nsw i32 %shr113, 12
  %or54.i = or i32 %shl53.i, %60
  br label %axp_mc_calc_address.exit

if.else59.i:                                      ; preds = %if.end109
  %idxprom61.i = zext i8 %conv111 to i32
  %arrayidx62.i = getelementptr %struct.axp_mc_drvdata, ptr %1, i32 0, i32 2, i32 %idxprom61.i
  %61 = ptrtoint ptr %arrayidx62.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx62.i, align 1, !range !156
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool63.not.i = icmp eq i8 %62, 0
  br i1 %tobool63.not.i, label %if.else80.i, label %if.then64.i

if.then64.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #9
  %and66.i = shl nuw nsw i32 %shr115, 14
  %shl67.i = and i32 %and66.i, 1073217536
  %shl70.i = shl nuw nsw i32 %shr113, 16
  %or71.i = or i32 %shl70.i, %shl67.i
  %and73.i = shl nuw nsw i32 %shr115, 11
  %shl74.i = and i32 %and73.i, 63488
  %or75.i = or i32 %or71.i, %shl74.i
  br label %axp_mc_calc_address.exit

if.else80.i:                                      ; preds = %if.else59.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = and i32 %and114, 49152
  %shl85.i = shl nuw nsw i32 %shr113, 11
  %or86.i = or i32 %shl85.i, %63
  br label %axp_mc_calc_address.exit

axp_mc_calc_address.exit:                         ; preds = %if.else80.i, %if.then64.i, %if.else48.i, %if.then32.i, %if.else.i, %if.then1.i
  %conv130.pre-phi = phi i32 [ %idxprom.i, %if.then1.i ], [ %idxprom.i, %if.else.i ], [ %idxprom29.i, %if.then32.i ], [ %idxprom29.i, %if.else48.i ], [ %idxprom61.i, %if.then64.i ], [ %idxprom61.i, %if.else80.i ]
  %.sink.i = phi i16 [ 3, %if.then1.i ], [ 3, %if.else.i ], [ 2, %if.then32.i ], [ 2, %if.else48.i ], [ 1, %if.then64.i ], [ 1, %if.else80.i ]
  %.sink116.i = phi i16 [ 8184, %if.then1.i ], [ 8184, %if.else.i ], [ 4092, %if.then32.i ], [ 4092, %if.else48.i ], [ 2046, %if.then64.i ], [ 2046, %if.else80.i ]
  %or86.sink.i = phi i32 [ %or8.i, %if.then1.i ], [ %shl17.i, %if.else.i ], [ %or43.i, %if.then32.i ], [ %or54.i, %if.else48.i ], [ %or75.i, %if.then64.i ], [ %or86.i, %if.else80.i ]
  %64 = shl i16 %conv122, %.sink.i
  %65 = and i16 %64, %.sink116.i
  %shl89.i = zext i16 %65 to i32
  %or90.i = or i32 %or86.sink.i, %shl89.i
  %call124 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %msg1, ptr noundef nonnull @.str.24, i32 noundef %shr115)
  %add.ptr125 = getelementptr i8, ptr %msg1, i32 %call124
  %call126 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr125, ptr noundef nonnull @.str.25, i32 noundef %shr113)
  %add.ptr127 = getelementptr i8, ptr %add.ptr125, i32 %call126
  %call128 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr127, ptr noundef nonnull @.str.26, i32 noundef %shr117)
  %add.ptr129 = getelementptr i8, ptr %add.ptr127, i32 %call128
  %call131 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr129, ptr noundef nonnull @.str.27, i32 noundef %conv130.pre-phi)
  %shr136 = lshr i32 %or90.i, 12
  %and137 = and i32 %or90.i, 4095
  %ctl_name140 = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  %66 = ptrtoint ptr %ctl_name140 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctl_name140, align 8
  %not.tobool83.not233242 = xor i1 %tobool83.not233242, true
  %. = zext i1 %not.tobool83.not233242 to i32
  tail call void @edac_mc_handle_error(i32 noundef %., ptr noundef %mci, i16 noundef zeroext 1, i32 noundef %shr136, i32 noundef %and137, i32 noundef %52, i32 noundef %conv130.pre-phi, i32 noundef -1, i32 noundef -1, ptr noundef %67, ptr noundef %msg1) #7
  br label %cleanup

cleanup:                                          ; preds = %axp_mc_calc_address.exit, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aurora_l2_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call2, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !132
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !157
  %and = and i32 %2, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %do.end17, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.end17:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end17, %if.end10.if.end19_crit_edge
  %and20 = and i32 %2, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %do.end25, label %if.end19.if.end27_crit_edge

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.36) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end25, %if.end19.if.end27_crit_edge
  %call28 = tail call ptr @edac_device_alloc_ctl_info(i32 noundef 148, ptr noundef nonnull @.str.38, i32 noundef 1, ptr noundef nonnull @.str.39, i32 noundef 1, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 17
  %3 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pvt_info, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %4, align 4
  %dev34 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 13
  %6 = ptrtoint ptr %dev34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %dev34, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call28, ptr %driver_data.i.i, align 4
  %call36 = tail call ptr @of_match_device(ptr noundef nonnull @aurora_l2_of_match, ptr noundef %dev) #7
  %edac_check = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 12
  %8 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @aurora_l2_poll, ptr %edac_check, align 4
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %9 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 14
  %13 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %mod_name, align 4
  %tobool38.not = icmp eq ptr %call36, null
  %compatible = getelementptr inbounds %struct.of_device_id, ptr %call36, i32 0, i32 2
  %spec.select = select i1 %tobool38.not, ptr @.str.15, ptr %compatible
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 15
  %14 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %ctl_name, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end31.dev_name.exit_crit_edge

if.end31.dev_name.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end31.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %18, %if.end.i ], [ %16, %if.end31.dev_name.exit_crit_edge ]
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call28, i32 0, i32 16
  %19 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i, ptr %dev_name, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !158
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %add.ptr45 = getelementptr i8, ptr %21, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 128) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !159
  tail call void @arm_heavy_mb() #7
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %add.ptr50 = getelementptr i8, ptr %23, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 16777216) #7, !srcloc !138
  %call51 = tail call i32 @edac_device_add_device(ptr noundef nonnull %call28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.then53

if.then53:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @edac_device_free_ctl_info(ptr noundef nonnull %call28) #7
  br label %cleanup

if.end54:                                         ; preds = %dev_name.exit
  %24 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i107 = icmp eq ptr %25, null
  br i1 %tobool.not.i107, label %if.end.i108, label %if.end54.dev_name.exit110_crit_edge

if.end54.dev_name.exit110_crit_edge:              ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit110

if.end.i108:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br label %dev_name.exit110

dev_name.exit110:                                 ; preds = %if.end.i108, %if.end54.dev_name.exit110_crit_edge
  %retval.0.i109 = phi ptr [ %27, %if.end.i108 ], [ %25, %if.end54.dev_name.exit110_crit_edge ]
  %call57 = tail call ptr @edac_debugfs_create_dir(ptr noundef %retval.0.i109) #7
  %debugfs = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %4, i32 0, i32 5
  %28 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call57, ptr %debugfs, align 4
  %tobool59.not = icmp eq ptr %call57, null
  br i1 %tobool59.not, label %dev_name.exit110.cleanup_crit_edge, label %if.then60

dev_name.exit110.cleanup_crit_edge:               ; preds = %dev_name.exit110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then60:                                        ; preds = %dev_name.exit110
  call void @__sanitizer_cov_trace_pc() #9
  %inject_addr = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %4, i32 0, i32 2
  tail call void @edac_debugfs_create_x32(ptr noundef nonnull @.str.40, i16 noundef zeroext 420, ptr noundef nonnull %call57, ptr noundef %inject_addr) #7
  %29 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debugfs, align 4
  %inject_mask = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %4, i32 0, i32 3
  tail call void @edac_debugfs_create_x32(ptr noundef nonnull @.str.41, i16 noundef zeroext 420, ptr noundef %30, ptr noundef %inject_mask) #7
  %31 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %debugfs, align 4
  %inject_ctl = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %4, i32 0, i32 4
  tail call void @edac_debugfs_create_x8(ptr noundef nonnull @.str.42, i16 noundef zeroext 420, ptr noundef %32, ptr noundef %inject_ctl) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %dev_name.exit110.cleanup_crit_edge, %if.then53, %if.end27.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %0, %do.end7 ], [ -22, %if.then53 ], [ -19, %do.end ], [ -12, %if.end27.cleanup_crit_edge ], [ 0, %if.then60 ], [ 0, %dev_name.exit110.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aurora_l2_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %debugfs = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs, align 4
  tail call void @debugfs_remove(ptr noundef %5) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call1 = tail call ptr @edac_device_del_device(ptr noundef %dev) #7
  tail call void @edac_device_free_ctl_info(ptr noundef %1) #7
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aurora_l2_poll(ptr noundef %dci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %dci, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %msg1.i = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 1536
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !132
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !160
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %add.ptr6.i = getelementptr i8, ptr %7, i32 1544
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #7, !srcloc !132
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !161
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr13.i = getelementptr i8, ptr %11, i32 1548
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13.i) #7, !srcloc !132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !162
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %add.ptr20.i = getelementptr i8, ptr %14, i32 1552
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i) #7, !srcloc !132
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !163
  %and.i = and i32 %5, 65535
  %and24.i = lshr i32 %5, 16
  %shr25.i = and i32 %and24.i, 32767
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr25.i)
  %tobool26.not.i = icmp eq i32 %shr25.i, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %tobool26.not.i, i1 false
  br i1 %or.cond.i, label %entry.if.end.i_crit_edge, label %do.body.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !164
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr28.i = getelementptr i8, ptr %18, i32 1536
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28.i, i32 128) #7, !srcloc !138
  br label %if.end.i

if.end.i:                                         ; preds = %do.body.i, %entry.if.end.i_crit_edge
  %and29.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end.i.clear_remaining.i_crit_edge, label %if.end32.i

if.end.i.clear_remaining.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_remaining.i

if.end32.i:                                       ; preds = %if.end.i
  %and33.i = lshr i32 %9, 16
  %shr34.i = and i32 %and33.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr34.i)
  %cmp.i = icmp ult i32 %shr34.i, 4
  br i1 %cmp.i, label %if.then35.i, label %if.else.i

if.then35.i:                                      ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %call37.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %msg1.i, i32 noundef 128, ptr noundef nonnull @.str.43, i32 noundef %shr34.i) #7
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #9
  %call40.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %msg1.i, i32 noundef 128, ptr noundef nonnull @.str.44) #7
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %if.then35.i
  %len.0.i = phi i32 [ %call37.i, %if.then35.i ], [ %call40.i, %if.else.i ]
  %and43.i = lshr i32 %9, 12
  %shr44.i = and i32 %and43.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr44.i)
  %19 = icmp ult i32 %shr44.i, 5
  br i1 %19, label %switch.lookup, label %if.end42.i.sw.epilog.i_crit_edge

if.end42.i.sw.epilog.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.aurora_l2_poll, i32 0, i32 %shr44.i
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %add.ptr65.i = getelementptr i8, ptr %msg1.i, i32 %len.0.i
  %sub66.i = sub i32 128, %len.0.i
  %call67.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr65.i, i32 noundef %sub66.i, ptr noundef nonnull %switch.load) #7
  %add68.i = add i32 %call67.i, %len.0.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.end42.i.sw.epilog.i_crit_edge
  %len.1.i = phi i32 [ %len.0.i, %if.end42.i.sw.epilog.i_crit_edge ], [ %add68.i, %switch.lookup ]
  %and69.i = lshr i32 %9, 8
  %shr70.i = and i32 %and69.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr70.i)
  %.not = icmp eq i32 %shr70.i, 3
  br i1 %.not, label %sw.epilog.i.sw.epilog86.i_crit_edge, label %switch.lookup6

sw.epilog.i.sw.epilog86.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog86.i

switch.lookup6:                                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep7 = getelementptr inbounds [3 x ptr], ptr @switch.table.aurora_l2_poll.59, i32 0, i32 %shr70.i
  %21 = ptrtoint ptr %switch.gep7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load8 = load ptr, ptr %switch.gep7, align 4
  %add.ptr82.i = getelementptr i8, ptr %msg1.i, i32 %len.1.i
  %sub83.i = sub i32 128, %len.1.i
  %call84.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr82.i, i32 noundef %sub83.i, ptr noundef nonnull %switch.load8) #7
  %add85.i = add i32 %call84.i, %len.1.i
  br label %sw.epilog86.i

sw.epilog86.i:                                    ; preds = %switch.lookup6, %sw.epilog.i.sw.epilog86.i_crit_edge
  %len.2.i = phi i32 [ %len.1.i, %sw.epilog.i.sw.epilog86.i_crit_edge ], [ %add85.i, %switch.lookup6 ]
  %add.ptr87.i = getelementptr i8, ptr %msg1.i, i32 %len.2.i
  %sub88.i = sub i32 128, %len.2.i
  %22 = and i32 %12, -520093697
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  %call90.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr87.i, i32 noundef %sub88.i, ptr noundef nonnull @.str.53, i32 noundef %23) #7
  %add91.i = add i32 %call90.i, %len.2.i
  %add.ptr92.i = getelementptr i8, ptr %msg1.i, i32 %add91.i
  %sub93.i = sub i32 128, %add91.i
  %and94.i = lshr i32 %16, 8
  %shr95.i = and i32 %and94.i, 4095
  %call96.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr92.i, i32 noundef %sub93.i, ptr noundef nonnull @.str.54, i32 noundef %shr95.i) #7
  %add97.i = add i32 %add91.i, %call96.i
  %add.ptr98.i = getelementptr i8, ptr %msg1.i, i32 %add97.i
  %sub99.i = sub i32 128, %add97.i
  %and100.i = lshr i32 %16, 1
  %shr101.i = and i32 %and100.i, 15
  %call102.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr98.i, i32 noundef %sub99.i, ptr noundef nonnull @.str.55, i32 noundef %shr101.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !165
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr108.i = getelementptr i8, ptr %25, i32 1544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr108.i, i32 16777216) #7, !srcloc !138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr70.i)
  %tobool109.not.i = icmp eq i32 %shr70.i, 0
  br i1 %tobool109.not.i, label %if.else116.i, label %if.then110.i

if.then110.i:                                     ; preds = %sw.epilog86.i
  %dec.i = add nsw i32 %shr25.i, -1
  tail call void @edac_device_handle_ue_count(ptr noundef %dci, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %msg1.i) #7
  br i1 %tobool26.not.i, label %if.then110.i.while.cond126.preheader.i_crit_edge, label %if.then110.i.clear_remaining.i_crit_edge

if.then110.i.clear_remaining.i_crit_edge:         ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clear_remaining.i

if.then110.i.while.cond126.preheader.i_crit_edge: ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond126.preheader.i

if.else116.i:                                     ; preds = %sw.epilog86.i
  call void @__sanitizer_cov_trace_pc() #9
  %dec119.i = add nsw i32 %and.i, -1
  %spec.select218.i = select i1 %tobool.not.i, i32 0, i32 %dec119.i
  tail call void @edac_device_handle_ce_count(ptr noundef %dci, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %msg1.i) #7
  br label %clear_remaining.i

clear_remaining.i:                                ; preds = %if.else116.i, %if.then110.i.clear_remaining.i_crit_edge, %if.end.i.clear_remaining.i_crit_edge
  %cnt_ue.1.i = phi i32 [ %dec.i, %if.then110.i.clear_remaining.i_crit_edge ], [ %shr25.i, %if.else116.i ], [ %shr25.i, %if.end.i.clear_remaining.i_crit_edge ]
  %cnt_ce.1.i = phi i32 [ %and.i, %if.then110.i.clear_remaining.i_crit_edge ], [ %spec.select218.i, %if.else116.i ], [ %and.i, %if.end.i.clear_remaining.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_ue.1.i)
  %tobool125.not219.i = icmp eq i32 %cnt_ue.1.i, 0
  br i1 %tobool125.not219.i, label %clear_remaining.i.while.cond126.preheader.i_crit_edge, label %clear_remaining.i.while.body.i_crit_edge

clear_remaining.i.while.body.i_crit_edge:         ; preds = %clear_remaining.i
  br label %while.body.i

clear_remaining.i.while.cond126.preheader.i_crit_edge: ; preds = %clear_remaining.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond126.preheader.i

while.cond126.preheader.i:                        ; preds = %while.body.i.while.cond126.preheader.i_crit_edge, %clear_remaining.i.while.cond126.preheader.i_crit_edge, %if.then110.i.while.cond126.preheader.i_crit_edge
  %cnt_ce.1226.i = phi i32 [ %cnt_ce.1.i, %clear_remaining.i.while.cond126.preheader.i_crit_edge ], [ %and.i, %if.then110.i.while.cond126.preheader.i_crit_edge ], [ %cnt_ce.1.i, %while.body.i.while.cond126.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt_ce.1226.i)
  %tobool128.not221.i = icmp eq i32 %cnt_ce.1226.i, 0
  br i1 %tobool128.not221.i, label %while.cond126.preheader.i.aurora_l2_check.exit_crit_edge, label %while.cond126.preheader.i.while.body129.i_crit_edge

while.cond126.preheader.i.while.body129.i_crit_edge: ; preds = %while.cond126.preheader.i
  br label %while.body129.i

while.cond126.preheader.i.aurora_l2_check.exit_crit_edge: ; preds = %while.cond126.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aurora_l2_check.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %clear_remaining.i.while.body.i_crit_edge
  %cnt_ue.2220.i = phi i32 [ %dec124.i, %while.body.i.while.body.i_crit_edge ], [ %cnt_ue.1.i, %clear_remaining.i.while.body.i_crit_edge ]
  %dec124.i = add nsw i32 %cnt_ue.2220.i, -1
  tail call void @edac_device_handle_ue_count(ptr noundef %dci, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.23) #7
  %tobool125.not.i = icmp eq i32 %dec124.i, 0
  br i1 %tobool125.not.i, label %while.body.i.while.cond126.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.while.cond126.preheader.i_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond126.preheader.i

while.body129.i:                                  ; preds = %while.body129.i.while.body129.i_crit_edge, %while.cond126.preheader.i.while.body129.i_crit_edge
  %cnt_ce.2222.i = phi i32 [ %dec127.i, %while.body129.i.while.body129.i_crit_edge ], [ %cnt_ce.1226.i, %while.cond126.preheader.i.while.body129.i_crit_edge ]
  %dec127.i = add nsw i32 %cnt_ce.2222.i, -1
  tail call void @edac_device_handle_ue_count(ptr noundef %dci, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @.str.23) #7
  %tobool128.not.i = icmp eq i32 %dec127.i, 0
  br i1 %tobool128.not.i, label %while.body129.i.aurora_l2_check.exit_crit_edge, label %while.body129.i.while.body129.i_crit_edge

while.body129.i.while.body129.i_crit_edge:        ; preds = %while.body129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body129.i

while.body129.i.aurora_l2_check.exit_crit_edge:   ; preds = %while.body129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %aurora_l2_check.exit

aurora_l2_check.exit:                             ; preds = %while.body129.i.aurora_l2_check.exit_crit_edge, %while.cond126.preheader.i.aurora_l2_check.exit_crit_edge
  %inject_addr.i = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %inject_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %inject_addr.i, align 4
  %and.i2 = and i32 %27, -16
  store i32 %and.i2, ptr %inject_addr.i, align 4
  %inject_ctl.i = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %inject_ctl.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %inject_ctl.i, align 4
  %30 = and i8 %29, 3
  store i8 %30, ptr %inject_ctl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !166
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %add.ptr.i3 = getelementptr i8, ptr %32, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !167
  tail call void @arm_heavy_mb() #7
  %inject_mask.i = getelementptr inbounds %struct.aurora_l2_drvdata, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %inject_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %inject_mask.i, align 4
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr6.i4 = getelementptr i8, ptr %37, i32 1560
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i4, i32 %35) #7, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !168
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %inject_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %inject_addr.i, align 4
  %40 = ptrtoint ptr %inject_ctl.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %inject_ctl.i, align 4
  %conv11.i = zext i8 %41 to i32
  %or.i = or i32 %39, %conv11.i
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %add.ptr13.i5 = getelementptr i8, ptr %44, i32 1556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i5, i32 %42) #7, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_debugfs_create_x8(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121}
!llvm.module.flags = !{!123, !124, !125, !126, !127, !128, !129, !130}
!llvm.ident = !{!131}

!0 = !{ptr @__initcall__kmod_armada_xp_edac__236_625_armada_xp_edac_init6, !1, !"__initcall__kmod_armada_xp_edac__236_625_armada_xp_edac_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/armada_xp_edac.c", i32 625, i32 1}
!2 = !{ptr @__exitcall_armada_xp_edac_exit, !3, !"__exitcall_armada_xp_edac_exit", i1 false, i1 false}
!3 = !{!"../drivers/edac/armada_xp_edac.c", i32 631, i32 1}
!4 = !{ptr @__UNIQUE_ID_file237, !5, !"__UNIQUE_ID_file237", i1 false, i1 false}
!5 = !{!"../drivers/edac/armada_xp_edac.c", i32 633, i32 1}
!6 = !{ptr @__UNIQUE_ID_license238, !5, !"__UNIQUE_ID_license238", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/edac/armada_xp_edac.c", i32 634, i32 1}
!9 = !{ptr @__UNIQUE_ID_description240, !10, !"__UNIQUE_ID_description240", i1 false, i1 false}
!10 = !{!"../drivers/edac/armada_xp_edac.c", i32 635, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/edac/armada_xp_edac.c", i32 621, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @armada_xp_edac_init._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @armada_xp_edac_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @drivers, !18, !"drivers", i1 false, i1 false}
!18 = !{!"../drivers/edac/armada_xp_edac.c", i32 607, i32 39}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/edac/armada_xp_edac.c", i32 376, i32 11}
!21 = !{ptr @axp_mc_driver, !22, !"axp_mc_driver", i1 false, i1 false}
!22 = !{!"../drivers/edac/armada_xp_edac.c", i32 372, i32 31}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/edac/armada_xp_edac.c", i32 295, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @axp_mc_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @axp_mc_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/edac/armada_xp_edac.c", i32 301, i32 3}
!32 = !{ptr @axp_mc_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @axp_mc_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/armada_xp_edac.c", i32 307, i32 3}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @axp_mc_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @axp_mc_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/edac/armada_xp_edac.c", i32 329, i32 40}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/edac/armada_xp_edac.c", i32 336, i32 31}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/armada_xp_edac.c", i32 337, i32 31}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/edac/armada_xp_edac.c", i32 163, i32 4}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @axp_mc_check._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @axp_mc_check._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/edac/armada_xp_edac.c", i32 168, i32 4}
!52 = !{ptr @axp_mc_check._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @axp_mc_check._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/edac/armada_xp_edac.c", i32 178, i32 10}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/edac/armada_xp_edac.c", i32 195, i32 22}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/edac/armada_xp_edac.c", i32 196, i32 22}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/edac/armada_xp_edac.c", i32 197, i32 22}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/edac/armada_xp_edac.c", i32 198, i32 22}
!64 = !{ptr @axp_mc_of_match, !65, !"axp_mc_of_match", i1 false, i1 false}
!65 = !{!"../drivers/edac/armada_xp_edac.c", i32 277, i32 34}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/armada_xp_edac.c", i32 600, i32 11}
!68 = !{ptr @aurora_l2_driver, !69, !"aurora_l2_driver", i1 false, i1 false}
!69 = !{!"../drivers/edac/armada_xp_edac.c", i32 596, i32 31}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/armada_xp_edac.c", i32 523, i32 3}
!72 = !{ptr @aurora_l2_probe._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @aurora_l2_probe._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @aurora_l2_probe._entry.30, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/edac/armada_xp_edac.c", i32 529, i32 3}
!76 = !{ptr @aurora_l2_probe._entry_ptr.31, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/edac/armada_xp_edac.c", i32 535, i32 3}
!79 = !{ptr @aurora_l2_probe._entry.32, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @aurora_l2_probe._entry_ptr.34, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/edac/armada_xp_edac.c", i32 537, i32 3}
!83 = !{ptr @aurora_l2_probe._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @aurora_l2_probe._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/edac/armada_xp_edac.c", i32 540, i32 7}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/edac/armada_xp_edac.c", i32 540, i32 17}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/edac/armada_xp_edac.c", i32 567, i32 27}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/edac/armada_xp_edac.c", i32 570, i32 27}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/edac/armada_xp_edac.c", i32 573, i32 26}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/edac/armada_xp_edac.c", i32 432, i32 39}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/edac/armada_xp_edac.c", i32 434, i32 39}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/edac/armada_xp_edac.c", i32 439, i32 39}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/edac/armada_xp_edac.c", i32 442, i32 39}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/edac/armada_xp_edac.c", i32 445, i32 39}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/edac/armada_xp_edac.c", i32 448, i32 39}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/edac/armada_xp_edac.c", i32 452, i32 5}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/edac/armada_xp_edac.c", i32 459, i32 39}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/edac/armada_xp_edac.c", i32 462, i32 39}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/edac/armada_xp_edac.c", i32 465, i32 39}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/edac/armada_xp_edac.c", i32 469, i32 38}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/edac/armada_xp_edac.c", i32 470, i32 38}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/edac/armada_xp_edac.c", i32 471, i32 38}
!121 = !{ptr @aurora_l2_of_match, !122, !"aurora_l2_of_match", i1 false, i1 false}
!122 = !{!"../drivers/edac/armada_xp_edac.c", i32 506, i32 34}
!123 = !{i32 1, !"wchar_size", i32 2}
!124 = !{i32 1, !"min_enum_size", i32 4}
!125 = !{i32 8, !"branch-target-enforcement", i32 0}
!126 = !{i32 8, !"sign-return-address", i32 0}
!127 = !{i32 8, !"sign-return-address-all", i32 0}
!128 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!129 = !{i32 7, !"uwtable", i32 1}
!130 = !{i32 7, !"frame-pointer", i32 2}
!131 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!132 = !{i64 5945639}
!133 = !{i64 2154692156}
!134 = !{i64 2154686928}
!135 = !{i64 2154687515}
!136 = !{i64 2154688023}
!137 = !{i64 2154694628}
!138 = !{i64 5945221}
!139 = !{i64 2154695263}
!140 = !{i64 2154696063}
!141 = !{i64 2154696638}
!142 = !{i64 2154697030}
!143 = !{i64 2154676260}
!144 = !{i64 2154676763}
!145 = !{i64 2154677266}
!146 = !{i64 2154677769}
!147 = !{i64 2154678272}
!148 = !{i64 2154678775}
!149 = !{i64 2154679278}
!150 = !{i64 2154679781}
!151 = !{i64 2154680284}
!152 = !{i64 2154680729}
!153 = !{i64 2154681529}
!154 = !{i64 2154682104}
!155 = !{i64 2154682496}
!156 = !{i8 0, i8 2}
!157 = !{i64 2154705733}
!158 = !{i64 2154709281}
!159 = !{i64 2154709760}
!160 = !{i64 2154699244}
!161 = !{i64 2154699752}
!162 = !{i64 2154700260}
!163 = !{i64 2154700768}
!164 = !{i64 2154701123}
!165 = !{i64 2154701850}
!166 = !{i64 2154697533}
!167 = !{i64 2154697947}
!168 = !{i64 2154698440}
