; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_tegra.c_pt.bc'
source_filename = "../drivers/ata/ahci_tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_ahci_soc = type { ptr, i32, i8, i8, ptr, ptr }
%struct.tegra_ahci_ops = type { ptr }
%struct.tegra_ahci_regs = type { i32, i32 }
%struct.sata_pad_calibration = type { i8, i8, i8, i8 }
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
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.tegra_ahci_priv = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__initcall__kmod_ahci_tegra__320_619_tegra_ahci_driver_init6 = internal global ptr @tegra_ahci_driver_init, section ".initcall6.init", align 4
@tegra_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_ahci_driver_exit = internal global ptr @tegra_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [58 x i8] c"ahci_tegra.author=Mikko Perttunen <mperttunen@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description322 = internal constant [46 x i8] c"ahci_tegra.description=Tegra AHCI SATA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [39 x i8] c"ahci_tegra.file=drivers/ata/ahci_tegra\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [26 x i8] c"ahci_tegra.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-ahci\00", [21 x i8] zeroinitializer }, align 32
@tegra_ahci_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_ahci_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_ahci_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_ahci_soc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get sata reset\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_ahci_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/ahci_tegra.c\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry_ptr = internal global ptr @tegra_ahci_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata-oob\00", [23 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 558, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get sata-oob reset\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry_ptr.10 = internal global ptr @tegra_ahci_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata-cold\00", [22 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 565, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get sata-cold reset\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry_ptr.14 = internal global ptr @tegra_ahci_probe._entry.12, section ".printk_index", align 4
@tegra_ahci_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 571, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get sata clock\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry_ptr.17 = internal global ptr @tegra_ahci_probe._entry.15, section ".printk_index", align 4
@tegra_ahci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 589, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get regulators\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_ahci_probe._entry_ptr.20 = internal global ptr @tegra_ahci_probe._entry.18, section ".printk_index", align 4
@ahci_tegra_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 8781954, i32 0, i32 31, i32 0, i32 127, ptr @ahci_tegra_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tegra_ahci_controller_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 306, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to power on AHCI controller: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_ahci_controller_init\00", [37 x i8] zeroinitializer }, align 32
@tegra_ahci_controller_init._entry_ptr = internal global ptr @tegra_ahci_controller_init._entry, section ".printk_index", align 4
@ahci_tegra_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@tegra124_ahci_soc = internal constant { %struct.tegra_ahci_soc, [44 x i8] } { %struct.tegra_ahci_soc { ptr @tegra124_supply_names, i32 5, i8 0, i8 1, ptr @tegra124_ahci_ops, ptr @tegra124_ahci_regs }, [44 x i8] zeroinitializer }, align 32
@tegra210_ahci_soc = internal constant { %struct.tegra_ahci_soc, [44 x i8] } { %struct.tegra_ahci_soc { ptr null, i32 0, i8 0, i8 1, ptr null, ptr @tegra124_ahci_regs }, [44 x i8] zeroinitializer }, align 32
@tegra186_ahci_soc = internal constant { %struct.tegra_ahci_soc, [44 x i8] } { %struct.tegra_ahci_soc { ptr null, i32 0, i8 0, i8 0, ptr null, ptr @tegra186_ahci_regs }, [44 x i8] zeroinitializer }, align 32
@tegra124_supply_names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [44 x i8] zeroinitializer }, align 32
@tegra124_ahci_ops = internal constant { %struct.tegra_ahci_ops, [28 x i8] } { %struct.tegra_ahci_ops { ptr @tegra124_ahci_init }, [28 x i8] zeroinitializer }, align 32
@tegra124_ahci_regs = internal constant { %struct.tegra_ahci_regs, [24 x i8] } { %struct.tegra_ahci_regs { i32 1879048192, i32 1879048192 }, [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"target-5v\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"target-12v\00", [21 x i8] zeroinitializer }, align 32
@tegra124_pad_calibration = internal constant { [4 x %struct.sata_pad_calibration], [16 x i8] } { [4 x %struct.sata_pad_calibration] [%struct.sata_pad_calibration { i8 24, i8 4, i8 24, i8 10 }, %struct.sata_pad_calibration { i8 14, i8 4, i8 20, i8 10 }, %struct.sata_pad_calibration { i8 14, i8 7, i8 26, i8 14 }, %struct.sata_pad_calibration { i8 20, i8 14, i8 26, i8 14 }], [16 x i8] zeroinitializer }, align 32
@tegra186_ahci_regs = internal constant { %struct.tegra_ahci_regs, [24 x i8] } { %struct.tegra_ahci_regs { i32 16711680, i32 458752 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"tegra_ahci_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 610, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 614, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"tegra_ahci_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 492, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 548, i32 55 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 550, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 556, i32 13 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 558, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 563, i32 60 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 565, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 571, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 589, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [21 x i8] c"ahci_tegra_port_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 446, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 509, i32 34 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 305, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"ahci_tegra_port_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 441, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"tegra124_ahci_soc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 466, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"tegra210_ahci_soc\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 475, i32 36 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"tegra186_ahci_soc\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 486, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"tegra124_supply_names\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 453, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant [18 x i8] c"tegra124_ahci_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 457, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant [19 x i8] c"tegra124_ahci_regs\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 461, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 454, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 454, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 454, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 454, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 454, i32 40 }
@___asan_gen_.139 = private unnamed_addr constant [25 x i8] c"tegra124_pad_calibration\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 144, i32 42 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"tegra186_ahci_regs\00", align 1
@___asan_gen_.143 = private constant [28 x i8] c"../drivers/ata/ahci_tegra.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 481, i32 37 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_description322, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_tegra_ahci_driver_exit, ptr @__initcall__kmod_ahci_tegra__320_619_tegra_ahci_driver_init6, ptr @tegra_ahci_controller_init._entry, ptr @tegra_ahci_controller_init._entry_ptr, ptr @tegra_ahci_driver_exit, ptr @tegra_ahci_probe._entry, ptr @tegra_ahci_probe._entry.12, ptr @tegra_ahci_probe._entry.15, ptr @tegra_ahci_probe._entry.18, ptr @tegra_ahci_probe._entry.8, ptr @tegra_ahci_probe._entry_ptr, ptr @tegra_ahci_probe._entry_ptr.10, ptr @tegra_ahci_probe._entry_ptr.14, ptr @tegra_ahci_probe._entry_ptr.17, ptr @tegra_ahci_probe._entry_ptr.20, ptr @tegra_ahci_driver, ptr @.str, ptr @tegra_ahci_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @ahci_tegra_port_info, ptr @ahci_platform_sht, ptr @.str.21, ptr @.str.22, ptr @ahci_tegra_port_ops, ptr @tegra124_ahci_soc, ptr @tegra210_ahci_soc, ptr @tegra186_ahci_soc, ptr @tegra124_supply_names, ptr @tegra124_ahci_ops, ptr @tegra124_ahci_regs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @tegra124_pad_calibration, ptr @tegra186_ahci_regs], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_tegra_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_ahci_controller_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_tegra_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ahci_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_ahci_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_ahci_soc to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_supply_names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ahci_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_ahci_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pad_calibration to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_ahci_regs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_ahci_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_ahci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 23
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %plat_data, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %call8 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %soc = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %soc, align 4
  %call9 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call9) #6
  %sata_regs = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %sata_regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call11, ptr %sata_regs, align 4
  %cmp.i174 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i174, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end5
  %call18 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %if.then20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then20:                                        ; preds = %if.end17
  %call22 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call18) #6
  %sata_aux_regs = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %sata_aux_regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call22, ptr %sata_aux_regs, align 4
  %cmp.i175 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i175, label %if.then25, label %if.then20.if.end29_crit_edge

if.then20.if.end29_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then25:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.then20.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %sata_rst = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %sata_rst to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %sata_rst, align 4
  %cmp.i176 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i176, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %9 = ptrtoint ptr %sata_rst to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sata_rst, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  %12 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %soc, align 4
  %has_sata_oob_rst = getelementptr inbounds %struct.tegra_ahci_soc, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %has_sata_oob_rst to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_sata_oob_rst, align 1, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool40.not = icmp eq i8 %15, 0
  br i1 %tobool40.not, label %if.end38.if.end54_crit_edge, label %if.then41

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then41:                                        ; preds = %if.end38
  %call.i.i177 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %sata_oob_rst = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 4
  %16 = ptrtoint ptr %sata_oob_rst to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i.i177, ptr %sata_oob_rst, align 4
  %cmp.i178 = icmp ugt ptr %call.i.i177, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %do.end49, label %if.then41.if.end54_crit_edge

if.then41.if.end54_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.end49:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #9
  %17 = ptrtoint ptr %sata_oob_rst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sata_oob_rst, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end54:                                         ; preds = %if.then41.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  %call.i.i179 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %sata_cold_rst = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %sata_cold_rst to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i179, ptr %sata_cold_rst, align 4
  %cmp.i180 = icmp ugt ptr %call.i.i179, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %do.end62, label %if.end66

do.end62:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #9
  %21 = ptrtoint ptr %sata_cold_rst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sata_cold_rst, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end54
  %call68 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %sata_clk = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %sata_clk to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call68, ptr %sata_clk, align 4
  %cmp.i181 = icmp ugt ptr %call68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %do.end74, label %if.end78

do.end74:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  %25 = ptrtoint ptr %sata_clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sata_clk, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup

if.end78:                                         ; preds = %if.end66
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %num_supplies = getelementptr inbounds %struct.tegra_ahci_soc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_supplies, align 4
  %32 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %31, i32 12) #6
  %33 = extractvalue { i32, i1 } %32, 1
  br i1 %33, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !93

