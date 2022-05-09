; ModuleID = '/llk/IR_all_yes/drivers/ata/sata_inic162x.c_pt.bc'
source_filename = "../drivers/ata/sata_inic162x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ata_port_info = type { i32, i32, i32, i32, i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ata_port_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.78, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.78 = type { ptr }
%struct.ata_host = type { %struct.spinlock, ptr, ptr, i32, i32, ptr, ptr, i32, %struct.kref, %struct.mutex, ptr, ptr, [0 x ptr] }
%struct.inic_host_priv = type { ptr, i16 }
%struct.ata_port = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.ata_ioports, i8, i8, ptr, %struct.delayed_work, ptr, i32, i32, i32, i32, i32, [33 x %struct.ata_queued_cmd], i32, i64, i32, i32, [96 x i8], %struct.ata_link, ptr, i32, ptr, ptr, %struct.ata_port_stats, ptr, ptr, %struct.device, %struct.mutex, %struct.delayed_work, %struct.work_struct, i32, %struct.list_head, %struct.wait_queue_head, i32, %struct.completion, %struct.pm_message, i32, %struct.timer_list, i32, i64, i32, ptr, [512 x i8] }
%struct.ata_ioports = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ata_queued_cmd = type { ptr, ptr, ptr, ptr, %struct.ata_taskfile, [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.scatterlist, ptr, ptr, i32, i32, %struct.ata_taskfile, ptr, ptr, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ata_taskfile = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.ata_link = type { ptr, i32, %struct.device, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ata_eh_info, %struct.ata_eh_context, [116 x i8], [2 x %struct.ata_device], i32, [124 x i8] }
%struct.ata_eh_info = type { ptr, i32, i32, i32, [2 x i32], i32, i32, [80 x i8], i32 }
%struct.ata_eh_context = type { %struct.ata_eh_info, [2 x i32], [2 x [7 x i32]], [2 x i32], i32, i32, i32, [2 x i8], i32 }
%struct.ata_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.device, i64, i64, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [10 x i8], %union.anon.84, [8 x i8], [20 x i8], [64 x i8], i32, i32, i32, i32, ptr, i32, %struct.ata_ering }
%union.anon.84 = type { [128 x i32] }
%struct.ata_ering = type { i32, [32 x %struct.ata_ering_entry] }
%struct.ata_ering_entry = type { i32, i32, i64 }
%struct.ata_port_stats = type { i32, i32, i32 }
%struct.inic_pkt = type { %struct.inic_cpb, [129 x %struct.inic_prd], [16 x i8] }
%struct.inic_cpb = type { i8, i8, i8, i8, i32, i32, [4 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.inic_prd = type { i32, i16, i8, i8 }
%struct.inic_port_priv = type { ptr, i32, ptr, i32 }

@__initcall__kmod_sata_inic162x__290_898_inic_pci_driver_init6 = internal global ptr @inic_pci_driver_init, section ".initcall6.init", align 4
@inic_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.1, ptr @inic_pci_tbl, ptr @inic_init_one, ptr @ata_pci_remove_one, ptr @ata_pci_device_suspend, ptr @inic_pci_device_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_inic_pci_driver_exit = internal global ptr @inic_pci_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [31 x i8] c"sata_inic162x.author=Tejun Heo\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [64 x i8] c"sata_inic162x.description=low-level driver for Initio 162x SATA\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [45 x i8] c"sata_inic162x.file=drivers/ata/sata_inic162x\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [29 x i8] c"sata_inic162x.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version295 = internal constant [26 x i8] c"sata_inic162x.version=0.4\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sata_inic162x\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.4\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@inic_pci_tbl = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4353, i32 5666, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@inic_port_info = internal constant { %struct.ata_port_info, [36 x i8] } { %struct.ata_port_info { i32 130, i32 0, i32 31, i32 7, i32 127, ptr @inic_port_ops, ptr null }, [36 x i8] zeroinitializer }, align 32
@__const.inic_init_one.ppi = private unnamed_addr constant [2 x ptr] [ptr @inic_port_info, ptr null], align 8
@inic_init_one.__print_once = internal global { i1, [31 x i8] } zeroinitializer, align 32
@inic_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 828, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [151 x i8], [41 x i8] } { [151 x i8] c"inic162x support is broken with common data corruption issues and will be disabled by default, contact linux-ide@vger.kernel.org if in production use\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"inic_init_one\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/ata/sata_inic162x.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\011\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@inic_init_one._entry_ptr = internal global ptr @inic_init_one._entry, section ".printk_index", align 4
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mmio\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@inic_init_one._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.4, ptr @.str.5, i32 867, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"32-bit DMA enable failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@inic_init_one._entry_ptr.13 = internal global ptr @inic_init_one._entry.10, section ".printk_index", align 4
@inic_init_one._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 873, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize controller\0A\00", [63 x i8] zeroinitializer }, align 32
@inic_init_one._entry_ptr.16 = internal global ptr @inic_init_one._entry.14, section ".printk_index", align 4
@inic_sht = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @ata_scsi_queuecmd, ptr null, ptr null, ptr @.str.1, ptr null, ptr @ata_scsi_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_slave_config, ptr @ata_scsi_slave_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ata_scsi_dma_need_drain, ptr @ata_std_bios_param, ptr @ata_scsi_unlock_native_capacity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, ptr null, i32 1, i32 -1, i16 128, i16 0, i32 0, i32 65024, i32 16777215, i32 0, i16 0, i8 0, i32 1, i8 16, i32 0, ptr null, ptr @ata_common_sdev_groups, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@inic_port_ops = internal global { %struct.ata_port_operations, [44 x i8] } { %struct.ata_port_operations { ptr null, ptr @inic_check_atapi_dma, ptr @inic_qc_prep, ptr @inic_qc_issue, ptr @inic_qc_fill_rtf, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inic_freeze, ptr @inic_thaw, ptr null, ptr null, ptr @inic_hardreset, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @inic_error_handler, ptr null, ptr @inic_post_internal_cmd, ptr null, ptr null, ptr @inic_scr_read, ptr @inic_scr_write, ptr null, ptr null, ptr null, ptr null, ptr @inic_port_resume, ptr @inic_port_start, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sata_port_ops }, [44 x i8] zeroinitializer }, align 32
@sata_port_ops = external dso_local constant %struct.ata_port_operations, align 4
@inic_hardreset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014ata%u.%02u: failed to resume link after reset (errno=%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inic_hardreset\00", [17 x i8] zeroinitializer }, align 32
@inic_hardreset._entry_ptr = internal global ptr @inic_hardreset._entry, section ".printk_index", align 4
@inic_hardreset._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.5, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014ata%u: failed to resume link after reset (errno=%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@inic_hardreset._entry_ptr.21 = internal global ptr @inic_hardreset._entry.19, section ".printk_index", align 4
@inic_hardreset._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.5, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014ata%u.%02u: device not ready after hardreset (errno=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@inic_hardreset._entry_ptr.24 = internal global ptr @inic_hardreset._entry.22, section ".printk_index", align 4
@inic_hardreset._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.18, ptr @.str.5, i32 653, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014ata%u: device not ready after hardreset (errno=%d)\0A\00", [42 x i8] zeroinitializer }, align 32
@inic_hardreset._entry_ptr.27 = internal global ptr @inic_hardreset._entry.25, section ".printk_index", align 4
@sata_deb_timing_hotplug = external dso_local constant [0 x i32], align 4
@sata_deb_timing_normal = external dso_local constant [0 x i32], align 4
@scr_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@inic_host_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.5, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\014ata%u: unhandled interrupt: cmd=0x%x irq_stat=0x%x idma_stat=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"inic_host_intr\00", [17 x i8] zeroinitializer }, align 32
@inic_host_intr._entry_ptr = internal global ptr @inic_host_intr._entry, section ".printk_index", align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"irq_stat=0x%x idma_stat=0x%x\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hotplug\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PCI error\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CPB error\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" ignored\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" spurious-intr\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" data-over/underflow\00", [43 x i8] zeroinitializer }, align 32
@ata_common_sdev_groups = external dso_local global [0 x ptr], align 4
@___asan_gen_.37 = private unnamed_addr constant [16 x i8] c"inic_pci_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 887, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 904, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [13 x i8] c"inic_pci_tbl\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 882, i32 35 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"inic_port_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 746, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [27 x i8] c"inic_init_one.__print_once\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 828, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 860, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 861, i32 51 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 867, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 873, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [9 x i8] c"inic_sht\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 245, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"inic_port_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 725, i32 35 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 637, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 651, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [8 x i8] c"scr_map\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 258, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 415, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 334, i32 25 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 340, i32 26 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 346, i32 26 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 351, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 354, i32 29 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 363, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.159 = private constant [31 x i8] c"../drivers/ata/sata_inic162x.c\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 370, i32 29 }
@llvm.compiler.used = appending global [59 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__UNIQUE_ID_version295, ptr @__exitcall_inic_pci_driver_exit, ptr @__initcall__kmod_sata_inic162x__290_898_inic_pci_driver_init6, ptr @__modver_attr, ptr @inic_hardreset._entry, ptr @inic_hardreset._entry.19, ptr @inic_hardreset._entry.22, ptr @inic_hardreset._entry.25, ptr @inic_hardreset._entry_ptr, ptr @inic_hardreset._entry_ptr.21, ptr @inic_hardreset._entry_ptr.24, ptr @inic_hardreset._entry_ptr.27, ptr @inic_host_intr._entry, ptr @inic_host_intr._entry_ptr, ptr @inic_init_one._entry, ptr @inic_init_one._entry.10, ptr @inic_init_one._entry.14, ptr @inic_init_one._entry_ptr, ptr @inic_init_one._entry_ptr.13, ptr @inic_init_one._entry_ptr.16, ptr @inic_pci_driver_exit, ptr @inic_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @inic_pci_tbl, ptr @inic_port_info, ptr @inic_init_one.__print_once, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @inic_sht, ptr @inic_port_ops, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @scr_map, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_pci_tbl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_port_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_init_one.__print_once to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 151, i32 192, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_init_one._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_init_one._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_sht to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_port_ops to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_hardreset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_hardreset._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_hardreset._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_hardreset._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inic_host_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_pci_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @inic_pci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @inic_pci_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @inic_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_init_one(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #2 align 64 {
entry:
  %ppi = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ppi) #6
  %0 = load i64, ptr @__const.inic_init_one.ppi, align 8
  %1 = ptrtoint ptr %ppi to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 %0, ptr %ppi, align 8
  %.b89 = load i1, ptr @inic_init_one.__print_once, align 1
  br i1 %.b89, label %entry.do.end_crit_edge, label %if.then

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @inic_init_one.__print_once, align 1
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void @ata_print_version(ptr noundef %dev, ptr noundef nonnull @.str.2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_alert(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %call = call ptr @ata_host_alloc_pinfo(ptr noundef %dev1, ptr noundef nonnull %ppi, i32 noundef 2) #6
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call, null
  %tobool6.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool5.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %private_data = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %private_data, align 4
  %call9 = call i32 @pcim_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %flags = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 5, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %. = select i1 %tobool13.not, i32 1, i32 5
  %shl = shl nuw nsw i32 1, %.
  %call16 = call i32 @pcim_iomap_regions(ptr noundef %pdev, i32 noundef %shl, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end12
  %call20 = call ptr @pcim_iomap_table(ptr noundef %pdev) #6
  %iomap21 = getelementptr inbounds %struct.ata_host, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %iomap21 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call20, ptr %iomap21, align 4
  %arrayidx22 = getelementptr ptr, ptr %call20, i32 %.
  %6 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx22, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call.i, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 124
  %9 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %10 = call i16 @llvm.bswap.i16(i16 %9)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  %cached_hctl = getelementptr inbounds %struct.inic_host_priv, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %cached_hctl to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %cached_hctl, align 4
  %arrayidx26 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 0
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx26, align 4
  call void @ata_port_pbar_desc(ptr noundef %13, i32 noundef %., i32 noundef -1, ptr noundef nonnull @.str.8) #6
  call void @ata_port_pbar_desc(ptr noundef %13, i32 noundef %., i32 noundef 0, ptr noundef nonnull @.str.9) #6
  %arrayidx26.1 = getelementptr %struct.ata_host, ptr %call, i32 0, i32 12, i32 1
  %14 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx26.1, align 4
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef %., i32 noundef -1, ptr noundef nonnull @.str.8) #6
  call void @ata_port_pbar_desc(ptr noundef %15, i32 noundef %., i32 noundef 64, ptr noundef nonnull @.str.9) #6
  %call.i90 = call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90)
  %cmp.i = icmp eq i32 %call.i90, 0
  br i1 %cmp.i, label %if.end35, label %do.end33

do.end33:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end19
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #6
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %18 = ptrtoint ptr %cached_hctl to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %cached_hctl, align 4
  %call38 = call fastcc i32 @init_controller(ptr noundef %17, i16 noundef zeroext %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  call void @pci_set_master(ptr noundef %pdev) #6
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  %call46 = call i32 @ata_host_activate(ptr noundef nonnull %call, i32 noundef %21, ptr noundef nonnull @inic_interrupt, i32 noundef 128, ptr noundef nonnull @inic_sht) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end43, %do.end33, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i90, %do.end33 ], [ %call38, %do.end43 ], [ %call46, %if.end45 ], [ -12, %do.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call16, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ppi) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_pci_remove_one(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_suspend(ptr noundef, [1 x i32]) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_pci_device_resume(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call1 = tail call i32 @ata_pci_device_do_resume(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %power = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 12
  %4 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %power, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then2, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %cached_hctl = getelementptr inbounds %struct.inic_host_priv, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %cached_hctl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %cached_hctl, align 4
  %call3 = tail call fastcc i32 @init_controller(ptr noundef %7, i16 noundef zeroext %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %if.end.if.end7_crit_edge
  tail call void @ata_host_resume(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.then2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_print_version(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_alert(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ata_host_alloc_pinfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcim_iomap_regions(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_port_pbar_desc(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_controller(ptr noundef %mmio_base, i16 noundef zeroext %hctl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i16 %hctl, 20223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %or = or i16 %0, 8192
  %1 = tail call i16 @llvm.bswap.i16(i16 %or)
  %add.ptr = getelementptr i8, ptr %mmio_base, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %1) #6, !srcloc !97
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @msleep(i32 noundef 1) #6
  %3 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %5 = and i16 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %entry.for.end_crit_edge, label %for.cond

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %entry
  tail call void @msleep(i32 noundef 1) #6
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %8 = and i16 %7, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not.1 = icmp eq i16 %8, 0
  br i1 %tobool.not.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  tail call void @msleep(i32 noundef 1) #6
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %11 = and i16 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not.2 = icmp eq i16 %11, 0
  br i1 %tobool.not.2, label %for.cond.1.for.end_crit_edge, label %for.cond.2

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  tail call void @msleep(i32 noundef 1) #6
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %13 = tail call i16 @llvm.bswap.i16(i16 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %14 = and i16 %13, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %tobool.not.3 = icmp eq i16 %14, 0
  br i1 %tobool.not.3, label %for.cond.2.for.end_crit_edge, label %for.cond.3

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  tail call void @msleep(i32 noundef 1) #6
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %16 = tail call i16 @llvm.bswap.i16(i16 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %17 = and i16 %16, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.4 = icmp eq i16 %17, 0
  br i1 %tobool.not.4, label %for.cond.3.for.end_crit_edge, label %for.cond.4

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  tail call void @msleep(i32 noundef 1) #6
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %20 = and i16 %19, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool.not.5 = icmp eq i16 %20, 0
  br i1 %tobool.not.5, label %for.cond.4.for.end_crit_edge, label %for.cond.5

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  tail call void @msleep(i32 noundef 1) #6
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %22 = tail call i16 @llvm.bswap.i16(i16 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %23 = and i16 %22, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.6 = icmp eq i16 %23, 0
  br i1 %tobool.not.6, label %for.cond.5.for.end_crit_edge, label %for.cond.6

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  tail call void @msleep(i32 noundef 1) #6
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %25 = tail call i16 @llvm.bswap.i16(i16 %24)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %26 = and i16 %25, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.7 = icmp eq i16 %26, 0
  br i1 %tobool.not.7, label %for.cond.6.for.end_crit_edge, label %for.cond.7

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  tail call void @msleep(i32 noundef 1) #6
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %28 = tail call i16 @llvm.bswap.i16(i16 %27)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  %29 = and i16 %28, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.8 = icmp eq i16 %29, 0
  br i1 %tobool.not.8, label %for.cond.7.for.end_crit_edge, label %for.cond.8

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef 1) #6
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %31 = tail call i16 @llvm.bswap.i16(i16 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa = phi i16 [ %4, %entry.for.end_crit_edge ], [ %7, %for.cond.for.end_crit_edge ], [ %10, %for.cond.1.for.end_crit_edge ], [ %13, %for.cond.2.for.end_crit_edge ], [ %16, %for.cond.3.for.end_crit_edge ], [ %19, %for.cond.4.for.end_crit_edge ], [ %22, %for.cond.5.for.end_crit_edge ], [ %25, %for.cond.6.for.end_crit_edge ], [ %28, %for.cond.7.for.end_crit_edge ], [ %31, %for.cond.8 ]
  %32 = and i16 %.lcssa, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %tobool17.not = icmp eq i16 %32, 0
  br i1 %tobool17.not, label %for.body23.preheader, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body23.preheader:                             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %add.ptr28 = getelementptr i8, ptr %mmio_base, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 -1) #6, !srcloc !101
  %add.ptr.i = getelementptr i8, ptr %mmio_base, i32 20
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 8192) #6, !srcloc !97
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i = getelementptr i8, ptr %mmio_base, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 -1) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %add.ptr28.1 = getelementptr i8, ptr %mmio_base, i32 74
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28.1, i8 -1) #6, !srcloc !101
  %add.ptr.i.1 = getelementptr i8, ptr %mmio_base, i32 84
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 8192) #6, !srcloc !97
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.1) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i.1 = getelementptr i8, ptr %mmio_base, i32 73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i.1, i8 -1) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %37 = tail call i16 @llvm.bswap.i16(i16 %0)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %37) #6, !srcloc !97
  %add.ptr41 = getelementptr i8, ptr %mmio_base, i32 190
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr41) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  %39 = and i16 %38, -769
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr41, i16 %39) #6, !srcloc !97
  br label %cleanup

cleanup:                                          ; preds = %for.body23.preheader, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.body23.preheader ], [ -5, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_host_activate(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_interrupt(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.ata_host, ptr %dev_instance, i32 0, i32 5
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 188
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  %5 = tail call i16 @llvm.bswap.i16(i16 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end, !prof !111

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef %dev_instance) #6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %cmp = phi i1 [ true, %if.end ], [ false, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %if.end ], [ 1, %for.inc.for.body_crit_edge ]
  %handled.037 = phi i32 [ 0, %if.end ], [ %handled.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.038
  %and7 = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.then9

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.ata_host, ptr %dev_instance, i32 0, i32 12, i32 %i.038
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 31
  %8 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %private_data.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 7
  %14 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %15, 6
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %mul.i.i
  %active_tag.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 3
  %16 = ptrtoint ptr %active_tag.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %active_tag.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %18 = icmp ugt i32 %17, 32
  %arrayidx.i.i.i = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %17
  %tobool.not11.i.i = icmp eq ptr %arrayidx.i.i.i, null
  %tobool.not.i.i = or i1 %18, %tobool.not11.i.i
  br i1 %tobool.not.i.i, label %if.then9.ata_qc_from_tag.exit.i_crit_edge, label %lor.lhs.false.i.i, !prof !111

if.then9.ata_qc_from_tag.exit.i_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_qc_from_tag.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then9
  %ops.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i.i, align 4
  %error_handler.i.i = getelementptr inbounds %struct.ata_port_operations, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %error_handler.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %error_handler.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i, label %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ata_qc_from_tag.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %flags.i.i = getelementptr %struct.ata_port, ptr %7, i32 0, i32 19, i32 %17, i32 6
  %23 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %24, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 1
  %call..i.i = select i1 %cmp.i.i, ptr %arrayidx.i.i.i, ptr null
  br label %ata_qc_from_tag.exit.i

ata_qc_from_tag.exit.i:                           ; preds = %if.end.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge, %if.then9.ata_qc_from_tag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %arrayidx.i.i.i, %lor.lhs.false.i.i.ata_qc_from_tag.exit.i_crit_edge ], [ null, %if.then9.ata_qc_from_tag.exit.i_crit_edge ], [ %call..i.i, %if.end.i.i ]
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 9
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %25) #6, !srcloc !101
  %add.ptr7.i = getelementptr i8, ptr %add.ptr.i.i, i32 22
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i) #6, !srcloc !94
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  %conv.i = zext i8 %25 to i32
  %and.i = and i32 %conv.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %28 = and i16 %27, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool13.i = icmp ne i16 %28, 0
  %29 = select i1 %tobool.not.i, i1 true, i1 %tobool13.i
  br i1 %29, label %if.then.i, label %ata_qc_from_tag.exit.i.if.end.i_crit_edge, !prof !111

ata_qc_from_tag.exit.i.if.end.i_crit_edge:        ; preds = %ata_qc_from_tag.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %ata_qc_from_tag.exit.i
  %eh_info.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 48
  %30 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %private_data.i, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  tail call void @ata_ehi_clear_desc(ptr noundef %eh_info.i) #6
  %conv2.i = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.30, i32 noundef %conv.i, i32 noundef %conv2.i) #6
  %34 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i23 = getelementptr inbounds %struct.ata_host, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %private_data.i.i.i23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %private_data.i.i.i23, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %40 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i.i24 = shl i32 %41, 6
  %add.ptr.i.i.i25 = getelementptr i8, ptr %39, i32 %mul.i.i.i24
  %add.ptr.i.i26 = getelementptr i8, ptr %add.ptr.i.i.i25, i32 30
  %42 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i26) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %add.ptr5.i.i27 = getelementptr i8, ptr %add.ptr.i.i.i25, i32 31
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i27) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %add.ptr9.i.i28 = getelementptr i8, ptr %add.ptr.i.i.i25, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i28, i16 0) #6, !srcloc !97
  %and.i29 = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29)
  %tobool.not.i30 = icmp eq i32 %and.i29, 0
  br i1 %tobool.not.i30, label %if.then.i.if.end.i33_crit_edge, label %if.then.i32

if.then.i.if.end.i33_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i33

if.then.i32:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.31) #6
  %probe_mask.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 6
  %44 = ptrtoint ptr %probe_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %probe_mask.i.i, align 4
  %or.i.i = or i32 %45, 3
  store i32 %or.i.i, ptr %probe_mask.i.i, align 4
  %flags.i.i31 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 5
  %46 = ptrtoint ptr %flags.i.i31 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %flags.i.i31, align 4
  %or1.i.i = or i32 %47, 1
  store i32 %or1.i.i, ptr %flags.i.i31, align 4
  %action.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 3
  %48 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %action.i.i, align 4
  %or2.i.i = or i32 %49, 14
  store i32 %or2.i.i, ptr %action.i.i, align 4
  %err_mask.i.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 2
  %50 = ptrtoint ptr %err_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %err_mask.i.i, align 4
  %or3.i.i = or i32 %51, 16
  store i32 %or3.i.i, ptr %err_mask.i.i, align 4
  br label %if.end.i33

if.end.i33:                                       ; preds = %if.then.i32, %if.then.i.if.end.i33_crit_edge
  %52 = xor i1 %tobool.not.i30, true
  %and5.i = and i32 %conv2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i33.if.end8.i_crit_edge, label %if.then7.i

if.end.i33.if.end8.i_crit_edge:                   ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.then7.i:                                       ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.32) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then7.i, %if.end.i33.if.end8.i_crit_edge
  %freeze.1.off0.i = phi i1 [ true, %if.then7.i ], [ %52, %if.end.i33.if.end8.i_crit_edge ]
  %and10.i = and i32 %conv2.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end8.i.if.end42.i_crit_edge, label %if.then12.i

if.end8.i.if.end42.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then12.i:                                      ; preds = %if.end8.i
  tail call void (ptr, ptr, ...) @ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.33) #6
  %53 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %33, align 1
  %55 = and i8 %54, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool15.not.i = icmp eq i8 %55, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.end17.i_crit_edge, label %if.then16.i

