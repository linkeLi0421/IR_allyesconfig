; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_brcm.c_pt.bc'
source_filename = "../drivers/ata/ahci_brcm.c"
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
%struct.brcm_ahci_priv = type { ptr, ptr, i32, i32, i32, ptr, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
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

@__initcall__kmod_ahci_brcm__320_589_brcm_ahci_driver_init6 = internal global ptr @brcm_ahci_driver_init, section ".initcall6.init", align 4
@brcm_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @brcm_ahci_probe, ptr @brcm_ahci_remove, ptr @brcm_ahci_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_brcm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_brcm_ahci_driver_exit = internal global ptr @brcm_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [60 x i8] c"ahci_brcm.description=Broadcom SATA3 AHCI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [30 x i8] c"ahci_brcm.author=Brian Norris\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [37 x i8] c"ahci_brcm.file=drivers/ata/ahci_brcm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [22 x i8] c"ahci_brcm.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias325 = internal constant [38 x i8] c"ahci_brcm.alias=platform:sata-brcmstb\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"brcm-ahci\00", [22 x i8] zeroinitializer }, align 32
@ahci_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7425-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7445-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63138-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm-nsp-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7216-ahci\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@ahci_brcm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr @brcm_ahci_suspend, ptr @brcm_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"top-ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rescal\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahci\00", [27 x i8] zeroinitializer }, align 32
@ahci_brcm_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 8781954, i32 2048, i32 31, i32 0, i32 127, ptr @ahci_brcm_platform_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@brcm_ahci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 529, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Broadcom AHCI SATA3 registered\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"brcm_ahci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/ata/ahci_brcm.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@brcm_ahci_probe._entry_ptr = internal global ptr @brcm_ahci_probe._entry, section ".printk_index", align 4
@brcm_ahci_get_portmask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.6, i32 226, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"warning: more ports than PHYs (%#x)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"brcm_ahci_get_portmask\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@brcm_ahci_get_portmask._entry_ptr = internal global ptr @brcm_ahci_get_portmask._entry, section ".printk_index", align 4
@brcm_ahci_get_portmask._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.10, ptr @.str.6, i32 228, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"no ports found\0A\00", [16 x i8] zeroinitializer }, align 32
@brcm_ahci_get_portmask._entry_ptr.14 = internal global ptr @brcm_ahci_get_portmask._entry.12, section ".printk_index", align 4
@ahci_brcm_platform_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_ahci_read_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @brcm_ahci_host_stop, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@brcm_ahci_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 574, ptr @.str.17, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"brcm_ahci_shutdown\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@brcm_ahci_shutdown._entry_ptr = internal global ptr @brcm_ahci_shutdown._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"brcm_ahci_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 579, i32 31 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 584, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"ahci_of_match\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 424, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"ahci_brcm_pm_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 577, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 454, i32 59 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 461, i32 16 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 465, i32 65 }
@___asan_gen_.39 = private unnamed_addr constant [20 x i8] c"ahci_brcm_port_info\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 334, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 420, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 529, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 225, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 228, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"ahci_brcm_platform_ops\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 328, i32 35 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.94 = private constant [27 x i8] c"../drivers/ata/ahci_brcm.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 574, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_alias325, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_brcm_ahci_driver_exit, ptr @__initcall__kmod_ahci_brcm__320_589_brcm_ahci_driver_init6, ptr @brcm_ahci_driver_exit, ptr @brcm_ahci_get_portmask._entry, ptr @brcm_ahci_get_portmask._entry.12, ptr @brcm_ahci_get_portmask._entry_ptr, ptr @brcm_ahci_get_portmask._entry_ptr.14, ptr @brcm_ahci_probe._entry, ptr @brcm_ahci_probe._entry_ptr, ptr @brcm_ahci_shutdown._entry, ptr @brcm_ahci_shutdown._entry_ptr, ptr @brcm_ahci_driver, ptr @.str, ptr @ahci_of_match, ptr @ahci_brcm_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ahci_brcm_port_info, ptr @ahci_platform_sht, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @ahci_brcm_platform_ops, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_brcm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_brcm_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ahci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ahci_get_portmask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ahci_get_portmask._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_brcm_platform_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @brcm_ahci_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @brcm_ahci_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @brcm_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @brcm_ahci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call3 = tail call ptr @of_match_node(ptr noundef nonnull @ahci_of_match, ptr noundef %1) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call3, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  %version = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %version, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %call.i, align 4
  %call8 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #5
  %call9 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call8) #5
  %top_ctrl = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %top_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call9, ptr %top_ctrl, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %9 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp = icmp eq i32 %10, 4
  br i1 %cmp, label %if.then17, label %if.end15.if.end26_crit_edge

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then17:                                        ; preds = %if.end15
  %call.i143 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false) #5
  %rcdev_rescal = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %rcdev_rescal to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i143, ptr %rcdev_rescal, align 4
  %cmp.i144 = icmp ugt ptr %call.i143, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %if.then22, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then22:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call.i143 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.then17.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %rcdev_ahci = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %rcdev_ahci to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i, ptr %rcdev_ahci, align 4
  %cmp.i145 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then31, label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call.i.i to i32
  br label %cleanup

