; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_qoriq.c_pt.bc'
source_filename = "../drivers/ata/ahci_qoriq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.acpi_device_id = type { [9 x i8], i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ahci_qoriq_priv = type { ptr, i32, ptr, i8 }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.92, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.92 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.ahci_port_priv = type { ptr, ptr, i32, ptr, i32, ptr, i32, i8, %struct.spinlock, i32, i8, i8, i32, [8 x %struct.ahci_em_priv], ptr }
%struct.ahci_em_priv = type { i32, %struct.timer_list, i32, i32, i32, ptr }

@__initcall__kmod_ahci_qoriq__320_370_ahci_qoriq_driver_init6 = internal global ptr @ahci_qoriq_driver_init, section ".initcall6.init", align 4
@ahci_qoriq_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ahci_qoriq_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_qoriq_of_match, ptr @ahci_qoriq_acpi_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_qoriq_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ahci_qoriq_driver_exit = internal global ptr @ahci_qoriq_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [65 x i8] c"ahci_qoriq.description=Freescale QorIQ AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [62 x i8] c"ahci_qoriq.author=Tang Yuantian <Yuantian.Tang@freescale.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [39 x i8] c"ahci_qoriq.file=drivers/ata/ahci_qoriq\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [23 x i8] c"ahci_qoriq.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ahci-qoriq\00", [21 x i8] zeroinitializer }, align 32
@ahci_qoriq_of_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1043a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2080a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1046a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1088a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls2088a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,lx2160a-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@ahci_qoriq_acpi_match = internal constant { [2 x %struct.acpi_device_id], [48 x i8] } { [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [9 x i8] c"NXP0004\00\00", i32 7, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ahci_qoriq_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ahci_platform_suspend, ptr @ahci_qoriq_resume, ptr @ahci_platform_suspend, ptr @ahci_qoriq_resume, ptr @ahci_platform_suspend, ptr @ahci_qoriq_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ecc_initialized = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata-ecc\00", [23 x i8] zeroinitializer }, align 32
@ahci_qoriq_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 394370, i32 0, i32 31, i32 0, i32 127, ptr @ahci_qoriq_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_qoriq_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ahci_qoriq_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_qoriq_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"ahci_qoriq_driver\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 360, i32 31 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 364, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [20 x i8] c"ahci_qoriq_of_match\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 71, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [22 x i8] c"ahci_qoriq_acpi_match\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 84, i32 36 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"ahci_qoriq_pm_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 357, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant [16 x i8] c"ecc_initialized\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 290, i32 10 }
@___asan_gen_.21 = private unnamed_addr constant [21 x i8] c"ahci_qoriq_port_info\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 155, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"ahci_qoriq_sht\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 162, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"ahci_qoriq_ops\00", align 1
@___asan_gen_.28 = private constant [28 x i8] c"../drivers/ata/ahci_qoriq.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 150, i32 35 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_ahci_qoriq_driver_exit, ptr @__initcall__kmod_ahci_qoriq__320_370_ahci_qoriq_driver_init6, ptr @ahci_qoriq_driver_exit, ptr @ahci_qoriq_driver, ptr @.str, ptr @ahci_qoriq_of_match, ptr @ahci_qoriq_acpi_match, ptr @ahci_qoriq_pm_ops, ptr @ecc_initialized, ptr @.str.1, ptr @ahci_qoriq_port_info, ptr @ahci_qoriq_sht, ptr @ahci_qoriq_ops], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_of_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_acpi_match to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ecc_initialized to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_qoriq_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_qoriq_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ahci_qoriq_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ahci_qoriq_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ahci_qoriq_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_qoriq_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @of_match_node(ptr noundef nonnull @ahci_qoriq_of_match, ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then16.critedge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16.critedge:                               ; preds = %if.end10
  %data = getelementptr inbounds %struct.of_device_id, ptr %call5, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %5 = ptrtoint ptr %4 to i32
  %type = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %type, align 4
  %.b87 = load i1, ptr @ecc_initialized, align 1
  br i1 %.b87, label %if.then16.critedge.if.end35_crit_edge, label %if.then23, !prof !39

if.then16.critedge.if.end35_crit_edge:            ; preds = %if.then16.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then23:                                        ; preds = %if.then16.critedge
  %call24 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #5
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.if.end35_crit_edge, label %if.then26

if.then23.if.end35_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then26:                                        ; preds = %if.then23
  %call27 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call24) #5
  %ecc_addr = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %ecc_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %ecc_addr, align 4
  %cmp.i88 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then30, label %if.then26.if.end35_crit_edge

if.then26.if.end35_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then30:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.then26.if.end35_crit_edge, %if.then23.if.end35_crit_edge, %if.then16.critedge.if.end35_crit_edge
  %call37 = tail call i32 @device_get_dma_attr(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call37)
  %cmp = icmp eq i32 %call37, 2
  br i1 %cmp, label %if.then38, label %if.end35.if.end39_crit_edge

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %is_dmacoherent = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %call.i, i32 0, i32 3
  %9 = ptrtoint ptr %is_dmacoherent to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %is_dmacoherent, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %if.end35.if.end39_crit_edge
  %call40 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call, i32 0, i32 23
  %10 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %plat_data, align 4
  %call44 = tail call fastcc i32 @ahci_qoriq_phy_init(ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.disable_resources_crit_edge

if.end43.disable_resources_crit_edge:             ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources

if.end47:                                         ; preds = %if.end43
  %call48 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call, ptr noundef nonnull @ahci_qoriq_port_info, ptr noundef nonnull @ahci_qoriq_sht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end47.cleanup_crit_edge, label %if.end47.disable_resources_crit_edge

if.end47.disable_resources_crit_edge:             ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

disable_resources:                                ; preds = %if.end47.disable_resources_crit_edge, %if.end43.disable_resources_crit_edge
  %rc.0 = phi i32 [ %call44, %if.end43.disable_resources_crit_edge ], [ %call48, %if.end47.disable_resources_crit_edge ]
  tail call void @ahci_platform_disable_resources(ptr noundef %call) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end47.cleanup_crit_edge, %if.end39.cleanup_crit_edge, %if.then30, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %8, %if.then30 ], [ %rc.0, %disable_resources ], [ -19, %if.end.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ %call40, %if.end39.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ahci_qoriq_phy_init(ptr nocapture noundef readonly %hpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %0 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_data, align 4
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %2 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio, align 4
  %type = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb38
    i32 3, label %do.body83
    i32 4, label %sw.bb107
    i32 1, label %entry.sw.bb156_crit_edge
    i32 5, label %entry.sw.bb156_crit_edge299
    i32 7, label %entry.sw.bb156_crit_edge300
    i32 6, label %do.body206
  ]

entry.sw.bb156_crit_edge300:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb156

entry.sw.bb156_crit_edge299:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb156

entry.sw.bb156_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb156

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ecc_addr = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %ecc_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ecc_addr, align 4
  %tobool.not = icmp eq ptr %8, null
  %.b290297 = load i1, ptr @ecc_initialized, align 1
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %sw.bb
  br i1 %.b290297, label %lor.lhs.false.do.body8_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.do.body8_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

land.lhs.true:                                    ; preds = %sw.bb
  br i1 %.b290297, label %land.lhs.true.do.body8_crit_edge, label %do.body

land.lhs.true.do.body8_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body8

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %ecc_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ecc_addr, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 512) #5, !srcloc !41
  br label %do.body8

do.body8:                                         ; preds = %do.body, %land.lhs.true.do.body8_crit_edge, %lor.lhs.false.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %add.ptr = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !43
  tail call void @arm_heavy_mb() #5
  %add.ptr14 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 338958376) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %add.ptr18 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 101582862) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %add.ptr22 = getelementptr i8, ptr %3, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 185092614) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %add.ptr26 = getelementptr i8, ptr %3, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 1885644842) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %add.ptr30 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 687865864) #5, !srcloc !41
  %is_dmacoherent = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %is_dmacoherent to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_dmacoherent, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool31.not = icmp eq i8 %12, 0
  br i1 %tobool31.not, label %do.body8.sw.epilog_crit_edge, label %do.body33