if.then12.i.if.end17.i_crit_edge:                 ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then16.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.34) #6
  %err_mask.i34 = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 2
  %56 = ptrtoint ptr %err_mask.i34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %err_mask.i34, align 4
  %or.i35 = or i32 %57, 128
  store i32 %or.i35, ptr %err_mask.i34, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then16.i, %if.then12.i.if.end17.i_crit_edge
  %freeze.2.off0.i = phi i1 [ true, %if.then16.i ], [ %freeze.1.off0.i, %if.then12.i.if.end17.i_crit_edge ]
  %58 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %33, align 1
  %60 = and i8 %59, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool21.not.i = icmp eq i8 %60, 0
  br i1 %tobool21.not.i, label %if.end17.i.if.end25.i_crit_edge, label %if.then22.i

if.end17.i.if.end25.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.i

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  %err_mask23.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 2
  %61 = ptrtoint ptr %err_mask23.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %err_mask23.i, align 4
  %or24.i = or i32 %62, 1
  store i32 %or24.i, ptr %err_mask23.i, align 4
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then22.i, %if.end17.i.if.end25.i_crit_edge
  %63 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %33, align 1
  %65 = and i8 %64, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool29.not.i36 = icmp eq i8 %65, 0
  br i1 %tobool29.not.i36, label %if.end25.i.if.end33.i_crit_edge, label %if.then30.i