if.end34:                                         ; preds = %if.end26
  %call35 = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i146 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %call35 to i32
  br label %cleanup

if.end39:                                         ; preds = %if.end34
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call35, i32 0, i32 23
  %16 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %plat_data, align 4
  %17 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 20971520, ptr %call35, align 4
  %18 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %version, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %if.end39.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %if.end39.sw.bb42_crit_edge
  ]

if.end39.sw.bb42_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb42

if.end39.sw.epilog_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %call35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 21004288, ptr %call35, align 4
  br label %sw.bb42

sw.bb42:                                          ; preds = %sw.bb, %if.end39.sw.bb42_crit_edge
  %22 = ptrtoint ptr %call35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call35, align 4
  %or44 = or i32 %23, 1
  store i32 %or44, ptr %call35, align 4
  %quirks = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 3
  %24 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %quirks, align 4
  %or45 = or i32 %25, 1
  store i32 %or45, ptr %quirks, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb42, %if.end39.sw.epilog_crit_edge
  %rcdev_rescal46 = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %rcdev_rescal46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rcdev_rescal46, align 4
  %call47 = tail call i32 @reset_control_reset(ptr noundef %27) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end50:                                         ; preds = %sw.epilog
  %28 = ptrtoint ptr %rcdev_ahci to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rcdev_ahci, align 4
  %call52 = tail call i32 @reset_control_deassert(ptr noundef %29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end50.cleanup_crit_edge

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end55:                                         ; preds = %if.end50
  %call56 = tail call i32 @ahci_platform_enable_clks(ptr noundef %call35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end55.out_reset_crit_edge

if.end55.out_reset_crit_edge:                     ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_reset

if.end59:                                         ; preds = %if.end55
  %call60 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %call35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end59.out_disable_clks_crit_edge

if.end59.out_disable_clks_crit_edge:              ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_clks

if.end63:                                         ; preds = %if.end59
  %30 = ptrtoint ptr %top_ctrl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %top_ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %33 = and i32 %32, 16777215
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %35 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %36)
  %cmp.i147 = icmp eq i32 %36, 3
  %or.i = or i32 %34, 40
  %data.0.i = select i1 %cmp.i147, i32 %or.i, i32 %34
  %37 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #5, !srcloc !66
  %call64 = tail call fastcc i32 @brcm_ahci_get_portmask(ptr noundef %call35, ptr noundef nonnull %call.i)
  %port_mask = getelementptr inbounds %struct.brcm_ahci_priv, ptr %call.i, i32 0, i32 2
  %38 = ptrtoint ptr %port_mask to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call64, ptr %port_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool66.not = icmp eq i32 %call64, 0
  br i1 %tobool66.not, label %if.end63.out_disable_regulators_crit_edge, label %if.end68

if.end63.out_disable_regulators_crit_edge:        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_regulators

if.end68:                                         ; preds = %if.end63
  tail call fastcc void @brcm_sata_phys_enable(ptr noundef nonnull %call.i)
  tail call fastcc void @brcm_sata_alpm_init(ptr noundef %call35)
  %call69 = tail call i32 @ahci_platform_enable_phys(ptr noundef %call35) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.out_disable_phys_crit_edge

if.end68.out_disable_phys_crit_edge:              ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_phys

if.end72:                                         ; preds = %if.end68
  %call73 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call35, ptr noundef nonnull @ahci_brcm_port_info, ptr noundef nonnull @ahci_platform_sht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %do.end, label %out_disable_platform_phys

do.end:                                           ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.4) #8
  br label %cleanup