do.body8.sw.epilog_crit_edge:                     ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body33:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %add.ptr36 = getelementptr i8, ptr %3, i32 192
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 -193) #5, !srcloc !41
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  %ecc_addr39 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %ecc_addr39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ecc_addr39, align 4
  %tobool40.not = icmp eq ptr %14, null
  %.b288295 = load i1, ptr @ecc_initialized, align 1
  br i1 %tobool40.not, label %lor.lhs.false41, label %land.lhs.true47

lor.lhs.false41:                                  ; preds = %sw.bb38
  br i1 %.b288295, label %lor.lhs.false41.do.body58_crit_edge, label %lor.lhs.false41.cleanup_crit_edge

lor.lhs.false41.cleanup_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false41.do.body58_crit_edge:              ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

land.lhs.true47:                                  ; preds = %sw.bb38
  br i1 %.b288295, label %land.lhs.true47.do.body58_crit_edge, label %do.body50

land.lhs.true47.do.body58_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body58

do.body50:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %ecc_addr39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ecc_addr39, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %18 = or i32 %17, 128
  %19 = ptrtoint ptr %ecc_addr39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ecc_addr39, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !41
  br label %do.body58

do.body58:                                        ; preds = %do.body50, %land.lhs.true47.do.body58_crit_edge, %lor.lhs.false41.do.body58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %add.ptr61 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %add.ptr65 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 525146152) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %add.ptr69 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 152373262) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %add.ptr73 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 687865864) #5, !srcloc !41
  %is_dmacoherent74 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %is_dmacoherent74 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_dmacoherent74, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool75.not = icmp eq i8 %22, 0
  br i1 %tobool75.not, label %do.body58.sw.epilog_crit_edge, label %do.body77