devm_kcalloc.exit.thread:                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  %supplies185 = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 7
  %34 = ptrtoint ptr %supplies185 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %supplies185, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end78
  %35 = extractvalue { i32, i1 } %32, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %35, i32 noundef 3520) #6
  %supplies = getelementptr inbounds %struct.tegra_ahci_priv, ptr %call.i, i32 0, i32 7
  %36 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %supplies, align 4
  %tobool83.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool83.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end85

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end85:                                         ; preds = %devm_kcalloc.exit
  %37 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %soc, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 4
  %num_supplies89 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %num_supplies89 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_supplies89, align 4
  tail call void @regulator_bulk_set_supply_names(ptr noundef nonnull %call5.i.i, ptr noundef %40, i32 noundef %42) #6
  %43 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %soc, align 4
  %num_supplies92 = getelementptr inbounds %struct.tegra_ahci_soc, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %num_supplies92 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_supplies92, align 4
  %47 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %supplies, align 4
  %call94 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef %46, ptr noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.end101:                                        ; preds = %if.end85
  %49 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %plat_data, align 4
  %soc.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %soc.i.i, align 4
  %num_supplies.i.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %num_supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_supplies.i.i, align 4
  %supplies.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 7
  %55 = ptrtoint ptr %supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %supplies.i.i, align 4
  %call.i.i182 = tail call i32 @regulator_bulk_enable(i32 noundef %54, ptr noundef %56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i182)
  %tobool.not.i.i = icmp eq i32 %call.i.i182, 0
  br i1 %tobool.not.i.i, label %if.end.i.i183, label %if.end101.tegra_ahci_controller_init.exit_crit_edge