out_disable_platform_phys:                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahci_platform_disable_phys(ptr noundef %call35) #5
  br label %out_disable_phys

out_disable_phys:                                 ; preds = %out_disable_platform_phys, %if.end68.out_disable_phys_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end68.out_disable_phys_crit_edge ], [ %call73, %out_disable_platform_phys ]
  tail call fastcc void @brcm_sata_phys_disable(ptr noundef nonnull %call.i)
  br label %out_disable_regulators

out_disable_regulators:                           ; preds = %out_disable_phys, %if.end63.out_disable_regulators_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_disable_phys ], [ -19, %if.end63.out_disable_regulators_crit_edge ]
  tail call void @ahci_platform_disable_regulators(ptr noundef %call35) #5
  br label %out_disable_clks

out_disable_clks:                                 ; preds = %out_disable_regulators, %if.end59.out_disable_clks_crit_edge
  %ret.2 = phi i32 [ %call60, %if.end59.out_disable_clks_crit_edge ], [ %ret.1, %out_disable_regulators ]
  tail call void @ahci_platform_disable_clks(ptr noundef %call35) #5
  br label %out_reset

out_reset:                                        ; preds = %out_disable_clks, %if.end55.out_reset_crit_edge
  %ret.3 = phi i32 [ %call56, %if.end55.out_reset_crit_edge ], [ %ret.2, %out_disable_clks ]
  %39 = ptrtoint ptr %rcdev_ahci to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rcdev_ahci, align 4
  %call78 = tail call i32 @reset_control_assert(ptr noundef %40) #5
  %41 = ptrtoint ptr %rcdev_rescal46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rcdev_rescal46, align 4
  %call80 = tail call i32 @reset_control_rearm(ptr noundef %42) #5
  br label %cleanup

cleanup:                                          ; preds = %out_reset, %do.end, %if.end50.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then37, %if.then31, %if.then22, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %8, %if.then12 ], [ %12, %if.then22 ], [ %14, %if.then31 ], [ %15, %if.then37 ], [ %ret.3, %out_reset ], [ 0, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call47, %sw.epilog.cleanup_crit_edge ], [ %call52, %if.end50.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %port_mask.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 2
  %quirks.i.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 3
  %top_ctrl.i.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_mask.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %top_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %top_ctrl.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  %add.ptr2.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !65
  %13 = or i32 %12, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %13) #5, !srcloc !66
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !65
  %15 = or i32 %14, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #5, !srcloc !66
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %16 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_mask.i, align 4
  %and.1.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.brcm_sata_phys_disable.exit_crit_edge, label %if.then.1.i

for.inc.i.brcm_sata_phys_disable.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcm_sata_phys_disable.exit

if.then.1.i:                                      ; preds = %for.inc.i
  %18 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i.i, align 4
  %and.i.1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.then.1.i.brcm_sata_phys_disable.exit_crit_edge

if.then.1.i.brcm_sata_phys_disable.exit_crit_edge: ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcm_sata_phys_disable.exit

if.end.i.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %top_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_ctrl.i.i, align 4
  %add.ptr1.i.1.i = getelementptr i8, ptr %21, i32 20
  %add.ptr2.i.1.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.1.i) #5, !srcloc !65
  %23 = or i32 %22, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.1.i, i32 %23) #5, !srcloc !66
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1.i) #5, !srcloc !65
  %25 = or i32 %24, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1.i, i32 %25) #5, !srcloc !66
  br label %brcm_sata_phys_disable.exit