do.body58.sw.epilog_crit_edge:                    ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body77:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %add.ptr80 = getelementptr i8, ptr %3, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 -193) #5, !srcloc !41
  br label %sw.epilog

do.body83:                                        ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %add.ptr86 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %add.ptr90 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 525146152) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %add.ptr94 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 152373262) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %add.ptr98 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr98, i32 687865864) #5, !srcloc !41
  %is_dmacoherent99 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %is_dmacoherent99 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_dmacoherent99, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool100.not = icmp eq i8 %24, 0
  br i1 %tobool100.not, label %do.body83.sw.epilog_crit_edge, label %do.body102

do.body83.sw.epilog_crit_edge:                    ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body102:                                       ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %add.ptr105 = getelementptr i8, ptr %3, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 -193) #5, !srcloc !41
  br label %sw.epilog

sw.bb107:                                         ; preds = %entry
  %ecc_addr108 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %ecc_addr108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ecc_addr108, align 4
  %tobool109.not = icmp eq ptr %26, null
  %.b286293 = load i1, ptr @ecc_initialized, align 1
  br i1 %tobool109.not, label %lor.lhs.false110, label %land.lhs.true116

lor.lhs.false110:                                 ; preds = %sw.bb107
  br i1 %.b286293, label %lor.lhs.false110.do.body132_crit_edge, label %lor.lhs.false110.cleanup_crit_edge

lor.lhs.false110.cleanup_crit_edge:               ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false110.do.body132_crit_edge:            ; preds = %lor.lhs.false110
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body132

land.lhs.true116:                                 ; preds = %sw.bb107
  br i1 %.b286293, label %land.lhs.true116.do.body132_crit_edge, label %do.body119

land.lhs.true116.do.body132_crit_edge:            ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body132

do.body119:                                       ; preds = %land.lhs.true116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %27 = ptrtoint ptr %ecc_addr108 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ecc_addr108, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %30 = or i32 %29, 128
  %31 = ptrtoint ptr %ecc_addr108 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ecc_addr108, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !41
  br label %do.body132

do.body132:                                       ; preds = %do.body119, %land.lhs.true116.do.body132_crit_edge, %lor.lhs.false110.do.body132_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  tail call void @arm_heavy_mb() #5
  %add.ptr135 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr135, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %add.ptr139 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr139, i32 525146152) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @arm_heavy_mb() #5
  %add.ptr143 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr143, i32 152373262) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %add.ptr147 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 687865864) #5, !srcloc !41
  %is_dmacoherent148 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %is_dmacoherent148 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %is_dmacoherent148, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool149.not = icmp eq i8 %34, 0
  br i1 %tobool149.not, label %do.body132.sw.epilog_crit_edge, label %do.body151

