; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_mtk.c_pt.bc'
source_filename = "../drivers/ata/ahci_mtk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.mtk_ahci_plat = type { ptr, ptr, ptr, ptr }

@__initcall__kmod_ahci_mtk__320_185_mtk_ahci_driver_init6 = internal global ptr @mtk_ahci_driver_init, section ".initcall6.init", align 4
@mtk_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_ahci_driver_exit = internal global ptr @mtk_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [47 x i8] c"ahci_mtk.description=MediaTek SATA AHCI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [35 x i8] c"ahci_mtk.file=drivers/ata/ahci_mtk\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [24 x i8] c"ahci_mtk.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ahci-mtk\00", [23 x i8] zeroinitializer }, align 32
@ahci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mtk-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahci_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_platform_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mediatek,phy-mode\00", [46 x i8] zeroinitializer }, align 32
@mtk_ahci_parse_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 113, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing phy-mode phandle\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_ahci_parse_property\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/ata/ahci_mtk.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_ahci_parse_property._entry_ptr = internal global ptr @mtk_ahci_parse_property._entry, section ".printk_index", align 4
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ports-implemented\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"axi\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"sw\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 65, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to assert AXI bus\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mtk_ahci_platform_resets\00", [39 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr = internal global ptr @mtk_ahci_platform_resets._entry, section ".printk_index", align 4
@mtk_ahci_platform_resets._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.4, i32 71, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to assert PHY digital part\0A\00", [61 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr.15 = internal global ptr @mtk_ahci_platform_resets._entry.13, section ".printk_index", align 4
@mtk_ahci_platform_resets._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.4, i32 77, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to assert PHY register part\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr.18 = internal global ptr @mtk_ahci_platform_resets._entry.16, section ".printk_index", align 4
@mtk_ahci_platform_resets._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.4, i32 83, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to deassert PHY register part\0A\00", [58 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr.21 = internal global ptr @mtk_ahci_platform_resets._entry.19, section ".printk_index", align 4
@mtk_ahci_platform_resets._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 89, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to deassert PHY digital part\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr.24 = internal global ptr @mtk_ahci_platform_resets._entry.22, section ".printk_index", align 4
@mtk_ahci_platform_resets._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.4, i32 95, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to deassert AXI bus\0A\00", [36 x i8] zeroinitializer }, align 32
@mtk_ahci_platform_resets._entry_ptr.27 = internal global ptr @mtk_ahci_platform_resets._entry.25, section ".printk_index", align 4
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"mtk_ahci_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 176, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 180, i32 11 }
@___asan_gen_.34 = private unnamed_addr constant [14 x i8] c"ahci_of_match\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 170, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [12 x i8] c"ahci_pm_ops\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 167, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"ahci_port_info\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 33, i32 35 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 40, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 109, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 113, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 121, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 51, i32 65 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 55, i32 64 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 59, i32 65 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 65, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 71, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 77, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 83, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 89, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [26 x i8] c"../drivers/ata/ahci_mtk.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 95, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_mtk_ahci_driver_exit, ptr @__initcall__kmod_ahci_mtk__320_185_mtk_ahci_driver_init6, ptr @mtk_ahci_driver_exit, ptr @mtk_ahci_parse_property._entry, ptr @mtk_ahci_parse_property._entry_ptr, ptr @mtk_ahci_platform_resets._entry, ptr @mtk_ahci_platform_resets._entry.13, ptr @mtk_ahci_platform_resets._entry.16, ptr @mtk_ahci_platform_resets._entry.19, ptr @mtk_ahci_platform_resets._entry.22, ptr @mtk_ahci_platform_resets._entry.25, ptr @mtk_ahci_platform_resets._entry_ptr, ptr @mtk_ahci_platform_resets._entry_ptr.15, ptr @mtk_ahci_platform_resets._entry_ptr.18, ptr @mtk_ahci_platform_resets._entry_ptr.21, ptr @mtk_ahci_platform_resets._entry_ptr.24, ptr @mtk_ahci_platform_resets._entry_ptr.27, ptr @mtk_ahci_driver, ptr @.str, ptr @ahci_of_match, ptr @ahci_pm_ops, ptr @ahci_port_info, ptr @ahci_platform_sht, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_parse_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_ahci_platform_resets._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_ahci_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_ahci_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call2, i32 0, i32 23
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %plat_data, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i45 = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef null) #4
  %tobool.not.i = icmp eq ptr %call.i45, null
  br i1 %tobool.not.i, label %if.end6.mtk_ahci_parse_property.exit.thread_crit_edge, label %if.then.i

if.end6.mtk_ahci_parse_property.exit.thread_crit_edge: ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_ahci_parse_property.exit.thread

