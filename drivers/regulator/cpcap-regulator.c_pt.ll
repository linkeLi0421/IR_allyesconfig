; ModuleID = '/llk/IR_all_yes/drivers/regulator/cpcap-regulator.c_pt.bc'
source_filename = "../drivers/regulator/cpcap-regulator.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpcap_regulator = type { %struct.regulator_desc, i16, i16 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.cpcap_ddata = type { ptr, ptr, ptr }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_cpcap_regulator__288_568_cpcap_regulator_driver_init6 = internal global ptr @cpcap_regulator_driver_init, section ".initcall6.init", align 4
@cpcap_regulator_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpcap_regulator_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpcap_regulator_id_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpcap_regulator_driver_exit = internal global ptr @cpcap_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias289 = internal constant [47 x i8] c"cpcap_regulator.alias=platform:cpcap-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [56 x i8] c"cpcap_regulator.author=Tony Lindgren <tony@atomide.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [51 x i8] c"cpcap_regulator.description=CPCAP regulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [55 x i8] c"cpcap_regulator.file=drivers/regulator/cpcap-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [31 x i8] c"cpcap_regulator.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpcap-regulator\00", [16 x i8] zeroinitializer }, align 32
@cpcap_regulator_id_table = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,mapphone-cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_regulators }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"motorola,xoom-cpcap-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @xoom_regulators }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@cpcap_regulator_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 514, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"no configuration data found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpcap_regulator_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/regulator/cpcap-regulator.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpcap_regulator_probe._entry_ptr = internal global ptr @cpcap_regulator_probe._entry, section ".printk_index", align 4
@unknown_val_tbl = internal constant { [1 x i32], [28 x i8] } zeroinitializer, align 32
@cpcap_regulator_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register regulator %s\0A\00", [63 x i8] zeroinitializer }, align 32
@cpcap_regulator_probe._entry_ptr.8 = internal global ptr @cpcap_regulator_probe._entry.6, section ".printk_index", align 4
@omap4_regulators = internal constant { [25 x %struct.cpcap_regulator], [1544 x i8] } { [25 x %struct.cpcap_regulator] [%struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 128 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1556, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1556, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1568, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1568, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @sw5_val_tbl, ptr null, i32 0, i32 0, i32 1576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1576, i32 40, i32 32800, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vcam_val_tbl, ptr null, i32 0, i32 0, i32 1584, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1584, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 350, i32 0, ptr null, ptr null, i32 0, ptr @vcsi_val_tbl, ptr null, i32 0, i32 0, i32 1588, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1588, i32 71, i32 67, i32 65, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdac_val_tbl, ptr null, i32 0, i32 0, i32 1592, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1592, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdig_val_tbl, ptr null, i32 0, i32 0, i32 1596, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1596, i32 135, i32 130, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 16384 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 14, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vfuse_val_tbl, ptr null, i32 0, i32 0, i32 1600, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1600, i32 128, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 16 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vhvio_val_tbl, ptr null, i32 0, i32 0, i32 1604, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1604, i32 23, i32 0, i32 18, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsdio_val_tbl, ptr null, i32 0, i32 0, i32 1608, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1608, i32 135, i32 130, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 -32768 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vpll_val_tbl, ptr null, i32 0, i32 0, i32 1612, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1612, i32 67, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 32 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf1_val_tbl, ptr null, i32 0, i32 0, i32 1616, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1616, i32 172, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf2_val_tbl, ptr null, i32 0, i32 0, i32 1620, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1620, i32 35, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vrfref_val_tbl, ptr null, i32 0, i32 0, i32 1624, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1624, i32 35, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 64 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan1_val_tbl, ptr null, i32 0, i32 0, i32 1628, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1628, i32 71, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan2_val_tbl, ptr null, i32 0, i32 0, i32 1632, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1632, i32 524, i32 524, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 19, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsim_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.10, ptr null, i32 20, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsimcard_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 7808, i32 7680, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 21, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 500, i32 0, ptr null, ptr null, i32 0, ptr @vvib_val_tbl, ptr null, i32 0, i32 0, i32 1640, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1640, i32 1, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.10, ptr null, i32 22, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vusb_val_tbl, ptr null, i32 0, i32 0, i32 1644, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1644, i32 284, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.10, ptr null, i32 23, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vaudio_val_tbl, ptr null, i32 0, i32 0, i32 2048, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2048, i32 22, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 60, i16 1 }, %struct.cpcap_regulator zeroinitializer], [1544 x i8] zeroinitializer }, align 32
@xoom_regulators = internal constant { [25 x %struct.cpcap_regulator], [1544 x i8] } { [25 x %struct.cpcap_regulator] [%struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.9, ptr null, ptr @.str.9, i8 0, ptr @.str.10, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1548, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 128 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.11, ptr null, ptr @.str.11, i8 0, ptr @.str.10, ptr null, i32 1, i8 0, i32 69, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 120, i32 0, ptr null, ptr null, i32 0, ptr @sw2_sw4_val_tbl, ptr null, i32 0, i32 0, i32 1556, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1556, i32 3840, i32 2048, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.12, ptr null, ptr @.str.12, i8 0, ptr @.str.10, ptr null, i32 2, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1564, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.13, ptr null, ptr @.str.13, i8 0, ptr @.str.10, ptr null, i32 3, i8 0, i32 69, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 100, i32 0, ptr null, ptr null, i32 0, ptr @sw2_sw4_val_tbl, ptr null, i32 0, i32 0, i32 1568, i32 127, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1568, i32 3840, i32 2304, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.14, ptr null, ptr @.str.14, i8 0, ptr @.str.10, ptr null, i32 4, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @sw5_val_tbl, ptr null, i32 0, i32 0, i32 1576, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1576, i32 42, i32 34, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.15, ptr null, ptr @.str.15, i8 0, ptr @.str.10, ptr null, i32 5, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @unknown_val_tbl, ptr null, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1580, i32 0, i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.16, ptr null, ptr @.str.16, i8 0, ptr @.str.10, ptr null, i32 6, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vcam_val_tbl, ptr null, i32 0, i32 0, i32 1584, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1584, i32 135, i32 7, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.17, ptr null, ptr @.str.17, i8 0, ptr @.str.10, ptr null, i32 7, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 350, i32 0, ptr null, ptr null, i32 0, ptr @vcsi_val_tbl, ptr null, i32 0, i32 0, i32 1588, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1588, i32 71, i32 7, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.18, ptr null, ptr @.str.18, i8 0, ptr @.str.10, ptr null, i32 8, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdac_val_tbl, ptr null, i32 0, i32 0, i32 1592, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1592, i32 135, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 512 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.19, ptr null, ptr @.str.19, i8 0, ptr @.str.10, ptr null, i32 9, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vdig_val_tbl, ptr null, i32 0, i32 0, i32 1596, i32 48, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1596, i32 135, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 16384 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.20, ptr null, ptr @.str.20, i8 0, ptr @.str.10, ptr null, i32 10, i8 0, i32 14, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vfuse_val_tbl, ptr null, i32 0, i32 0, i32 1600, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1600, i32 128, i32 128, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 16 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.21, ptr null, ptr @.str.21, i8 0, ptr @.str.10, ptr null, i32 11, i8 0, i32 1, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vhvio_val_tbl, ptr null, i32 0, i32 0, i32 1604, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1604, i32 23, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1024 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.22, ptr null, ptr @.str.22, i8 0, ptr @.str.10, ptr null, i32 12, i8 0, i32 8, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsdio_val_tbl, ptr null, i32 0, i32 0, i32 1608, i32 56, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1608, i32 135, i32 2, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 52, i16 -32768 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.23, ptr null, ptr @.str.23, i8 0, ptr @.str.10, ptr null, i32 13, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vpll_val_tbl, ptr null, i32 0, i32 0, i32 1612, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1612, i32 67, i32 1, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 32 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.24, ptr null, ptr @.str.24, i8 0, ptr @.str.10, ptr null, i32 14, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf1_val_tbl, ptr null, i32 0, i32 0, i32 1616, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1616, i32 172, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2048 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.25, ptr null, ptr @.str.25, i8 0, ptr @.str.10, ptr null, i32 15, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 10, i32 0, ptr null, ptr null, i32 0, ptr @vrf2_val_tbl, ptr null, i32 0, i32 0, i32 1620, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1620, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.26, ptr null, ptr @.str.26, i8 0, ptr @.str.10, ptr null, i32 16, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vrfref_val_tbl, ptr null, i32 0, i32 0, i32 1624, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1624, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 64 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.27, ptr null, ptr @.str.27, i8 0, ptr @.str.10, ptr null, i32 17, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan1_val_tbl, ptr null, i32 0, i32 0, i32 1628, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1628, i32 71, i32 5, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 4096 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.28, ptr null, ptr @.str.28, i8 0, ptr @.str.10, ptr null, i32 18, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vwlan2_val_tbl, ptr null, i32 0, i32 0, i32 1632, i32 192, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1632, i32 524, i32 8, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 2 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.29, ptr null, ptr @.str.29, i8 0, ptr @.str.10, ptr null, i32 19, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsim_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 35, i32 3, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.30, ptr null, ptr @.str.30, i8 0, ptr @.str.10, ptr null, i32 20, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 420, i32 0, ptr null, ptr null, i32 0, ptr @vsimcard_val_tbl, ptr null, i32 0, i32 0, i32 1636, i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1636, i32 7808, i32 7680, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 -1 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.31, ptr null, ptr @.str.31, i8 0, ptr @.str.10, ptr null, i32 21, i8 0, i32 4, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 500, i32 0, ptr null, ptr null, i32 0, ptr @vvib_val_tbl, ptr null, i32 0, i32 0, i32 1640, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1640, i32 1, i32 0, i32 1, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 8192 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.32, ptr null, ptr @.str.32, i8 0, ptr @.str.10, ptr null, i32 22, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vusb_val_tbl, ptr null, i32 0, i32 0, i32 1644, i32 64, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1644, i32 284, i32 12, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 56, i16 256 }, %struct.cpcap_regulator { %struct.regulator_desc { ptr @.str.33, ptr null, ptr @.str.33, i8 0, ptr @.str.10, ptr null, i32 23, i8 0, i32 2, i32 0, ptr @cpcap_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr @vaudio_val_tbl, ptr null, i32 0, i32 0, i32 2048, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2048, i32 22, i32 4, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr @cpcap_map_mode }, i16 60, i16 1 }, %struct.cpcap_regulator zeroinitializer], [1544 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW1\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regulators\00", [21 x i8] zeroinitializer }, align 32
@cpcap_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr @regulator_list_voltage_table, ptr null, ptr @regulator_map_voltage_iterate, ptr @regulator_set_voltage_sel_regmap, ptr null, ptr @regulator_get_voltage_sel_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpcap_regulator_enable, ptr @cpcap_regulator_disable, ptr @regulator_is_enabled_regmap, ptr @cpcap_regulator_set_mode, ptr @cpcap_regulator_get_mode, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW2\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW3\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW4\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW5\00", [28 x i8] zeroinitializer }, align 32
@sw5_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 5050000], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SW6\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCAM\00", [27 x i8] zeroinitializer }, align 32
@vcam_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2600000, i32 2700000, i32 2800000, i32 2900000], [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VCSI\00", [27 x i8] zeroinitializer }, align 32
@vcsi_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1200000, i32 1800000], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDAC\00", [27 x i8] zeroinitializer }, align 32
@vdac_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1500000, i32 1800000, i32 2500000], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDIG\00", [27 x i8] zeroinitializer }, align 32
@vdig_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1350000, i32 1500000, i32 1875000], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VFUSE\00", [26 x i8] zeroinitializer }, align 32
@vfuse_val_tbl = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1500000, i32 1600000, i32 1700000, i32 1800000, i32 1900000, i32 2000000, i32 2100000, i32 2200000, i32 2300000, i32 2400000, i32 2500000, i32 2600000, i32 2700000, i32 3150000], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VHVIO\00", [26 x i8] zeroinitializer }, align 32
@vhvio_val_tbl = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 2775000], [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VSDIO\00", [26 x i8] zeroinitializer }, align 32
@vsdio_val_tbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1500000, i32 1600000, i32 1800000, i32 2600000, i32 2700000, i32 2800000, i32 2900000, i32 3000000], [32 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VPLL\00", [27 x i8] zeroinitializer }, align 32
@vpll_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1200000, i32 1300000, i32 1400000, i32 1800000], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VRF1\00", [27 x i8] zeroinitializer }, align 32
@vrf1_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2775000, i32 2500000], [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VRF2\00", [27 x i8] zeroinitializer }, align 32
@vrf2_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2775000], [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VRFREF\00", [25 x i8] zeroinitializer }, align 32
@vrfref_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2500000, i32 2775000], [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VWLAN1\00", [25 x i8] zeroinitializer }, align 32
@vwlan1_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 1900000], [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VWLAN2\00", [25 x i8] zeroinitializer }, align 32
@vwlan2_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2775000, i32 3000000, i32 3300000, i32 3300000], [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VSIM\00", [27 x i8] zeroinitializer }, align 32
@vsim_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 2900000], [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VSIMCARD\00", [23 x i8] zeroinitializer }, align 32
@vsimcard_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 1800000, i32 2900000], [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VVIB\00", [27 x i8] zeroinitializer }, align 32
@vvib_val_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1300000, i32 1800000, i32 2000000, i32 3000000], [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VUSB\00", [27 x i8] zeroinitializer }, align 32
@vusb_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 3300000], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAUDIO\00", [25 x i8] zeroinitializer }, align 32
@vaudio_val_tbl = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2775000], [24 x i8] zeroinitializer }, align 32
@sw2_sw4_val_tbl = internal constant { [69 x i32], [76 x i8] } { [69 x i32] [i32 612500, i32 625000, i32 637500, i32 650000, i32 662500, i32 675000, i32 687500, i32 700000, i32 712500, i32 725000, i32 737500, i32 750000, i32 762500, i32 775000, i32 787500, i32 800000, i32 812500, i32 825000, i32 837500, i32 850000, i32 862500, i32 875000, i32 887500, i32 900000, i32 912500, i32 925000, i32 937500, i32 950000, i32 962500, i32 975000, i32 987500, i32 1000000, i32 1012500, i32 1025000, i32 1037500, i32 1050000, i32 1062500, i32 1075000, i32 1087500, i32 1100000, i32 1112500, i32 1125000, i32 1137500, i32 1150000, i32 1162500, i32 1175000, i32 1187500, i32 1200000, i32 1212500, i32 1225000, i32 1237500, i32 1250000, i32 1262500, i32 1275000, i32 1287500, i32 1300000, i32 1312500, i32 1325000, i32 1337500, i32 1350000, i32 1362500, i32 1375000, i32 1387500, i32 1400000, i32 1412500, i32 1425000, i32 1437500, i32 1450000, i32 1462500], [76 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"cpcap_regulator_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 560, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 563, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"cpcap_regulator_id_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 489, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 514, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"unknown_val_tbl\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 271, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 550, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"omap4_regulators\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 337, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"xoom_regulators\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 413, i32 37 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 338, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [20 x i8] c"cpcap_regulator_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 259, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 341, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 344, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 347, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 350, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"sw5_val_tbl\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 295, i32 27 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 353, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 356, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"vcam_val_tbl\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 296, i32 27 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 359, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"vcsi_val_tbl\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 298, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 362, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"vdac_val_tbl\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 299, i32 27 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 365, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [13 x i8] c"vdig_val_tbl\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 301, i32 27 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 368, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"vfuse_val_tbl\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 303, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 371, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"vhvio_val_tbl\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 308, i32 27 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 374, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"vsdio_val_tbl\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 309, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 377, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [13 x i8] c"vpll_val_tbl\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 312, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 380, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"vrf1_val_tbl\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 315, i32 27 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 383, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [13 x i8] c"vrf2_val_tbl\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 316, i32 27 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 386, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"vrfref_val_tbl\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 317, i32 27 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 389, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"vwlan1_val_tbl\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 318, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 392, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [15 x i8] c"vwlan2_val_tbl\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 319, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 395, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"vsim_val_tbl\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 321, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 398, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"vsimcard_val_tbl\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 322, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 401, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [13 x i8] c"vvib_val_tbl\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 323, i32 27 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 404, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"vusb_val_tbl\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 325, i32 27 }
@___asan_gen_.205 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 407, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant [15 x i8] c"vaudio_val_tbl\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 326, i32 27 }
@___asan_gen_.211 = private unnamed_addr constant [16 x i8] c"sw2_sw4_val_tbl\00", align 1
@___asan_gen_.212 = private constant [39 x i8] c"../drivers/regulator/cpcap-regulator.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 272, i32 27 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_alias289, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_cpcap_regulator_driver_exit, ptr @__initcall__kmod_cpcap_regulator__288_568_cpcap_regulator_driver_init6, ptr @cpcap_regulator_driver_exit, ptr @cpcap_regulator_probe._entry, ptr @cpcap_regulator_probe._entry.6, ptr @cpcap_regulator_probe._entry_ptr, ptr @cpcap_regulator_probe._entry_ptr.8, ptr @cpcap_regulator_driver, ptr @.str, ptr @cpcap_regulator_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @unknown_val_tbl, ptr @.str.7, ptr @omap4_regulators, ptr @xoom_regulators, ptr @.str.9, ptr @.str.10, ptr @cpcap_regulator_ops, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @sw5_val_tbl, ptr @.str.15, ptr @.str.16, ptr @vcam_val_tbl, ptr @.str.17, ptr @vcsi_val_tbl, ptr @.str.18, ptr @vdac_val_tbl, ptr @.str.19, ptr @vdig_val_tbl, ptr @.str.20, ptr @vfuse_val_tbl, ptr @.str.21, ptr @vhvio_val_tbl, ptr @.str.22, ptr @vsdio_val_tbl, ptr @.str.23, ptr @vpll_val_tbl, ptr @.str.24, ptr @vrf1_val_tbl, ptr @.str.25, ptr @vrf2_val_tbl, ptr @.str.26, ptr @vrfref_val_tbl, ptr @.str.27, ptr @vwlan1_val_tbl, ptr @.str.28, ptr @vwlan2_val_tbl, ptr @.str.29, ptr @vsim_val_tbl, ptr @.str.30, ptr @vsimcard_val_tbl, ptr @.str.31, ptr @vvib_val_tbl, ptr @.str.32, ptr @vusb_val_tbl, ptr @.str.33, ptr @vaudio_val_tbl, ptr @sw2_sw4_val_tbl], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_regulator_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_regulator_id_table to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_regulator_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @unknown_val_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_regulator_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_regulators to i32), i32 6200, i32 7744, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xoom_regulators to i32), i32 6200, i32 7744, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpcap_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw5_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcam_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vcsi_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdac_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdig_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vfuse_val_tbl to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vhvio_val_tbl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsdio_val_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpll_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf1_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrf2_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vrfref_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vwlan1_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vwlan2_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsim_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsimcard_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vvib_val_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vusb_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vaudio_val_tbl to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw2_sw4_val_tbl to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpcap_regulator_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpcap_regulator_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpcap_regulator_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %config = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %config) #6
  %0 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 2
  %1 = getelementptr inbounds %struct.regulator_config, ptr %config, i32 0, i32 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup40

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup40_crit_edge, label %if.end6

if.end.cleanup40_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end6:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %call8 = tail call ptr @dev_get_regmap(ptr noundef %3, ptr noundef null) #6
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %call.i, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.cleanup40_crit_edge, label %if.end12

if.end6.cleanup40_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end12:                                         ; preds = %if.end6
  %dev14 = getelementptr inbounds %struct.cpcap_ddata, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev14 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev14, align 4
  %soc = getelementptr inbounds %struct.cpcap_ddata, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %soc, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %config, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 20)
  %10 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %config, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %1, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12
  %i.073 = phi i32 [ 0, %if.end12 ], [ %inc, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %arrayidx = getelementptr %struct.cpcap_regulator, ptr %13, i32 %i.073
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %for.body.cleanup40_crit_edge, label %if.end21

for.body.cleanup40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

if.end21:                                         ; preds = %for.body
  %volt_table = getelementptr inbounds %struct.regulator_desc, ptr %arrayidx, i32 0, i32 23
  %16 = ptrtoint ptr %volt_table to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %volt_table, align 4
  %cmp23 = icmp eq ptr %17, @unknown_val_tbl
  br i1 %cmp23, label %if.end21.for.inc_crit_edge, label %if.end25

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end25:                                         ; preds = %if.end21
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx, ptr %0, align 4
  %call28 = call ptr @devm_regulator_register(ptr noundef %dev, ptr noundef %arrayidx, ptr noundef nonnull %config) #6
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread70, label %if.end25.for.inc_crit_edge

if.end25.for.inc_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cleanup.thread70:                                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %20) #9
  %21 = ptrtoint ptr %call28 to i32
  br label %cleanup40