do.body132.sw.epilog_crit_edge:                   ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body151:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %add.ptr154 = getelementptr i8, ptr %3, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr154, i32 -193) #5, !srcloc !41
  br label %sw.epilog

sw.bb156:                                         ; preds = %entry.sw.bb156_crit_edge, %entry.sw.bb156_crit_edge299, %entry.sw.bb156_crit_edge300
  %ecc_addr157 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %ecc_addr157 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ecc_addr157, align 4
  %tobool158.not = icmp eq ptr %36, null
  %.b284291 = load i1, ptr @ecc_initialized, align 1
  br i1 %tobool158.not, label %lor.lhs.false159, label %land.lhs.true165

lor.lhs.false159:                                 ; preds = %sw.bb156
  br i1 %.b284291, label %lor.lhs.false159.do.body181_crit_edge, label %lor.lhs.false159.cleanup_crit_edge

lor.lhs.false159.cleanup_crit_edge:               ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false159.do.body181_crit_edge:            ; preds = %lor.lhs.false159
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body181

land.lhs.true165:                                 ; preds = %sw.bb156
  br i1 %.b284291, label %land.lhs.true165.do.body181_crit_edge, label %do.body168

land.lhs.true165.do.body181_crit_edge:            ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body181

do.body168:                                       ; preds = %land.lhs.true165
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @arm_heavy_mb() #5
  %37 = ptrtoint ptr %ecc_addr157 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ecc_addr157, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #5, !srcloc !51
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %40 = or i32 %39, 64
  %41 = ptrtoint ptr %ecc_addr157 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ecc_addr157, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #5, !srcloc !41
  br label %do.body181

do.body181:                                       ; preds = %do.body168, %land.lhs.true165.do.body181_crit_edge, %lor.lhs.false159.do.body181_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  %add.ptr184 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr184, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %add.ptr188 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr188, i32 525146152) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %add.ptr192 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192, i32 152373262) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %add.ptr196 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr196, i32 687865864) #5, !srcloc !41
  %is_dmacoherent197 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %is_dmacoherent197 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %is_dmacoherent197, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool198.not = icmp eq i8 %44, 0
  br i1 %tobool198.not, label %do.body181.sw.epilog_crit_edge, label %do.body200

do.body181.sw.epilog_crit_edge:                   ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body200:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %add.ptr203 = getelementptr i8, ptr %3, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr203, i32 -193) #5, !srcloc !41
  br label %sw.epilog

do.body206:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %add.ptr209 = getelementptr i8, ptr %3, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr209, i32 -16841824) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %add.ptr213 = getelementptr i8, ptr %3, i32 172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr213, i32 525146152) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  tail call void @arm_heavy_mb() #5
  %add.ptr217 = getelementptr i8, ptr %3, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr217, i32 152373262) #5, !srcloc !41
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %add.ptr221 = getelementptr i8, ptr %3, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr221, i32 687865864) #5, !srcloc !41
  %is_dmacoherent222 = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %is_dmacoherent222 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %is_dmacoherent222, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool223.not = icmp eq i8 %46, 0
  br i1 %tobool223.not, label %do.body206.sw.epilog_crit_edge, label %do.body225

