; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_da850.c_pt.bc'
source_filename = "../drivers/ata/ahci_da850.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@__initcall__kmod_ahci_da850__320_257_ahci_da850_driver_init6 = internal global ptr @ahci_da850_driver_init, section ".initcall6.init", align 4
@ahci_da850_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ahci_da850_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_da850_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_da850_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ahci_da850_driver_exit = internal global ptr @ahci_da850_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [63 x i8] c"ahci_da850.description=DaVinci DA850 AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [71 x i8] c"ahci_da850.author=Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [39 x i8] c"ahci_da850.file=drivers/ata/ahci_da850\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [23 x i8] c"ahci_da850.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ahci_da850\00", [21 x i8] zeroinitializer }, align 32
@ahci_da850_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da850-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahci_da850_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr @ahci_platform_suspend, ptr @ahci_platform_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@ahci_da850_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 197, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to obtain the reference clock\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ahci_da850_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/ata/ahci_da850.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ahci_da850_probe._entry_ptr = internal global ptr @ahci_da850_probe._entry, section ".printk_index", align 4
@ahci_da850_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 206, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"invalid REFCLK multiplier value: 0x%x\00", [58 x i8] zeroinitializer }, align 32
@ahci_da850_probe._entry_ptr.10 = internal global ptr @ahci_da850_probe._entry.8, section ".printk_index", align 4
@ahci_da850_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_da850_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"refclk must be divisible by 10\00", [33 x i8] zeroinitializer }, align 32
@ahci_da850_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_da850_softreset, ptr @ahci_da850_hardreset, ptr null, ptr null, ptr null, ptr @ahci_da850_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_platform_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 50, i64 60, i64 80, i64 100, i64 120, i64 125, i64 150, i64 200, i64 250]
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"ahci_da850_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 248, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 252, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [20 x i8] c"ahci_da850_of_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 242, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"ahci_da850_pm_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 239, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 182, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 195, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 197, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 206, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"ahci_da850_port_info\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 149, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 56, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"ahci_da850_port_ops\00", align 1
@___asan_gen_.64 = private constant [28 x i8] c"../drivers/ata/ahci_da850.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 138, i32 35 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ahci_da850_driver_exit, ptr @__initcall__kmod_ahci_da850__320_257_ahci_da850_driver_init6, ptr @ahci_da850_driver_exit, ptr @ahci_da850_probe._entry, ptr @ahci_da850_probe._entry.8, ptr @ahci_da850_probe._entry_ptr, ptr @ahci_da850_probe._entry_ptr.10, ptr @ahci_da850_driver, ptr @.str, ptr @ahci_da850_of_match, ptr @ahci_da850_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @ahci_da850_port_info, ptr @ahci_platform_sht, ptr @.str.11, ptr @ahci_da850_port_ops], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_da850_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_da850_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ahci_da850_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahci_da850_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ahci_da850_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_da850_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %clks = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 16
  %1 = ptrtoint ptr %clks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clks, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %call5 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #6
  %cmp.i86 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %clks to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call5, ptr %clks, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end.if.end12_crit_edge
  %arrayidx14 = getelementptr %struct.ahci_host_priv, ptr %call, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.then16, label %if.end12.if.end23_crit_edge

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then16:                                        ; preds = %if.end12
  %call17 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #6
  %cmp.i87 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %do.end, label %if.end20

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end20:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call17, ptr %arrayidx14, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end20, %if.end12.if.end23_crit_edge
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  %call26 = tail call i32 @clk_get_rate(ptr noundef %9) #6
  %call26.frozen = freeze i32 %call26
  %div.i = udiv i32 %call26.frozen, 10
  %10 = mul i32 %div.i, 10
  %rem.i.decomposed = sub i32 %call26.frozen, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp.not.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp.not.i, label %if.end23.if.end.i_crit_edge, label %do.end.i, !prof !51

if.end23.if.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 56, i32 noundef 9, ptr noundef nonnull @.str.11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end23.if.end.i_crit_edge
  %div19.i = udiv i32 1500000000, %div.i
  %11 = zext i32 %div19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div19.i, label %do.end31 [
    i32 50, label %if.end.i.if.end32_crit_edge
    i32 60, label %sw.bb20.i
    i32 80, label %sw.bb21.i
    i32 100, label %sw.bb22.i
    i32 120, label %sw.bb23.i
    i32 125, label %sw.bb24.i
    i32 150, label %sw.bb25.i
    i32 200, label %sw.bb26.i
    i32 250, label %sw.bb27.i
  ]