if.end25.i.if.end33.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.35) #6
  %err_mask31.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 2
  %66 = ptrtoint ptr %err_mask31.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %err_mask31.i, align 4
  %or32.i = or i32 %67, 2
  store i32 %or32.i, ptr %err_mask31.i, align 4
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end33.i_crit_edge
  %freeze.3.off0.i = phi i1 [ true, %if.then30.i ], [ %freeze.2.off0.i, %if.end25.i.if.end33.i_crit_edge ]
  %68 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %33, align 1
  %70 = and i8 %69, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool37.not.i = icmp eq i8 %70, 0
  br i1 %tobool37.not.i, label %if.end33.i.if.end42.i_crit_edge, label %if.then38.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__ata_ehi_push_desc(ptr noundef %eh_info.i, ptr noundef nonnull @.str.36) #6
  %err_mask39.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 25, i32 11, i32 2
  %71 = ptrtoint ptr %err_mask39.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %err_mask39.i, align 4
  %or40.i = or i32 %72, 2
  store i32 %or40.i, ptr %err_mask39.i, align 4
  br label %if.then44.i

if.end42.i:                                       ; preds = %if.end33.i.if.end42.i_crit_edge, %if.end8.i.if.end42.i_crit_edge
  %freeze.4.off0.i = phi i1 [ %freeze.3.off0.i, %if.end33.i.if.end42.i_crit_edge ], [ %freeze.1.off0.i, %if.end8.i.if.end42.i_crit_edge ]
  br i1 %freeze.4.off0.i, label %if.end42.i.if.then44.i_crit_edge, label %if.else.i