if.end101.tegra_ahci_controller_init.exit_crit_edge: ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_ahci_controller_init.exit

if.end.i.i183:                                    ; preds = %if.end101
  %57 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %50, align 4
  %pm_domain.i.i = getelementptr inbounds %struct.platform_device, ptr %58, i32 0, i32 3, i32 13
  %59 = ptrtoint ptr %pm_domain.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pm_domain.i.i, align 8
  %tobool1.not.i.i = icmp eq ptr %60, null
  br i1 %tobool1.not.i.i, label %if.then2.i.i, label %if.end.i.i183.if.end7.i.i_crit_edge

if.end.i.i183.if.end7.i.i_crit_edge:              ; preds = %if.end.i.i183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i183
  %sata_clk.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 6
  %61 = ptrtoint ptr %sata_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sata_clk.i.i, align 4
  %sata_rst.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 3
  %63 = ptrtoint ptr %sata_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sata_rst.i.i, align 4
  %call3.i.i = tail call i32 @tegra_powergate_sequence_power_up(i32 noundef 8, ptr noundef %62, ptr noundef %64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then2.i.i.if.end7.i.i_crit_edge, label %if.then2.i.i.disable_regulators.i.i_crit_edge

if.then2.i.i.disable_regulators.i.i_crit_edge:    ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulators.i.i

if.then2.i.i.if.end7.i.i_crit_edge:               ; preds = %if.then2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then2.i.i.if.end7.i.i_crit_edge, %if.end.i.i183.if.end7.i.i_crit_edge
  %sata_oob_rst.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 4
  %65 = ptrtoint ptr %sata_oob_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sata_oob_rst.i.i, align 4
  %call8.i.i = tail call i32 @reset_control_assert(ptr noundef %66) #6
  %sata_cold_rst.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 5
  %67 = ptrtoint ptr %sata_cold_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sata_cold_rst.i.i, align 4
  %call9.i.i = tail call i32 @reset_control_assert(ptr noundef %68) #6
  %call10.i.i = tail call i32 @ahci_platform_enable_resources(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool11.not.i.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end.i, label %disable_power.i.i

disable_power.i.i:                                ; preds = %if.end7.i.i
  %sata_clk18.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 6
  %69 = ptrtoint ptr %sata_clk18.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %sata_clk18.i.i, align 4
  tail call void @clk_disable(ptr noundef %70) #6
  tail call void @clk_unprepare(ptr noundef %70) #6
  %71 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %50, align 4
  %pm_domain21.i.i = getelementptr inbounds %struct.platform_device, ptr %72, i32 0, i32 3, i32 13
  %73 = ptrtoint ptr %pm_domain21.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pm_domain21.i.i, align 8
  %tobool22.not.i.i = icmp eq ptr %74, null
  br i1 %tobool22.not.i.i, label %if.then23.i.i, label %disable_power.i.i.disable_regulators.i.i_crit_edge

disable_power.i.i.disable_regulators.i.i_crit_edge: ; preds = %disable_power.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_regulators.i.i

if.then23.i.i:                                    ; preds = %disable_power.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call24.i.i = tail call i32 @tegra_powergate_power_off(i32 noundef 8) #6
  br label %disable_regulators.i.i

disable_regulators.i.i:                           ; preds = %if.then23.i.i, %disable_power.i.i.disable_regulators.i.i_crit_edge, %if.then2.i.i.disable_regulators.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call10.i.i, %disable_power.i.i.disable_regulators.i.i_crit_edge ], [ %call10.i.i, %if.then23.i.i ], [ %call3.i.i, %if.then2.i.i.disable_regulators.i.i_crit_edge ]
  %75 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %soc.i.i, align 4
  %num_supplies27.i.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %num_supplies27.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %num_supplies27.i.i, align 4
  %79 = ptrtoint ptr %supplies.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %supplies.i.i, align 4
  %call29.i.i = tail call i32 @regulator_bulk_disable(i32 noundef %78, ptr noundef %80) #6
  br label %tegra_ahci_controller_init.exit

if.end.i:                                         ; preds = %if.end7.i.i
  %81 = ptrtoint ptr %sata_cold_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %sata_cold_rst.i.i, align 4
  %call15.i.i = tail call i32 @reset_control_deassert(ptr noundef %82) #6
  %83 = ptrtoint ptr %sata_oob_rst.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %sata_oob_rst.i.i, align 4
  %call17.i.i = tail call i32 @reset_control_deassert(ptr noundef %84) #6
  %sata_regs.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %50, i32 0, i32 1
  %85 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %86, i32 148
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !94
  %88 = lshr i32 %87, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %and.i = and i32 %88, 14
  %or.i = or i32 %and.i, 4194817
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %89 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %90 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %91, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %89) #6, !srcloc !97
  %92 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %93, i32 384
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %95 = or i32 %94, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %96 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %97, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20.i, i32 %95) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %99, i32 5864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 341) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr32.i = getelementptr i8, ptr %101, i32 5868
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32.i, i32 341) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr38.i = getelementptr i8, ptr %103, i32 5876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38.i, i32 16777216) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %105, i32 5880
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44.i, i32 16777216) #6, !srcloc !97
  %106 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr49.i = getelementptr i8, ptr %107, i32 4384
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  %109 = and i32 %108, -524290
  %110 = or i32 %109, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr60.i = getelementptr i8, ptr %112, i32 4384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60.i, i32 %110) #6, !srcloc !97
  %113 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr65.i = getelementptr i8, ptr %114, i32 4372
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65.i) #6, !srcloc !94
  %116 = tail call i32 @llvm.bswap.i32(i32 %115) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %117 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %soc.i.i, align 4
  %regs.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %118, i32 0, i32 5
  %119 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs.i, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %120, align 4
  %123 = and i32 %122, -251658241
  %neg.i = xor i32 %123, -251658241
  %and71.i = and i32 %neg.i, %116
  %nvoob_comma_cnt_val.i = getelementptr inbounds %struct.tegra_ahci_regs, ptr %120, i32 0, i32 1
  %124 = ptrtoint ptr %nvoob_comma_cnt_val.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nvoob_comma_cnt_val.i, align 4
  %or75.i = or i32 %125, %and71.i
  %or76.i = or i32 %or75.i, 218103808
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %126 = tail call i32 @llvm.bswap.i32(i32 %or76.i) #6
  %127 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr82.i = getelementptr i8, ptr %128, i32 4372
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr82.i, i32 %126) #6, !srcloc !97
  %129 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr87.i = getelementptr i8, ptr %130, i32 4404
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr87.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %132 = and i32 %131, -64520
  %133 = or i32 %132, 12288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %134 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr98.i = getelementptr i8, ptr %135, i32 4404
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98.i, i32 %133) #6, !srcloc !97
  %136 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %soc.i.i, align 4
  %ops.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %137, i32 0, i32 4
  %138 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ops.i, align 4
  %tobool100.not.i = icmp eq ptr %139, null
  br i1 %tobool100.not.i, label %if.end.i.if.end109.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end109.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  %tobool103.not.i = icmp eq ptr %141, null
  br i1 %tobool103.not.i, label %land.lhs.true.i.if.end109.i_crit_edge, label %if.then104.i