if.end.i.if.end32_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb20.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb21.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb22.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb23.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb24.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb25.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb26.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

sw.bb27.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

do.end31:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef 0) #9
  br label %cleanup

if.end32:                                         ; preds = %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %if.end.i.if.end32_crit_edge
  %retval.0.i.ph = phi i32 [ -2145898431, %if.end.i.if.end32_crit_edge ], [ -2145898430, %sw.bb20.i ], [ -2145898428, %sw.bb21.i ], [ -2145898427, %sw.bb22.i ], [ -2145898426, %sw.bb23.i ], [ -2145898425, %sw.bb24.i ], [ -2145898424, %sw.bb25.i ], [ -2145898423, %sw.bb26.i ], [ -2145898422, %sw.bb27.i ]
  %call33 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %call37 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #6
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.disable_resources_crit_edge, label %if.end40

if.end36.disable_resources_crit_edge:             ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

if.end40:                                         ; preds = %if.end36
  %12 = ptrtoint ptr %call37 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call37, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call37, i32 0, i32 1
  %14 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %13
  %add.i = add i32 %sub.i, %15
  %call42 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %13, i32 noundef %add.i) #6
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end40.disable_resources_crit_edge, label %if.end45

if.end40.disable_resources_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

if.end45:                                         ; preds = %if.end40
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 3
  %16 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mmio, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %call42) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %19 = and i32 %18, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %call42, i32 %19) #6, !srcloc !55
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %20 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.ph) #6
  %add.ptr.i = getelementptr i8, ptr %17, i32 376
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %20) #6, !srcloc !55
  %call46 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call, ptr noundef nonnull @ahci_da850_port_info, ptr noundef nonnull @ahci_platform_sht) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %if.end45.disable_resources_crit_edge

if.end45.disable_resources_crit_edge:             ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_resources

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

disable_resources:                                ; preds = %if.end45.disable_resources_crit_edge, %if.end40.disable_resources_crit_edge, %if.end36.disable_resources_crit_edge
  %rc.0 = phi i32 [ %call46, %if.end45.disable_resources_crit_edge ], [ -19, %if.end36.disable_resources_crit_edge ], [ -12, %if.end40.disable_resources_crit_edge ]
  tail call void @ahci_platform_disable_resources(ptr noundef %call) #6
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end45.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %do.end31, %do.end, %if.then7, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ -22, %do.end31 ], [ %rc.0, %disable_resources ], [ -19, %do.end ], [ %3, %if.then7 ], [ %call33, %if.end32.cleanup_crit_edge ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_da850_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %link1.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 25
  %cmp.i.i = icmp eq ptr %link1.i.i, %link
  br i1 %cmp.i.i, label %land.lhs.true.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i

land.lhs.true.i.sata_srst_pmp.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

ata_is_host_link.exit.i:                          ; preds = %land.lhs.true.i
  %slave_link.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 26
  %4 = ptrtoint ptr %slave_link.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slave_link.i.i, align 128
  %cmp3.i.i = icmp eq ptr %5, %link
  br i1 %cmp3.i.i, label %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, label %ata_is_host_link.exit.i.if.end.i_crit_edge

ata_is_host_link.exit.i.if.end.i_crit_edge:       ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge: ; preds = %ata_is_host_link.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sata_srst_pmp.exit

if.end.i:                                         ; preds = %ata_is_host_link.exit.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %pmp.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %6 = ptrtoint ptr %pmp.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmp.i, align 4
  br label %sata_srst_pmp.exit

sata_srst_pmp.exit:                               ; preds = %if.end.i, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge
  %retval.0.i = phi i32 [ %7, %if.end.i ], [ 15, %ata_is_host_link.exit.i.sata_srst_pmp.exit_crit_edge ], [ 15, %land.lhs.true.i.sata_srst_pmp.exit_crit_edge ]
  %call1 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef %retval.0.i, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp ne i32 %retval.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call1)
  %cmp = icmp eq i32 %call1, -16
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then, label %sata_srst_pmp.exit.cleanup_crit_edge