if.end42.i.if.then44.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44.i

if.then44.i:                                      ; preds = %if.end42.i.if.then44.i_crit_edge, %if.then38.i
  %call.i = tail call i32 @ata_port_freeze(ptr noundef %7) #6
  br label %if.end.i

if.else.i:                                        ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %call45.i = tail call i32 @ata_port_abort(ptr noundef %7) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then44.i, %ata_qc_from_tag.exit.i.if.end.i_crit_edge
  %tobool16.not.i = icmp eq ptr %retval.0.i.i, null
  %73 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool29.not.i = icmp eq i16 %73, 0
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %tobool29.not.i
  br i1 %or.cond.i, label %do.end57.i, label %if.then36.i, !prof !119

if.then36.i:                                      ; preds = %if.end.i
  %74 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i.i = getelementptr inbounds %struct.ata_host, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %private_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %private_data.i.i.i, align 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %77, align 4
  %80 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i.i = shl i32 %81, 6
  %add.ptr.i.i.i = getelementptr i8, ptr %79, i32 %mul.i.i.i
  %add.ptr.i85.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 30
  %82 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i85.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  %add.ptr5.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 31
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %add.ptr9.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr9.i.i, i16 0) #6, !srcloc !97
  %add.ptr39.i = getelementptr i8, ptr %add.ptr.i.i, i32 7
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr39.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  %85 = and i8 %84, 33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool45.not.i = icmp eq i8 %85, 0
  br i1 %tobool45.not.i, label %if.then36.i.if.end53.i_crit_edge, label %if.then52.i, !prof !121

if.then36.i.if.end53.i_crit_edge:                 ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53.i

if.then52.i:                                      ; preds = %if.then36.i
  call void @__sanitizer_cov_trace_pc() #8
  %err_mask.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 20
  %86 = ptrtoint ptr %err_mask.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %err_mask.i, align 4
  %or.i = or i32 %87, 1
  store i32 %or.i, ptr %err_mask.i, align 4
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then52.i, %if.then36.i.if.end53.i_crit_edge
  tail call void @ata_qc_complete(ptr noundef nonnull %retval.0.i.i) #6
  br label %inic_host_intr.exit

do.end57.i:                                       ; preds = %if.end.i
  %print_id.i = getelementptr inbounds %struct.ata_port, ptr %7, i32 0, i32 5
  %88 = ptrtoint ptr %print_id.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %print_id.i, align 4
  br i1 %tobool16.not.i, label %do.end57.i.cond.end.i_crit_edge, label %cond.true.i

do.end57.i.cond.end.i_crit_edge:                  ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %command.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %retval.0.i.i, i32 0, i32 4, i32 14
  %90 = ptrtoint ptr %command.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %command.i, align 1
  %conv60.i = zext i8 %91 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end57.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv60.i, %cond.true.i ], [ 255, %do.end57.i.cond.end.i_crit_edge ]
  %conv62.i = zext i16 %27 to i32
  %call63.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %89, i32 noundef %cond.i, i32 noundef %conv.i, i32 noundef %conv62.i) #9
  br label %inic_host_intr.exit