if.then.i:                                        ; preds = %if.end6
  %call1.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %3, ptr noundef nonnull @.str.1) #4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %call.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %mtk_ahci_parse_property.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %call1.i, i32 noundef 20, i32 noundef -1073741824, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %mtk_ahci_parse_property.exit.thread

mtk_ahci_parse_property.exit.thread:              ; preds = %if.end.i, %if.end6.mtk_ahci_parse_property.exit.thread_crit_edge
  %force_port_map.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call2, i32 0, i32 1
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef %force_port_map.i, i32 noundef 1, i32 noundef 0) #4
  br label %if.end10

mtk_ahci_parse_property.exit:                     ; preds = %if.then.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %mtk_ahci_parse_property.exit.if.end10_crit_edge, label %mtk_ahci_parse_property.exit.cleanup_crit_edge

mtk_ahci_parse_property.exit.cleanup_crit_edge:   ; preds = %mtk_ahci_parse_property.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

mtk_ahci_parse_property.exit.if.end10_crit_edge:  ; preds = %mtk_ahci_parse_property.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %mtk_ahci_parse_property.exit.if.end10_crit_edge, %mtk_ahci_parse_property.exit.thread
  %8 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_data, align 4
  %call.i.i47 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %axi_rst.i = getelementptr inbounds %struct.mtk_ahci_plat, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %axi_rst.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i47, ptr %axi_rst.i, align 4
  %cmp.i48 = icmp eq ptr %call.i.i47, inttoptr (i32 -517 to ptr)
  br i1 %cmp.i48, label %if.end10.cleanup_crit_edge, label %if.end.i49

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i49:                                       ; preds = %if.end10
  %call.i99.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %sw_rst.i = getelementptr inbounds %struct.mtk_ahci_plat, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %sw_rst.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i99.i, ptr %sw_rst.i, align 4
  %cmp8.i = icmp eq ptr %call.i99.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp8.i, label %if.end.i49.cleanup_crit_edge, label %if.end12.i

