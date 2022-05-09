; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_dm816.c_pt.bc'
source_filename = "../drivers/ata/ahci_dm816.c"
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
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.92, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.92 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }

@__initcall__kmod_ahci_dm816__320_192_ahci_dm816_driver_init6 = internal global ptr @ahci_dm816_driver_init, section ".initcall6.init", align 4
@ahci_dm816_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ahci_dm816_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_dm816_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_dm816_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ahci_dm816_driver_exit = internal global ptr @ahci_dm816_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [63 x i8] c"ahci_dm816.description=DaVinci DM816 AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [66 x i8] c"ahci_dm816.author=Bartosz Golaszewski <bgolaszewski@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [39 x i8] c"ahci_dm816.file=drivers/ata/ahci_dm816\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [23 x i8] c"ahci_dm816.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ahci-dm816\00", [21 x i8] zeroinitializer }, align 32
@ahci_dm816_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahci_dm816_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_dm816_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_dm816_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_dm816_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ahci_dm816_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 73, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"reference clock not supplied\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ahci_dm816_phy_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/ahci_dm816.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_dm816_phy_init._entry_ptr = internal global ptr @ahci_dm816_phy_init._entry, section ".printk_index", align 4
@ahci_dm816_phy_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 79, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"reference clock rate must be divisible by 100\0A\00", [49 x i8] zeroinitializer }, align 32
@ahci_dm816_phy_init._entry_ptr.8 = internal global ptr @ahci_dm816_phy_init._entry.6, section ".printk_index", align 4
@ahci_dm816_phy_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"can't calculate the MPY bits value\0A\00", [60 x i8] zeroinitializer }, align 32
@ahci_dm816_phy_init._entry_ptr.11 = internal global ptr @ahci_dm816_phy_init._entry.9, section ".printk_index", align 4
@ahci_dm816_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_dm816_softreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_platform_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [16 x i64] [i64 14, i64 32, i64 400, i64 500, i64 600, i64 800, i64 825, i64 1000, i64 1200, i64 1250, i64 1500, i64 1600, i64 1650, i64 2000, i64 2200, i64 2500]
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"ahci_dm816_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 183, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 187, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"ahci_dm816_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 177, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"ahci_dm816_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 173, i32 8 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"ahci_dm816_port_info\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 130, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [24 x i8] c"ahci_dm816_platform_sht\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 137, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 73, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 79, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 85, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"ahci_dm816_port_ops\00", align 1
@___asan_gen_.61 = private constant [28 x i8] c"../drivers/ata/ahci_dm816.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 125, i32 35 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ahci_dm816_driver_exit, ptr @__initcall__kmod_ahci_dm816__320_192_ahci_dm816_driver_init6, ptr @ahci_dm816_driver_exit, ptr @ahci_dm816_phy_init._entry, ptr @ahci_dm816_phy_init._entry.6, ptr @ahci_dm816_phy_init._entry.9, ptr @ahci_dm816_phy_init._entry_ptr, ptr @ahci_dm816_phy_init._entry_ptr.11, ptr @ahci_dm816_phy_init._entry_ptr.8, ptr @ahci_dm816_driver, ptr @.str, ptr @ahci_dm816_of_match, ptr @ahci_dm816_pm_ops, ptr @ahci_dm816_port_info, ptr @ahci_dm816_platform_sht, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @ahci_dm816_port_ops], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_phy_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_phy_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_dm816_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_dm816_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ahci_dm816_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahci_dm816_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ahci_dm816_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_dm816_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx.i = getelementptr %struct.ahci_host_priv, ptr %call, i32 0, i32 16, i32 1
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end6.disable_resources.sink.split_crit_edge, label %if.end.i

if.end6.disable_resources.sink.split_crit_edge:   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources.sink.split

if.end.i:                                         ; preds = %if.end6
  %call.i = tail call i32 @clk_get_rate(ptr noundef nonnull %2) #5
  %call.i.frozen = freeze i32 %call.i
  %div.i.i = udiv i32 %call.i.frozen, 100
  %3 = mul i32 %div.i.i, 100
  %rem.i.decomposed = sub i32 %call.i.frozen, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.not.i, label %if.end7.i, label %if.end.i.disable_resources.sink.split_crit_edge

if.end.i.disable_resources.sink.split_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources.sink.split

if.end7.i:                                        ; preds = %if.end.i
  %div1.i.i = udiv i32 1500000000, %div.i.i
  %4 = zext i32 %div1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div1.i.i, label %if.end7.i.disable_resources.sink.split_crit_edge [
    i32 400, label %if.end7.i.if.end10_crit_edge
    i32 500, label %cleanup.fold.split.i.i
    i32 600, label %cleanup.fold.split8.i.i
    i32 800, label %cleanup.fold.split9.i.i
    i32 825, label %cleanup.fold.split10.i.i
    i32 1000, label %cleanup.fold.split11.i.i
    i32 1200, label %cleanup.fold.split12.i.i
    i32 1250, label %cleanup.fold.split13.i.i
    i32 1500, label %cleanup.fold.split14.i.i
    i32 1600, label %cleanup.fold.split15.i.i
    i32 1650, label %cleanup.fold.split16.i.i
    i32 2000, label %cleanup.fold.split17.i.i
    i32 2200, label %cleanup.fold.split18.i.i
    i32 2500, label %cleanup.fold.split19.i.i
  ]

if.end7.i.if.end10_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end7.i.disable_resources.sink.split_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources.sink.split