sata_srst_pmp.exit.cleanup_crit_edge:             ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %sata_srst_pmp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @ahci_do_softreset(ptr noundef %link, ptr noundef %class, i32 noundef 0, i32 noundef %deadline, ptr noundef nonnull @ahci_check_ready) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %sata_srst_pmp.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call1, %sata_srst_pmp.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_da850_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline) #2 align 64 {
entry:
  %online = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #6
  %0 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %online, align 1, !annotation !57
  %call = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  %1 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %online, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.not = icmp eq i8 %2, 0
  br i1 %tobool.not.not, label %do.body.1, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.1:                                        ; preds = %entry
  %call.1 = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  %3 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %online, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.1.not = icmp eq i8 %4, 0
  br i1 %tobool.not.1.not, label %do.body.2, label %do.body.1.cleanup_crit_edge

do.body.1.cleanup_crit_edge:                      ; preds = %do.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.2:                                        ; preds = %do.body.1
  %call.2 = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  %5 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %online, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.2.not = icmp eq i8 %6, 0
  br i1 %tobool.not.2.not, label %do.body.3, label %do.body.2.cleanup_crit_edge

do.body.2.cleanup_crit_edge:                      ; preds = %do.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.3:                                        ; preds = %do.body.2
  %call.3 = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  %7 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %online, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.3.not = icmp eq i8 %8, 0
  br i1 %tobool.not.3.not, label %do.body.4, label %do.body.3.cleanup_crit_edge

do.body.3.cleanup_crit_edge:                      ; preds = %do.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.4:                                        ; preds = %do.body.3
  %call.4 = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  %9 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %online, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.4.not = icmp eq i8 %10, 0
  br i1 %tobool.not.4.not, label %do.body.5, label %do.body.4.cleanup_crit_edge

do.body.4.cleanup_crit_edge:                      ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.5:                                        ; preds = %do.body.4
  call void @__sanitizer_cov_trace_pc() #8
  %call.5 = call i32 @ahci_do_hardreset(ptr noundef %link, ptr noundef %class, i32 noundef %deadline, ptr noundef nonnull %online) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body.5, %do.body.4.cleanup_crit_edge, %do.body.3.cleanup_crit_edge, %do.body.2.cleanup_crit_edge, %do.body.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %call.lcssa = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.1, %do.body.1.cleanup_crit_edge ], [ %call.2, %do.body.2.cleanup_crit_edge ], [ %call.3, %do.body.3.cleanup_crit_edge ], [ %call.4, %do.body.4.cleanup_crit_edge ], [ %call.5, %do.body.5 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #6
  ret i32 %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_do_softreset(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_do_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_ahci_da850__320_257_ahci_da850_driver_init6, !1, !"__initcall__kmod_ahci_da850__320_257_ahci_da850_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_da850.c", i32 257, i32 1}
!2 = !{ptr @__exitcall_ahci_da850_driver_exit, !1, !"__exitcall_ahci_da850_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_da850.c", i32 259, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_da850.c", i32 260, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_da850.c", i32 261, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_da850.c", i32 252, i32 11}
!12 = !{ptr @ahci_da850_driver, !13, !"ahci_da850_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_da850.c", i32 248, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_da850.c", i32 182, i32 22}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_da850.c", i32 195, i32 22}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_da850.c", i32 197, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ahci_da850_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @ahci_da850_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_da850.c", i32 206, i32 3}
!28 = !{ptr @ahci_da850_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ahci_da850_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_da850.c", i32 56, i32 2}
!32 = !{ptr @ahci_da850_port_info, !33, !"ahci_da850_port_info", i1 false, i1 false}
!33 = !{!"../drivers/ata/ahci_da850.c", i32 149, i32 35}
!34 = !{ptr @ahci_da850_port_ops, !35, !"ahci_da850_port_ops", i1 false, i1 false}
!35 = !{!"../drivers/ata/ahci_da850.c", i32 138, i32 35}
!36 = !{ptr @ahci_platform_sht, !37, !"ahci_platform_sht", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_da850.c", i32 156, i32 34}
!38 = !{ptr @ahci_da850_of_match, !39, !"ahci_da850_of_match", i1 false, i1 false}
!39 = !{!"../drivers/ata/ahci_da850.c", i32 242, i32 34}
!40 = !{ptr @ahci_da850_pm_ops, !41, !"ahci_da850_pm_ops", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_da850.c", i32 239, i32 8}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 4953049}
!53 = !{i64 2156381819}
!54 = !{i64 2156382100}
!55 = !{i64 4952631}
!56 = !{i64 2156382571}
!57 = !{!"auto-init"}
!58 = !{i8 0, i8 2}