land.lhs.true.i.if.end109.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109.i

if.then104.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call108.i = tail call i32 %141(ptr noundef %call) #6
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then104.i, %land.lhs.true.i.if.end109.i_crit_edge, %if.end.i.if.end109.i_crit_edge
  %142 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr114.i = getelementptr i8, ptr %143, i32 4100
  %144 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr114.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %145 = or i32 %144, 117506048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr124.i = getelementptr i8, ptr %147, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %145) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr130.i = getelementptr i8, ptr %149, i32 4132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130.i, i32 576) #6, !srcloc !97
  %150 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr135.i = getelementptr i8, ptr %151, i32 5452
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  %153 = or i32 %152, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr145.i = getelementptr i8, ptr %155, i32 5452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145.i, i32 %153) #6, !srcloc !97
  %156 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr150.i = getelementptr i8, ptr %157, i32 5284
  %158 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr150.i) #6, !srcloc !94
  %159 = lshr i32 %158, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %or155.i = or i32 %159, 17170688
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %160 = tail call i32 @llvm.bswap.i32(i32 %or155.i) #6
  %161 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr161.i = getelementptr i8, ptr %162, i32 5284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr161.i, i32 %160) #6, !srcloc !97
  %163 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr166.i = getelementptr i8, ptr %164, i32 5452
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  %166 = and i32 %165, -1048577
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr176.i = getelementptr i8, ptr %168, i32 5452
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr176.i, i32 %166) #6, !srcloc !97
  %169 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr181.i = getelementptr i8, ptr %170, i32 4864
  %171 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr181.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !119
  %172 = or i32 %171, 6291972
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %173 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr191.i = getelementptr i8, ptr %174, i32 4864
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr191.i, i32 %172) #6, !srcloc !97
  %175 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr196.i = getelementptr i8, ptr %176, i32 4244
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  %178 = and i32 %177, 65077247
  %179 = or i32 %178, -1476395008
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %180 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr207.i = getelementptr i8, ptr %181, i32 4244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr207.i, i32 %179) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %182 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr213.i = getelementptr i8, ptr %183, i32 4248
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213.i, i32 1073758208) #6, !srcloc !97
  %184 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr218.i = getelementptr i8, ptr %185, i32 4396
  %186 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr218.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %187 = or i32 %186, 49152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %188 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr228.i = getelementptr i8, ptr %189, i32 4396
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228.i, i32 %187) #6, !srcloc !97
  %190 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr232.i = getelementptr i8, ptr %191, i32 384
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr232.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %193 = and i32 %192, -129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %194 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr241.i = getelementptr i8, ptr %195, i32 384
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241.i, i32 %193) #6, !srcloc !97
  %196 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %plat_data, align 4
  %sata_aux_regs.i.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %197, i32 0, i32 2
  %198 = ptrtoint ptr %sata_aux_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sata_aux_regs.i.i, align 4
  %tobool.not.i342.i = icmp eq ptr %199, null
  br i1 %tobool.not.i342.i, label %if.end109.i.if.end105_crit_edge, label %land.lhs.true.i.i

