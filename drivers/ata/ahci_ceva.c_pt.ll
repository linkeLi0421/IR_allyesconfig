; ModuleID = '/llk/IR_all_yes/drivers/ata/ahci_ceva.c_pt.bc'
source_filename = "../drivers/ata/ahci_ceva.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.83 }
%union.anon.83 = type { ptr }
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
%struct.ceva_ahci_priv = type { ptr, [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, i8, i32, ptr }
%struct.ahci_host_priv = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [5 x ptr], ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }

@__param_str_rx_watermark = internal constant [23 x i8] c"ahci_ceva.rx_watermark\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@rx_watermark = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_rx_watermark = internal constant %struct.kernel_param { ptr @__param_str_rx_watermark, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.83 { ptr @rx_watermark } }, section "__param", align 4
@__UNIQUE_ID_rx_watermarktype320 = internal constant [37 x i8] c"ahci_ceva.parmtype=rx_watermark:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_watermark321 = internal constant [57 x i8] c"ahci_ceva.parm=rx_watermark:RxWaterMark value (0 - 0x80)\00", section ".modinfo", align 1
@__initcall__kmod_ahci_ceva__322_379_ceva_ahci_driver_init6 = internal global ptr @ceva_ahci_driver_init, section ".initcall6.init", align 4
@ceva_ahci_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ceva_ahci_probe, ptr @ata_platform_remove_one, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ceva_ahci_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_ceva_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ceva_ahci_driver_exit = internal global ptr @ceva_ahci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description323 = internal constant [53 x i8] c"ahci_ceva.description=CEVA AHCI SATA platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [29 x i8] c"ahci_ceva.author=Xilinx Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [37 x i8] c"ahci_ceva.file=drivers/ata/ahci_ceva\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [25 x i8] c"ahci_ceva.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ahci-ceva\00", [22 x i8] zeroinitializer }, align 32
@ceva_ahci_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ceva,ahci-1v84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ahci_ceva_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @ceva_ahci_suspend, ptr @ceva_ahci_resume, ptr @ceva_ahci_suspend, ptr @ceva_ahci_resume, ptr @ceva_ahci_suspend, ptr @ceva_ahci_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get reset\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ceva,broken-gen2\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceva,p0-cominit-params\00", [41 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 254, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceva,p0-cominit-params property not defined\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ceva_ahci_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/ata/ahci_ceva.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr = internal global ptr @ceva_ahci_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceva,p1-cominit-params\00", [41 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 260, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceva,p1-cominit-params property not defined\0A\00", [51 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.12 = internal global ptr @ceva_ahci_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceva,p0-comwake-params\00", [41 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 267, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceva,p0-comwake-params property not defined\0A\00", [51 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.16 = internal global ptr @ceva_ahci_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ceva,p1-comwake-params\00", [41 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 273, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ceva,p1-comwake-params property not defined\0A\00", [51 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.20 = internal global ptr @ceva_ahci_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceva,p0-burst-params\00", [43 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 280, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ceva,p0-burst-params property not defined\0A\00", [53 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.24 = internal global ptr @ceva_ahci_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceva,p1-burst-params\00", [43 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 286, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ceva,p1-burst-params property not defined\0A\00", [53 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.28 = internal global ptr @ceva_ahci_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceva,p0-retry-params\00", [43 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.5, ptr @.str.6, i32 293, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ceva,p0-retry-params property not defined\0A\00", [53 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.32 = internal global ptr @ceva_ahci_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ceva,p1-retry-params\00", [43 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.6, i32 299, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ceva,p1-retry-params property not defined\0A\00", [53 x i8] zeroinitializer }, align 32
@ceva_ahci_probe._entry_ptr.36 = internal global ptr @ceva_ahci_probe._entry.34, section ".printk_index", align 4
@ahci_ceva_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 393346, i32 0, i32 31, i32 0, i32 127, ptr @ahci_ceva_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@ahci_platform_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_change_queue_depth, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str, ptr null, i32 32, i32 -1, i16 168, i16 0, i32 0, i32 0, i32 -1, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr @ahci_shost_groups, ptr @ahci_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ahci_ceva_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ceva_ahci_read_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ahci_platform_ops }, [44 x i8] zeroinitializer }, align 32
@ahci_platform_ops = external dso_local global %struct.ata_port_operations, align 4
@ahci_shost_groups = external dso_local global [0 x ptr], align 4
@ahci_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"rx_watermark\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 76, i32 21 }
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"ceva_ahci_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 370, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 374, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"ceva_ahci_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 364, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"ahci_ceva_pm_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 362, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 211, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 248, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 252, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 254, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 258, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 260, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 265, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 267, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 271, i32 36 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 273, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 278, i32 36 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 280, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 284, i32 36 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 286, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 291, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 293, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 297, i32 37 }
@___asan_gen_.136 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 299, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ahci_ceva_port_info\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 116, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"ahci_platform_sht\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 188, i32 34 }
@___asan_gen_.148 = private unnamed_addr constant [14 x i8] c"ahci_ceva_ops\00", align 1
@___asan_gen_.149 = private constant [27 x i8] c"../drivers/ata/ahci_ceva.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 111, i32 35 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__UNIQUE_ID_rx_watermark321, ptr @__UNIQUE_ID_rx_watermarktype320, ptr @__exitcall_ceva_ahci_driver_exit, ptr @__initcall__kmod_ahci_ceva__322_379_ceva_ahci_driver_init6, ptr @__param_rx_watermark, ptr @ceva_ahci_driver_exit, ptr @ceva_ahci_probe._entry, ptr @ceva_ahci_probe._entry.10, ptr @ceva_ahci_probe._entry.14, ptr @ceva_ahci_probe._entry.18, ptr @ceva_ahci_probe._entry.22, ptr @ceva_ahci_probe._entry.26, ptr @ceva_ahci_probe._entry.30, ptr @ceva_ahci_probe._entry.34, ptr @ceva_ahci_probe._entry_ptr, ptr @ceva_ahci_probe._entry_ptr.12, ptr @ceva_ahci_probe._entry_ptr.16, ptr @ceva_ahci_probe._entry_ptr.20, ptr @ceva_ahci_probe._entry_ptr.24, ptr @ceva_ahci_probe._entry_ptr.28, ptr @ceva_ahci_probe._entry_ptr.32, ptr @ceva_ahci_probe._entry_ptr.36, ptr @rx_watermark, ptr @ceva_ahci_driver, ptr @.str, ptr @ceva_ahci_of_match, ptr @ahci_ceva_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @ahci_ceva_port_info, ptr @ahci_platform_sht, ptr @ahci_ceva_ops], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_watermark to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_ceva_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ceva_ahci_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_ceva_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_platform_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ahci_ceva_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ceva_ahci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ceva_ahci_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ceva_ahci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @ceva_ahci_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceva_ahci_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup128_crit_edge, label %if.end

entry.cleanup128_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup128

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call.i, align 4
  %call.i202 = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %rst = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %rst to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i202, ptr %rst, align 4
  %cmp.i = icmp ugt ptr %call.i202, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call.i202 to i32
  %call11 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.1) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.end.if.end12_crit_edge
  %call13 = tail call ptr @ahci_platform_get_resources(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i203 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i203, label %if.then15, label %if.end17

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call13 to i32
  br label %cleanup128

if.end17:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rst, align 4
  %tobool19.not = icmp eq ptr %7, null
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @ahci_platform_enable_resources(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.if.end53_crit_edge, label %if.then20.cleanup128_crit_edge

if.then20.cleanup128_crit_edge:                   ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup128

if.then20.if.end53_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.else:                                          ; preds = %if.end17
  %call25 = tail call i32 @ahci_platform_enable_clks(ptr noundef %call13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.else.cleanup128_crit_edge

if.else.cleanup128_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup128

if.end28:                                         ; preds = %if.else
  %8 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rst, align 4
  %call30 = tail call i32 @reset_control_assert(ptr noundef %9) #5
  %nports = getelementptr inbounds %struct.ahci_host_priv, ptr %call13, i32 0, i32 22
  %10 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp217.not = icmp eq i32 %11, 0
  br i1 %cmp217.not, label %if.end28.for.end_crit_edge, label %for.body.lr.ph

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end28
  %phys = getelementptr inbounds %struct.ahci_host_priv, ptr %call13, i32 0, i32 21
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0218, 1
  %12 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %14 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phys, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %i.0218
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call31 = tail call i32 @phy_init(ptr noundef %17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %for.cond, label %for.body.cleanup128_crit_edge

for.body.cleanup128_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup128

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end28.for.end_crit_edge
  %18 = ptrtoint ptr %rst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rst, align 4
  %call36 = tail call i32 @reset_control_deassert(ptr noundef %19) #5
  %20 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp39219.not = icmp eq i32 %21, 0
  br i1 %cmp39219.not, label %for.end.if.end53_crit_edge, label %for.body40.lr.ph

for.end.if.end53_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

for.body40.lr.ph:                                 ; preds = %for.end
  %phys41 = getelementptr inbounds %struct.ahci_host_priv, ptr %call13, i32 0, i32 21
  br label %for.body40

for.body40:                                       ; preds = %for.inc50.for.body40_crit_edge, %for.body40.lr.ph
  %i.1220 = phi i32 [ 0, %for.body40.lr.ph ], [ %inc51, %for.inc50.for.body40_crit_edge ]
  %22 = ptrtoint ptr %phys41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phys41, align 4
  %arrayidx42 = getelementptr ptr, ptr %23, i32 %i.1220
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx42, align 4
  %call43 = tail call i32 @phy_power_on(ptr noundef %25) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %for.inc50, label %if.then45

if.then45:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %phys41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phys41, align 4
  %arrayidx47 = getelementptr ptr, ptr %27, i32 %i.1220
  %28 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx47, align 4
  %call48 = tail call i32 @phy_exit(ptr noundef %29) #5
  br label %cleanup128

for.inc50:                                        ; preds = %for.body40
  %inc51 = add nuw i32 %i.1220, 1
  %30 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nports, align 4
  %cmp39 = icmp ult i32 %inc51, %31
  br i1 %cmp39, label %for.inc50.for.body40_crit_edge, label %for.inc50.if.end53_crit_edge

for.inc50.if.end53_crit_edge:                     ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

for.inc50.for.body40_crit_edge:                   ; preds = %for.inc50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body40

if.end53:                                         ; preds = %for.inc50.if.end53_crit_edge, %for.end.if.end53_crit_edge, %if.then20.if.end53_crit_edge
  %call.i204 = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i204, null
  br i1 %tobool.i.not, label %if.end53.if.end56_crit_edge, label %if.then55

if.end53.if.end56_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  %flags = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 7
  %32 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %flags, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %if.end53.if.end56_crit_edge
  %pp2c = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 1
  %call.i205 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %pp2c, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i205)
  %cmp59 = icmp slt i32 %call.i205, 0
  br i1 %cmp59, label %do.end, label %if.end61

do.end:                                           ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup128

if.end61:                                         ; preds = %if.end56
  %arrayidx63 = getelementptr %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 1, i32 1
  %call.i206 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef %arrayidx63, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i206)
  %cmp65 = icmp slt i32 %call.i206, 0
  br i1 %cmp65, label %do.end69, label %if.end70

do.end69:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup128

if.end70:                                         ; preds = %if.end61
  %pp3c = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 2
  %call.i207 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef %pp3c, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i207)
  %cmp73 = icmp slt i32 %call.i207, 0
  br i1 %cmp73, label %do.end77, label %if.end78

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup128

if.end78:                                         ; preds = %if.end70
  %arrayidx80 = getelementptr %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 2, i32 1
  %call.i208 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %arrayidx80, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i208)
  %cmp82 = icmp slt i32 %call.i208, 0
  br i1 %cmp82, label %do.end86, label %if.end87

do.end86:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %cleanup128

if.end87:                                         ; preds = %if.end78
  %pp4c = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 3
  %call.i209 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %pp4c, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i209)
  %cmp90 = icmp slt i32 %call.i209, 0
  br i1 %cmp90, label %do.end94, label %if.end95

do.end94:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup128

if.end95:                                         ; preds = %if.end87
  %arrayidx97 = getelementptr %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 3, i32 1
  %call.i210 = tail call i32 @of_property_read_variable_u8_array(ptr noundef %1, ptr noundef nonnull @.str.25, ptr noundef %arrayidx97, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %cmp99 = icmp slt i32 %call.i210, 0
  br i1 %cmp99, label %do.end103, label %if.end104

do.end103:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.27) #8
  br label %cleanup128

if.end104:                                        ; preds = %if.end95
  %pp5c = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 4
  %call.i211 = tail call i32 @of_property_read_variable_u16_array(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %pp5c, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211)
  %cmp107 = icmp slt i32 %call.i211, 0
  br i1 %cmp107, label %do.end111, label %if.end112

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %cleanup128

if.end112:                                        ; preds = %if.end104
  %arrayidx114 = getelementptr %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 4, i32 1
  %call.i212 = tail call i32 @of_property_read_variable_u16_array(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %arrayidx114, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i212)
  %cmp116 = icmp slt i32 %call.i212, 0
  br i1 %cmp116, label %do.end120, label %if.end121

do.end120:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.35) #8
  br label %cleanup128

if.end121:                                        ; preds = %if.end112
  %call122 = tail call i32 @device_get_dma_attr(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call122)
  %cmp123 = icmp eq i32 %call122, 2
  %is_cci_enabled = getelementptr inbounds %struct.ceva_ahci_priv, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %cmp123 to i8
  %33 = ptrtoint ptr %is_cci_enabled to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool, ptr %is_cci_enabled, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %call13, i32 0, i32 23
  %34 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %plat_data, align 4
  tail call fastcc void @ahci_ceva_setup(ptr noundef %call13)
  %call124 = tail call i32 @ahci_platform_init_host(ptr noundef %pdev, ptr noundef %call13, ptr noundef nonnull @ahci_ceva_port_info, ptr noundef nonnull @ahci_platform_sht) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call124)
  %tobool125.not = icmp eq i32 %call124, 0
  br i1 %tobool125.not, label %if.end121.cleanup128_crit_edge, label %disable_resources

if.end121.cleanup128_crit_edge:                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup128

disable_resources:                                ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahci_platform_disable_resources(ptr noundef %call13) #5
  br label %cleanup128

cleanup128:                                       ; preds = %disable_resources, %if.end121.cleanup128_crit_edge, %do.end120, %do.end111, %do.end103, %do.end94, %do.end86, %do.end77, %do.end69, %do.end, %if.then45, %for.body.cleanup128_crit_edge, %if.else.cleanup128_crit_edge, %if.then20.cleanup128_crit_edge, %if.then15, %entry.cleanup128_crit_edge
  %retval.1 = phi i32 [ %5, %if.then15 ], [ -22, %do.end ], [ -22, %do.end69 ], [ -22, %do.end77 ], [ -22, %do.end86 ], [ -22, %do.end94 ], [ -22, %do.end103 ], [ -22, %do.end111 ], [ -22, %do.end120 ], [ %call124, %disable_resources ], [ -12, %entry.cleanup128_crit_edge ], [ %call21, %if.then20.cleanup128_crit_edge ], [ 0, %if.end121.cleanup128_crit_edge ], [ %call25, %if.else.cleanup128_crit_edge ], [ %call43, %if.then45 ], [ %call31, %for.body.cleanup128_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_platform_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ahci_platform_get_resources(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_enable_clks(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_dma_attr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ahci_ceva_setup(ptr nocapture noundef readonly %hpriv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio1 = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 3
  %0 = ptrtoint ptr %mmio1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio1, align 4
  %plat_data = getelementptr inbounds %struct.ahci_host_priv, ptr %hpriv, i32 0, i32 23
  %2 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  %5 = or i32 %4, 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %5) #5, !srcloc !100
  %add.ptr9 = getelementptr i8, ptr %1, i32 164
  %add.ptr26 = getelementptr i8, ptr %1, i32 192
  %is_cci_enabled = getelementptr inbounds %struct.ceva_ahci_priv, ptr %3, i32 0, i32 6
  %add.ptr29 = getelementptr i8, ptr %1, i32 188
  %add.ptr41 = getelementptr i8, ptr %1, i32 168
  %add.ptr45 = getelementptr i8, ptr %1, i32 172
  %add.ptr50 = getelementptr i8, ptr %1, i32 176
  %add.ptr55 = getelementptr i8, ptr %1, i32 180
  %add.ptr60 = getelementptr i8, ptr %1, i32 184
  %add.ptr65 = getelementptr i8, ptr %1, i32 200
  %flags = getelementptr inbounds %struct.ceva_ahci_priv, ptr %3, i32 0, i32 7
  %add.ptr73 = getelementptr i8, ptr %1, i32 300
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %if.end.for.body_crit_edge ]
  %i.0113 = phi i32 [ 0, %entry ], [ 1, %if.end.for.body_crit_edge ]
  %or5 = or i32 %i.0113, 3284994
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !101
  tail call void @arm_heavy_mb() #5
  %6 = tail call i32 @llvm.bswap.i32(i32 %or5)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %6) #5, !srcloc !100
  %mul = shl nuw nsw i32 %i.0113, 1
  %add10 = or i32 %mul, 1
  %shl = shl nuw nsw i32 %add10, 8
  %shl14 = shl nuw nsw i32 %add10, 16
  %shl17 = shl nuw nsw i32 %i.0113, 5
  %shl20 = shl nuw nsw i32 %i.0113, 13
  %or11 = or i32 %shl17, %shl20
  %or15 = or i32 %or11, %shl14
  %or18 = or i32 %or15, %shl
  %or22 = or i32 %or18, 4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !102
  tail call void @arm_heavy_mb() #5
  %7 = tail call i32 @llvm.bswap.i32(i32 %or22)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %7) #5, !srcloc !100
  %8 = ptrtoint ptr %is_cci_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_cci_enabled, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #5, !srcloc !97
  %11 = shl i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %or33 = or i32 %11, 268435455
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or33)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 %12) #5, !srcloc !100
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !106
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr41, i32 -16842336) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !107
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr %struct.ceva_ahci_priv, ptr %3, i32 0, i32 1, i32 %i.0113
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %15) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !108
  tail call void @arm_heavy_mb() #5
  %arrayidx49 = getelementptr %struct.ceva_ahci_priv, ptr %3, i32 0, i32 2, i32 %i.0113
  %16 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx49, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %18) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !109
  tail call void @arm_heavy_mb() #5
  %arrayidx54 = getelementptr %struct.ceva_ahci_priv, ptr %3, i32 0, i32 3, i32 %i.0113
  %19 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx54, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %21) #5, !srcloc !100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !110
  tail call void @arm_heavy_mb() #5
  %arrayidx59 = getelementptr %struct.ceva_ahci_priv, ptr %3, i32 0, i32 4, i32 %i.0113
  %22 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx59, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %24) #5, !srcloc !100
  %25 = load i32, ptr @rx_watermark, align 4
  %or61 = or i32 %25, 134217728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !111
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %or61)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr65, i32 %26) #5, !srcloc !100
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool66.not, i32 816, i32 784
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !112
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.store.select)
  %mul74 = shl nuw nsw i32 %i.0113, 7
  %add.ptr75 = getelementptr i8, ptr %add.ptr73, i32 %mul74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75, i32 %29) #5, !srcloc !100
  br i1 %cmp, label %if.end.for.body_crit_edge, label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_init_host(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ahci_platform_disable_resources(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceva_ahci_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ata_do_dev_read_id(ptr noundef %dev, ptr noundef %tf, ptr noundef %id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr i16, ptr %id, i32 78
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  %2 = and i16 %1, -2
  store i16 %2, ptr %arrayidx, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_do_dev_read_id(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceva_ahci_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ahci_platform_suspend(ptr noundef %dev) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ceva_ahci_resume(ptr noundef %dev) #2 align 64 {
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
  tail call fastcc void @ahci_ceva_setup(ptr noundef %3)
  %call2 = tail call i32 @ahci_platform_resume_host(ptr noundef %dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %disable_resources

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #5
  %call.i = tail call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #5
  tail call void @pm_runtime_enable(ptr noundef %dev) #5
  br label %cleanup

disable_resources:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @ahci_platform_disable_resources(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %disable_resources, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %disable_resources ], [ 0, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ahci_platform_suspend(ptr noundef) local_unnamed_addr #1

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

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !80, !82, !84, !86}
!llvm.module.flags = !{!88, !89, !90, !91, !92, !93, !94, !95}
!llvm.ident = !{!96}

!0 = !{ptr @__param_rx_watermark, !1, !"__param_rx_watermark", i1 false, i1 false}
!1 = !{!"../drivers/ata/ahci_ceva.c", i32 77, i32 1}
!2 = !{ptr @__UNIQUE_ID_rx_watermarktype320, !1, !"__UNIQUE_ID_rx_watermarktype320", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_rx_watermark321, !4, !"__UNIQUE_ID_rx_watermark321", i1 false, i1 false}
!4 = !{!"../drivers/ata/ahci_ceva.c", i32 78, i32 1}
!5 = !{ptr @__initcall__kmod_ahci_ceva__322_379_ceva_ahci_driver_init6, !6, !"__initcall__kmod_ahci_ceva__322_379_ceva_ahci_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/ata/ahci_ceva.c", i32 379, i32 1}
!7 = !{ptr @__exitcall_ceva_ahci_driver_exit, !6, !"__exitcall_ceva_ahci_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description323, !9, !"__UNIQUE_ID_description323", i1 false, i1 false}
!9 = !{!"../drivers/ata/ahci_ceva.c", i32 381, i32 1}
!10 = !{ptr @__UNIQUE_ID_author324, !11, !"__UNIQUE_ID_author324", i1 false, i1 false}
!11 = !{!"../drivers/ata/ahci_ceva.c", i32 382, i32 1}
!12 = !{ptr @__UNIQUE_ID_file325, !13, !"__UNIQUE_ID_file325", i1 false, i1 false}
!13 = !{!"../drivers/ata/ahci_ceva.c", i32 383, i32 1}
!14 = !{ptr @__UNIQUE_ID_license326, !13, !"__UNIQUE_ID_license326", i1 false, i1 false}
!15 = !{ptr @__param_str_rx_watermark, !1, !"__param_str_rx_watermark", i1 false, i1 false}
!16 = !{ptr @rx_watermark, !17, !"rx_watermark", i1 false, i1 false}
!17 = !{!"../drivers/ata/ahci_ceva.c", i32 76, i32 21}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/ata/ahci_ceva.c", i32 374, i32 11}
!20 = !{ptr @ceva_ahci_driver, !21, !"ceva_ahci_driver", i1 false, i1 false}
!21 = !{!"../drivers/ata/ahci_ceva.c", i32 370, i32 31}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/ahci_ceva.c", i32 211, i32 10}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/ata/ahci_ceva.c", i32 248, i32 32}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/ata/ahci_ceva.c", i32 252, i32 36}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/ata/ahci_ceva.c", i32 254, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ceva_ahci_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ceva_ahci_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/ata/ahci_ceva.c", i32 258, i32 36}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/ata/ahci_ceva.c", i32 260, i32 3}
!40 = !{ptr @ceva_ahci_probe._entry.10, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @ceva_ahci_probe._entry_ptr.12, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/ata/ahci_ceva.c", i32 265, i32 36}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/ata/ahci_ceva.c", i32 267, i32 3}
!46 = !{ptr @ceva_ahci_probe._entry.14, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @ceva_ahci_probe._entry_ptr.16, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/ata/ahci_ceva.c", i32 271, i32 36}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/ata/ahci_ceva.c", i32 273, i32 3}
!52 = !{ptr @ceva_ahci_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ceva_ahci_probe._entry_ptr.20, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/ata/ahci_ceva.c", i32 278, i32 36}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/ata/ahci_ceva.c", i32 280, i32 3}
!58 = !{ptr @ceva_ahci_probe._entry.22, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @ceva_ahci_probe._entry_ptr.24, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/ata/ahci_ceva.c", i32 284, i32 36}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/ata/ahci_ceva.c", i32 286, i32 3}
!64 = !{ptr @ceva_ahci_probe._entry.26, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ceva_ahci_probe._entry_ptr.28, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/ata/ahci_ceva.c", i32 291, i32 37}
!68 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/ata/ahci_ceva.c", i32 293, i32 3}
!70 = !{ptr @ceva_ahci_probe._entry.30, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ceva_ahci_probe._entry_ptr.32, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/ata/ahci_ceva.c", i32 297, i32 37}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/ata/ahci_ceva.c", i32 299, i32 3}
!76 = !{ptr @ceva_ahci_probe._entry.34, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ceva_ahci_probe._entry_ptr.36, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ahci_ceva_port_info, !79, !"ahci_ceva_port_info", i1 false, i1 false}
!79 = !{!"../drivers/ata/ahci_ceva.c", i32 116, i32 35}
!80 = !{ptr @ahci_ceva_ops, !81, !"ahci_ceva_ops", i1 false, i1 false}
!81 = !{!"../drivers/ata/ahci_ceva.c", i32 111, i32 35}
!82 = !{ptr @ahci_platform_sht, !83, !"ahci_platform_sht", i1 false, i1 false}
!83 = !{!"../drivers/ata/ahci_ceva.c", i32 188, i32 34}
!84 = !{ptr @ceva_ahci_of_match, !85, !"ceva_ahci_of_match", i1 false, i1 false}
!85 = !{!"../drivers/ata/ahci_ceva.c", i32 364, i32 34}
!86 = !{ptr @ahci_ceva_pm_ops, !87, !"ahci_ceva_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/ata/ahci_ceva.c", i32 362, i32 8}
!88 = !{i32 1, !"wchar_size", i32 2}
!89 = !{i32 1, !"min_enum_size", i32 4}
!90 = !{i32 8, !"branch-target-enforcement", i32 0}
!91 = !{i32 8, !"sign-return-address", i32 0}
!92 = !{i32 8, !"sign-return-address-all", i32 0}
!93 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!94 = !{i32 7, !"uwtable", i32 1}
!95 = !{i32 7, !"frame-pointer", i32 2}
!96 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!97 = !{i64 4284175}
!98 = !{i64 2156469692}
!99 = !{i64 2156469904}
!100 = !{i64 4283757}
!101 = !{i64 2156470321}
!102 = !{i64 2156470809}
!103 = !{i8 0, i8 2}
!104 = !{i64 2156471445}
!105 = !{i64 2156471739}
!106 = !{i64 2156472149}
!107 = !{i64 2156472545}
!108 = !{i64 2156472983}
!109 = !{i64 2156473421}
!110 = !{i64 2156473859}
!111 = !{i64 2156474293}
!112 = !{i64 2156474754}