if.end.i49.cleanup_crit_edge:                     ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12.i:                                       ; preds = %if.end.i49
  %call.i100.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #4
  %reg_rst.i = getelementptr inbounds %struct.mtk_ahci_plat, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %reg_rst.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i100.i, ptr %reg_rst.i, align 4
  %cmp16.i = icmp eq ptr %call.i100.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp16.i, label %if.end12.i.cleanup_crit_edge, label %if.end20.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20.i:                                       ; preds = %if.end12.i
  %13 = ptrtoint ptr %axi_rst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %axi_rst.i, align 4
  %call22.i = tail call i32 @reset_control_assert(ptr noundef %14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool.not.i50 = icmp eq i32 %call22.i, 0
  br i1 %tobool.not.i50, label %if.end24.i, label %if.end20.i.cleanup.sink.split.i_crit_edge

if.end20.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end24.i:                                       ; preds = %if.end20.i
  %15 = ptrtoint ptr %sw_rst.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw_rst.i, align 4
  %call26.i = tail call i32 @reset_control_assert(ptr noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %if.end24.i.cleanup.sink.split.i_crit_edge

if.end24.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end32.i:                                       ; preds = %if.end24.i
  %17 = ptrtoint ptr %reg_rst.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %reg_rst.i, align 4
  %call34.i = tail call i32 @reset_control_assert(ptr noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end40.i, label %if.end32.i.cleanup.sink.split.i_crit_edge

if.end32.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end40.i:                                       ; preds = %if.end32.i
  %19 = ptrtoint ptr %reg_rst.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_rst.i, align 4
  %call42.i = tail call i32 @reset_control_deassert(ptr noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %if.end48.i, label %if.end40.i.cleanup.sink.split.i_crit_edge

if.end40.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end48.i:                                       ; preds = %if.end40.i
  %21 = ptrtoint ptr %sw_rst.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw_rst.i, align 4
  %call50.i = tail call i32 @reset_control_deassert(ptr noundef %22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end56.i, label %if.end48.i.cleanup.sink.split.i_crit_edge

if.end48.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

if.end56.i:                                       ; preds = %if.end48.i
  %23 = ptrtoint ptr %axi_rst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %axi_rst.i, align 4
  %call58.i = tail call i32 @reset_control_deassert(ptr noundef %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %if.end14, label %if.end56.i.cleanup.sink.split.i_crit_edge

if.end56.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end56.i.cleanup.sink.split.i_crit_edge, %if.end48.i.cleanup.sink.split.i_crit_edge, %if.end40.i.cleanup.sink.split.i_crit_edge, %if.end32.i.cleanup.sink.split.i_crit_edge, %if.end24.i.cleanup.sink.split.i_crit_edge, %if.end20.i.cleanup.sink.split.i_crit_edge
  %.str.26.sink.i = phi ptr [ @.str.11, %if.end20.i.cleanup.sink.split.i_crit_edge ], [ @.str.14, %if.end24.i.cleanup.sink.split.i_crit_edge ], [ @.str.17, %if.end32.i.cleanup.sink.split.i_crit_edge ], [ @.str.20, %if.end40.i.cleanup.sink.split.i_crit_edge ], [ @.str.23, %if.end48.i.cleanup.sink.split.i_crit_edge ], [ @.str.26, %if.end56.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call22.i, %if.end20.i.cleanup.sink.split.i_crit_edge ], [ %call26.i, %if.end24.i.cleanup.sink.split.i_crit_edge ], [ %call34.i, %if.end32.i.cleanup.sink.split.i_crit_edge ], [ %call42.i, %if.end40.i.cleanup.sink.split.i_crit_edge ], [ %call50.i, %if.end48.i.cleanup.sink.split.i_crit_edge ], [ %call58.i, %if.end56.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.26.sink.i) #7
  br label %cleanup

if.end14:                                         ; preds = %if.end56.i
  %call15 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  %call19 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call2, ptr noundef nonnull @ahci_port_info, ptr noundef nonnull @ahci_platform_sht) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %disable_resources

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

disable_resources:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @ahci_platform_disable_resources(ptr noundef %call2) #4
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %cleanup.sink.split.i, %if.end12.i.cleanup_crit_edge, %if.end.i49.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %mtk_ahci_parse_property.exit.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %call19, %disable_resources ], [ -12, %entry.cleanup_crit_edge ], [ %7, %mtk_ahci_parse_property.exit.cleanup_crit_edge ], [ %call15, %if.end14.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ -517, %if.end12.i.cleanup_crit_edge ], [ -517, %if.end.i49.cleanup_crit_edge ], [ -517, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

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
declare dso_local i32 @ahci_platform_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_ahci_mtk__320_185_mtk_ahci_driver_init6, !1, !"__initcall__kmod_ahci_mtk__320_185_mtk_ahci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_mtk.c", i32 185, i32 1}
!2 = !{ptr @__exitcall_mtk_ahci_driver_exit, !1, !"__exitcall_mtk_ahci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_mtk.c", i32 187, i32 1}
!5 = !{ptr @__UNIQUE_ID_file322, !6, !"__UNIQUE_ID_file322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_mtk.c", i32 188, i32 1}
!7 = !{ptr @__UNIQUE_ID_license323, !6, !"__UNIQUE_ID_license323", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/ata/ahci_mtk.c", i32 180, i32 11}
!10 = !{ptr @mtk_ahci_driver, !11, !"mtk_ahci_driver", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_mtk.c", i32 176, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_mtk.c", i32 109, i32 27}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_mtk.c", i32 113, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_ahci_parse_property._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_ahci_parse_property._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_mtk.c", i32 121, i32 27}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/ahci_mtk.c", i32 51, i32 65}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_mtk.c", i32 55, i32 64}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/ahci_mtk.c", i32 59, i32 65}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_mtk.c", i32 65, i32 3}
!32 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @mtk_ahci_platform_resets._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @mtk_ahci_platform_resets._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/ata/ahci_mtk.c", i32 71, i32 3}
!37 = !{ptr @mtk_ahci_platform_resets._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @mtk_ahci_platform_resets._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ata/ahci_mtk.c", i32 77, i32 3}
!41 = !{ptr @mtk_ahci_platform_resets._entry.16, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @mtk_ahci_platform_resets._entry_ptr.18, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/ata/ahci_mtk.c", i32 83, i32 3}
!45 = !{ptr @mtk_ahci_platform_resets._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_ahci_platform_resets._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/ahci_mtk.c", i32 89, i32 3}
!49 = !{ptr @mtk_ahci_platform_resets._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mtk_ahci_platform_resets._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/ata/ahci_mtk.c", i32 95, i32 3}
!53 = !{ptr @mtk_ahci_platform_resets._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @mtk_ahci_platform_resets._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @ahci_port_info, !56, !"ahci_port_info", i1 false, i1 false}
!56 = !{!"../drivers/ata/ahci_mtk.c", i32 33, i32 35}
!57 = !{ptr @ahci_platform_sht, !58, !"ahci_platform_sht", i1 false, i1 false}
!58 = !{!"../drivers/ata/ahci_mtk.c", i32 40, i32 34}
!59 = !{ptr @ahci_of_match, !60, !"ahci_of_match", i1 false, i1 false}
!60 = !{!"../drivers/ata/ahci_mtk.c", i32 170, i32 34}
!61 = !{ptr @ahci_pm_ops, !62, !"ahci_pm_ops", i1 false, i1 false}
!62 = !{!"../drivers/ata/ahci_mtk.c", i32 167, i32 8}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