cleanup.fold.split.i.i:                           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split8.i.i:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split9.i.i:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split10.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split11.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split12.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split13.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split14.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split15.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split16.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split17.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split18.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cleanup.fold.split19.i.i:                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.end10:                                         ; preds = %cleanup.fold.split19.i.i, %cleanup.fold.split18.i.i, %cleanup.fold.split17.i.i, %cleanup.fold.split16.i.i, %cleanup.fold.split15.i.i, %cleanup.fold.split14.i.i, %cleanup.fold.split13.i.i, %cleanup.fold.split12.i.i, %cleanup.fold.split11.i.i, %cleanup.fold.split10.i.i, %cleanup.fold.split9.i.i, %cleanup.fold.split8.i.i, %cleanup.fold.split.i.i, %if.end7.i.if.end10_crit_edge
  %retval.0.i.ph.i = phi i32 [ 25268251, %cleanup.fold.split19.i.i ], [ 25268249, %cleanup.fold.split18.i.i ], [ 25268247, %cleanup.fold.split17.i.i ], [ 25268245, %cleanup.fold.split16.i.i ], [ 25268243, %cleanup.fold.split15.i.i ], [ 25268241, %cleanup.fold.split14.i.i ], [ 25268239, %cleanup.fold.split13.i.i ], [ 25268237, %cleanup.fold.split12.i.i ], [ 25268235, %cleanup.fold.split11.i.i ], [ 25268233, %cleanup.fold.split10.i.i ], [ 25268231, %cleanup.fold.split9.i.i ], [ 25268229, %cleanup.fold.split8.i.i ], [ 25268227, %cleanup.fold.split.i.i ], [ 25268225, %if.end7.i.if.end10_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.ph.i) #5
  %mmio.i = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %5) #5, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mmio.i, align 4
  %add.ptr26.i = getelementptr i8, ptr %9, i32 504
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26.i, i32 9470209) #5, !srcloc !52
  %call11 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call, ptr noundef nonnull @ahci_dm816_port_info, ptr noundef nonnull @ahci_dm816_platform_sht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end10.disable_resources_crit_edge

if.end10.disable_resources_crit_edge:             ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

disable_resources.sink.split:                     ; preds = %if.end7.i.disable_resources.sink.split_crit_edge, %if.end.i.disable_resources.sink.split_crit_edge, %if.end6.disable_resources.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %if.end6.disable_resources.sink.split_crit_edge ], [ @.str.7, %if.end.i.disable_resources.sink.split_crit_edge ], [ @.str.10, %if.end7.i.disable_resources.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.1.sink) #8
  br label %disable_resources

disable_resources:                                ; preds = %disable_resources.sink.split, %if.end10.disable_resources_crit_edge
  %rc.0 = phi i32 [ %call11, %if.end10.disable_resources_crit_edge ], [ -22, %disable_resources.sink.split ]
  tail call void @ahci_platform_disable_resources(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.0, %disable_resources ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_dm816_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %flags.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.if.end.i_crit_edge, label %land.lhs.true.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %call1 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1)
  %cmp = icmp eq i32 %call1, -16
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %sata_srst_pmp.exit.cleanup_crit_edge

sata_srst_pmp.exit.cleanup_crit_edge:             ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef 0, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sata_srst_pmp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call1, %sata_srst_pmp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_do_softreset(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

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
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_ahci_dm816__320_192_ahci_dm816_driver_init6, !1, !"__initcall__kmod_ahci_dm816__320_192_ahci_dm816_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_dm816.c", i32 192, i32 1}
!2 = !{ptr @__exitcall_ahci_dm816_driver_exit, !1, !"__exitcall_ahci_dm816_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_dm816.c", i32 194, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_dm816.c", i32 195, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_dm816.c", i32 196, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_dm816.c", i32 187, i32 11}
!12 = !{ptr @ahci_dm816_driver, !13, !"ahci_dm816_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_dm816.c", i32 183, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_dm816.c", i32 73, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ahci_dm816_phy_init._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ahci_dm816_phy_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_dm816.c", i32 79, i32 3}
!24 = !{ptr @ahci_dm816_phy_init._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @ahci_dm816_phy_init._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_dm816.c", i32 85, i32 3}
!28 = !{ptr @ahci_dm816_phy_init._entry.9, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ahci_dm816_phy_init._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"pll_mpy_table", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_dm816.c", i32 32, i32 28}
!32 = !{ptr @ahci_dm816_port_info, !33, !"ahci_dm816_port_info", i1 false, i1 false}
!33 = !{!"../drivers/ata/ahci_dm816.c", i32 130, i32 35}
!34 = !{ptr @ahci_dm816_port_ops, !35, !"ahci_dm816_port_ops", i1 false, i1 false}
!35 = !{!"../drivers/ata/ahci_dm816.c", i32 125, i32 35}
!36 = !{ptr @ahci_dm816_platform_sht, !37, !"ahci_dm816_platform_sht", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_dm816.c", i32 137, i32 34}
!38 = !{ptr @ahci_dm816_of_match, !39, !"ahci_dm816_of_match", i1 false, i1 false}
!39 = !{!"../drivers/ata/ahci_dm816.c", i32 177, i32 34}
!40 = !{ptr @ahci_dm816_pm_ops, !41, !"ahci_dm816_pm_ops", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_dm816.c", i32 173, i32 8}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2156385799}
!52 = !{i64 4951242}
!53 = !{i64 2156386254}