brcm_sata_phys_disable.exit:                      ; preds = %if.end.i.1.i, %if.then.1.i.brcm_sata_phys_disable.exit_crit_edge, %for.inc.i.brcm_sata_phys_disable.exit_crit_edge
  %call1 = tail call i32 @ata_platform_remove_one(ptr noundef %pdev) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_ahci_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @brcm_ahci_suspend(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @brcm_ahci_get_portmask(ptr nocapture noundef readonly %hpriv, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %0 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp ne i32 %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp13 = icmp ugt i32 %3, 3
  %cmp = select i1 %tobool.not.i, i1 %cmp13, i1 false
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %3) #8
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end6, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

do.end6:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.13) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end6, %if.else.if.end8_crit_edge, %do.end
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phys_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_mask = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 2
  %quirks.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 3
  %top_ctrl.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_mask, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %top_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %7 = and i32 %6, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #5, !srcloc !66
  %add.ptr4.i = getelementptr i8, ptr %5, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !65
  %9 = and i32 %8, -251658241
  %10 = or i32 %9, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %10) #5, !srcloc !66
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !65
  %12 = or i32 %11, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %12) #5, !srcloc !66
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !65
  %14 = and i32 %13, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %14) #5, !srcloc !66
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #5, !srcloc !65
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %16 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_mask, align 4
  %and.1 = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %18 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i, align 4
  %and.i.1 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.i.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %top_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_ctrl.i, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %21, i32 20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1) #5, !srcloc !65
  %23 = and i32 %22, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 %23) #5, !srcloc !66
  %add.ptr4.i.1 = getelementptr i8, ptr %21, i32 24
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.1) #5, !srcloc !65
  %25 = and i32 %24, -251658241
  %26 = or i32 %25, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1, i32 %26) #5, !srcloc !66
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.1) #5, !srcloc !65
  %28 = or i32 %27, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1, i32 %28) #5, !srcloc !66
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.1) #5, !srcloc !65
  %30 = and i32 %29, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.1, i32 %30) #5, !srcloc !66
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.1) #5, !srcloc !65
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_alpm_init(ptr nocapture noundef %hpriv) unnamed_addr #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !68
  %5 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %hpriv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpriv, align 4
  %or = or i32 %7, 8388608
  store i32 %or, ptr %hpriv, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %port_mask = getelementptr inbounds %struct.brcm_ahci_priv, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_mask, align 4
  %and2 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.for.inc_crit_edge, label %do.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio, align 4
  %add.ptr6 = getelementptr i8, ptr %11, i32 1816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -66907905) #5, !srcloc !66
  br label %for.inc

for.inc:                                          ; preds = %do.body, %if.end.for.inc_crit_edge
  %12 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port_mask, align 4
  %and2.1 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.1)
  %tobool3.not.1 = icmp eq i32 %and2.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %do.body.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

do.body.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %mmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mmio, align 4
  %add.ptr6.1 = getelementptr i8, ptr %15, i32 1944
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 -66907905) #5, !srcloc !66
  br label %for.inc.1

for.inc.1:                                        ; preds = %do.body.1, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_phys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phys_disable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %port_mask = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 2
  %quirks.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 3
  %top_ctrl.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_mask, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %top_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %top_ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 12
  %add.ptr2.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !65
  %7 = or i32 %6, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %7) #5, !srcloc !66
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %9 = or i32 %8, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #5, !srcloc !66
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.then.for.inc_crit_edge, %entry.for.inc_crit_edge
  %10 = ptrtoint ptr %port_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_mask, align 4
  %and.1 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %12 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %quirks.i, align 4
  %and.i.1 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.then.1.for.inc.1_crit_edge