do.body206.sw.epilog_crit_edge:                   ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body225:                                       ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %add.ptr228 = getelementptr i8, ptr %3, i32 188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr228, i32 -193) #5, !srcloc !41
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body225, %do.body206.sw.epilog_crit_edge, %do.body200, %do.body181.sw.epilog_crit_edge, %do.body151, %do.body132.sw.epilog_crit_edge, %do.body102, %do.body83.sw.epilog_crit_edge, %do.body77, %do.body58.sw.epilog_crit_edge, %do.body33, %do.body8.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  store i1 true, ptr @ecc_initialized, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false159.cleanup_crit_edge, %lor.lhs.false110.cleanup_crit_edge, %lor.lhs.false41.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false41.cleanup_crit_edge ], [ -22, %lor.lhs.false110.cleanup_crit_edge ], [ -22, %lor.lhs.false159.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_qoriq_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  %online = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i.i, align 4
  %mmio1.i.i = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %mmio1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 256
  %mul.i.i = shl i32 %7, 7
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %private_data = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 48
  %12 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 23
  %14 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %plat_data, align 4
  %rx_fis = getelementptr inbounds %struct.ahci_port_priv, ptr %13, i32 0, i32 5
  %16 = ptrtoint ptr %rx_fis to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_fis, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %online) #5
  %18 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -1, ptr %online, align 1, !annotation !82
  %type = getelementptr inbounds %struct.ahci_qoriq_priv, ptr %15, i32 0, i32 1
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  %stop_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 26
  %21 = ptrtoint ptr %stop_engine to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stop_engine, align 4
  %call5 = tail call i32 %22(ptr noundef %3) #5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr6 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #5, !srcloc !51
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  %add.ptr11 = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #5, !srcloc !51
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %px_is.0 = phi i32 [ %26, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %px_cmd.0 = phi i32 [ %24, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %device = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14
  %27 = call ptr @memset(ptr %tf, i32 0, i32 24)
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 128
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 128
  %ctl.i = getelementptr inbounds %struct.ata_port, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %ctl.i, align 4
  %ctl1.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 2
  %34 = ptrtoint ptr %ctl1.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %ctl1.i, align 1
  %devno.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 14, i32 0, i32 1
  %35 = ptrtoint ptr %devno.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %devno.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i = icmp eq i32 %36, 0
  %spec.select.i = select i1 %cmp.i, i8 -96, i8 -80
  %37 = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %spec.select.i, ptr %37, align 4
  %command = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %39 = ptrtoint ptr %command to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 -128, ptr %command, align 1
  call void @ata_tf_to_fis(ptr noundef nonnull %tf, i8 noundef zeroext 0, i32 noundef 0, ptr noundef %add.ptr) #5
  %call15 = call i32 @sata_link_hardreset(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline, ptr noundef nonnull %online, ptr noundef nonnull @ahci_check_ready) #5
  br i1 %cmp, label %if.then17, label %if.end.if.end41_crit_edge

if.end.if.end41_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then17:                                        ; preds = %if.end
  %add.ptr20 = getelementptr i8, ptr %add.ptr2.i.i, i32 24
  %40 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #5, !srcloc !51
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %px_cmd.0)
  %cmp24.not = icmp eq i32 %41, %px_cmd.0
  br i1 %cmp24.not, label %if.then17.if.end27_crit_edge, label %do.body

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

do.body:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  call void @arm_heavy_mb() #5
  %42 = call i32 @llvm.bswap.i32(i32 %px_cmd.0)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %42) #5, !srcloc !41
  br label %if.end27

if.end27:                                         ; preds = %do.body, %if.then17.if.end27_crit_edge
  %add.ptr30 = getelementptr i8, ptr %add.ptr2.i.i, i32 16
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #5, !srcloc !51
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %px_is.0)
  %cmp34.not = icmp eq i32 %44, %px_is.0
  br i1 %cmp34.not, label %if.end27.if.end41_crit_edge, label %do.body36

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

do.body36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  call void @arm_heavy_mb() #5
  %45 = call i32 @llvm.bswap.i32(i32 %px_is.0)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %45) #5, !srcloc !41
  br label %if.end41

if.end41:                                         ; preds = %do.body36, %if.end27.if.end41_crit_edge, %if.end.if.end41_crit_edge
  %start_engine = getelementptr inbounds %struct.ahci_host_priv, ptr %9, i32 0, i32 25
  %46 = ptrtoint ptr %start_engine to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %start_engine, align 4
  call void %47(ptr noundef %3) #5
  %48 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %online, align 1, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool42.not = icmp eq i8 %49, 0
  br i1 %tobool42.not, label %if.end41.if.end45_crit_edge, label %if.then43

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