inic_host_intr.exit:                              ; preds = %cond.end.i, %if.end53.i
  %inc = add i32 %handled.037, 1
  br label %for.inc

for.inc:                                          ; preds = %inic_host_intr.exit, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ %inc, %inic_host_intr.exit ], [ %handled.037, %for.body.for.inc_crit_edge ]
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %dev_instance) #6
  br label %out

out:                                              ; preds = %for.end, %entry.out_crit_edge
  %handled.2 = phi i32 [ 0, %entry.out_crit_edge ], [ %handled.1, %for.end ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.2)
  %tobool13.not = icmp ne i32 %handled.2, 0
  %cond = zext i1 %tobool13.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_check_atapi_dma(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cdb = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %0 = ptrtoint ptr %cdb to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cdb, align 4
  %call = tail call i32 @atapi_cmd_type(i8 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp ne i32 %call, 0
  %. = zext i1 %cmp to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_qc_prep(ptr noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %private_data = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 48
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %prd3 = getelementptr inbounds %struct.inic_pkt, ptr %5, i32 0, i32 1
  %tf = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4
  %protocol = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %protocol, align 4
  %8 = and i8 %7, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.i.not = icmp eq i8 %8, 0
  %9 = and i8 %7, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i118.not = icmp eq i8 %9, 0
  br i1 %tobool.i.not, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %cdb_len8 = getelementptr inbounds %struct.ata_device, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %cdb_len8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cdb_len8, align 32
  %14 = call ptr @memset(ptr %5, i32 0, i32 1080)
  %ctl_flags120 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 3
  br label %if.then11

if.end:                                           ; preds = %entry
  %15 = call ptr @memset(ptr %5, i32 0, i32 1080)
  %ctl_flags = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %ctl_flags to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 9, ptr %ctl_flags, align 1
  br i1 %tobool.i118.not, label %if.end.if.end14_crit_edge, label %if.end.if.then11_crit_edge

if.end.if.then11_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end.if.then11_crit_edge, %if.end.thread
  %ctl_flags124 = phi ptr [ %ctl_flags120, %if.end.thread ], [ %ctl_flags, %if.end.if.then11_crit_edge ]
  %cdb_len.0123 = phi i32 [ %13, %if.end.thread ], [ 0, %if.end.if.then11_crit_edge ]
  %17 = ptrtoint ptr %ctl_flags124 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 13, ptr %ctl_flags124, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %cdb_len.0122 = phi i32 [ 0, %if.end.if.end14_crit_edge ], [ %cdb_len.0123, %if.then11 ]
  %nbytes = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 13
  %18 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbytes, align 4
  %add = add i32 %19, %cdb_len.0122
  %20 = tail call i32 @llvm.bswap.i32(i32 %add)
  %len = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 4
  %21 = ptrtoint ptr %len to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %len, align 1
  %pkt_dma = getelementptr inbounds %struct.inic_port_priv, ptr %3, i32 0, i32 1
  %22 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pkt_dma, align 4
  %add15 = add i32 %23, 32
  %24 = tail call i32 @llvm.bswap.i32(i32 %add15)
  %prd16 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 5
  %25 = ptrtoint ptr %prd16 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 %24, ptr %prd16, align 1
  %device = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 13
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %device, align 4
  %device18 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 9
  %28 = ptrtoint ptr %device18 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %device18, align 1
  %feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 8
  %29 = ptrtoint ptr %feature to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %feature, align 1
  %feature20 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 7
  %31 = ptrtoint ptr %feature20 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %feature20, align 1
  %nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 9
  %32 = ptrtoint ptr %nsect to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %nsect, align 4
  %nsect22 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %nsect22 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %nsect22, align 1
  %lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 10
  %35 = ptrtoint ptr %lbal to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %lbal, align 1
  %lbal24 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 13
  %37 = ptrtoint ptr %lbal24 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %lbal24, align 1
  %lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 11
  %38 = ptrtoint ptr %lbam to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %lbam, align 2
  %lbam26 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 15
  %40 = ptrtoint ptr %lbam26 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %lbam26, align 1
  %lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 12
  %41 = ptrtoint ptr %lbah to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %lbah, align 1
  %lbah28 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 17
  %43 = ptrtoint ptr %lbah28 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %lbah28, align 1
  %44 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tf, align 4
  %and = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end14.if.end42_crit_edge, label %if.then31

if.end14.if.end42_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %hob_feature = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 3
  %46 = ptrtoint ptr %hob_feature to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %hob_feature, align 2
  %hob_feature33 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 8
  %48 = ptrtoint ptr %hob_feature33 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %hob_feature33, align 1
  %hob_nsect = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 4
  %49 = ptrtoint ptr %hob_nsect to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %hob_nsect, align 1
  %hob_nsect35 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 12
  %51 = ptrtoint ptr %hob_nsect35 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %hob_nsect35, align 1
  %hob_lbal = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 5
  %52 = ptrtoint ptr %hob_lbal to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hob_lbal, align 4
  %hob_lbal37 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 14
  %54 = ptrtoint ptr %hob_lbal37 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %hob_lbal37, align 1
  %hob_lbam = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %hob_lbam to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %hob_lbam, align 1
  %hob_lbam39 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 16
  %57 = ptrtoint ptr %hob_lbam39 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %hob_lbam39, align 1
  %hob_lbah = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 7
  %58 = ptrtoint ptr %hob_lbah to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %hob_lbah, align 2
  %hob_lbah41 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 18
  %60 = ptrtoint ptr %hob_lbah41 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %hob_lbah41, align 1
  br label %if.end42

if.end42:                                         ; preds = %if.then31, %if.end14.if.end42_crit_edge
  %command = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 4, i32 14
  %61 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %command, align 1
  %command44 = getelementptr inbounds %struct.inic_cpb, ptr %5, i32 0, i32 19
  %63 = ptrtoint ptr %command44 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %command44, align 1
  br i1 %tobool.i.not, label %if.end42.if.end62_crit_edge, label %if.then46

if.end42.if.end62_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then46:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %cdb = getelementptr inbounds %struct.inic_pkt, ptr %5, i32 0, i32 2
  %cdb48 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 5
  %64 = call ptr @memcpy(ptr %cdb, ptr %cdb48, i32 16)
  %65 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pkt_dma, align 4
  %add51 = add i32 %66, 1064
  %67 = tail call i32 @llvm.bswap.i32(i32 %add51)
  %68 = ptrtoint ptr %prd3 to i32
  call void @__asan_storeN_noabort(i32 %68, i32 4)
  store i32 %67, ptr %prd3, align 1
  %conv52 = trunc i32 %cdb_len.0122 to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv52)
  %len53 = getelementptr inbounds %struct.inic_pkt, ptr %5, i32 0, i32 1, i32 0, i32 1
  %70 = ptrtoint ptr %len53 to i32
  call void @__asan_storeN_noabort(i32 %70, i32 2)
  store i16 %69, ptr %len53, align 1
  %flags54 = getelementptr inbounds %struct.inic_pkt, ptr %5, i32 0, i32 1, i32 0, i32 3
  %spec.select = select i1 %tobool.i118.not, i8 -92, i8 36
  %71 = ptrtoint ptr %flags54 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %spec.select, ptr %flags54, align 1
  %incdec.ptr = getelementptr %struct.inic_pkt, ptr %5, i32 0, i32 1, i32 1
  br label %if.end62

if.end62:                                         ; preds = %if.then46, %if.end42.if.end62_crit_edge
  %prd.0 = phi ptr [ %incdec.ptr, %if.then46 ], [ %prd3, %if.end42.if.end62_crit_edge ]
  br i1 %tobool.i118.not, label %if.end62.if.end65_crit_edge, label %if.then64

if.end62.if.end65_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then64:                                        ; preds = %if.end62
  %72 = ptrtoint ptr %tf to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tf, align 4
  %74 = trunc i32 %73 to i8
  %75 = shl i8 %74, 2
  %76 = and i8 %75, 32
  %77 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %protocol, align 4
  %79 = shl i8 %78, 3
  %80 = and i8 %79, 16
  %81 = or i8 %80, %76
  %n_elem.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 9
  %82 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %n_elem.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp55.not.i = icmp eq i32 %83, 0
  br i1 %cmp55.not.i, label %do.end.i, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.then64
  %sg9.i = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 17
  %84 = ptrtoint ptr %sg9.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sg9.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %prd.addr.058.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %prd.0, %for.body.preheader.i ]
  %si.057.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %sg.056.i = phi ptr [ %call13.i, %for.body.i.for.body.i_crit_edge ], [ %85, %for.body.preheader.i ]
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.056.i, i32 0, i32 3
  %86 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_address.i, align 4
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #6
  %89 = ptrtoint ptr %prd.addr.058.i to i32
  call void @__asan_storeN_noabort(i32 %89, i32 4)
  store i32 %88, ptr %prd.addr.058.i, align 1
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.056.i, i32 0, i32 4
  %90 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_length.i, align 4
  %conv11.i = trunc i32 %91 to i16
  %92 = tail call i16 @llvm.bswap.i16(i16 %conv11.i) #6
  %len.i = getelementptr inbounds %struct.inic_prd, ptr %prd.addr.058.i, i32 0, i32 1
  %93 = ptrtoint ptr %len.i to i32
  call void @__asan_storeN_noabort(i32 %93, i32 2)
  store i16 %92, ptr %len.i, align 1
  %flags12.i = getelementptr inbounds %struct.inic_prd, ptr %prd.addr.058.i, i32 0, i32 3
  %94 = ptrtoint ptr %flags12.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %81, ptr %flags12.i, align 1
  %incdec.ptr.i = getelementptr %struct.inic_prd, ptr %prd.addr.058.i, i32 1
  %inc.i = add nuw i32 %si.057.i, 1
  %call13.i = tail call ptr @sg_next(ptr noundef %sg.056.i) #6
  %95 = ptrtoint ptr %n_elem.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %n_elem.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %96
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.inic_fill_sg.exit_crit_edge

for.body.i.inic_fill_sg.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %inic_fill_sg.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

do.end.i:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 477, i32 noundef 9, ptr noundef null) #6
  br label %inic_fill_sg.exit