if.end109.i.if.end105_crit_edge:                  ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

land.lhs.true.i.i:                                ; preds = %if.end109.i
  %soc.i343.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %197, i32 0, i32 8
  %200 = ptrtoint ptr %soc.i343.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %soc.i343.i, align 4
  %supports_devslp.i.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %201, i32 0, i32 2
  %202 = ptrtoint ptr %supports_devslp.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %supports_devslp.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool1.not.i344.i = icmp eq i8 %203, 0
  br i1 %tobool1.not.i344.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end105_crit_edge

land.lhs.true.i.i.if.end105_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr.i.i = getelementptr i8, ptr %199, i32 8
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %205 = and i32 %204, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %206 = ptrtoint ptr %sata_aux_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %sata_aux_regs.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %207, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i.i, i32 %205) #6, !srcloc !97
  br label %if.end105

tegra_ahci_controller_init.exit:                  ; preds = %disable_regulators.i.i, %if.end101.tegra_ahci_controller_init.exit_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i.i182, %if.end101.tegra_ahci_controller_init.exit_crit_edge ], [ %ret.0.i.i, %disable_regulators.i.i ]
  %208 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %50, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %209, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %retval.0.i.ph.i) #9
  br label %cleanup

if.end105:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end105_crit_edge, %if.end109.i.if.end105_crit_edge
  %210 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr245.i = getelementptr i8, ptr %211, i32 392
  %212 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr245.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %213 = or i32 %212, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  tail call void @arm_heavy_mb() #6
  %214 = ptrtoint ptr %sata_regs.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %sata_regs.i, align 4
  %add.ptr254.i = getelementptr i8, ptr %215, i32 392
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr254.i, i32 %213) #6, !srcloc !97
  %call106 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call, ptr noundef nonnull @ahci_tegra_port_info, ptr noundef nonnull @ahci_platform_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end105.cleanup_crit_edge, label %deinit_controller

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