if.then43:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = call i32 @ahci_dev_classify(ptr noundef %3) #5
  %50 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call44, ptr %class, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end41.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %online) #5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #5
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_tf_to_fis(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_hardreset(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_check_ready(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_dev_classify(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ahci_qoriq_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ahci_platform_enable_resources(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @ahci_qoriq_phy_init(ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.disable_resources_crit_edge

if.end.disable_resources_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ahci_platform_resume_host(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.disable_resources_crit_edge

if.end5.disable_resources_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_resources

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

disable_resources:                                ; preds = %if.end5.disable_resources_crit_edge, %if.end.disable_resources_crit_edge
  %rc.0 = phi i32 [ %call2, %if.end.disable_resources_crit_edge ], [ %call6, %if.end5.disable_resources_crit_edge ]
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %disable_resources ], [ 0, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_resume_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__initcall__kmod_ahci_qoriq__320_370_ahci_qoriq_driver_init6, !1, !"__initcall__kmod_ahci_qoriq__320_370_ahci_qoriq_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_qoriq.c", i32 370, i32 1}
!2 = !{ptr @__exitcall_ahci_qoriq_driver_exit, !1, !"__exitcall_ahci_qoriq_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_qoriq.c", i32 372, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_qoriq.c", i32 373, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_qoriq.c", i32 374, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_qoriq.c", i32 364, i32 11}
!12 = !{ptr @ahci_qoriq_driver, !13, !"ahci_qoriq_driver", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_qoriq.c", i32 360, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_qoriq.c", i32 290, i32 10}
!16 = distinct !{null, !17, !"ecc_initialized", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_qoriq.c", i32 69, i32 13}
!18 = !{ptr @ahci_qoriq_port_info, !19, !"ahci_qoriq_port_info", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_qoriq.c", i32 155, i32 35}
!20 = !{ptr @ahci_qoriq_ops, !21, !"ahci_qoriq_ops", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_qoriq.c", i32 150, i32 35}
!22 = !{ptr @ahci_qoriq_sht, !23, !"ahci_qoriq_sht", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_qoriq.c", i32 162, i32 34}
!24 = !{ptr @ahci_qoriq_of_match, !25, !"ahci_qoriq_of_match", i1 false, i1 false}
!25 = !{!"../drivers/ata/ahci_qoriq.c", i32 71, i32 34}
!26 = !{ptr @ahci_qoriq_acpi_match, !27, !"ahci_qoriq_acpi_match", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_qoriq.c", i32 84, i32 36}
!28 = !{ptr @ahci_qoriq_pm_ops, !29, !"ahci_qoriq_pm_ops", i1 false, i1 false}
!29 = !{!"../drivers/ata/ahci_qoriq.c", i32 357, i32 8}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 2000, i32 1}
!40 = !{i64 2156437618}
!41 = !{i64 5795519}
!42 = !{i64 2156438047}
!43 = !{i64 2156438476}
!44 = !{i64 2156438905}
!45 = !{i64 2156439334}
!46 = !{i64 2156439763}
!47 = !{i64 2156440192}
!48 = !{i8 0, i8 2}
!49 = !{i64 2156440621}
!50 = !{i64 2156441774}
!51 = !{i64 5795937}
!52 = !{i64 2156442687}
!53 = !{i64 2156442947}
!54 = !{i64 2156443376}
!55 = !{i64 2156443805}
!56 = !{i64 2156444234}
!57 = !{i64 2156444663}
!58 = !{i64 2156445092}
!59 = !{i64 2156445521}
!60 = !{i64 2156445950}
!61 = !{i64 2156446379}
!62 = !{i64 2156446808}
!63 = !{i64 2156447961}
!64 = !{i64 2156448874}
!65 = !{i64 2156449134}
!66 = !{i64 2156449563}
!67 = !{i64 2156449992}
!68 = !{i64 2156450421}
!69 = !{i64 2156450850}
!70 = !{i64 2156452003}
!71 = !{i64 2156452916}
!72 = !{i64 2156453176}
!73 = !{i64 2156453605}
!74 = !{i64 2156454034}
!75 = !{i64 2156454463}
!76 = !{i64 2156454892}
!77 = !{i64 2156455321}
!78 = !{i64 2156455750}
!79 = !{i64 2156456179}
!80 = !{i64 2156456608}
!81 = !{i64 2156457037}
!82 = !{!"auto-init"}
!83 = !{i64 2156434124}
!84 = !{i64 2156434642}
!85 = !{i64 2156435140}
!86 = !{i64 2156435360}
!87 = !{i64 2156436065}
!88 = !{i64 2156436289}