inic_fill_sg.exit:                                ; preds = %do.end.i, %for.body.i.inic_fill_sg.exit_crit_edge
  %prd.addr.0.lcssa61.i = phi ptr [ %prd.0, %do.end.i ], [ %incdec.ptr.i, %for.body.i.inic_fill_sg.exit_crit_edge ]
  %flags37.i = getelementptr %struct.inic_prd, ptr %prd.addr.0.lcssa61.i, i32 -1, i32 3
  %97 = ptrtoint ptr %flags37.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %flags37.i, align 1
  %99 = or i8 %98, -128
  store i8 %99, ptr %flags37.i, align 1
  br label %if.end65

if.end65:                                         ; preds = %inic_fill_sg.exit, %if.end62.if.end65_crit_edge
  %100 = ptrtoint ptr %pkt_dma to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %pkt_dma, align 4
  %cpb_tbl = getelementptr inbounds %struct.inic_port_priv, ptr %3, i32 0, i32 2
  %102 = ptrtoint ptr %cpb_tbl to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cpb_tbl, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %101, ptr %103, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_qc_issue(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 124
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 2052) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %add.ptr5 = getelementptr i8, ptr %add.ptr.i, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 -32768) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void @arm_heavy_mb() #6
  %add.ptr9 = getelementptr i8, ptr %add.ptr.i, i32 28
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 0) #6, !srcloc !101
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @inic_qc_fill_rtf(ptr nocapture noundef %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qc, align 4
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %9, 6
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %mul.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %add.ptr35.i = getelementptr i8, ptr %add.ptr.i.i, i32 7
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %17 = and i8 %16, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not = icmp eq i8 %17, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %command2 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21, i32 14
  %18 = ptrtoint ptr %command2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %16, ptr %command2, align 1
  %feature3 = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 21, i32 8
  %19 = ptrtoint ptr %feature3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %10, ptr %feature3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %20 = xor i1 %tobool.not, true
  ret i1 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inic_freeze(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 6
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 -1) #6, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inic_thaw(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 6
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 -1) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %add.ptr.i, i32 10
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 48) #6, !srcloc !101
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_hardreset(ptr noundef %link, ptr nocapture noundef writeonly %class, i32 noundef %deadline) #2 align 64 {
entry:
  %tf = alloca %struct.ata_taskfile, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 20
  %flags.i = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 12, i32 0, i32 5
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %sata_deb_timing_normal.sata_deb_timing_hotplug.i = select i1 %tobool.not.i, ptr @sata_deb_timing_normal, ptr @sata_deb_timing_hotplug
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 8192) #6, !srcloc !97
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 -1) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 1024) #6, !srcloc !97
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @ata_msleep(ptr noundef %1, i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 0) #6, !srcloc !97
  %call8 = tail call i32 @sata_link_resume(ptr noundef %link, ptr noundef nonnull %sata_deb_timing_normal.sata_deb_timing_hotplug.i, i32 noundef %deadline) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end30, label %do.body9

do.body9:                                         ; preds = %entry
  %15 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %link, align 128
  %nr_pmp_links.i = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %nr_pmp_links.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pmp_links.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i.not = icmp eq i32 %18, 0
  br i1 %cmp.i.not, label %lor.lhs.false, label %do.body9.do.end17_crit_edge

do.body9.do.end17_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

lor.lhs.false:                                    ; preds = %do.body9
  %slave_link = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 26
  %19 = ptrtoint ptr %slave_link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %slave_link, align 128
  %tobool13.not = icmp eq ptr %20, null
  br i1 %tobool13.not, label %do.end23, label %lor.lhs.false.do.end17_crit_edge

lor.lhs.false.do.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

do.end17:                                         ; preds = %lor.lhs.false.do.end17_crit_edge, %do.body9.do.end17_crit_edge
  %print_id = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 5
  %21 = ptrtoint ptr %print_id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %print_id, align 4
  %pmp = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %23 = ptrtoint ptr %pmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pmp, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %22, i32 noundef %24, i32 noundef %call8) #9
  br label %cleanup66

do.end23:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %print_id26 = getelementptr inbounds %struct.ata_port, ptr %16, i32 0, i32 5
  %25 = ptrtoint ptr %print_id26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %print_id26, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %26, i32 noundef %call8) #9
  br label %cleanup66

if.end30:                                         ; preds = %entry
  %27 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 11, ptr %class, align 4
  %call31 = tail call zeroext i1 @ata_link_online(ptr noundef %link) #6
  br i1 %call31, label %if.then32, label %if.end30.cleanup66_crit_edge

if.end30.cleanup66_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup66

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tf) #6
  %28 = call ptr @memset(ptr %tf, i32 255, i32 24)
  %call33 = tail call i32 @ata_wait_after_reset(ptr noundef %link, i32 noundef %deadline, ptr noundef nonnull @inic_check_ready) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end63, label %do.body36