for.inc:                                          ; preds = %if.end25.for.inc_crit_edge, %if.end21.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.073, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.inc.cleanup40_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup40_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup40

cleanup40:                                        ; preds = %for.inc.cleanup40_crit_edge, %cleanup.thread70, %for.body.cleanup40_crit_edge, %if.end6.cleanup40_crit_edge, %if.end.cleanup40_crit_edge, %do.end
  %retval.2 = phi i32 [ -19, %do.end ], [ -12, %if.end.cleanup40_crit_edge ], [ -19, %if.end6.cleanup40_crit_edge ], [ %21, %cleanup.thread70 ], [ 0, %for.body.cleanup40_crit_edge ], [ 0, %for.inc.cleanup40_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %config) #6
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpcap_map_mode(i32 noundef %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mode)
  %switch.selectcmp = icmp eq i32 %mode, 64
  %switch.select = select i1 %switch.selectcmp, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %switch.selectcmp2 = icmp eq i32 %mode, 0
  %switch.select3 = select i1 %switch.selectcmp2, i32 2, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_list_voltage_table(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_map_voltage_iterate(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_set_voltage_sel_regmap(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage_sel_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %call1 = tail call i32 @regulator_enable_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_val = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %enable_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_val, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %assign_reg = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %assign_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %assign_reg, align 4
  %conv = zext i16 %7 to i32
  %assign_mask = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %assign_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %assign_mask, align 2
  %conv4 = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.then3.cleanup_crit_edge, label %if.then9

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call i32 @regulator_disable_regmap(ptr noundef %rdev) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.then9 ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #6
  %0 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rdev, align 8
  %enable_val = getelementptr inbounds %struct.regulator_desc, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %enable_val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enable_val, align 4
  %and = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %assign_reg = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %assign_reg to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %assign_reg, align 4
  %conv = zext i16 %7 to i32
  %assign_mask = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %assign_mask to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %assign_mask, align 2
  %conv1 = zext i16 %9 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %conv, i32 noundef %conv1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %call6 = tail call i32 @regulator_disable_regmap(ptr noundef %rdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %land.lhs.true

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %10 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rdev, align 8
  %enable_val9 = getelementptr inbounds %struct.regulator_desc, ptr %11, i32 0, i32 36
  %12 = ptrtoint ptr %enable_val9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_val9, align 4
  %and10 = and i32 %13, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %if.then12

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %regmap13 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %14 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap13, align 4
  %assign_reg14 = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 1
  %16 = ptrtoint ptr %assign_reg14 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %assign_reg14, align 4
  %conv15 = zext i16 %17 to i32
  %assign_mask16 = getelementptr inbounds %struct.cpcap_regulator, ptr %call, i32 0, i32 2
  %18 = ptrtoint ptr %assign_mask16 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %assign_mask16, align 2
  %conv17 = zext i16 %19 to i32
  %call.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %conv15, i32 noundef %conv17, i32 noundef %conv17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then.cleanup_crit_edge ], [ %call6, %if.then12 ], [ %call6, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_set_mode(ptr nocapture noundef readonly %rdev, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mode, label %entry.cleanup_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 8, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %value.0 = phi i32 [ 64, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ]
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_reg, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef %6, i32 noundef 64, i32 noundef %value.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpcap_regulator_get_mode(ptr nocapture noundef readonly %rdev) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #6
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !136
  %regmap = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 17
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %rdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rdev, align 8
  %enable_reg = getelementptr inbounds %struct.regulator_desc, ptr %4, i32 0, i32 34
  %5 = ptrtoint ptr %enable_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_reg, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %6, ptr noundef nonnull %value) #6
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  %and = and i32 %8, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %. = select i1 %tobool.not, i32 2, i32 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #6
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @__initcall__kmod_cpcap_regulator__288_568_cpcap_regulator_driver_init6, !1, !"__initcall__kmod_cpcap_regulator__288_568_cpcap_regulator_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/regulator/cpcap-regulator.c", i32 568, i32 1}
!2 = !{ptr @__exitcall_cpcap_regulator_driver_exit, !1, !"__exitcall_cpcap_regulator_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias289, !4, !"__UNIQUE_ID_alias289", i1 false, i1 false}
!4 = !{!"../drivers/regulator/cpcap-regulator.c", i32 570, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/regulator/cpcap-regulator.c", i32 571, i32 1}
!7 = !{ptr @__UNIQUE_ID_description291, !8, !"__UNIQUE_ID_description291", i1 false, i1 false}
!8 = !{!"../drivers/regulator/cpcap-regulator.c", i32 572, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/regulator/cpcap-regulator.c", i32 573, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/regulator/cpcap-regulator.c", i32 563, i32 11}
!14 = !{ptr @cpcap_regulator_driver, !15, !"cpcap_regulator_driver", i1 false, i1 false}
!15 = !{!"../drivers/regulator/cpcap-regulator.c", i32 560, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/regulator/cpcap-regulator.c", i32 514, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cpcap_regulator_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cpcap_regulator_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/regulator/cpcap-regulator.c", i32 550, i32 4}
!26 = !{ptr @cpcap_regulator_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @cpcap_regulator_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @unknown_val_tbl, !29, !"unknown_val_tbl", i1 false, i1 false}
!29 = !{!"../drivers/regulator/cpcap-regulator.c", i32 271, i32 27}
!30 = !{ptr @cpcap_regulator_id_table, !31, !"cpcap_regulator_id_table", i1 false, i1 false}
!31 = !{!"../drivers/regulator/cpcap-regulator.c", i32 489, i32 34}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/regulator/cpcap-regulator.c", i32 338, i32 2}
!34 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/regulator/cpcap-regulator.c", i32 341, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/regulator/cpcap-regulator.c", i32 344, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/regulator/cpcap-regulator.c", i32 347, i32 2}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/regulator/cpcap-regulator.c", i32 350, i32 2}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/regulator/cpcap-regulator.c", i32 353, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/regulator/cpcap-regulator.c", i32 356, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/regulator/cpcap-regulator.c", i32 359, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/regulator/cpcap-regulator.c", i32 362, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/regulator/cpcap-regulator.c", i32 365, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/regulator/cpcap-regulator.c", i32 368, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/regulator/cpcap-regulator.c", i32 371, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/regulator/cpcap-regulator.c", i32 374, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/regulator/cpcap-regulator.c", i32 377, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/regulator/cpcap-regulator.c", i32 380, i32 2}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/regulator/cpcap-regulator.c", i32 383, i32 2}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/regulator/cpcap-regulator.c", i32 386, i32 2}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/regulator/cpcap-regulator.c", i32 389, i32 2}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/regulator/cpcap-regulator.c", i32 392, i32 2}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/regulator/cpcap-regulator.c", i32 395, i32 2}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/regulator/cpcap-regulator.c", i32 398, i32 2}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/regulator/cpcap-regulator.c", i32 401, i32 2}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/regulator/cpcap-regulator.c", i32 404, i32 2}
!79 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/regulator/cpcap-regulator.c", i32 407, i32 2}
!81 = !{ptr @omap4_regulators, !82, !"omap4_regulators", i1 false, i1 false}
!82 = !{!"../drivers/regulator/cpcap-regulator.c", i32 337, i32 37}
!83 = !{ptr @cpcap_regulator_ops, !84, !"cpcap_regulator_ops", i1 false, i1 false}
!84 = !{!"../drivers/regulator/cpcap-regulator.c", i32 259, i32 35}
!85 = !{ptr @sw5_val_tbl, !86, !"sw5_val_tbl", i1 false, i1 false}
!86 = !{!"../drivers/regulator/cpcap-regulator.c", i32 295, i32 27}
!87 = !{ptr @vcam_val_tbl, !88, !"vcam_val_tbl", i1 false, i1 false}
!88 = !{!"../drivers/regulator/cpcap-regulator.c", i32 296, i32 27}
!89 = !{ptr @vcsi_val_tbl, !90, !"vcsi_val_tbl", i1 false, i1 false}
!90 = !{!"../drivers/regulator/cpcap-regulator.c", i32 298, i32 27}
!91 = !{ptr @vdac_val_tbl, !92, !"vdac_val_tbl", i1 false, i1 false}
!92 = !{!"../drivers/regulator/cpcap-regulator.c", i32 299, i32 27}
!93 = !{ptr @vdig_val_tbl, !94, !"vdig_val_tbl", i1 false, i1 false}
!94 = !{!"../drivers/regulator/cpcap-regulator.c", i32 301, i32 27}
!95 = !{ptr @vfuse_val_tbl, !96, !"vfuse_val_tbl", i1 false, i1 false}
!96 = !{!"../drivers/regulator/cpcap-regulator.c", i32 303, i32 27}
!97 = !{ptr @vhvio_val_tbl, !98, !"vhvio_val_tbl", i1 false, i1 false}
!98 = !{!"../drivers/regulator/cpcap-regulator.c", i32 308, i32 27}
!99 = !{ptr @vsdio_val_tbl, !100, !"vsdio_val_tbl", i1 false, i1 false}
!100 = !{!"../drivers/regulator/cpcap-regulator.c", i32 309, i32 27}
!101 = !{ptr @vpll_val_tbl, !102, !"vpll_val_tbl", i1 false, i1 false}
!102 = !{!"../drivers/regulator/cpcap-regulator.c", i32 312, i32 27}
!103 = !{ptr @vrf1_val_tbl, !104, !"vrf1_val_tbl", i1 false, i1 false}
!104 = !{!"../drivers/regulator/cpcap-regulator.c", i32 315, i32 27}
!105 = !{ptr @vrf2_val_tbl, !106, !"vrf2_val_tbl", i1 false, i1 false}
!106 = !{!"../drivers/regulator/cpcap-regulator.c", i32 316, i32 27}
!107 = !{ptr @vrfref_val_tbl, !108, !"vrfref_val_tbl", i1 false, i1 false}
!108 = !{!"../drivers/regulator/cpcap-regulator.c", i32 317, i32 27}
!109 = !{ptr @vwlan1_val_tbl, !110, !"vwlan1_val_tbl", i1 false, i1 false}
!110 = !{!"../drivers/regulator/cpcap-regulator.c", i32 318, i32 27}
!111 = !{ptr @vwlan2_val_tbl, !112, !"vwlan2_val_tbl", i1 false, i1 false}
!112 = !{!"../drivers/regulator/cpcap-regulator.c", i32 319, i32 27}
!113 = !{ptr @vsim_val_tbl, !114, !"vsim_val_tbl", i1 false, i1 false}
!114 = !{!"../drivers/regulator/cpcap-regulator.c", i32 321, i32 27}
!115 = !{ptr @vsimcard_val_tbl, !116, !"vsimcard_val_tbl", i1 false, i1 false}
!116 = !{!"../drivers/regulator/cpcap-regulator.c", i32 322, i32 27}
!117 = !{ptr @vvib_val_tbl, !118, !"vvib_val_tbl", i1 false, i1 false}
!118 = !{!"../drivers/regulator/cpcap-regulator.c", i32 323, i32 27}
!119 = !{ptr @vusb_val_tbl, !120, !"vusb_val_tbl", i1 false, i1 false}
!120 = !{!"../drivers/regulator/cpcap-regulator.c", i32 325, i32 27}
!121 = !{ptr @vaudio_val_tbl, !122, !"vaudio_val_tbl", i1 false, i1 false}
!122 = !{!"../drivers/regulator/cpcap-regulator.c", i32 326, i32 27}
!123 = !{ptr @xoom_regulators, !124, !"xoom_regulators", i1 false, i1 false}
!124 = !{!"../drivers/regulator/cpcap-regulator.c", i32 413, i32 37}
!125 = !{ptr @sw2_sw4_val_tbl, !126, !"sw2_sw4_val_tbl", i1 false, i1 false}
!126 = !{!"../drivers/regulator/cpcap-regulator.c", i32 272, i32 27}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{!"auto-init"}