if.then.1.for.inc.1_crit_edge:                    ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.i.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %top_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %top_ctrl.i, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %15, i32 20
  %add.ptr2.i.1 = getelementptr i8, ptr %15, i32 24
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.1) #5, !srcloc !65
  %17 = or i32 %16, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.1, i32 %17) #5, !srcloc !66
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1) #5, !srcloc !65
  %19 = or i32 %18, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 %19) #5, !srcloc !66
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.i.1, %if.then.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_regulators(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_rearm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phy_enable(ptr nocapture noundef readonly %priv, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %top_ctrl = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %top_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %mul = shl i32 %port, 3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !65
  %5 = and i32 %4, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %5) #5, !srcloc !66
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !65
  %7 = and i32 %6, -251658241
  %8 = or i32 %7, 134217728
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %8) #5, !srcloc !66
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !65
  %10 = or i32 %9, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %10) #5, !srcloc !66
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !65
  %12 = and i32 %11, -4194305
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %12) #5, !srcloc !66
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #5, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 128
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 128
  %host2 = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host2, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_data, align 4
  %mmio3 = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 3
  %10 = ptrtoint ptr %mmio3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio3, align 4
  %call = tail call i32 @ata_do_dev_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body7, !prof !70

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body7:                                         ; preds = %entry
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %13 = and i32 %12, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #5, !srcloc !66
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call9) #5
  %port_no = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_no, align 4
  tail call fastcc void @brcm_sata_phy_disable(ptr noundef %9, i32 noundef %16)
  tail call void @ahci_platform_disable_clks(ptr noundef %7) #5
  tail call void @msleep(i32 noundef 10) #5
  %call26 = tail call i32 @ahci_platform_enable_clks(ptr noundef %7) #5
  tail call void @msleep(i32 noundef 10) #5
  %17 = ptrtoint ptr %port_no to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_no, align 4
  tail call fastcc void @brcm_sata_phy_enable(ptr noundef %9, i32 noundef %18)
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 22
  %19 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp28135.not = icmp eq i32 %20, 0
  br i1 %cmp28135.not, label %do.body7.do.body44_crit_edge, label %for.body.lr.ph

do.body7.do.body44_crit_edge:                     ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

for.body.lr.ph:                                   ; preds = %do.body7
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %7, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.0136
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %call30 = tail call i32 @phy_init(ptr noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.body.disable_phys_crit_edge

for.body.disable_phys_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %disable_phys

if.end33:                                         ; preds = %for.body
  %25 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phys, align 4
  %arrayidx35 = getelementptr ptr, ptr %26, i32 %i.0136
  %27 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx35, align 4
  %call36 = tail call i32 @phy_calibrate(ptr noundef %28) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.inc, label %if.then38

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phys, align 4
  %arrayidx40 = getelementptr ptr, ptr %30, i32 %i.0136
  %31 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx40, align 4
  %call41 = tail call i32 @phy_exit(ptr noundef %32) #5
  br label %disable_phys

for.inc:                                          ; preds = %if.end33
  %inc = add nuw i32 %i.0136, 1
  %33 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nports, align 4
  %cmp28 = icmp ult i32 %inc, %34
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.do.body44_crit_edge

for.inc.do.body44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body44

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body44:                                        ; preds = %for.inc.do.body44_crit_edge, %do.body7.do.body44_crit_edge
  %call52 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #5
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  %36 = or i32 %35, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %36) #5, !srcloc !66
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !65
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %call52) #5
  %call74 = tail call i32 @ata_do_dev_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #5
  br label %cleanup

disable_phys:                                     ; preds = %if.then38, %for.body.disable_phys_crit_edge
  %dec137 = add i32 %i.0136, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec137)
  %cmp75138 = icmp sgt i32 %dec137, -1
  br i1 %cmp75138, label %disable_phys.while.body_crit_edge, label %disable_phys.cleanup_crit_edge

disable_phys.cleanup_crit_edge:                   ; preds = %disable_phys
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

disable_phys.while.body_crit_edge:                ; preds = %disable_phys
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %disable_phys.while.body_crit_edge
  %dec139 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec137, %disable_phys.while.body_crit_edge ]
  %38 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phys, align 4
  %arrayidx78 = getelementptr ptr, ptr %39, i32 %dec139
  %40 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx78, align 4
  %call79 = tail call i32 @phy_power_off(ptr noundef %41) #5
  %42 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phys, align 4
  %arrayidx81 = getelementptr ptr, ptr %43, i32 %dec139
  %44 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx81, align 4
  %call82 = tail call i32 @phy_exit(ptr noundef %45) #5
  %dec = add nsw i32 %dec139, -1
  %cmp75 = icmp sgt i32 %dec139, 0
  br i1 %cmp75, label %while.body.while.body_crit_edge, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %disable_phys.cleanup_crit_edge, %do.body44, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call74, %do.body44 ], [ 0, %entry.cleanup_crit_edge ], [ 256, %disable_phys.cleanup_crit_edge ], [ 256, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @brcm_ahci_host_stop(ptr nocapture noundef readonly %host) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %host, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @ahci_platform_disable_resources(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_dev_read_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @brcm_sata_phy_disable(ptr nocapture noundef readonly %priv, i32 noundef %port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %quirks = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %quirks, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %top_ctrl = getelementptr inbounds %struct.brcm_ahci_priv, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %top_ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %top_ctrl, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %mul = shl i32 %port, 3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %add.ptr2 = getelementptr i8, ptr %add.ptr1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !65
  %5 = or i32 %4, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %5) #5, !srcloc !66
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !65
  %7 = or i32 %6, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %7) #5, !srcloc !66
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_calibrate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @ata_platform_remove_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_suspend(ptr noundef %dev) #2 align 64 {
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
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %port_mask.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 2
  %quirks.i.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 3
  %top_ctrl.i.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_mask.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %if.then.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.for.inc.i_crit_edge

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %top_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %top_ctrl.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  %add.ptr2.i.i = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !65
  %13 = or i32 %12, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %13) #5, !srcloc !66
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !65
  %15 = or i32 %14, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %15) #5, !srcloc !66
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i, %if.then.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %16 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %port_mask.i, align 4
  %and.1.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %for.inc.i.brcm_sata_phys_disable.exit_crit_edge, label %if.then.1.i