do.body36:                                        ; preds = %if.then32
  %29 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %link, align 128
  %nr_pmp_links.i102 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 27
  %31 = ptrtoint ptr %nr_pmp_links.i102 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr_pmp_links.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i103.not = icmp eq i32 %32, 0
  br i1 %cmp.i103.not, label %lor.lhs.false39, label %do.body36.do.end46_crit_edge

do.body36.do.end46_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

lor.lhs.false39:                                  ; preds = %do.body36
  %slave_link41 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 26
  %33 = ptrtoint ptr %slave_link41 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slave_link41, align 128
  %tobool42.not = icmp eq ptr %34, null
  br i1 %tobool42.not, label %do.end55, label %lor.lhs.false39.do.end46_crit_edge

lor.lhs.false39.do.end46_crit_edge:               ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false39.do.end46_crit_edge, %do.body36.do.end46_crit_edge
  %print_id49 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 5
  %35 = ptrtoint ptr %print_id49 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %print_id49, align 4
  %pmp50 = getelementptr inbounds %struct.ata_link, ptr %link, i32 0, i32 1
  %37 = ptrtoint ptr %pmp50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pmp50, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %36, i32 noundef %38, i32 noundef %call33) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #6
  br label %cleanup66

do.end55:                                         ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #8
  %print_id58 = getelementptr inbounds %struct.ata_port, ptr %30, i32 0, i32 5
  %39 = ptrtoint ptr %print_id58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %print_id58, align 4
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %40, i32 noundef %call33) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #6
  br label %cleanup66

if.end63:                                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %host.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %private_data.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %47 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port_no.i, align 4
  %mul.i.i = shl i32 %48, 6
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %mul.i.i
  %add.ptr.i104 = getelementptr i8, ptr %add.ptr.i.i, i32 1
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i104) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  %feature.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 8
  %50 = ptrtoint ptr %feature.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %feature.i, align 1
  %add.ptr5.i = getelementptr i8, ptr %add.ptr.i.i, i32 2
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr5.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %nsect.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 9
  %52 = ptrtoint ptr %nsect.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %nsect.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %add.ptr.i.i, i32 3
  %53 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr11.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  %lbal.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 10
  %54 = ptrtoint ptr %lbal.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %lbal.i, align 1
  %add.ptr17.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %55 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr17.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  %lbam.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 11
  %56 = ptrtoint ptr %lbam.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %lbam.i, align 2
  %add.ptr23.i = getelementptr i8, ptr %add.ptr.i.i, i32 5
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  %lbah.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 12
  %58 = ptrtoint ptr %lbah.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %lbah.i, align 1
  %add.ptr29.i = getelementptr i8, ptr %add.ptr.i.i, i32 6
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  %device.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 13
  %60 = ptrtoint ptr %device.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %device.i, align 4
  %add.ptr35.i = getelementptr i8, ptr %add.ptr.i.i, i32 7
  %61 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr35.i) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %command.i = getelementptr inbounds %struct.ata_taskfile, ptr %tf, i32 0, i32 14
  %62 = ptrtoint ptr %command.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %command.i, align 1
  %call64 = call i32 @ata_port_classify(ptr noundef %1, ptr noundef nonnull %tf) #6
  %63 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %call64, ptr %class, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tf) #6
  br label %cleanup66