deinit_controller:                                ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tegra_ahci_controller_deinit(ptr noundef %call)
  br label %cleanup

cleanup:                                          ; preds = %deinit_controller, %if.end105.cleanup_crit_edge, %tegra_ahci_controller_init.exit, %do.end99, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end74, %do.end62, %do.end49, %do.end, %if.then25, %if.then14, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %5, %if.then14 ], [ %7, %if.then25 ], [ %11, %do.end ], [ %19, %do.end49 ], [ %23, %do.end62 ], [ %27, %do.end74 ], [ %call94, %do.end99 ], [ %call106, %deinit_controller ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %retval.0.i.ph.i, %tegra_ahci_controller_init.exit ], [ 0, %if.end105.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_set_supply_names(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_ahci_controller_deinit(ptr noundef %hpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data.i = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data.i, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %hpriv) #6
  %sata_rst.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %sata_rst.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sata_rst.i, align 4
  %call.i = tail call i32 @reset_control_assert(ptr noundef %3) #6
  %sata_oob_rst.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sata_oob_rst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sata_oob_rst.i, align 4
  %call1.i = tail call i32 @reset_control_assert(ptr noundef %5) #6
  %sata_cold_rst.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %sata_cold_rst.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sata_cold_rst.i, align 4
  %call2.i = tail call i32 @reset_control_assert(ptr noundef %7) #6
  %sata_clk.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %sata_clk.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sata_clk.i, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %pm_domain.i = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, i32 13
  %12 = ptrtoint ptr %pm_domain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pm_domain.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.tegra_ahci_power_off.exit_crit_edge

entry.tegra_ahci_power_off.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tegra_ahci_power_off.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @tegra_powergate_power_off(i32 noundef 8) #6
  br label %tegra_ahci_power_off.exit

tegra_ahci_power_off.exit:                        ; preds = %if.then.i, %entry.tegra_ahci_power_off.exit_crit_edge
  %soc.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc.i, align 4
  %num_supplies.i = getelementptr inbounds %struct.tegra_ahci_soc, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_supplies.i, align 4
  %supplies.i = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %supplies.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %supplies.i, align 4
  %call4.i = tail call i32 @regulator_bulk_disable(i32 noundef %17, ptr noundef %19) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_sequence_power_up(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_powergate_power_off(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_ahci_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @tegra_ahci_controller_deinit(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_change_queue_depth(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_ahci_init(ptr nocapture noundef readonly %hpriv) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !132
  %call = call i32 @tegra_fuse_readl(i32 noundef 292, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 3
  %arrayidx = getelementptr [4 x %struct.sata_pad_calibration], ptr @tegra124_pad_calibration, i32 0, i32 %and
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %calib.sroa.0.0.copyload = load i8, ptr %arrayidx, align 1
  %calib.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 1
  %6 = ptrtoint ptr %calib.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %6)
  %calib.sroa.5.0.copyload = load i8, ptr %calib.sroa.5.0.arrayidx.sroa_idx, align 1
  %calib.sroa.7.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 2
  %7 = ptrtoint ptr %calib.sroa.7.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %calib.sroa.7.0.copyload = load i8, ptr %calib.sroa.7.0.arrayidx.sroa_idx, align 1
  %calib.sroa.9.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 3
  %8 = ptrtoint ptr %calib.sroa.9.0.arrayidx.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %calib.sroa.9.0.copyload = load i8, ptr %calib.sroa.9.0.arrayidx.sroa_idx, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  call void @arm_heavy_mb() #6
  %sata_regs = getelementptr inbounds %struct.tegra_ahci_priv, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sata_regs, align 4
  %add.ptr1 = getelementptr i8, ptr %10, i32 5760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 16777216) #6, !srcloc !97
  %11 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sata_regs, align 4
  %add.ptr4 = getelementptr i8, ptr %12, i32 5776
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  %14 = and i32 %13, 65535
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %conv = zext i8 %calib.sroa.0.0.copyload to i32
  %or = or i32 %15, %conv
  %conv9 = zext i8 %calib.sroa.5.0.copyload to i32
  %shl10 = shl nuw nsw i32 %conv9, 8
  %or11 = or i32 %or, %shl10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or11, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %20 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sata_regs, align 4
  %add.ptr17 = getelementptr i8, ptr %21, i32 5776
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %19) #6, !srcloc !97
  %22 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sata_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %23, i32 5780
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #6, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  %25 = and i32 %24, 1044735
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %conv28 = zext i8 %calib.sroa.7.0.copyload to i32
  %conv31 = zext i8 %calib.sroa.9.0.copyload to i32
  %shl32 = shl nuw nsw i32 %conv31, 8
  %or30 = or i32 %shl32, %conv28
  %or33 = or i32 %or30, %26
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or33, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %30 = call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sata_regs, align 4
  %add.ptr39 = getelementptr i8, ptr %32, i32 5780
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %30) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sata_regs, align 4
  %add.ptr45 = getelementptr i8, ptr %34, i32 5840
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 40) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sata_regs, align 4
  %add.ptr51 = getelementptr i8, ptr %36, i32 5788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 587202560) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %sata_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sata_regs, align 4
  %add.ptr57 = getelementptr i8, ptr %38, i32 5760
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr57, i32 0) #6, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_fuse_readl(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_ahci_tegra__320_619_tegra_ahci_driver_init6, !1, !"__initcall__kmod_ahci_tegra__320_619_tegra_ahci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_tegra.c", i32 619, i32 1}
!2 = !{ptr @__exitcall_tegra_ahci_driver_exit, !1, !"__exitcall_tegra_ahci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_tegra.c", i32 621, i32 1}
!5 = !{ptr @__UNIQUE_ID_description322, !6, !"__UNIQUE_ID_description322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_tegra.c", i32 622, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_tegra.c", i32 623, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_tegra.c", i32 614, i32 11}
!12 = !{ptr @tegra_ahci_driver, !13, !"tegra_ahci_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_tegra.c", i32 610, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_tegra.c", i32 548, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_tegra.c", i32 550, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tegra_ahci_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra_ahci_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/ahci_tegra.c", i32 556, i32 13}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_tegra.c", i32 558, i32 4}
!28 = !{ptr @tegra_ahci_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tegra_ahci_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_tegra.c", i32 563, i32 60}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/ahci_tegra.c", i32 565, i32 3}
!34 = !{ptr @tegra_ahci_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_ahci_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_tegra.c", i32 571, i32 3}
!38 = !{ptr @tegra_ahci_probe._entry.15, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_ahci_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.19, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_tegra.c", i32 589, i32 3}
!42 = !{ptr @tegra_ahci_probe._entry.18, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @tegra_ahci_probe._entry_ptr.20, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/ahci_tegra.c", i32 305, i32 3}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tegra_ahci_controller_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tegra_ahci_controller_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @ahci_tegra_port_info, !50, !"ahci_tegra_port_info", i1 false, i1 false}
!50 = !{!"../drivers/ata/ahci_tegra.c", i32 446, i32 35}
!51 = !{ptr @ahci_tegra_port_ops, !52, !"ahci_tegra_port_ops", i1 false, i1 false}
!52 = !{!"../drivers/ata/ahci_tegra.c", i32 441, i32 35}
!53 = !{ptr @ahci_platform_sht, !54, !"ahci_platform_sht", i1 false, i1 false}
!54 = !{!"../drivers/ata/ahci_tegra.c", i32 509, i32 34}
!55 = !{ptr @tegra_ahci_of_match, !56, !"tegra_ahci_of_match", i1 false, i1 false}
!56 = !{!"../drivers/ata/ahci_tegra.c", i32 492, i32 34}
!57 = !{ptr @tegra124_ahci_soc, !58, !"tegra124_ahci_soc", i1 false, i1 false}
!58 = !{!"../drivers/ata/ahci_tegra.c", i32 466, i32 36}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/ata/ahci_tegra.c", i32 454, i32 2}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/ata/ahci_tegra.c", i32 454, i32 10}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/ata/ahci_tegra.c", i32 454, i32 18}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/ata/ahci_tegra.c", i32 454, i32 27}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/ata/ahci_tegra.c", i32 454, i32 40}
!69 = !{ptr @tegra124_supply_names, !70, !"tegra124_supply_names", i1 false, i1 false}
!70 = !{!"../drivers/ata/ahci_tegra.c", i32 453, i32 26}
!71 = !{ptr @tegra124_ahci_ops, !72, !"tegra124_ahci_ops", i1 false, i1 false}
!72 = !{!"../drivers/ata/ahci_tegra.c", i32 457, i32 36}
!73 = !{ptr @tegra124_pad_calibration, !74, !"tegra124_pad_calibration", i1 false, i1 false}
!74 = !{!"../drivers/ata/ahci_tegra.c", i32 144, i32 42}
!75 = !{ptr @tegra124_ahci_regs, !76, !"tegra124_ahci_regs", i1 false, i1 false}
!76 = !{!"../drivers/ata/ahci_tegra.c", i32 461, i32 37}
!77 = !{ptr @tegra210_ahci_soc, !78, !"tegra210_ahci_soc", i1 false, i1 false}
!78 = !{!"../drivers/ata/ahci_tegra.c", i32 475, i32 36}
!79 = !{ptr @tegra186_ahci_soc, !80, !"tegra186_ahci_soc", i1 false, i1 false}
!80 = !{!"../drivers/ata/ahci_tegra.c", i32 486, i32 36}
!81 = !{ptr @tegra186_ahci_regs, !82, !"tegra186_ahci_regs", i1 false, i1 false}
!82 = !{!"../drivers/ata/ahci_tegra.c", i32 481, i32 37}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
!93 = !{!"branch_weights", i32 1, i32 2000}
!94 = !{i64 5965341}
!95 = !{i64 2156494528}
!96 = !{i64 2156494799}
!97 = !{i64 5964923}
!98 = !{i64 2156495500}
!99 = !{i64 2156495809}
!100 = !{i64 2156496245}
!101 = !{i64 2156496690}
!102 = !{i64 2156497128}
!103 = !{i64 2156497566}
!104 = !{i64 2156498320}
!105 = !{i64 2156498731}
!106 = !{i64 2156499485}
!107 = !{i64 2156499776}
!108 = !{i64 2156500530}
!109 = !{i64 2156500799}
!110 = !{i64 2156501548}
!111 = !{i64 2156506178}
!112 = !{i64 2156506620}
!113 = !{i64 2156507373}
!114 = !{i64 2156507700}
!115 = !{i64 2156508454}
!116 = !{i64 2156508751}
!117 = !{i64 2156509505}
!118 = !{i64 2156509832}
!119 = !{i64 2156510586}
!120 = !{i64 2156511165}
!121 = !{i64 2156511914}
!122 = !{i64 2156512180}
!123 = !{i64 2156512622}
!124 = !{i64 2156513375}
!125 = !{i64 2156513786}
!126 = !{i64 2156514497}
!127 = !{i64 2156514808}
!128 = !{i64 2156487740}
!129 = !{i64 2156488051}
!130 = !{i64 2156515510}
!131 = !{i64 2156515821}
!132 = !{!"auto-init"}
!133 = !{i64 2156488587}
!134 = !{i64 2156489413}
!135 = !{i64 2156489677}
!136 = !{i64 2156490431}
!137 = !{i64 2156490696}
!138 = !{i64 2156491156}
!139 = !{i64 2156491629}
!140 = !{i64 2156492064}