for.inc.i.brcm_sata_phys_disable.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcm_sata_phys_disable.exit

if.then.1.i:                                      ; preds = %for.inc.i
  %18 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %quirks.i.i, align 4
  %and.i.1.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %if.end.i.1.i, label %if.then.1.i.brcm_sata_phys_disable.exit_crit_edge

if.then.1.i.brcm_sata_phys_disable.exit_crit_edge: ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %brcm_sata_phys_disable.exit

if.end.i.1.i:                                     ; preds = %if.then.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %top_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %top_ctrl.i.i, align 4
  %add.ptr1.i.1.i = getelementptr i8, ptr %21, i32 20
  %add.ptr2.i.1.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.1.i) #5, !srcloc !65
  %23 = or i32 %22, 255852544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.1.i, i32 %23) #5, !srcloc !66
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.1.i) #5, !srcloc !65
  %25 = or i32 %24, 4194304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1.i, i32 %25) #5, !srcloc !66
  br label %brcm_sata_phys_disable.exit

brcm_sata_phys_disable.exit:                      ; preds = %if.end.i.1.i, %if.then.1.i.brcm_sata_phys_disable.exit_crit_edge, %for.inc.i.brcm_sata_phys_disable.exit_crit_edge
  %call1 = tail call i32 @ahci_platform_suspend(ptr noundef %dev) #5
  %rcdev_ahci = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 6
  %26 = ptrtoint ptr %rcdev_ahci to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rcdev_ahci, align 4
  %call2 = tail call i32 @reset_control_assert(ptr noundef %27) #5
  %rcdev_rescal = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 5
  %28 = ptrtoint ptr %rcdev_rescal to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rcdev_rescal, align 4
  %call3 = tail call i32 @reset_control_rearm(ptr noundef %29) #5
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brcm_ahci_resume(ptr noundef %dev) #2 align 64 {
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
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_data, align 4
  %rcdev_ahci = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %rcdev_ahci to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcdev_ahci, align 4
  %call1 = tail call i32 @reset_control_deassert(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %rcdev_rescal = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 5
  %8 = ptrtoint ptr %rcdev_rescal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rcdev_rescal, align 4
  %call2 = tail call i32 @reset_control_reset(ptr noundef %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @ahci_platform_enable_clks(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @ahci_platform_enable_regulators(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_disable_clks_crit_edge

if.end9.out_disable_clks_crit_edge:               ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_clks

if.end13:                                         ; preds = %if.end9
  %top_ctrl.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %top_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %top_ctrl.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !65
  %13 = and i32 %12, 16777215
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #5
  %version.i = getelementptr inbounds %struct.brcm_ahci_priv, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp.i = icmp eq i32 %16, 3
  %or.i = or i32 %14, 40
  %data.0.i = select i1 %cmp.i, i32 %or.i, i32 %14
  %17 = tail call i32 @llvm.bswap.i32(i32 %data.0.i) #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #5, !srcloc !66
  tail call fastcc void @brcm_sata_phys_enable(ptr noundef %5)
  tail call fastcc void @brcm_sata_alpm_init(ptr noundef %3)
  %call14 = tail call i32 @ahci_platform_enable_phys(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.out_disable_phys_crit_edge

if.end13.out_disable_phys_crit_edge:              ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_disable_phys

if.end17:                                         ; preds = %if.end13
  %call18 = tail call i32 @ahci_platform_resume_host(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %out_disable_platform_phys

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

out_disable_platform_phys:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahci_platform_disable_phys(ptr noundef %3) #5
  br label %out_disable_phys

out_disable_phys:                                 ; preds = %out_disable_platform_phys, %if.end13.out_disable_phys_crit_edge
  %ret.0 = phi i32 [ %call14, %if.end13.out_disable_phys_crit_edge ], [ %call18, %out_disable_platform_phys ]
  tail call fastcc void @brcm_sata_phys_disable(ptr noundef %5)
  tail call void @ahci_platform_disable_regulators(ptr noundef %3) #5
  br label %out_disable_clks

out_disable_clks:                                 ; preds = %out_disable_phys, %if.end9.out_disable_clks_crit_edge
  %ret.1 = phi i32 [ %call10, %if.end9.out_disable_clks_crit_edge ], [ %ret.0, %out_disable_phys ]
  tail call void @ahci_platform_disable_clks(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %out_disable_clks, %if.end21, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_disable_clks ], [ 0, %if.end21 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ]
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_ahci_brcm__320_589_brcm_ahci_driver_init6, !1, !"__initcall__kmod_ahci_brcm__320_589_brcm_ahci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_brcm.c", i32 589, i32 1}
!2 = !{ptr @__exitcall_brcm_ahci_driver_exit, !1, !"__exitcall_brcm_ahci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_brcm.c", i32 591, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_brcm.c", i32 592, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/ata/ahci_brcm.c", i32 593, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias325, !11, !"__UNIQUE_ID_alias325", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_brcm.c", i32 594, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_brcm.c", i32 584, i32 11}
!14 = !{ptr @brcm_ahci_driver, !15, !"brcm_ahci_driver", i1 false, i1 false}
!15 = !{!"../drivers/ata/ahci_brcm.c", i32 579, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_brcm.c", i32 454, i32 59}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_brcm.c", i32 461, i32 16}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_brcm.c", i32 465, i32 65}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_brcm.c", i32 529, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @brcm_ahci_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @brcm_ahci_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/ahci_brcm.c", i32 225, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @brcm_ahci_get_portmask._entry, !31, !"_entry", i1 false, i1 false}
!35 = !{ptr @brcm_ahci_get_portmask._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_brcm.c", i32 228, i32 3}
!38 = !{ptr @brcm_ahci_get_portmask._entry.12, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @brcm_ahci_get_portmask._entry_ptr.14, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @ahci_brcm_port_info, !41, !"ahci_brcm_port_info", i1 false, i1 false}
!41 = !{!"../drivers/ata/ahci_brcm.c", i32 334, i32 35}
!42 = !{ptr @ahci_brcm_platform_ops, !43, !"ahci_brcm_platform_ops", i1 false, i1 false}
!43 = !{!"../drivers/ata/ahci_brcm.c", i32 328, i32 35}
!44 = !{ptr @ahci_platform_sht, !45, !"ahci_platform_sht", i1 false, i1 false}
!45 = !{!"../drivers/ata/ahci_brcm.c", i32 420, i32 34}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/ata/ahci_brcm.c", i32 574, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @brcm_ahci_shutdown._entry, !47, !"_entry", i1 false, i1 false}
!51 = !{ptr @brcm_ahci_shutdown._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @ahci_of_match, !53, !"ahci_of_match", i1 false, i1 false}
!53 = !{!"../drivers/ata/ahci_brcm.c", i32 424, i32 34}
!54 = !{ptr @ahci_brcm_pm_ops, !55, !"ahci_brcm_pm_ops", i1 false, i1 false}
!55 = !{!"../drivers/ata/ahci_brcm.c", i32 577, i32 8}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 4874427}
!66 = !{i64 4874009}
!67 = !{i64 2156437054}
!68 = !{i64 2156434693}
!69 = !{i64 2156435046}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2156441502}
!72 = !{i64 2156441714}
!73 = !{i64 2156442365}
!74 = !{i64 2156443197}
!75 = !{i64 2156443409}
!76 = !{i64 2156444060}