cleanup66:                                        ; preds = %if.end63, %do.end55, %do.end46, %if.end30.cleanup66_crit_edge, %do.end23, %do.end17
  %retval.1 = phi i32 [ %call8, %do.end23 ], [ %call8, %do.end17 ], [ %call33, %do.end46 ], [ %call33, %do.end55 ], [ 0, %if.end63 ], [ 0, %if.end30.cleanup66_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inic_error_handler(ptr noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %7, 6
  %add.ptr.i = getelementptr i8, ptr %5, i32 %mul.i
  %add.ptr.i2 = getelementptr i8, ptr %add.ptr.i, i32 20
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 8192) #6, !srcloc !97
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 -1) #6, !srcloc !101
  tail call void @ata_std_error_handler(ptr noundef %ap) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inic_post_internal_cmd(ptr nocapture noundef readonly %qc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ata_queued_cmd, ptr %qc, i32 0, i32 6
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %qc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qc, align 4
  %host.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 31
  %4 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %private_data.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %11, 6
  %add.ptr.i = getelementptr i8, ptr %9, i32 %mul.i
  %add.ptr.i2 = getelementptr i8, ptr %add.ptr.i, i32 20
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 8192) #6, !srcloc !97
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i2) #6, !srcloc !94
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @msleep(i32 noundef 1) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i2, i16 0) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %add.ptr13.i = getelementptr i8, ptr %add.ptr.i, i32 9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 -1) #6, !srcloc !101
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_scr_read(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !111

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 32
  %arrayidx = getelementptr [3 x i32], ptr @scr_map, i32 0, i32 %sc_reg
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %11, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !139
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sc_reg)
  %cmp5 = icmp eq i32 %sc_reg, 1
  %and = and i32 %13, -65537
  %spec.select = select i1 %cmp5, i32 %and, i32 %13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %spec.select, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_scr_write(ptr nocapture noundef readonly %link, i32 noundef %sc_reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sc_reg)
  %cmp = icmp ugt i32 %sc_reg, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body, !prof !111

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %10 = tail call i32 @llvm.bswap.i32(i32 %val)
  %arrayidx = getelementptr [3 x i32], ptr @scr_map, i32 0, i32 %sc_reg
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %12, 2
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %10) #6, !srcloc !142
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_port_resume(ptr nocapture noundef readonly %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host.i.i, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %6 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %7, 6
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %mul.i.i
  %private_data.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %8 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %private_data.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 1080)
  %cpb_tbl.i = getelementptr inbounds %struct.inic_port_priv, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %cpb_tbl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpb_tbl.i, align 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %cpb_tbl_dma.i = getelementptr inbounds %struct.inic_port_priv, ptr %9, i32 0, i32 3
  %16 = ptrtoint ptr %cpb_tbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpb_tbl_dma.i, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %18) #6, !srcloc !142
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_port_start(ptr nocapture noundef %ap) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 31
  %0 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host, align 4
  %dev1 = getelementptr inbounds %struct.ata_host, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %private_data = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 48
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %private_data, align 4
  %pkt_dma = getelementptr inbounds %struct.inic_port_priv, ptr %call.i, i32 0, i32 1
  %call.i24 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 1080, ptr noundef %pkt_dma, i32 noundef 3264, i32 noundef 0) #6
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i24, ptr %call.i, align 4
  %tobool4.not = icmp eq ptr %call.i24, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cpb_tbl_dma = getelementptr inbounds %struct.inic_port_priv, ptr %call.i, i32 0, i32 3
  %call.i25 = tail call ptr @dmam_alloc_attrs(ptr noundef %3, i32 noundef 128, ptr noundef %cpb_tbl_dma, i32 noundef 3264, i32 noundef 0) #6
  %cpb_tbl = getelementptr inbounds %struct.inic_port_priv, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %cpb_tbl to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i25, ptr %cpb_tbl, align 4
  %tobool9.not = icmp eq ptr %call.i25, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %host to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %host, align 4
  %private_data.i.i = getelementptr inbounds %struct.ata_host, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %private_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %private_data.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %port_no.i.i = getelementptr inbounds %struct.ata_port, ptr %ap, i32 0, i32 7
  %13 = ptrtoint ptr %port_no.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_no.i.i, align 4
  %mul.i.i = shl i32 %14, 6
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %mul.i.i
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 1080)
  %cpb_tbl.i = getelementptr inbounds %struct.inic_port_priv, ptr %16, i32 0, i32 2
  %20 = ptrtoint ptr %cpb_tbl.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cpb_tbl.i, align 4
  %22 = call ptr @memset(ptr %21, i32 0, i32 128)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %cpb_tbl_dma.i = getelementptr inbounds %struct.inic_port_priv, ptr %16, i32 0, i32 3
  %23 = ptrtoint ptr %cpb_tbl_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpb_tbl_dma.i, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #6, !srcloc !142
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atapi_cmd_type(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_msleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sata_link_resume(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_link_online(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_wait_after_reset(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inic_check_ready(ptr nocapture noundef readonly %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %link, align 128
  %host.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 31
  %2 = ptrtoint ptr %host.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host.i, align 4
  %private_data.i = getelementptr inbounds %struct.ata_host, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %port_no.i = getelementptr inbounds %struct.ata_port, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_no.i, align 4
  %mul.i = shl i32 %9, 6
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 7
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %tobool.not.i = icmp sgt i8 %10, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %10)
  %cmp.i = icmp eq i8 %10, -1
  %..i = select i1 %cmp.i, i32 -19, i32 0
  %retval.0.i = select i1 %tobool.not.i, i32 1, i32 %..i
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_classify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_std_error_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_qc_complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_clear_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ata_ehi_push_desc(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_port_abort(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_queuecmd(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_ioctl(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_scsi_slave_config(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_slave_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ata_scsi_dma_need_drain(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_std_bios_param(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_scsi_unlock_native_capacity(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ata_pci_device_do_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ata_host_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !81, !83}
!llvm.module.flags = !{!85, !86, !87, !88, !89, !90, !91, !92}
!llvm.ident = !{!93}

!0 = !{ptr @__initcall__kmod_sata_inic162x__290_898_inic_pci_driver_init6, !1, !"__initcall__kmod_sata_inic162x__290_898_inic_pci_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/ata/sata_inic162x.c", i32 898, i32 1}
!2 = !{ptr @__exitcall_inic_pci_driver_exit, !1, !"__exitcall_inic_pci_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/ata/sata_inic162x.c", i32 900, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/ata/sata_inic162x.c", i32 901, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/ata/sata_inic162x.c", i32 902, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version295, !11, !"__UNIQUE_ID_version295", i1 false, i1 false}
!11 = !{!"../drivers/ata/sata_inic162x.c", i32 904, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @inic_pci_driver, !17, !"inic_pci_driver", i1 false, i1 false}
!17 = !{!"../drivers/ata/sata_inic162x.c", i32 887, i32 26}
!18 = !{ptr @inic_pci_tbl, !19, !"inic_pci_tbl", i1 false, i1 false}
!19 = !{!"../drivers/ata/sata_inic162x.c", i32 882, i32 35}
!20 = distinct !{null, !21, !"__print_once", i1 false, i1 false}
!21 = !{!"../drivers/ata/sata_inic162x.c", i32 826, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/ata/sata_inic162x.c", i32 828, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @inic_init_one._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @inic_init_one._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/ata/sata_inic162x.c", i32 860, i32 40}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/ata/sata_inic162x.c", i32 861, i32 51}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/ata/sata_inic162x.c", i32 867, i32 3}
!36 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @inic_init_one._entry.10, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @inic_init_one._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/ata/sata_inic162x.c", i32 873, i32 3}
!41 = !{ptr @inic_init_one._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @inic_init_one._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @inic_port_info, !44, !"inic_port_info", i1 false, i1 false}
!44 = !{!"../drivers/ata/sata_inic162x.c", i32 746, i32 35}
!45 = !{ptr @inic_port_ops, !46, !"inic_port_ops", i1 false, i1 false}
!46 = !{!"../drivers/ata/sata_inic162x.c", i32 725, i32 35}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/ata/sata_inic162x.c", i32 637, i32 3}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @inic_hardreset._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @inic_hardreset._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @inic_hardreset._entry.19, !48, !"_entry", i1 false, i1 false}
!54 = !{ptr @inic_hardreset._entry_ptr.21, !48, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/ata/sata_inic162x.c", i32 651, i32 4}
!57 = !{ptr @inic_hardreset._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @inic_hardreset._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @inic_hardreset._entry.25, !56, !"_entry", i1 false, i1 false}
!61 = !{ptr @inic_hardreset._entry_ptr.27, !56, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @scr_map, !63, !"scr_map", i1 false, i1 false}
!63 = !{!"../drivers/ata/sata_inic162x.c", i32 258, i32 18}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/ata/sata_inic162x.c", i32 415, i32 2}
!66 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @inic_host_intr._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @inic_host_intr._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/ata/sata_inic162x.c", i32 334, i32 25}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/ata/sata_inic162x.c", i32 340, i32 26}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/ata/sata_inic162x.c", i32 346, i32 26}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/ata/sata_inic162x.c", i32 351, i32 26}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/ata/sata_inic162x.c", i32 354, i32 29}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/ata/sata_inic162x.c", i32 363, i32 29}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/ata/sata_inic162x.c", i32 370, i32 29}
!83 = !{ptr @inic_sht, !84, !"inic_sht", i1 false, i1 false}
!84 = !{!"../drivers/ata/sata_inic162x.c", i32 245, i32 34}
!85 = !{i32 1, !"wchar_size", i32 2}
!86 = !{i32 1, !"min_enum_size", i32 4}
!87 = !{i32 8, !"branch-target-enforcement", i32 0}
!88 = !{i32 8, !"sign-return-address", i32 0}
!89 = !{i32 8, !"sign-return-address-all", i32 0}
!90 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!91 = !{i32 7, !"uwtable", i32 1}
!92 = !{i32 7, !"frame-pointer", i32 2}
!93 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!94 = !{i64 5001665}
!95 = !{i64 2155768447}
!96 = !{i64 2155761820}
!97 = !{i64 5001465}
!98 = !{i64 2155762544}
!99 = !{i64 2155763042}
!100 = !{i64 2155763267}
!101 = !{i64 5001888}
!102 = !{i64 2155735104}
!103 = !{i64 2155735323}
!104 = !{i64 2155735981}
!105 = !{i64 2155736184}
!106 = !{i64 2155736567}
!107 = !{i64 2155763562}
!108 = !{i64 2155764306}
!109 = !{i64 2155764528}
!110 = !{i64 2155744262}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i64 5002283}
!113 = !{i64 2155739821}
!114 = !{i64 2155740048}
!115 = !{i64 2155740636}
!116 = !{i64 2155738930}
!117 = !{i64 2155739176}
!118 = !{i64 2155739396}
!119 = !{!"branch_weights", i32 4001, i32 4000000}
!120 = !{i64 2155741246}
!121 = !{!"branch_weights", i32 2000, i32 1}
!122 = !{i64 2155746335}
!123 = !{i64 2155746803}
!124 = !{i64 2155747233}
!125 = !{i64 2155747547}
!126 = !{i64 2155747795}
!127 = !{i64 2155748041}
!128 = !{i64 2155748287}
!129 = !{i64 2155748533}
!130 = !{i64 2155748783}
!131 = !{i64 2155749035}
!132 = !{i64 2155749270}
!133 = !{i64 2155749567}
!134 = !{i64 2155749852}
!135 = !{i64 2155750150}
!136 = !{i64 2155750695}
!137 = !{i64 2155751350}
!138 = !{i64 2155751553}
!139 = !{i64 5002503}
!140 = !{i64 2155737717}
!141 = !{i64 2155738494}
!142 = !{i64 5002085}
!143 = !{i64 2155760814}
!144 = !{i64 2155750477}
